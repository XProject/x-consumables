ox_inventory = exports["ox_inventory"]
x_status = IsDuplicityVersion() and exports["x-status"] or (GetResourceState("x-status"):find("start") and true) or nil
local currentResourceName = GetCurrentResourceName()

exports("add", function(itemToAdd)
    if type(itemToAdd) ~= "table" then return print("Error in type of passed parameter to exports[\"x-consumables\"]:addItem") end
    local invokingResource = GetInvokingResource()
    for itemName, data in pairs(itemToAdd) do
        if not Config.Items[itemName] then
            data.resource = invokingResource
            Config.Items[itemName] = data
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