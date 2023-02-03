local currentResourceExport = exports[GetCurrentResourceName()]
qb_inventory = GetResourceState("qb-inventory"):find("start") and true

RegisterNetEvent("x-consumables:qb:onItemUsed", function(itemData)
    if GetInvokingResource() then return end
    currentResourceExport:use(itemData)
end)