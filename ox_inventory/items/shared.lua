return {
    -- Copy everything below this line
    ['x_apple'] = {
        label = 'Apple',
        weight = 200,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `sf_prop_sf_apple_01b`, bone = 60309, pos = vec3(0.0, 0.015, -0.02), rot = vec3(-124.6964, -166.576, 8.4572) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_baking_soda'] = {
        label = 'Baking Soda',
        weight = 450,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_banana'] = {
        label = 'Banana',
        weight = 250,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `v_res_tre_banana`, bone = 60309, pos = vec3(0.0, -0.015, 0.0), rot = vec3(300.0, 90.0, 8.4572) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_blueberry'] = {
        label = 'Blueberry',
        weight = 100,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_cheese_cheddar'] = {
        label = 'Cheddar Cheese',
        weight = 100,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_cheese_mozzarella'] = {
        label = 'Mozzarella Cheese',
        weight = 100,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_cheese_parmesan'] = {
        label = 'Parmesan Cheese',
        weight = 200,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_chocolate'] = {
        label = 'Chocolate',
        weight = 250,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `prop_choc_ego`, bone = 60309, pos = vec3(0.0, 0.0, 0.0), rot = vec3(300.0, 0.0, 0.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_coffee_bean'] = {
        label = 'Coffee Bean',
        weight = 100,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_cream'] = {
        label = 'Cooking Cream',
        weight = 350,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `prop_food_ketchup`, bone = 60309, pos = vec3(0.2, 0.0, 0.0), rot = vec3(0.0, -90.0, 0.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_cup_empty'] = {
        label = 'Empty Cup',
        weight = 600,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_dough'] = {
        label = 'Dough',
        weight = 625,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_dough_floured'] = {
        label = 'Floured Dough',
        weight = 650,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_egg'] = {
        label = 'Egg',
        weight = 500,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_flour'] = {
        label = 'Flour',
        weight = 150,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_glass_empty'] = {
        label = 'Empty Glass',
        weight = 500,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_glass_water'] = {
        label = 'Glass of Water',
        weight = 650,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-drinking',
            prop = { model = `prop_tall_glass`, bone = 28422, pos = vec3(0.0, 0.0, -0.09), rot = vec3(0.0, 0.0, 130.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_grape'] = {
        label = 'Grapes',
        weight = 250,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_hand_mixer'] = {
        label = 'Hand Mixer',
        weight = 1000,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_lemon'] = {
        label = 'Lemon',
        weight = 200,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_lemonade'] = {
        label = 'Lemonade',
        weight = 700,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-drinking',
            prop = { model = `prop_food_bs_juice03`, bone = 28422, pos = vec3(0.0, 0.0, -0.09), rot = vec3(0.0, 0.0, 130.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_lettuce'] = {
        label = 'Lettuce',
        weight = 200,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_lime'] = {
        label = 'Lime',
        weight = 200,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_mango'] = {
        label = 'Mango',
        weight = 250,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `ng_proc_food_ornge1a`, bone = 60309, pos = vec3(0.02, -0.01, -0.05), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_marshmellow'] = {
        label = 'Marshmellow',
        weight = 150,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_milk'] = {
        label = 'Milk',
        weight = 700,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-drinking',
            prop = { model = `v_res_tt_milk`, bone = 28422, pos = vec3(0.02, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_mushroom'] = {
        label = 'Mushroom',
        weight = 300,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_olive'] = {
        label = 'Olive',
        weight = 300,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_onion'] = {
        label = 'Onion',
        weight = 300,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_onion_sliced'] = {
        label = 'Sliced Onion',
        weight = 300,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_orange'] = {
        label = 'Orange',
        weight = 250,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `ng_proc_food_ornge1a`, bone = 60309, pos = vec3(0.02, -0.01, -0.05), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_pickle'] = {
        label = 'Pickle',
        weight = 250,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_pizza_sauce'] = {
        label = 'Pizza Sauce',
        weight = 550,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_potato'] = {
        label = 'Potato',
        weight = 300,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_potato_sliced'] = {
        label = 'Sliced Potato',
        weight = 300,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_rolling_pin'] = {
        label = 'Rolling Pin',
        weight = 850,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_salt'] = {
        label = 'Salt',
        weight = 100,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `prop_food_sugarjar`, bone = 60309, pos = vec3(0.15, 0.01, -0.01), rot = vec3(0.0, -90.0, 0.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_strawberry'] = {
        label = 'Strawberry',
        weight = 150,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_sugar'] = {
        label = 'Sugar',
        weight = 100,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `prop_food_sugarjar`, bone = 60309, pos = vec3(0.15, 0.01, -0.01), rot = vec3(0.0, -90.0, 0.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_tea'] = {
        label = 'Tea Leaf',
        weight = 100,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_tomato'] = {
        label = 'Tomato',
        weight = 250,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `ng_proc_food_ornge1a`, bone = 60309, pos = vec3(0.02, -0.01, -0.05), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_vanilla_bean'] = {
        label = 'Vanilla bean',
        weight = 100,
        stack = true,
        consume = 1,
        client = {
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    ['x_wrap'] = {
        label = 'Bread Wrap',
        weight = 250,
        stack = true,
        consume = 1,
        client = {
            anim = 'x-eating',
            prop = { model = `prop_food_burg2`, bone = 60309, pos = vec3(0.1, 0.00, -0.05), rot = vec3(180.0, 180.0, 90.0) },
            usetime = 10000,
            cancel = true,
            disable = {
                combat = true
            },
            export = 'x-restaurant.consume'
        }
    },
    -- Copy everything until the line above
}