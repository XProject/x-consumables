Config = {}

Config.Debug = false

Config.ProgressType = "circle" -- "bar" or "circle"

Config.Locales = {
    using = "Using",
    cancelled = "Cancelled"
}

Config.Items = {
    --[[
    ["NAME_OF_THE_ITEM"] = nil or {
        statusOnUse = nil or { ["NAME_OF_THE_STATUS_1"] = PERCENTAGE => 10 | -10 | etc, ["NAME_OF_THE_STATUS_2"] = PERCENTAGE => 10 | -10 | etc, }
        itemOnUse   = nil or { ["NAME_OF_ITEM_1"] = AMOUNT => 1 | -1 | etc, ["NAME_OF_ITEM_2"] = AMOUNT => 1 | -1 | etc, },
        healthOnUse = nil or PERCENTAGE => 10 | -10 | etc
        animation   = nil or {
            anim = nil or { dict = "ANIM_DICTIONARY", clip = "ANIM_CLIPSET" } or { scenario = "ANIM_SCENARIO" },
            prop = nil or { model = `MODEL_NAME`, bone = BONE_INDEX, pos = vec3(x, y, z), rot = vec3(x, y, z) } or {{model = `MODEL_NAME_1`, bone = BONE_INDEX_1, pos = vec3(x1, y1, z1), rot = vec3(x1, y1, z1)}, {model = `MODEL_NAME_2`, bone = BONE_INDEX_2, pos = vec3(x2, y2, z2), rot = vec3(x2, y2, z2)}, etc},
            useTime = nil or DURATION_IN_MILLISECOND,
            canCancel = nil or true | false,
            progressType = nil or "bar" or "circle", -- Overrides Config.ProgressType for current item
            disable = nil or {
                move = nil or true | false,
                car = nil or true | false,
                combat = nil or true | false,
                mouse = nil or true | false
            }
        },
        clientOnUse = nil or function()
            function(...)
            exports[...]:(...)
            TriggerEvent(...)
            TriggerServerEvent(...)
        end,
        serverOnUse = nil or function()
            function(...)
            exports[...]:(...)
            TriggerEvent(...)
            TriggerClientEvent(...)
        end
    }
    ]]
}