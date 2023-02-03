local currentResourceExport = exports[GetCurrentResourceName()]
local QBCore = GetResourceState("qb-inventory"):find("start") and exports["qb-core"]:GetCoreObject()
local qb_inventory = GetResourceState("qb-inventory"):find("start") and exports["qb-inventory"]
Inventory = {}

function Inventory.CreateUseableItem(itemName, data)
    if not qb_inventory then return end
    qb_inventory:CreateUsableItem(itemName, data and function(source, item)
        currentResourceExport:use("usedItem", {name = item}, {id = source})
        TriggerClientEvent("x-consumables:qb:onItemUsed", source, {name = item, label = QBCore.Shared.Items[item:lower()]?.label})
    end or nil)
end

AddEventHandler("QBCore:Server:UpdateObject", function()
    QBCore = exports["qb-core"]:GetCoreObject()
end)