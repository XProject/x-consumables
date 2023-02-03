exports("use", function(event, item, inventory, _, _)
    if Config.Items[item.name] then
        if event == "usedItem" then
            if Config.Items[item.name].statusOnUse and next(Config.Items[item.name].statusOnUse) and x_status then
                for statusName, statusAmount in pairs(Config.Items[item.name].statusOnUse) do
                    if statusAmount > 0 then
                        x_status:increaseStatus(inventory.id, statusName, statusAmount, true)
                    elseif statusAmount < 0 then
                        x_status:decreaseStatus(inventory.id, statusName, -statusAmount, true)
                    end
                end
            end

            if Config.Items[item.name].itemOnUse and next(Config.Items[item.name].itemOnUse) then
                for itemName, itemAmount in pairs(Config.Items[item.name].itemOnUse) do
                    if itemAmount > 0 then
                        ox_inventory:AddItem(inventory.id, itemName, itemAmount)
                    elseif itemAmount < 0 then
                        local itemCount = ox_inventory:Search(inventory.id, 'count', itemName)
                        if itemCount and itemCount > 0 then
                            ox_inventory:RemoveItem(inventory.id, itemName, itemCount > -itemAmount and -itemAmount or itemCount)
                        end
                    end
                end
            end

            if Config.Items[item.name].healthOnUse then
                local playerPed = GetPlayerPed(inventory.id)
                local maxHealth = GetEntityMaxHealth(playerPed)
                local health = GetEntityHealth(playerPed)
                local percentage = Config.Items[item.name].healthOnUse > 0 and Config.Items[item.name].healthOnUse or Config.Items[item.name].healthOnUse < 0 and -Config.Items[item.name].healthOnUse or nil
                if percentage then
                    local healthToAdd = percentage * maxHealth / 100
                    healthToAdd = Config.Items[item.name].healthOnUse > 0 and healthToAdd or -healthToAdd
                    health = health + healthToAdd
                    SetEntityHealth(playerPed, health > maxHealth and maxHealth or health)
                end
            end

            if Config.Items[item.name].serverOnUse then
                Config.Items[item.name].serverOnUse()
            end

            return
        end
    end
end)