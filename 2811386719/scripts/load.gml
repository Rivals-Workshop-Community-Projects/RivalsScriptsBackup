sprite_change_offset("idle",                        23, 43, true);
sprite_change_offset("idle_hurtbox",                44, 84, true);
sprite_change_offset("wall_idle_hurtbox",           30, 80, true);
sprite_change_offset("crouch_hurtbox",              44, 61, true);
sprite_change_offset("hurt",                        25, 42, true);
sprite_change_offset("downhurt",                    22, 46, true);
sprite_change_offset("uphurt",                      19, 54, true);
sprite_change_offset("bighurt",                     26, 36, true);
sprite_change_offset("spinhurt",                    23, 46, true);
sprite_change_offset("hurtground",                  23, 43, true);
sprite_change_offset("crouch",                      25, 38, true);
sprite_change_offset("walk",                        26, 45, true);
sprite_change_offset("walkturn",                    34, 48, true);
sprite_change_offset("dash",                        41, 41, true);
sprite_change_offset("dashstart",                   43, 47, true);
sprite_change_offset("dashstop",                    19, 45, true);
sprite_change_offset("dashturn",                    48, 48, true);

sprite_change_offset("jumpstart",                   29, 47, true);
sprite_change_offset("jump",                        28, 59, true);
sprite_change_offset("doublejump",                  28, 59, true);
sprite_change_offset("walljump",                    28, 53, true);
sprite_change_offset("wallcrawl",                   38, 82, true);
sprite_change_offset("pratfall",                    25, 48, true);
sprite_change_offset("land",                        29, 37, true);
sprite_change_offset("landinglag",                  33, 42, true);

sprite_change_offset("parry",                       38, 53, true);
sprite_change_offset("roll_forward",                38, 37, true);
sprite_change_offset("roll_backward",               29, 47, true);
sprite_change_offset("airdodge",                    40, 59, true);
sprite_change_offset("airdodge_bubble",             40, 59, true);
sprite_change_offset("waveland",                    30, 39, true);
sprite_change_offset("tech",                        40, 60, true);

sprite_change_offset("jab",                         52, 63, true);
sprite_change_offset("dattack",                     35, 54, true);
sprite_change_offset("ftilt",                       38, 61, true);
sprite_change_offset("dtilt",                       36, 58, true);
sprite_change_offset("utilt",                       21, 61, true);
sprite_change_offset("nair",                        45, 56, true);
sprite_change_offset("fair",                        33, 71, true);
sprite_change_offset("bair",                        35, 53, true);
sprite_change_offset("uair",                        34, 61, true);
sprite_change_offset("dair",                        25, 56, true);
sprite_change_offset("fstrong",                     40, 51, true);
sprite_change_offset("fstrong_lightning",           40, 51, true);
sprite_change_offset("ustrong",                     49, 93, true);

sprite_change_offset("dstrong",                     64, 62, true);
sprite_change_offset("dstrong_static_overlay",      64, 62, true);
sprite_change_offset("dstrong_proj_nh",             12, 13, true);
sprite_change_offset("orb_spawn",                   28, 22, true);
sprite_change_offset("orb_loop",                    29, 30, true);

sprite_change_offset("nspecial",                    72, 79, true);
sprite_change_offset("air_nspecial",                72, 79, true);
sprite_change_offset("nthrow",                      72, 79, true);
sprite_change_offset("air_nthrow",                  72, 79, true);
sprite_change_offset("fspecial",                    41, 70, true);
sprite_change_offset("fspecial_air",                33, 57, true);
sprite_change_offset("uspecial",                    48, 63, true);
sprite_change_offset("uspecial_ground",             48, 75, true);
sprite_change_offset("uthrow",                      84, 123, true);
sprite_change_offset("dspecial",                    35, 57, true);
sprite_change_offset("taunt",                       42, 56, true);

sprite_change_offset("plat",                        32, 47);
sprite_change_offset("electric_wave",               100, 35);
sprite_change_offset("wave",                        100, 35);
sprite_change_offset("jet",                         24, 29);
sprite_change_offset("jet_discharge",               24, 29);
sprite_change_offset("jet_static_overlay",          24, 29);
sprite_change_offset("wat",                         25, 26);
sprite_change_offset("lightningfx_uspecial",        85, 134);
sprite_change_offset("lightning",       floor(lightning_hbox_width/2), 30);

sprite_change_offset("lightning_mask",  floor(lightning_hbox_width/2), 30);
sprite_change_collision_mask("lightning_mask",  true, 0, 0,0,0,0, 0);

sprite_change_offset("nspecial_water_throw_whiff",    64, 0);
sprite_change_offset("nspecial_water_explosion",      84*2, 116*2);
sprite_change_offset("nspecial_water_geyser",         60*2, 83*2);
sprite_change_offset("nspecial_water_hoop",           70*2, 57*2);
sprite_change_offset("nspecial_water_ball_overlay",   12, 11);
sprite_change_offset("nspecial_water_miss_ground_hitfx",   38*2, 28*2);

sprite_change_offset("uthrow_hitfx",                  138, 92);
sprite_change_offset("nspecial_proj",                 12, 24);
sprite_change_offset("orb_col_mask",                  30, 30);
sprite_change_offset("electric_effect",               31, 25);
sprite_change_offset("electric_effect_pull",          31, 25);
sprite_change_offset("nspecial_magnet",               13, 20);
sprite_change_offset("magnetism_trail",               17, 6);
sprite_change_offset("magnetism_layered_trail",       17, 6);
sprite_change_offset("ball_offscreen",                8, 9);


victory_theme = set_victory_theme(sound_get("Gentle Giant"))
