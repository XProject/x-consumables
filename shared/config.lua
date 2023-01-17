Config = {}

Config.Debug = true

Config.Items = {
    --[[
    ["NAME_OF_THE_ITEM"] = nil or {
        statusOnUse = nil or { ["NAME_OF_THE_STATUS_1"] = PERCENTAGE => 10 | -10 | etc, ["NAME_OF_THE_STATUS_2"] = PERCENTAGE => 10 | -10 | etc, }
        itemOnUse   = nil or { ["NAME_OF_ITEM_1"] = AMOUNT => 1 | -1 | etc, ["NAME_OF_ITEM_2"] = AMOUNT => 1 | -1 | etc, },
        healthOnUse = nil or PERCENTAGE => 10 | -10 | etc
    }
    ]]
    -- shared
    ["x_apple"] = {
        statusOnUse = { ["Hunger"] = 10, ["Thirst"] = 1, ["Stress"] = -0.5 }
    },
    ["x_baking_soda"] = nil,
    ["x_banana"] = {
        statusOnUse = { ["Hunger"] = 10, ["Thirst"] = -2, ["Stress"] = -0.5 }
    },
    ["x_blueberry"] = {
        statusOnUse = { ["Hunger"] = 5, ["Thirst"] = 1, ["Stress"] = -0.5 }
    },
    ["x_cheese_cheddar"] = {
        statusOnUse = { ["Hunger"] = 1 }
    },
    ["x_cheese_mozzarella"] = {
        statusOnUse = { ["Hunger"] = 1 }
    },
    ["x_cheese_parmesan"] = {
        statusOnUse = { ["Hunger"] = 1 }
    },
    ["x_chocolate"] = {
        statusOnUse = { ["Hunger"] = 20, ["Thirst"] = -5, ["Stress"] = -0.5 }
    },
    ["x_coffee_bean"] = nil,
    ["x_cream"] = {
        statusOnUse = { ["Hunger"] = 2, ["Stress"] = -0.5 }
    },
    ["x_cup_empty"] = nil,
    ["x_dough"] = nil,
    ["x_dough_floured"] = nil,
    ["x_egg"] = nil,
    ["x_flour"] = nil,
    ["x_glass_empty"] = nil,
    ["x_glass_water"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -0.5 },
        itemOnUse = { ["x_glass_empty"] = 1 }
    },
    ["x_grape"] = {
        statusOnUse = { ["Hunger"] = 5, ["Thirst"] = 1, ["Stress"] = -0.5 }
    },
    ["x_hand_mixer"] = nil,
    ["x_lemon"] = {
        statusOnUse = { ["Hunger"] = 1, ["Thirst"] = -5 }
    },
    ["x_lemonade"] = {
        statusOnUse = { ["Thirst"] = 30, ["Stress"] = -0.5 }
    },
    ["x_lettuce"] = {
        statusOnUse = { ["Hunger"] = 10, ["Thirst"] = 5, ["Stress"] = -0.5 }
    },
    ["x_lime"] = {
        statusOnUse = { ["Hunger"] = 1, ["Thirst"] = -5 }
    },
    ["x_mango"] = {
        statusOnUse = { ["Hunger"] = 10, ["Thirst"] = 2, ["Stress"] = -0.5 }
    },
    ["x_marshmellow"] = {
        statusOnUse = { ["Hunger"] = 10, ["Stress"] = -0.5 }
    },
    ["x_milk"] = {
        statusOnUse = { ["Thirst"] = 30, ["Stress"] = -0.5 }
    },
    ["x_mushroom"] = {
        statusOnUse = { ["Hunger"] = 2 }
    },
    ["x_olive"] = {
        statusOnUse = { ["Hunger"] = 2 }
    },
    ["x_onion"] = {
        statusOnUse = { ["Hunger"] = 2, ["Thirst"] = -15 }
    },
    ["x_onion_sliced"] = {
        statusOnUse = { ["Hunger"] = 2, ["Thirst"] = -15 }
    },
    ["x_orange"] = {
        statusOnUse = { ["Hunger"] = 5, ["Thirst"] = 15, ["Stress"] = -0.5 }
    },
    ["x_pickle"] = {
        statusOnUse = { ["Hunger"] = 1, ["Thirst"] = 1 }
    },
    ["x_pizza_sauce"] = nil,
    ["x_potato"] = nil,
    ["x_potato_sliced"] = nil,
    ["x_rolling_pin"] = nil,
    ["x_salt"] = {
        statusOnUse = { ["Thirst"] = -30 }
    },
    ["x_strawberry"] = {
        statusOnUse = { ["Hunger"] = 10, ["Thirst"] = 2, ["Stress"] = -0.5 }
    },
    ["x_sugar"] = {
        statusOnUse = { ["Hunger"] = 1, ["Thirst"] = -5 }
    },
    ["x_tea"] = nil,
    ["x_tomato"] = {
        statusOnUse = { ["Hunger"] = 5, ["Thirst"] = 5, ["Stress"] = -0.5 }
    },
    ["x_vanilla_bean"] = nil,
    ["x_wrap"] = {
        statusOnUse = { ["Hunger"] = 15, ["Stress"] = -0.5 }
    },
}