if(num_samuses == 1){
    draw_sprite(sprite_get("hud_big"), 0, 0, 0);
    draw_sprite(sprite_get("hud_adam_textbox_big"), animation_counter * 0.1, temp_x - 18, temp_y - 62);
}else if(num_samuses >= 2){
    draw_sprite(sprite_get("hud_small"), 0, temp_x - 8, temp_y - 54);
}

//energy
var energy_tens = floor((energy % 100) / 10); 
var energy_units = energy % 10;

//missiles
var missile_hundreds = floor(missile_amount / 100); 
var missile_tens = floor((missile_amount % 100) / 10); 
var missile_units = missile_amount % 10;

//super missiles
var super_missile_tens = floor((super_missile_amount % 100) / 10); 
var super_missile_units = super_missile_amount % 10;

//power bombs
var power_bombs_tens = floor((power_bomb_amount % 100) / 10); 
var power_bombs_units = power_bomb_amount % 10;


// hud selectables
if(num_samuses == 1){
    draw_sprite(sprite_get("hud_numbers"), energy_tens,  82, 36);
    draw_sprite(sprite_get("hud_numbers"), energy_units,  98, 36);
    if(missiles == true){
        draw_sprite(sprite_get("hud_selectables_missiles"), 0,  588,  4);
        draw_sprite(sprite_get("hud_numbers"), missile_hundreds,  588,  36);
        draw_sprite(sprite_get("hud_numbers"), missile_tens,  604,  36);
        draw_sprite(sprite_get("hud_numbers"), missile_units,  620,  36);
    }
    if(super_missiles == true){
        draw_sprite(sprite_get("hud_selectables_super_missiles"), 0,  652,  4);
        draw_sprite(sprite_get("hud_numbers"), super_missile_tens,  652,  36);
        draw_sprite(sprite_get("hud_numbers"), super_missile_units,  668,  36);
    }
    if(power_bombs == true){
        draw_sprite(sprite_get("hud_selectables_power_bombs"), 0,  700,  4);
        draw_sprite(sprite_get("hud_numbers"), power_bombs_tens,  700,  36);
        draw_sprite(sprite_get("hud_numbers"), power_bombs_units,  716,  36);
    }
    if(grapple == true){
        draw_sprite(sprite_get("hud_selectables_grapple_beam"), 0,  748, 4);
    }
    if(X_ray == true){
        draw_sprite(sprite_get("hud_selectables_Xray_scope"), 0,  796, 4);
    }
    if(select_ammo == 1){
        draw_sprite(sprite_get("hud_selectables_missiles_active"), 0,  588, 4);
    }
    if(select_ammo == 2){
        draw_sprite(sprite_get("hud_selectables_super_missiles_active"), 0,  652, 4);
    }
    if(select_ammo == 3){
        draw_sprite(sprite_get("hud_selectables_power_bombs_active"), 0,  700,  4);
    }
    if(select_ammo == 4){
        draw_sprite(sprite_get("hud_selectables_grapple_beam_active"), 0,  748,  4);
    }
    if(select_ammo == 5){
        draw_sprite(sprite_get("hud_selectables_Xray_scope_active"), 0,  796,  4);
    }
    if(energy_tank_amount >= 1){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_1), 0,  4, 8);
    }
    if(energy_tank_amount >= 2){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_2), 0,  28,  8);
    }
    if(energy_tank_amount >= 3){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_3), 0,  52, 8);
    }
    if(energy_tank_amount >= 4){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_4), 0,  76, 8);
    }
    if(energy_tank_amount >= 5){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_5), 0,  100, 8);
    }
    if(energy_tank_amount >= 6){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_6), 0,  124, 8);
    }
    if(energy_tank_amount >= 7){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_7), 0,  148, 8);
    }
    if(energy_tank_amount >= 8){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_8), 0,  172, 8);
    }
    if(energy_tank_amount >= 9){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_9), 0,  196, 8);
    }
    if(energy_tank_amount >= 10){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_10), 0,  220, 8);
    }
    if(energy_tank_amount >= 11){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_11), 0,  244, 8);
    }
    if(energy_tank_amount >= 12){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_12), 0,  268, 8);
    }
    if(energy_tank_amount >= 13){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_13), 0,  292, 8);
    }
    if(energy_tank_amount >= 14){
        draw_sprite(sprite_get("hud_energy_tank_big_" + tank_14), 0,  316, 8);
    }
    if(reserve_tank_amount >= 1){
        draw_sprite(sprite_get("hud_energy_reserve_tank_" + reserve_1), 0,  274, 38);
    }
    if(reserve_tank_amount >= 2){
        draw_sprite(sprite_get("hud_energy_reserve_tank_" + reserve_2), 0,  290, 38);
    }
    if(reserve_tank_amount >= 3){
        draw_sprite(sprite_get("hud_energy_reserve_tank_" + reserve_3), 0,  306, 38);
    }
    if(reserve_tank_amount >= 4){
        draw_sprite(sprite_get("hud_energy_reserve_tank_" + reserve_4), 0,  322, 38);
    }
    if(hit_counter >= 1){
        draw_sprite(sprite_get("hud_level_big_" + string(hit_counter)), 0,  128, 36);
    }
    if(hit_counter <= 4 && level <= 16 && is_randomizer == false){
        draw_sprite(sprite_get("item_box"), animation_counter * 0.04,  854,  6);
    }else if(hit_counter >= 5 && level <= 16 && is_randomizer == false){
        draw_sprite(sprite_get("item_" + string(level + 1)), animation_counter * 0.04,  854,  6);
    }else if(is_randomizer == true){
        if(hit_counter <= 4 && level <= 16 && choice != "e"){
            if(choice == "morphball"){
                draw_sprite(sprite_get("item_1"), animation_counter * 0.04,  854,  6);
            }else if(choice == "bombs_power_up"){
                draw_sprite(sprite_get("item_2"), animation_counter * 0.04,  854,  6);
            }else if(choice == "charge"){
                draw_sprite(sprite_get("item_3"), animation_counter * 0.04,  854,  6);
            }else if(choice == "beam_2"){
                draw_sprite(sprite_get("item_4"), animation_counter * 0.04,  854,  6);
            }else if(choice == "high_jump"){
                draw_sprite(sprite_get("item_5"), animation_counter * 0.04,  854,  6);
            }else if(choice == "varia_suit"){
                draw_sprite(sprite_get("item_6"), animation_counter * 0.04,  854,  6);
            }else if(choice == "speed_booster"){
                draw_sprite(sprite_get("item_7"), animation_counter * 0.04,  854,  6);
            }else if(choice == "beam_3"){
                draw_sprite(sprite_get("item_8"), animation_counter * 0.04,  854,  6);
            }else if(choice == "grapple"){
                draw_sprite(sprite_get("item_9"), animation_counter * 0.04,  854,  6);
            }else if(choice == "beam_4"){
                draw_sprite(sprite_get("item_10"), animation_counter * 0.04,  854,  6);
            }else if(choice == "X_ray"){
                draw_sprite(sprite_get("item_11"), animation_counter * 0.04,  854,  6);
            }else if(choice == "gravity_suit"){
                draw_sprite(sprite_get("item_12"), animation_counter * 0.04,  854,  6);
            }else if(choice == "space_jump"){
                draw_sprite(sprite_get("item_13"), animation_counter * 0.04,  854,  6);
            }else if(choice == "beam_5"){
                draw_sprite(sprite_get("item_14"), animation_counter * 0.04,  854,  6);
            }else if(choice == "spring_ball"){
                draw_sprite(sprite_get("item_15"), animation_counter * 0.04,  854,  6);
            }else if(choice == "screw_attack"){
                draw_sprite(sprite_get("item_16"), animation_counter * 0.04,  854,  6);
            }else if(choice == "beam_6"){
                draw_sprite(sprite_get("item_17"), animation_counter * 0.04,  854,  6);
            }
        }else if(hit_counter >= 5 && level <= 16){
            draw_sprite(sprite_get("item_box"), animation_counter * 0.04,  854,  6);
        }
    }
}else if(num_samuses >= 2){
    draw_sprite(sprite_get("hud_numbers"), energy_tens, temp_x + 74, temp_y + 30);
    draw_sprite(sprite_get("hud_numbers"), energy_units, temp_x + 90, temp_y + 30);
    if(missiles == true){
        draw_sprite(sprite_get("hud_selectables_missiles"), 0, temp_x - 4, temp_y - 50);
        draw_sprite(sprite_get("hud_numbers"), missile_hundreds, temp_x - 4, temp_y - 18);
        draw_sprite(sprite_get("hud_numbers"), missile_tens, temp_x + 12, temp_y - 18);
        draw_sprite(sprite_get("hud_numbers"), missile_units, temp_x + 28, temp_y - 18);
    }
    if(super_missiles == true){
        draw_sprite(sprite_get("hud_selectables_super_missiles"), 0, temp_x + 52, temp_y - 50);
        draw_sprite(sprite_get("hud_numbers"), super_missile_tens, temp_x + 52, temp_y - 18);
        draw_sprite(sprite_get("hud_numbers"), super_missile_units, temp_x + 68, temp_y - 18);
    }
    if(power_bombs == true){
        draw_sprite(sprite_get("hud_selectables_power_bombs"), 0, temp_x + 92, temp_y - 50);
        draw_sprite(sprite_get("hud_numbers"), power_bombs_tens, temp_x + 92, temp_y - 18);
        draw_sprite(sprite_get("hud_numbers"), power_bombs_units, temp_x + 108, temp_y - 18);
    }
    if(grapple == true){
        draw_sprite(sprite_get("hud_selectables_grapple_beam"), 0, temp_x + 132, temp_y - 50);
    }
    if(X_ray == true){
        draw_sprite(sprite_get("hud_selectables_Xray_scope"), 0, temp_x + 172, temp_y - 50);
    }
    if(select_ammo == 1){
        draw_sprite(sprite_get("hud_selectables_missiles_active"), 0, temp_x - 4, temp_y - 50);
    }
    if(select_ammo == 2){
        draw_sprite(sprite_get("hud_selectables_super_missiles_active"), 0, temp_x + 52, temp_y - 50);
    }
    if(select_ammo == 3){
        draw_sprite(sprite_get("hud_selectables_power_bombs_active"), 0, temp_x + 92, temp_y - 50);
    }
    if(select_ammo == 4){
        draw_sprite(sprite_get("hud_selectables_grapple_beam_active"), 0, temp_x + 132, temp_y - 50);
    }
    if(select_ammo == 5){
        draw_sprite(sprite_get("hud_selectables_Xray_scope_active"), 0, temp_x + 172, temp_y - 50);
    }
    if(energy_tank_amount >= 1){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_1), 0, temp_x - 4, temp_y + 16);
    }
    if(energy_tank_amount >= 2){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_2), 0, temp_x + 8, temp_y + 16);
    }
    if(energy_tank_amount >= 3){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_3), 0, temp_x + 20, temp_y + 16);
    }
    if(energy_tank_amount >= 4){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_4), 0, temp_x + 32, temp_y + 16);
    }
    if(energy_tank_amount >= 5){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_5), 0, temp_x + 44, temp_y + 16);
    }
    if(energy_tank_amount >= 6){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_6), 0, temp_x + 56, temp_y + 16);
    }
    if(energy_tank_amount >= 7){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_7), 0, temp_x + 68, temp_y + 16);
    }
    if(energy_tank_amount >= 8){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_8), 0, temp_x + 80, temp_y + 16);
    }
    if(energy_tank_amount >= 9){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_9), 0, temp_x + 92, temp_y + 16);
    }
    if(energy_tank_amount >= 10){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_10), 0, temp_x + 104, temp_y + 16);
    }
    if(energy_tank_amount >= 11){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_11), 0, temp_x + 116, temp_y + 16);
    }
    if(energy_tank_amount >= 12){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_12), 0, temp_x + 128, temp_y + 16);
    }
    if(energy_tank_amount >= 13){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_13), 0, temp_x + 140, temp_y + 16);
    }
    if(energy_tank_amount >= 14){
        draw_sprite(sprite_get("hud_energy_tank_small_" + tank_14), 0, temp_x + 152, temp_y + 16);
    }
    if(reserve_tank_amount >= 1){
        draw_sprite(sprite_get("hud_energy_reserve_tank_" + reserve_1), 0, temp_x + 42, temp_y);
    }
    if(reserve_tank_amount >= 2){
        draw_sprite(sprite_get("hud_energy_reserve_tank_" + reserve_2), 0, temp_x + 58, temp_y);
    }
    if(reserve_tank_amount >= 3){
        draw_sprite(sprite_get("hud_energy_reserve_tank_" + reserve_3), 0, temp_x + 74, temp_y);
    }
    if(reserve_tank_amount >= 4){
        draw_sprite(sprite_get("hud_energy_reserve_tank_" + reserve_4), 0, temp_x + 90, temp_y);
    }
    if(hit_counter >= 1){
        draw_sprite(sprite_get("hud_level_small_" + string(hit_counter)), 0, temp_x + 122, temp_y + 32);
    }
    if(hit_counter <= 5 && level <= 16 && is_randomizer == false){
        draw_sprite(sprite_get("item_box"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
    }else if(hit_counter >= 6 && level <= 16 && is_randomizer == false){
        draw_sprite(sprite_get("item_" + string(level + 1)), animation_counter * 0.04, temp_x + 178, temp_y - 8);
    }else if(is_randomizer == true){
        if(hit_counter <= 4 && level <= 16 && choice != "e"){
            if(choice == "morphball"){
                draw_sprite(sprite_get("item_1"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "bombs_power_up"){
                draw_sprite(sprite_get("item_2"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "charge"){
                draw_sprite(sprite_get("item_3"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "beam_2"){
                draw_sprite(sprite_get("item_4"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "high_jump"){
                draw_sprite(sprite_get("item_5"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "varia_suit"){
                draw_sprite(sprite_get("item_6"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "speed_booster"){
                draw_sprite(sprite_get("item_7"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "beam_3"){
                draw_sprite(sprite_get("item_8"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "grapple"){
                draw_sprite(sprite_get("item_9"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "beam_4"){
                draw_sprite(sprite_get("item_10"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "X_ray"){
                draw_sprite(sprite_get("item_11"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "gravity_suit"){
                draw_sprite(sprite_get("item_12"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "space_jump"){
                draw_sprite(sprite_get("item_13"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "beam_5"){
                draw_sprite(sprite_get("item_14"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "spring_ball"){
                draw_sprite(sprite_get("item_15"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "screw_attack"){
                draw_sprite(sprite_get("item_16"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }else if(choice == "beam_6"){
                draw_sprite(sprite_get("item_17"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
            }
        }else if(hit_counter >= 5 && level <= 16){
            draw_sprite(sprite_get("item_box"), animation_counter * 0.04, temp_x + 178, temp_y - 8);
        }
    }
}

//adam text stuff
if(num_samuses == 1){
    if(hud_text_draw <= 0 && get_gameplay_time() % 10 >= 5){
    draw_debug_text(temp_x - 2, temp_y - 12, "_")
    }
    var temp_text = string_copy(hud_text, 1, hud_text_draw)
    draw_debug_text(temp_x - 2, temp_y - 12, temp_text)
    if(hud_text_draw >= 0){
        draw_sprite(sprite_get("hud_adam_textbox_arrow_big"), animation_counter * 0.1, temp_x + 100, temp_y + 42)
    }
}


if(draw_info == true && num_samuses == 1 && is_randomizer == false){
    draw_sprite(sprite_get("hud_power_up_popup"), 0, 355, 100);
        if(level == 1){
            draw_text_transformed_color(422, 104, "MORPH BALL", 1.5, 1.5, 0, c_orange, c_orange, c_orange, c_orange, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 139, "E-TANK +1", 1, 1, 0);
        }
        if(level == 2){
            draw_text_transformed_color(448, 104, "BOMBS", 1.5, 1.5, 0, c_gray, c_gray, c_gray, c_gray, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +1", 1, 1, 0);
        }
        if(level == 3){
            draw_text_transformed_color(414, 104, "CHARGE BEAM", 1.5, 1.5, 0, c_orange, c_orange, c_orange, c_orange, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +2", 1, 1, 0);
            draw_text_transformed(360, 139, "E-TANK +1", 1, 1, 0);
        }
        if(level == 4){
            draw_text_transformed_color(445, 104, "SPAZER", 1.5, 1.5, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +2", 1, 1, 0);
            draw_text_transformed(360, 139, "RESERVE TANK +1", 1, 1, 0);
        }
        if(level == 5){
            draw_text_transformed_color(400, 104, "HI-JUMP BOOTS", 1.5, 1.5, 0, c_orange, c_orange, c_orange, c_orange, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +2", 1, 1, 0);
            draw_text_transformed(360, 139, "E-TANK + 1", 1, 1, 0);
        }
        if(level == 6){
            draw_text_transformed_color(423, 104, "VARIA SUIT", 1.5, 1.5, 0, c_orange, c_orange, c_orange, c_orange, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +2", 1, 1, 0);
        }
        if(level == 7){
            draw_text_transformed_color(405, 104, "SPEED BOOSTER", 1.5, 1.5, 0, c_lime, c_lime, c_lime, c_lime, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +2", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "E-TANK +1", 1, 1, 0);
        }
        if(level == 8){
            draw_text_transformed_color(432, 104, "ICE BEAM", 1.5, 1.5, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +3", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "RESERVE TANK +1", 1, 1, 0);
        }
        if(level == 9){
            draw_text_transformed_color(408, 104, "GRAPPLE BEAM", 1.5, 1.5, 0, c_blue, c_blue, c_blue, c_blue, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +3", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "E-TANK +1", 1, 1, 0);
        }
        if(level == 10){
            draw_text_transformed_color(423, 104, "WAVE BEAM", 1.5, 1.5, 0, c_purple, c_purple, c_purple, c_purple, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +3", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "POWER BOMB TANK +1", 1, 1, 0);
        }
        if(level == 11){
            draw_text_transformed_color(423, 104, "XRAY SCOPE", 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +3", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "POWER BOMB TANK +1", 1, 1, 0);
            draw_text_transformed(360, 167, "E-TANK +2", 1, 1, 0);
        }
        if(level == 12){
            draw_text_transformed_color(411, 104, "GRAVITY SUIT", 1.5, 1.5, 0, c_purple, c_purple, c_purple, c_purple, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +4", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "POWER BOMB TANK +1", 1, 1, 0);
            draw_text_transformed(360, 167, "RESERVE TANK +1", 1, 1, 0);
        }
        if(level == 13){
            draw_text_transformed_color(420, 104, "SPACE JUMP", 1.5, 1.5, 0, c_orange, c_orange, c_orange, c_orange, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +4", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "POWER BOMB TANK +1", 1, 1, 0);
            draw_text_transformed(360, 167, "E-TANK +2", 1, 1, 0);
        }
        if(level == 14){
            draw_text_transformed_color(411, 104, "PLASMA BEAM", 1.5, 1.5, 0, c_lime, c_lime, c_lime, c_lime, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +4", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "POWER BOMB TANK +2", 1, 1, 0);
        }
        if(level == 15){
            draw_text_transformed_color(417, 104, "SPRING BALL", 1.5, 1.5, 0, c_orange, c_orange, c_orange, c_orange, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +5", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "POWER BOMB TANK +2", 1, 1, 0);
            draw_text_transformed(360, 167, "E-TANK +2", 1, 1, 0);
        }
        if(level == 16){
            draw_text_transformed_color(408, 104, "SCREW ATTACK", 1.5, 1.5, 0, c_lime, c_lime, c_lime, c_lime, 1);
            draw_text_transformed(360, 125, "MISSILE TANK +5", 1, 1, 0);
            draw_text_transformed(360, 139, "SUPER MISSILE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 153, "POWER BOMB TANK +2", 1, 1, 0);
            draw_text_transformed(360, 167, "RESERVE TANK +1", 1, 1, 0);
            draw_text_transformed(360, 181, "E-TANK +3", 1, 1, 0);
        }
        if(level == 17){
            draw_text_transformed_color(420, 104, "HYPER BEAM", 1.5, 1.5, 0, hyper_beam_magic, hyper_beam_magic,  hyper_beam_magic,  hyper_beam_magic, 1);
        }
}else if(draw_info == true && num_samuses >= 2 && is_randomizer == false){
    if(level == 1){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "MORPH BALL", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);
        }
        if(level == 2){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "BOMBS", 1, 1, 0, c_gray, c_gray, c_gray, c_gray, 1);
        }
        if(level == 3){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "CHARGE BEAM", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);
        }
        if(level == 4){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "SPAZER", 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        if(level == 5){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "HI-JUMP BOOTS", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);
        }
        if(level == 6){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "VARIA SUIT", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);
        }
        if(level == 7){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "SPEED BOOSTER", 1, 1, 0, c_lime, c_lime, c_lime, c_lime, 1);
        }
        if(level == 8){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "ICE BEAM", 1, 1, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
        }
        if(level == 9){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "GRAPPLE BEAM", 1, 1, 0, c_blue, c_blue, c_blue, c_blue, 1);
        }
        if(level == 10){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "WAVE BEAM", 1, 1, 0, c_purple, c_purple, c_purple, c_purple, 1);
        }
        if(level == 11){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "XRAY SCOPE", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
        }
        if(level == 12){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "GRAVITY SUIT", 1, 1, 0, c_purple, c_purple, c_purple, c_purple, 1);
        }
        if(level == 13){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "SPACE JUMP", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);
        }
        if(level == 14){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "PLASMA BEAM", 1, 1, 0, c_lime, c_lime, c_lime, c_lime, 1);
        }
        if(level == 15){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "SPRING BALL", 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 1);
        }
        if(level == 16){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "SCREW ATTACK", 1, 1, 0, c_lime, c_lime, c_lime, c_lime, 1);
        }
        if(level == 17){
            draw_text_transformed_color(temp_x + 106, temp_y - 74, "HYPER BEAM", 1, 1, 0, hyper_beam_magic, hyper_beam_magic,  hyper_beam_magic,  hyper_beam_magic, 1);
        }
}else if(draw_info == true && is_randomizer == true){
    if(num_samuses == 1){
        draw_text_transformed(820, 40, "GOT!", 1, 1, 0)
    }else if(num_samuses >= 2){
        draw_text_transformed(temp_x + 150, temp_y - 2, "GOT!", 0.7, 0.7, 0)
    }
}

muno_event_type = 5;
user_event(14);

if(phone.state){
    draw_sprite_ext(sprite_get("_pho_base_1"), 0, 4, 492, 2, 2, 0, c_white, 1);
}