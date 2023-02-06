local currentResourceExport = exports[CurrentResourceName]

function SetInventoryAccess(access)
    if qb_inventory then
        LocalPlayer.state:set("inv_busy", not access, true)
        TriggerEvent("inventory:client:busy:status", not access)
        TriggerEvent("canUseInventoryAndHotbar:toggle", access)
    end
end

RegisterNetEvent("x-consumables:qb:onItemUsed", function(itemData)
    if GetInvokingResource() then return end
    if not currentResourceExport:use(itemData) then
        LocalPlayer.state:set(itemData.time, nil, true)
    end
end)