---@diagnostic disable: redefined-local, cast-local-type
local esx = GetResourceState("es_extended"):find("start") and true or nil
local qb = GetResourceState("qb-core"):find("start") and true or nil

if qb then
    qb = exports['qb-core']:GetCoreObject()
    qb = {
        GetPlayerData = qb.Functions.GetPlayerData,
        GetHunger = function() return qb.GetPlayerData()?.metadata["hunger"] or 0.0 end,
        GetThirst = function() return qb.GetPlayerData()?.metadata["thirst"] or 0.0 end
    }
end

local function increaseStatus(statusName, amountToIncrease)
    if statusName ~= "Hunger" and statusName ~= "Thirst" and statusName ~= "Stress" then return end
    if esx then
        TriggerEvent("esx_status:add", statusName:lower(), amountToIncrease * 10000)
    elseif qb then
        if statusName == "Hunger" then
            TriggerServerEvent("consumables:server:addHunger", qb.GetHunger() + amountToIncrease)
        elseif statusName == "Thirst" then
            TriggerServerEvent("consumables:server:addThirst", qb.GetThirst() + amountToIncrease)
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
            TriggerServerEvent("consumables:server:addHunger",  qb.GetHunger() + -amountToDecrease)
        elseif statusName == "Thirst" then
            TriggerServerEvent("consumables:server:addThirst", qb.GetThirst() + -amountToDecrease)
        elseif statusName == "Stress" then
            TriggerServerEvent("hud:server:RelieveStress", amountToDecrease)
        end
    end
end

local function progress(data)
    data = {
        progressType = data.progressType,
        duration = data.useTime or Config.UseTime,
        label = ("%s %s"):format(Config.Locales.using, data.label),
        position = "bottom",
        useWhileDead = false,
        allowRagdoll = false,
        allowCuffed = false,
        allowFalling = false,
        canCancel = (data.canCancel == nil and true) or data.canCancel,
        anim = data.anim,
        prop = data.prop,
        disable = data.disable
    }
    return data.progressType == "bar" and lib.progressBar(data)
    or data.progressType == "circle" and lib.progressCircle(data)
end

local function onItemUsed(data)
    if Config.Items[data.name].statusOnUse and next(Config.Items[data.name].statusOnUse) and not x_status then
        for status, amount in pairs(Config.Items[data.name].statusOnUse) do
            if amount > 0 then
                increaseStatus(status, amount)
            else
                decreaseStatus(status, -amount)
            end
        end
    end
    if Config.Items[data.name].clientOnUse then
        Config.Items[data.name].clientOnUse()
    end
    return true
end

exports("use", function(data, _)
    local response = false
    if Config.Items[data.name] then
        if Config.Items[data.name].animation then
            Config.Items[data.name].animation.label = Config.Items[data.name].animation.label or data.label
            Config.Items[data.name].animation.progressType = Config.Items[data.name].animation.progressType or Config.ProgressType
            if not progress(Config.Items[data.name].animation) then return response, lib.notify({title = Config.Locales.cancelled, type = "error"}) end
        end
        if ox_inventory then
            ox_inventory:useItem(data, function(cbData)
                if not cbData then return end
                response = onItemUsed(data)
            end)
        elseif qb_inventory then
            response = onItemUsed(data)
        end
    end
    return response
end)