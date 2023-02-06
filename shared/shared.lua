local isServer = IsDuplicityVersion()
CurrentResourceName = GetCurrentResourceName()

ox_inventory = GetResourceState("ox_inventory"):find("start") and exports["ox_inventory"] or nil
qb_inventory = ((isServer and GetResourceState("qb-inventory"):find("start")) and exports["qb-inventory"]) or ((not isServer and GetResourceState("qb-inventory"):find("start")) and true) or nil
x_status = GetResourceState("x-status"):find("start")) and exports["x-status"] or nil
-- x_status = ((isServer and GetResourceState("x-status"):find("start")) and exports["x-status"]) or ((not isServer and GetResourceState("x-status"):find("start")) and true) or nil

exports("add", function(itemToAdd)
    if type(itemToAdd) ~= "table" then return print("Error in type of passed parameter to exports[\"x-consumables\"]:add") end
    local invokingResource = GetInvokingResource()
    for itemName, data in pairs(itemToAdd) do
        if not Config.Items[itemName] then
            data.resource = invokingResource
            Config.Items[itemName] = data
            if isServer then Inventory.CreateUseableItem(itemName, true) end
            if Config.Debug then print(("^7[^2%s^7]: Adding item ^5%s^7 to Config.Items table..."):format(currentResourceName:upper(), itemName)) end
        else
            if Config.Debug then print(("^7[^2%s^7]: Item ^5%s^7 already exists in Config.Items table, so it won't be overrided..."):format(currentResourceName:upper(), itemName)) end
        end
    end
    ---@diagnostic disable-next-line: cast-local-type
    invokingResource = nil
end)

local function onResourceStop(resource)
    for itemName, data in pairs(Config.Items) do
        if data.resource and data.resource == resource then
            Config.Items[itemName] = nil
            if isServer then Inventory.CreateUseableItem(itemName, false) end
            if Config.Debug then print(("^7[^2%s^7]: Removing item ^5%s^7 from Config.Items table..."):format(currentResourceName:upper(), itemName)) end
        end
    end
end

AddEventHandler("onResourceStop", function(resource)
    onResourceStop(resource)
end)

AddEventHandler("onServerResourceStop", function(resource)
    onResourceStop(resource)
end)

SetTimeout(1000, collectgarbage)