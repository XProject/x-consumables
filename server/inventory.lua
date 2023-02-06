local QBCore = GetResourceState("qb-inventory"):find("start") and exports["qb-core"]:GetCoreObject()

function Inventory.addItem(source, itemName, itemAmount)
    local response
    if ox_inventory then
        response = ox_inventory:AddItem(source, itemName, itemAmount)
    elseif qb_inventory then
        response = qb_inventory:AddItem(source, itemName, itemAmount)
        if response then TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[itemName], "add", count or 1) end
    end
    return response
end

function Inventory.removeItem(source, itemName, itemAmount)
    local response
    if ox_inventory then
        response = ox_inventory:RemoveItem(source, itemName, itemAmount)
    elseif qb_inventory then
        response = qb_inventory:RemoveItem(source, itemName, itemAmount)
        if response then TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[itemName], "remove", count or 1) end
    end
    return response
end

function Inventory.search(source, itemName)
    local response
    if ox_inventory then
        response = ox_inventory:Search(source, 'count', itemName)
    elseif qb_inventory then
        local isTable = type(item) == "table" and true or type(item) == "string" and false
        local xPlayer = Framework.Object.Functions.GetPlayer(source)
        if xPlayer then
            if isTable then
                for _, itemName in pairs(item) do
                    response[itemName] = 0
                end
            else
                response = 0
            end
            for _, itemData in pairs(xPlayer.PlayerData.items) do
                if isTable and response[itemData?.name] then
                    response[itemData.name] += itemData?.amount
                elseif not isTable and itemData?.name == item then
                    response += itemData?.amount
                end
            end
        end
    end
    return response
end

function Inventory.createUseableItem(itemName, data)
    if qb_inventory then
        qb_inventory:CreateUsableItem(itemName, data and function(source, item)
            local time = tostring(os.time())
            Player(source).state:set(time, true, true)
            TriggerClientEvent("x-consumables:qb:onItemUsed", source, {name = item.name, label = item.label, time = time})
            SetTimeout(Config.Items[item.name].animation?.useTime or Config.UseTime, function()
                if not Player(source).state[time] then return end
                Player(source).state:set(time, nil, true)
                Inventory.removeItem(source, item.name, 1)
                CurrentResourceExport:use("usedItem", {name = item.name}, {id = source})
            end)
        end or nil)
    end
end

AddEventHandler("QBCore:Server:UpdateObject", function()
    QBCore = exports["qb-core"]:GetCoreObject()
end)