local currentResourceName = GetCurrentResourceName()

exports("addItem", function(itemToAdd)
    if not type(itemToAdd) ~= "table" then return print("Error in type of passed parameter to exports[\"x-consumables\"]:addItem") end
    local invokingResource = GetInvokingResource()
    for itemName, data in pairs(itemToAdd) do
        if not Config.Items[itemName] then
            data.resource = data.resource or invokingResource
            Config.Items[itemName] = data
        else
            if Config.Debug then print(("[%s]: Item %s already exists in Config.Items table, so it won't be overrided..."):format(currentResourceName:upper(), itemName)) end
        end
    end
    ---@diagnostic disable-next-line: cast-local-type
    invokingResource = nil
end)

AddEventHandler("onResourceStop", function(resource)
    for itemName, data in pairs(Config.Items) do
        if data.resource and data.resource == resource then
            Config.Items[itemName] = nil
            if Config.Debug then print(("[%s]: Removing item %s from Config.Items table..."):format(currentResourceName:upper(), itemName)) end
        end
    end
end)