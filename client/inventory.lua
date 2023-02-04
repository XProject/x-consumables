local currentResourceExport = exports[CurrentResourceName]

RegisterNetEvent("x-consumables:qb:onItemUsed", function(itemData)
    if GetInvokingResource() then return end
    if not currentResourceExport:use(itemData) then
        LocalPlayer.state:set(itemData.time, nil, true)
    end
end)