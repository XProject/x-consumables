exports("consume", function(event, item, inventory, slot, data)
    if Config.Items[data.name] then
        if event == "usedItem" then
            if Config.Items[data.name].itemOnUse and next(Config.Items[data.name].itemOnUse) then
                for itemName, itemAmount in pairs(Config.Items[data.name].itemOnUse) do
                    if itemAmount > 0 then
                        ox_inventory:AddItem(inventory.id, itemName, itemAmount)
                    elseif itemAmount < 0 then
                        local itemCount = ox_inventory:Search(inventory.id, 'count', itemName)
                        if itemCount and itemCount > 0 then
                            ox_inventory:RemoveItem(inventory.id, itemName, itemCount > itemAmount and itemAmount or itemCount)
                        end
                    end
                end
            end

            if Config.Items[data.name].healthOnUse then
                local playerPed = GetPlayerPed(inventory.id)
                local maxHealth = GetEntityMaxHealth(playerPed)
                local health = GetEntityHealth(playerPed)
                local percentage = Config.Items[data.name].healthOnUse > 0 and Config.Items[data.name].healthOnUse or Config.Items[data.name].healthOnUse < 0 and -Config.Items[data.name].healthOnUse or nil
                if percentage then
                    local healthToAdd = percentage * maxHealth / 100
                    healthToAdd = Config.Items[data.name].healthOnUse > 0 and healthToAdd or -healthToAdd
                    health = health + healthToAdd
                    SetEntityHealth(playerPed, health > maxHealth and maxHealth or health)
                end
            end

            return
        end
    end
end)