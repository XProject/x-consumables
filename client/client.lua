---@diagnostic disable: redefined-local
local esx = GetResourceState("es_extended"):find("start") and true or nil
local qb = GetResourceState("qb-core"):find("start") and true or nil

local function increaseStatus(statusName, amountToIncrease)
    if statusName ~= "Hunger" and statusName ~= "Thirst" and statusName ~= "Stress" then return end
    if esx then
        TriggerEvent("esx_status:add", statusName:lower(), amountToIncrease * 10000)
    elseif qb then
        if statusName == "Hunger" then
            TriggerServerEvent("consumables:server:addHunger", amountToIncrease)
        elseif statusName == "Thirst" then
            TriggerServerEvent("consumables:server:addThirst", amountToIncrease)
        elseif statusName == "Stress" then
            TriggerServerEvent("hud:server:GainStress", amountToIncrease)
        end
    end
end

local function decreaseStatus(statusName, amountToDecrease)
    if statusName ~= "Hunger" and statusName ~= "Thirst" and statusName ~= "Stress" then return end
    if esx then
        TriggerEvent("esx_status:remove", statusName:lower(), amountToDecrease * 10000)
    elseif qb then
        if statusName == "Hunger" then
            TriggerServerEvent("consumables:server:addHunger", -amountToDecrease)
        elseif statusName == "Thirst" then
            TriggerServerEvent("consumables:server:addThirst", -amountToDecrease)
        elseif statusName == "Stress" then
            TriggerServerEvent("hud:server:RelieveStress", amountToDecrease)
        end
    end
end

exports("use", function(data, _)
    if Config.Items[data.name] then
        ox_inventory:useItem(data, function(cbData)
            if not cbData or not next(Config.Items[data.name].statusOnUse) or x_status then return end
            for status, amount in pairs(Config.Items[data.name].statusOnUse) do
                if amount > 0 then
                    increaseStatus(status, amount)
                else
                    decreaseStatus(status, -amount)
                end
            end
        end)
    end
end)