local currentResourceExport = exports[CurrentResourceName]

RegisterNetEvent("x-consumables:qb:onItemUsed", function(itemData)
    if GetInvokingResource() then return end
    currentResourceExport:use(itemData)
end)