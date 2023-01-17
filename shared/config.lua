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
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -0.5 }
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
    
    -- catcafe
    ["x_bentobox"] = {
        statusOnUse = { ["Hunger"] = 40, ["Stress"] = -1 }
    },
    ["x_boba"] = nil,
    ["x_brownie_catcafe"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_brownie_catcafe_uncooked"] = nil,
    ["x_coffee_iced_catcafe"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_cookie_catcafe"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_cookie_catcafe_uncooked"] = nil,
    ["x_cupcake_catcafe"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_cupcake_catcafe_uncooked"] = nil,
    ["x_donut_catcafe"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_donut_catcafe_uncooked"] = nil,
    ["x_instant_noodles"] = {
        statusOnUse = { ["Hunger"] = 30, ["Thirst"] = 10, ["Stress"] = -1 }
    },
    ["x_instant_noodles_uncooked"] = nil,
    ["x_instant_rice"] = {
        statusOnUse = { ["Hunger"] = 30, ["Stress"] = -1 }
    },
    ["x_instant_rice_uncooked"] = nil,
    ["x_lolipop_catcafe"] = {
        statusOnUse = { ["Hunger"] = 10, ["Stress"] = -1 }
    },
    ["x_matcha"] = nil,
    ["x_menu_catcafe"] = nil,
    ["x_mochi_blueberry"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_mochi_blueberry_uncooked"] = nil,
    ["x_mochi_matcha"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_mochi_matcha_uncooked"] = nil,
    ["x_mochi_orange"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_mochi_orange_uncooked"] = nil,
    ["x_mochi_strawberry"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_mochi_strawberry_uncooked"] = nil,
    ["x_neko_onigiri"] = {
        statusOnUse = { ["Hunger"] = 40, ["Stress"] = -1 }
    },
    ["x_nori"] = nil,
    ["x_paste_miso"] = nil,
    ["x_pizza_kitty"] = {
        statusOnUse = { ["Hunger"] = 40, ["Stress"] = -1 }
    },
    ["x_pizza_kitty_uncooked"] = nil,
    ["x_purrito"] = {
        statusOnUse = { ["Hunger"] = 40, ["Stress"] = -1 }
    },
    ["x_purrito_uncooked"] = nil,
    ["x_ramen"] = {
        statusOnUse = { ["Hunger"] = 30, ["Thirst"] = 10, ["Stress"] = -1 }
    },
    ["x_ricecake"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_sake"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_sandy_chocolate"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_sandy_chocolate_uncooked"] = nil,
    ["x_sandy_vanilla"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_sandy_vanilla_uncooked"] = nil,
    ["x_soup_miso"] = {
        statusOnUse = { ["Hunger"] = 30, ["Thirst"] = 10, ["Stress"] = -1 }
    },
    ["x_soup_tofu"] = {
        statusOnUse = { ["Hunger"] = 25, ["Thirst"] = 5, ["Stress"] = -1 }
    },
    ["x_strawberryroll_catcafe"] = {
        statusOnUse = { ["Hunger"] = 20, ["Stress"] = -1 }
    },
    ["x_strawberryroll_catcafe_uncooked"] = nil,
    ["x_sushi_catcafe"] = {
        statusOnUse = { ["Hunger"] = 30, ["Stress"] = -1 }
    },
    ["x_tea_boba"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_tea_boba_blueberry"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_tea_boba_chocolate"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_tea_boba_matcha"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_tea_boba_strawberry"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_tea_iced_lemon_lime"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_tea_iced_orange"] = {
        statusOnUse = { ["Thirst"] = 20, ["Stress"] = -1 }
    },
    ["x_tofu"] = {
        statusOnUse = { ["Hunger"] = 5, ["Stress"] = -1 }
    },
}