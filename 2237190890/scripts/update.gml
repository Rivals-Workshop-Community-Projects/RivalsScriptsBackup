// Update
enum ST {
    NONE,
    GRASS,
    FIRE,
    WATER,
    EARTH,
    BF,
    KALOS,
    SV,
    RBF,
    BLAZING,
    FD
}

with (oPlayer) if ((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 0 && !other.dead_players[player]) {
    other.fireworks = true;
    if (state == PS_DEAD) {
        other.dead_players[player] = true;
    }
}

if (fireworks) {
    var amount = random_func_2(69, 5, 1);
    for (i = 0; i <= amount; i++) {
        instance_create(x, y, "obj_stage_article", 12);
        firework_index++;
    }
    fireworks = false;
} else {
    firework_index = 0;
}

if (get_gameplay_time() < 120 && !transform_menu && !transform_menu_used) {
    with (oPlayer) {
        var graphics_max = taunt_down;
        var graphics_min = shield_down;
    }
    if (graphics_max && !graphics_min && !aether) {
        graphics_override = 5;
    }
    if (graphics_min) {
        graphics_override = 1;
    }
}

// FPS check
if (graphics_override == 0) {
    if (!transform_menu) {
        // If not in the menu, activate the lag detection system
        if (fps_real < 60 && get_gameplay_time() > 240 && get_gameplay_time() > graphics_timer + 60) {
            lag++
            if (lag == 10) {
                graphics_level++;
                lag = 0;
            }
            graphics_timer = get_gameplay_time();
        }
    } else {
        // If you are in the menu, set the graphics level to max
        graphics_level = 0;
    }
} else {
    graphics_level = abs(graphics_override - (array_length(graphics_levels) - 1));
}

// Initialize names
if (get_gameplay_time() > 1 && !pkmn_names_initialized) {
    for (i = 1; i <= 4; i++) if (players[i] != -1) {
        var name = get_char_info(i, INFO_STR_NAME);
        name = string_replace_all(name, " ", "");
        name = string_replace_all(name, " and ", "+");
        name = string_replace_all(name, " And ", "+");
        name = string_replace_all(name, " AND ", "+");
        with (oPlayer) if (player == other.i && "pkmn_stadium_name_override" in self) {
            name = string(pkmn_stadium_name_override);
        }
        name = string_replace_all(name, "&", "+");
        for (j = 0; j < string_length(name); j++) {
            var char = string_char_at(name, j + 1);
            if (array_length(names[@i]) >= max_name_length) {
                names[@i][@j] = ds_list_find_index(font, ".");
                break;
            }
            if (ds_list_find_index(font, string_upper(char)) == -1) {
                name = string_replace_all(name, string_upper(char), "");
                names[@i][@j] = ds_list_find_index(font, string_upper(string_char_at(name, j + 1)));
            } else {
                names[@i][@j] = ds_list_find_index(font, string_upper(char));
            }
        }
    }
    pkmn_names_initialized = true;
}

if (!player_starting_pos_init && get_gameplay_time() > 1) {
    with (oPlayer) {
        other.player_starting_x[player] = x;
        other.player_starting_y[player] = y;
    }
    player_starting_pos_init = true;
}

// Put players on platform
with (oPlayer) {
    if (state == PS_SPAWN) {
        set_starting_pos();
    }
}

// Determine front and back players
if (!get_match_setting(SET_TEAMS)) {
    if (player_count == 1) {
        front = player_list[0];
        back = player_list[0];
    } else if (player_count == 2) {
        front = player_list[0];
        back = player_list[1];
    } else {
        with (oPlayer) {
            other.player_values[player] = (get_player_stocks(player) * 1000) + get_player_damage(player)
        }
        // Sort for first and second place
        var lowestone = 1000000;
        var lowestone_index = 0;
        var lowesttwo = 1000000;
        var lowesttwo_index = 0;
        for (i = 1; i <= 4; i++) if (players[i] != -1) {
            if (player_values[i] < lowestone) {
                lowestone = player_values[i];
                lowestone_index = i;
            }
        }
        for (i = 1; i <= 4; i++) if (players[i] != -1 && players[i] != lowestone_index) {
            if (player_values[i] < lowesttwo) {
                lowesttwo = player_values[i];
                lowesttwo_index = i;
            }
        }
        if ((players[lowestone_index] + players[lowesttwo_index]) != back + front) {
            // Re-organize only if one of the top two is different now, as back/front
            // order doesn't technically matter. Makes it less jumpy.
            back = players[lowestone_index];
            front = players[lowesttwo_index];
        }
    }
} else {
    with (oPlayer) {
        if (get_player_team(player) == 1) {
            other.player_values_teamone[player] = (get_player_stocks(player) * 1000) + get_player_damage(player);
        } else {
            other.player_values_teamtwo[player] = (get_player_stocks(player) * 1000) + get_player_damage(player);
        }
    }
    var lowestteamone = 1000000;
    var lowestteamone_index = 0;
    var lowestteamtwo = 1000000;
    var lowestteamtwo_index = 0;
    for (i = 1; i <= 4; i++) if (player_values_teamone[i] != -1) {
        if (player_values_teamone[i] < lowestteamone) {
            lowestteamone = player_values_teamone[i];
            lowestteamone_index = i;
        }
    }
    for (i = 1; i <= 4; i++) if (player_values_teamtwo[i] != -1) {
        if (player_values_teamtwo[i] < lowestteamtwo) {
            lowestteamtwo = player_values_teamtwo[i];
            lowestteamtwo_index = i;
        }
    }
    back = players[lowestteamone_index];
    front = players[lowestteamtwo_index];
}

if (back_prev != back) {
    back_changed = true;
    back_prev = back;
}
if (front_prev != front) {
    front_changed = true;
    front_prev = front;
}

if (!aether) {
    transform_enabled = false;
}

// Transformations
if (transform_enabled) {
    transform_time = stage == stage_playlist[0] ? full_transform_time : stage_transform_time;
    if (get_gameplay_time() < 120) {
        with (oPlayer) {
            if (taunt_down && !other.transform_menu) {
                other.transform_menu = true;
                menu_sound("levelup")
            }
        }
    }
    if (transform_menu) {
        with (oPlayer) if !("temp_level" in self) {
            // Button presses
            other.left_pressed_arr[player] = left_pressed;
            other.right_pressed_arr[player] = right_pressed;
            other.up_pressed_arr[player] = up_pressed;
            other.down_pressed_arr[player] = down_pressed;
            other.attack_pressed_arr[player] = attack_pressed;
            other.special_pressed_arr[player] = special_pressed;
            
            // Button holding
            other.left_down_arr[player] = left_down;
            other.right_down_arr[player] = right_down;
        }
        // Button press handling, makes it so everyone counts equally
        left_pressed = max(left_pressed_arr[1] + left_pressed_arr[2] + left_pressed_arr[3] + left_pressed_arr[4]);
        right_pressed = max(right_pressed_arr[1] + right_pressed_arr[2] + right_pressed_arr[3] + right_pressed_arr[4]);
        up_pressed = max(up_pressed_arr[1] + up_pressed_arr[2] + up_pressed_arr[3] + up_pressed_arr[4]);
        down_pressed = max(down_pressed_arr[1] + down_pressed_arr[2] + down_pressed_arr[3] + down_pressed_arr[4]);
        attack_down = max(attack_pressed_arr[1] + attack_pressed_arr[2] + attack_pressed_arr[3] + attack_pressed_arr[4]);
        special_down = max(special_pressed_arr[1] + special_pressed_arr[2] + special_pressed_arr[3] + special_pressed_arr[4]);
        
        // Button hold handling, makes it so everyone counts equally
        left_down = max(left_down_arr[1] + left_down_arr[2] + left_down_arr[3] + left_down_arr[4]);
        right_down = max(right_down_arr[1] + right_down_arr[2] + right_down_arr[3] + right_down_arr[4]);
        // Buffer fix code
        if (attack_down && get_gameplay_time() >= attack_buffer + 7) {
            attack_buffer = get_gameplay_time();
            attack_pressed = 1;
        } else {
            attack_pressed = 0;
        }
        if (special_down && get_gameplay_time() >= special_buffer + 7) {
            special_buffer = get_gameplay_time();
            special_pressed = 1;
        } else {
            special_pressed = 0;
        }
        transform_buffer = 1;
        if ((down_pressed || up_pressed) && !cursor_selected) {
            // Up and down press when not selected on something
            if (down_pressed) {
                if (actual_index < array_length(indices) - 1) {
                    actual_index++;
                } else {
                    actual_index = 0;
                }
            } else if (up_pressed) {
                if (actual_index > 0) {
                    actual_index--;
                } else {
                    actual_index = array_length(indices) - 1;
                }
            }
            menu_sound("move_cursor");
            index = indices[actual_index];
        } else if ((left_pressed || right_pressed) && cursor_selected && actual_index != 11) {
            if (actual_index != 12) {
                // If not in the graphics options
                // Left and right press when selected on something
                if (left_pressed) {
                    if (stage_playlist[actual_index] != bottom_stage) {
                        stage_change("down", actual_index);
                    } else {
                        stage_change(top_stage, actual_index);
                    }
                } else if (right_pressed) {
                    if (stage_playlist[actual_index] != top_stage) {
                        stage_change("up", actual_index);
                    } else {
                        stage_change(bottom_stage, actual_index);
                    }
                }
            } else {
                // If in the graphics options
                if (left_pressed) {
                    if (graphics_override > 0) {
                        graphics_override--;
                    } else {
                        graphics_override = (array_length(graphics_levels) - 1);
                    }
                } else if (right_pressed) {
                    if (graphics_override < (array_length(graphics_levels) - 1)) {
                        graphics_override++;
                    } else {
                        graphics_override = 0;
                    }
                }
            }
            menu_sound("forward");
        } else if ((left_pressed || right_pressed) && actual_index > 0 && actual_index < 12 && !cursor_selected) {
            // Left and right press when not selected on something, and when not at end
            horiz_index = !horiz_index;
            menu_sound("move_cursor");
        } else if ((left_pressed || right_pressed) && actual_index == 13) {
            // Left and right press when at the end
            var max_index = 2; // How many columns there are
            if (right_pressed) {
                if (horiz_index < max_index) {
                    horiz_index++;
                } else {
                    horiz_index = 0;
                }
            } else if (left_pressed) {
                if (horiz_index > 0) {
                    horiz_index--;
                } else {
                    horiz_index = max_index;
                }
            }
            menu_sound("move_cursor");
        } else if (((left_down || right_down) && actual_index == 11) && cursor_selected) {
            if ((full_transform_time > 1 + floor(hold_timer/20) || !left_down) && (full_transform_time < 9999 - floor(hold_timer/20) || !right_down)) {
                var held_direction = right_down - left_down;
                var pressed_direction = right_pressed - left_pressed;
                hold_timer++;
                full_transform_time += 1 * pressed_direction;
                full_transform_time += floor(hold_timer/20) * held_direction;
                if (sound_buffer >= (hold_timer >= 24 ? 3 : 24)) {
                    menu_sound("input_key");
                    sound_buffer = 0;
                } else {
                    sound_buffer++;
                }
            } else {
                if (full_transform_time >= 9999 - floor(hold_timer/20)) {
                    full_transform_time = 9999;
                } else if (full_transform_time <= 1 + floor(hold_timer/20)) {
                    full_transform_time = 1;
                }
                if (sound_buffer >= (hold_timer >= 24 ? 3 : 24)) {
                    menu_sound("input_end");
                    sound_buffer = 0;
                } else {
                    sound_buffer++;
                }
                
            }
        } else {
            hold_timer = 0;
            sound_buffer = 69;
        }
        if ((actual_index == 0 || (actual_index >= 12 && actual_index < 13)) && horiz_index >= 1) {
            // Reset horizontal index to 0 if not in a horizontally accessible column
            horiz_index = 0;
        }
        if (attack_pressed && (index == 0 || (horiz_index == 1)) && actual_index != 13) {
            // If attack is pressed over a selectable area for stage changing
            if (!cursor_selected) {
                index_selected[actual_index] = true;
                cursor_selected = true;
                menu_sound("forward");
                stored_index_value = index_value[actual_index];
            } else {
                index_selected[actual_index] = false;
                cursor_selected = false;
                menu_sound("confirm");
            }
        } else if (attack_pressed && (horiz_index == 0) && actual_index < 11) {
            // If attack is pressed over a checkbox
            if (stages_enabled[actual_index]) {
                menu_sound("input_end");
            } else {
                menu_sound("input_key");
            }
            stages_enabled[actual_index] = !stages_enabled[actual_index];
        } else if (attack_pressed) {
            switch (actual_index) {
                case 11:
                    // If attack is pressed over the transformation enable section
                    transform_enabled_temp = !transform_enabled_temp;
                    if (transform_enabled_temp) {
                        menu_sound("confirm");
                    } else {
                        menu_sound("return_cursor");
                    }
                    break;
                case 12:
                    // If attack is pressed over the graphics option
                    if (!cursor_selected) {
                        index_selected[actual_index] = true;
                        cursor_selected = true;
                        menu_sound("forward");
                        stored_index_value = index_value[actual_index];
                    } else {
                        index_selected[actual_index] = false;
                        cursor_selected = false;
                        menu_sound("confirm");
                    }
                    break;
                case 13:
                    switch (horiz_index) {
                        case 0:
                            if (stage != default_stage) {
                                stage_change(default_stage, 0);
                            }
                            transform_enabled_temp = default_transform_enabled_temp;
                            stages_enabled = default_stages_enabled; // Whether the stage is enabled or not
                            stage_playlist = default_stage_playlist; // Stage playlist, first one is the default stage
                            full_transform_time = default_transform_time;
                            menu_sound("return_cursor");
                            break;
                        case 1:
                            for (i = 1; i < array_length(stages_enabled); i++) {
                                stages_enabled[i] = random_func_2(i * 8, 2, 1);
                            }
                            for (i = 0; i < array_length(stage_playlist); i++) {
                                stage_playlist[i] = random_func_2(i * 8, top_stage + 1, 1);
                            }
                            if (stage != stage_playlist[0]) {
                                stage_change(stage_playlist[0], 0);
                            }
                            menu_sound("coin_portal");
                            break;
                        case 2:
                            transform_menu = false;
                            menu_sound("confirm");
                            break;
                    }
                    break;
            }
            
        }
        if (special_pressed && cursor_selected) {
            // If special is pressed while selected
            index_selected[actual_index] = false;
            cursor_selected = false;
            if (index_value[actual_index] != stored_index_value) {
                index_value[actual_index] = stored_index_value;
                if (actual_index != 12) {
                    stage_change(stored_index_value, actual_index);
                } else {
                    graphics_override = stored_index_value;
                }
            }
            menu_sound("input_back");
        }
        // Force players to not move
        with (oPlayer) {
            set_state(PS_SPAWN);
            invincible = true;
            invince_time = 120;
        }
    } else if (transform_buffer == 1) {
        for (i = 1; i < array_length(stages_enabled); i++) {
            if (stages_enabled[i] == false) {
                stage_playlist[i] = -1;
            }
        }
        if (array_equals(stages_enabled, empty_stages_enabled)) {
            // Check if the stages enabled list is empty, and if it is, set it to loop the first stage
            stage_playlist[1] = stage_playlist[0];
        }
        with (oPlayer) {
            set_state(PS_IDLE);
            invincible = false;
            clear_button_buffer(PC_TAUNT_PRESSED);
            clear_button_buffer(PC_SPECIAL_PRESSED);
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
        stage_transform_time = max(floor(full_transform_time/2), 1);
        transform_enabled = transform_enabled_temp;
        transform_menu_used = true;
        transform_away = true;
        transform_buffer = 0;
    } else {
        if (get_gameplay_time() == 240 && !transform_menu_used) {
            with (oPlayer) {
                var randomizer = x % 196;
            }
            for (i = 0; i <= 4; i++) {
                var current_random = random_func_2(randomizer + i, 10000, true)
                if (!ds_list_find_index(random_stages, current_random)) {
                    ds_list_add(random_stages, current_random);
                } else {
                    ds_list_add(random_stages, i);
                }
            }
            var temp_array = [ds_list_find_value(random_stages, 0), ds_list_find_value(random_stages, 1), ds_list_find_value(random_stages, 2), ds_list_find_value(random_stages, 3)];
            array_sort(temp_array, false);
            for (i = 1; i <= 4; i++) {
                stage_playlist[i] = ds_list_find_index(random_stages, temp_array[i-1]) + 1;
            }
        }
    }
    if (!stage_changed) {
        cur_plat = 0;
        cur_fg = 0;
        cur_block = 0;
        switch (stage) {
            case ST.NONE:
                // Left plat
                instance_create(512, 0, "obj_stage_article_platform", 8);
                cur_plat++;
 
                // Right plat
                instance_create(788, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                with (obj_stage_article_platform) if (num == 8) {
                    starting_y = 459;
                    destination_y = 374;
                    sprite_index = sprite_get("normal_plat");
                }
                break;
            case ST.GRASS:
                // VISUAL ELEMENTS
                // Stage Background
                instance_create(438, 0, "obj_stage_article", 6);
                with (obj_stage_article) if (num == 6) {
                    // Stage element
                    starting_y = 445;
                    destination_y = 250;
                    sprite_index = sprite_get("grass_stage");
                }
                // Bush Foreground
                instance_create(454, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 0) {
                    starting_y = 474.3;
                    destination_y = 442;
                    sprite_index = sprite_get("grass_fg1");
                }
                // Plat Foreground
                instance_create(812, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 1) {
                    starting_y = 462;
                    destination_y = 362;
                    sprite_index = sprite_get("grass_fg2");
                    depth = 10;
                }
                
                // STAGE ELEMENTS
                // Top plat
                instance_create(556, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 0) {
                    starting_y = 449;
                    destination_y = 272;
                    sprite_index = sprite_get("grass_plat1");
                }
                // Bottom plat
                instance_create(626, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 1) {
                    starting_y = 464;
                    destination_y = 366;
                    sprite_index = sprite_get("grass_plat2");
                }
                // Right Plat
                instance_create(820, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 2) {
                    starting_y = 462;
                    destination_y = 364;
                    sprite_index = sprite_get("grass_plat3");
                    visible = false;
                }
                break;
            case ST.FIRE:
                // VISUAL ELEMENTS
                // Stage Background
                instance_create(402, 0, "obj_stage_article", 6);
                with (obj_stage_article) if (num == 6) {
                    // Stage element
                    starting_y = 421;
                    destination_y = 84;
                    sprite_index = sprite_get("fire_stage");
                    depth = 14;
                }
                // Background trees
                instance_create(402, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 0) {
                    starting_y = 421;
                    destination_y = 84;
                    sprite_index = sprite_get("fire_bg1");
                    depth = 13;
                }
                // Tree
                instance_create(480, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 1) {
                    starting_y = 455;
                    destination_y = 302;
                    sprite_index = sprite_get("fire_fg1");
                    depth = 10;
                }
                // House
                instance_create(738, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 2) {
                    starting_y = 456;
                    destination_y = 314;
                    sprite_index = sprite_get("fire_fg2");
                    depth = 11;
                }
                // House Pillar
                instance_create(880, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 3) {
                    starting_y = 468;
                    destination_y = 384;
                    sprite_index = sprite_get("fire_fg3");
                }
                // Small fire
                instance_create(454, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 4) {
                    starting_y = 471;
                    destination_y = 402;
                    sprite_index = sprite_get("fire_fg4");
                    depth = 10;
                }
                // Large fire
                instance_create(746, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 5) {
                    starting_y = 452;
                    destination_y = 276;
                    sprite_index = sprite_get("fire_fg5");
                    depth = 12;
                }
                // Smoke
                instance_create(620, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 6) {
                    starting_y = 376;
                    destination_y = -220;
                    sprite_index = sprite_get("fire_fg6");
                    depth = 14;
                }
                
                // STAGE ELEMENTS
                // Blocks
                // Tree
                instance_create(480, 0, "obj_stage_article_solid", 8);
                cur_block++;
                with (obj_stage_article_solid) if (num == 8 && block == 0) {
                    starting_y = 455;
                    destination_y = 302;
                    sprite_index = sprite_get("fire_block1");
                    visible = false;
                }
                // Plats
                // Left Plat
                instance_create(414, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 0) {
                    starting_y = 460;
                    destination_y = 338;
                    sprite_index = sprite_get("fire_plat1");
                }
                // Right Plat
                instance_create(734, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 1) {
                    starting_y = 466;
                    destination_y = 374;
                    sprite_index = sprite_get("fire_plat2");
                    depth = 10;
                }
                break;
            case ST.WATER:
                // VISUAL ELEMENTS
                // Stage Background
                instance_create(422, 0, "obj_stage_article", 6);
                with (obj_stage_article) if (num == 6) {
                    // Stage element
                    starting_y = 441;
                    destination_y = 228;
                    sprite_index = sprite_get("water_stage");
                }
                // Windmill
                instance_create(534, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 0) {
                    starting_y = 436;
                    destination_y = 250;
                    sprite_index = sprite_get("water_fg1");
                    depth = 10;
                }
                // Water Ripples
                instance_create(550, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 1) {
                    starting_y = 477;
                    destination_y = 460;
                    sprite_index = sprite_get("water_fg2");
                    depth = 10;
                }
                // Water Spouts
                instance_create(728, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 2) {
                    starting_y = 455;
                    destination_y = 318;
                    sprite_index = sprite_get("water_fg3");
                }
                
                // STAGE ELEMENTS
                // Plats
                // Water Left Plat
                instance_create(736, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 0) {
                    starting_y = 465;
                    destination_y = 382;
                    sprite_index = sprite_get("water_plat1");
                }
                // Water Right Plat
                instance_create(880, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 1) {
                    starting_y = 455;
                    destination_y = 322;
                    sprite_index = sprite_get("water_plat1");
                }
                break;
            case ST.EARTH:
                // VISUAL ELEMENTS
                // Stage Background
                instance_create(402, 0, "obj_stage_article", 6);
                with (obj_stage_article) if (num == 6) {
                    // Stage element
                    starting_y = 436;
                    destination_y = 190;
                    sprite_index = sprite_get("earth_stage");
                }
                // Big Rock Foreground
                instance_create(414, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 0) {
                    starting_y = 436;
                    destination_y = 190;
                    sprite_index = sprite_get("earth_fg1");
                    depth = 10;
                }
                // Girdur Foreground
                instance_create(606, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 1) {
                    starting_y = 469;
                    destination_y = 412;
                    sprite_index = sprite_get("earth_fg2");
                }
                // Cactus Foreground 1
                instance_create(880, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 2) {
                    starting_y = 472;
                    destination_y = 430;
                    sprite_index = sprite_get("earth_fg3");
                }
                // Cactus Foreground 2
                instance_create(946, 0, "obj_stage_article", 7);
                cur_fg++;
                with (obj_stage_article) if (num == 7 && fg == 3) {
                    starting_y = 474;
                    destination_y = 444;
                    sprite_index = sprite_get("earth_fg4");
                }
                
                // STAGE ELEMENTS
                // Blocks
                // Big Rock Block
                instance_create(414, 0, "obj_stage_article_solid", 8);
                cur_block++;
                with (obj_stage_article_solid) if (num == 8 && block == 0) {
                    starting_y = 436;
                    destination_y = 190;
                    sprite_index = sprite_get("earth_block1");
                    visible = false;
                }
                // Pillar Block
                instance_create(704, 0, "obj_stage_article_solid", 8);
                cur_block++;
                with (obj_stage_article_solid) if (num == 8 && block == 1) {
                    starting_y = 462;
                    destination_y = 360;
                    sprite_index = sprite_get("earth_block2");
                }
                // Plats
                // Top plat 1
                instance_create(608, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 0) {
                    starting_y = 448;
                    destination_y = 272;
                    sprite_index = sprite_get("earth_plat1");
                }
                // Top plat 2
                instance_create(704, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 1) {
                    starting_y = 451;
                    destination_y = 290;
                    sprite_index = sprite_get("earth_plat2");
                }
                // Bottom plat 1
                instance_create(608, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 2) {
                    starting_y = 465;
                    destination_y = 380;
                    sprite_index = sprite_get("earth_plat3");
                }
                // Bottom plat 2
                instance_create(716, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8 && plat == 3) {
                    starting_y = 462;
                    destination_y = 360;
                    sprite_index = sprite_get("earth_plat4");
                }
                break;
            case ST.BF:
                // Left plat
                instance_create(512, 0, "obj_stage_article_platform", 8);
                cur_plat++;
 
                // Right plat
                instance_create(788, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                // Top plat
                instance_create(650, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                with (obj_stage_article_platform) if (num == 8) {
                    starting_y = 459;
                    if (plat < 2) {
                        destination_y = 374;
                    } else {
                        destination_y = 272;
                    }
                    sprite_index = sprite_get("normal_plat");
                }
                break;
            case ST.KALOS:
                // Left plat
                instance_create(300, 0, "obj_stage_article_platform", 8);
                cur_plat++;
 
                // Right plat
                instance_create(1000, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                with (obj_stage_article_platform) if (num == 8) {
                    starting_y = 459;
                    destination_y = 352;
                    sprite_index = sprite_get("normal_plat");
                }
                break;
            case ST.SV:
                // Left plat
                instance_create(1008, 0, "obj_stage_article_platform", 8);
                cur_plat++;
 
                // Right plat
                instance_create(1116, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                with (obj_stage_article_platform) if (num == 8) {
                    if (plat == 0) {
                        other.sv_x_1 = x;
                    } else {
                        other.sv_x_2 = x;
                    }
                    starting_y = 459;
                    destination_y = 360;
                    sprite_index = sprite_get("normal_plat");
                }
                break;
            case ST.RBF:
                // Left plat
                instance_create(512, 0, "obj_stage_article_platform", 8);
                cur_plat++;
 
                // Right plat
                instance_create(788, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                // Top plat
                instance_create(650, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                with (obj_stage_article_platform) if (num == 8) {
                    starting_y = 459;
                    if (plat < 2) {
                        destination_y = 272;
                    } else {
                        destination_y = 374;
                    }
                    sprite_index = sprite_get("normal_plat");
                }
                break;
            case ST.BLAZING:
                // Plat 1
                instance_create(434, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                // Plat 2
                instance_create(542, 0, "obj_stage_article_platform", 8);
                cur_plat++;
 
                // Plat 3
                instance_create(650, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                // Plat 4
                instance_create(758, 0, "obj_stage_article_platform", 8);
                
                // Plat 5
                instance_create(866, 0, "obj_stage_article_platform", 8);
                cur_plat++;
                
                with (obj_stage_article_platform) if (num == 8) {
                    starting_y = 459;
                    destination_y = 336;
                    sprite_index = sprite_get("normal_plat");
                }
                break;
        }
        // Universal settings
        // VISUAL ELEMENTS
        with (obj_stage_article) if (num == 6 || num == 7) {
            image_yscale = 0.3;
            y = starting_y;
            fake_y = y;
        }
        
        // STAGE ELEMENTS
        // Blocks
        with (obj_stage_article_solid) if (num == 8) {
            image_yscale = 0.3;
            y = starting_y;
            fake_y = y;
        }
        // Plats
        with (obj_stage_article_platform) if (num == 8) {
            image_yscale = 0.3;
            y = starting_y;
            fake_y = y;
        }
        stage_changed = true;
    }
    switch (stage) {
        case ST.GRASS:
            with (obj_stage_article) if (num == 7 && fg == 1) {
                if (!other.grass_plat_landed) {
                    var landing_check = instance_place(x, y - 80, oPlayer)
                    if (landing_check != noone && (!landing_check.free || landing_check.state == PS_LAND || landing_check.state == PS_LANDING_LAG)) {
                        other.grass_plat_landed = true;
                    }
                } else {
                    if (!other.grass_plat_animated) {
                        if (image_index <= 3 - other.grass_plat_anim_speed) {
                            if (image_index == 0) {
                                image_index = 1;
                            }
                            image_index += other.grass_plat_anim_speed;
                        } else {
                            other.grass_plat_animated = true;
                            image_index = 0;
                        }
                    } else {
                        var landing_check = instance_place(x, y - 80, oPlayer)
                        if (landing_check == noone || (landing_check.free)) {
                            other.grass_plat_landed = false;
                            other.grass_plat_animated = false;
                        } 
                    }
                }
            }
            break;
        case ST.FIRE:
            with (obj_stage_article) if (num == 7) {
                switch (fg) {
                    case 0:
                        image_index += other.fire_tree_anim_speed;
                        break;
                    case 4:
                        image_index += other.small_fire_anim_speed;
                        break;
                    case 5:
                        image_index += other.big_fire_anim_speed;
                        break;
                    case 6:
                        image_index += other.smoke_anim_speed;
                        break;
                }
            }
            break;
        case ST.WATER:
            with (obj_stage_article) if (num == 7) {
                switch (fg) {
                    case 0:
                        image_angle -= other.windmill_rot_speed;
                        break;
                    case 1:
                        image_index += other.water_ripple_anim_speed;
                        break;
                    case 2:
                        image_index += other.water_spout_anim_speed;
                        break;
                }
            }
            break;
        case ST.SV:
            if (sv_plat_timer < sv_plat_max_timer) {
                sv_plat_timer++;
                sv_hsp = sv_plat_speed * sv_plat_dir;
            } else {
                if ((sv_plat_dir == 1 && sv_hsp > -2) || (sv_plat_dir == -1 && sv_hsp < 2)) {
                    sv_hsp -= sv_plat_accel * sv_plat_dir;
                } else {
                    sv_plat_timer = 0;
                    sv_plat_dir *= -1;
                }
            }
            sv_x_1 += sv_hsp;
            sv_x_2 += sv_hsp;
            with (obj_stage_article_platform) if (num == 8) {
                // set the x value to match the platform
                hsp = round(other.sv_hsp);
                x = (plat == 0) ? round(other.sv_x_1) : round(other.sv_x_2);
            }
            break;
    }
    if (get_gameplay_time() > 120 && !transform_menu && transform_warning == -1) {
        transform_timer++;
        if (transform_timer == (transform_time * 60)) {
            transform_warning = 0;
            transform_timer = 0;
        }
    }
    if (transform_warning != -1) {
        if (transform_warning == 0) {
            for (i = 0; i < 420; i++) {
                // Makeshift while loop because while loop didnt work
                if (stage == stage_playlist[0]) {
                    if (stage_order < array_length(stage_playlist) - 1) {
                        // If the stage order isn't at the end, increment it
                        stage_order++;
                    } else {
                        // Otherwise, loop it back to 1
                        stage_order = 1;
                    }
                }
                if (stage_playlist[stage_order] != -1) {
                    break;
                }
            }
        }
        transform_warning++;
        if (transform_warning == transform_delay) {
            transforming = true;
            transform_state = 0;
        }
    }
    if (transforming) {
        transform_set = false;
        if (!transform_sound_played) {
            sound_play(sound_get("transform1"), 0, 0);
            sound_play(sound_get("transform2"), 0, 0);
            transform_sound_played = true;
        }
        check_move_downs();
        var cur_state = transform_state - 1;
        with (obj_stage_article) if (num == 6 || num == 7) {
            var buffer_zone = ((starting_y - destination_y)/(other.transform_state_length[other.transform_state] - 2));
            var difference = starting_y - (destination_y + buffer_zone);
            var length = other.transform_state_length[other.transform_state] - 2;
            // Non-platform stage articles
            if (image_yscale >= 0.3 && image_yscale <= 2) {
                image_yscale += 0.01 * cur_state;
            } else {
                // Forces it to the correct scaling
                image_yscale = cur_state ? 2 : 0.3;
            }
            if ((other.transform_state == 2 && (y > destination_y - buffer_zone)) || ((y < starting_y + buffer_zone) && other.transform_state == 0)) {
                fake_y -= (difference/length) * cur_state;
                y = round(fake_y);
            }
        }
        with (obj_stage_article_solid) if (num == 8) {
            var buffer_zone = ((starting_y - destination_y)/(other.transform_state_length[other.transform_state] - 2));
            var difference = starting_y - (destination_y + buffer_zone);
            var length = other.transform_state_length[other.transform_state] - 2;
            // Solid stage articles
            if (image_yscale >= 0.3 && image_yscale <= 2) {
                image_yscale += 0.01 * cur_state;
            } else {
                // Forces it to the correct scaling
                image_yscale = cur_state ? 2 : 0.3;
            }
            if ((other.transform_state == 2 && (y > destination_y - buffer_zone)) || ((y < starting_y + buffer_zone) && other.transform_state == 0)) {
                fake_y -= (difference/length) * cur_state;
                y = round(fake_y);
            }
        }
        with (obj_stage_article_platform) if (num == 8) {
            var buffer_zone = ((starting_y - destination_y)/(other.transform_state_length[other.transform_state] - 2));
            var difference = starting_y - (destination_y + buffer_zone);
            var length = other.transform_state_length[other.transform_state] - 2;
            // Platform stage articles
            if (image_yscale >= 0.3 && image_yscale <= 2) {
                image_yscale += 0.01 * cur_state;
            } else {
                // Forces it to the correct scaling
                image_yscale = cur_state ? 2 : 0.3;
            }
            if ((other.transform_state == 2 && (y > destination_y - buffer_zone)) || ((y < starting_y + buffer_zone) && other.transform_state == 0)) {
                fake_y -= (difference/length) * cur_state;
                y = round(fake_y);
            }
        }
        
        if (transform_state == 1 && transform_state_timer == transform_state_length[transform_state] - 2) {
            cleanup_stage(); // Delete old stage
            // Change stage
            if (stage != stage_playlist[0]) {
                stage = stage_playlist[0];
            } else {
                stage = stage_playlist[stage_order];
            }
            stage_changed = false;
        }
        
        
        // Increment timer, set transformation to false if done
        transform_state_timer++;
        if (transform_state_timer == transform_state_length[transform_state]) {
            if (transform_state < transform_states) {
                transform_state++;
            } else {
                transforming = false;
            }
            transform_state_timer = 0;
        }
    } else {
        if (!transform_set) {
            transform_sound_played = false;
            transform_away = !transform_away;
            transform_warning = -1;
            check_move_downs();
            with (obj_stage_article) if (num == 6 || num == 7) {
                image_yscale = 2;
                y = round(destination_y);
                fake_y = y;
            }
            with (obj_stage_article_platform) if (num == 8) {
                image_yscale = 2;
                y = round(destination_y);
                fake_y = y;
            }
            with (obj_stage_article_solid) if (num == 8) {
                image_yscale = 2;
                y = round(destination_y);
                fake_y = y;
            }
            transform_set = true;
        }
    }
} else {
    if (!stage_changed) {
        // Left plat
        instance_create(512, 374, "obj_stage_article_platform", 8);
        cur_plat++;
        with (obj_stage_article_platform) if (num == 8 && plat == 0) {
            sprite_index = sprite_get("normal_plat");
        }
        // Right plat
        instance_create(788, 374, "obj_stage_article_platform", 8);
        cur_plat++;
        with (obj_stage_article_platform) if (num == 8 && plat == 1) {
            sprite_index = sprite_get("normal_plat");
        }
        stage_changed = true;
    }
}

paused = false;

#define cleanup_stage()
    with (obj_stage_article) if (num == 6 || num == 7) {
        instance_destroy(self);
    }
    with (obj_stage_article_platform) if (num == 8) {
        instance_destroy(self);
    }
    with (obj_stage_article_solid) if (num == 8) {
        instance_destroy(self);
    }
    
#define move_down(object)
    var cur_object = object;
    with (cur_object) {
        if (cur_object == oPlayer) {
            if ((hitpause && state == PS_ATTACK_GROUND) || (state == PS_LANDING_LAG)) {
                free = false;
                y += 1;
            } else if (!free) {
                vsp = 2;
                y += 1;
            }
        }
        else if (!free) {
            vsp = 2;
            y += 1;
        }
    }
    
#define check_move_downs()
    move_down(oPlayer);
    move_down(obj_article1);
    move_down(obj_article2);
    move_down(obj_article3);
    move_down(obj_article_solid);
    move_down(obj_article_platform);
    
#define set_starting_pos()
    x = other.player_starting_x[player];
    y = other.player_starting_y[player];
    if (other.stage == ST.NONE || other.stage == ST.BF) {
        if (y == other.starting_y) {
            y = other.plat_y;
        }
    } else {
        y = other.ground_y;
    }
    
#define stage_change(index, playlist_pos)
    if (index == "up") {
        stage_playlist[playlist_pos]++;
    } else if (index == "down") {
        stage_playlist[playlist_pos]--;
    } else {
        stage_playlist[playlist_pos] = index;
    }
    if (playlist_pos = 0) {
        cleanup_stage();
        stage = stage_playlist[playlist_pos];
        stage_changed = false;
        transform_set = false;
        with (oPlayer) {
            set_starting_pos();
        }
    }
    
#define menu_sound(mfx)
    sound_play(asset_get("mfx_" + mfx), 0, 0);