muno_event_type = 4;
user_event(14);

if((select_ammo == 1 || select_ammo == 2 || select_ammo == 4) && is_somersaulting == false && is_morph == false){
    if(is_facing == "right"){
        if(state == PS_FIRST_JUMP && is_morph == false){
            if(is_aiming == "up" || is_aiming != "up"){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_right"), 0, x - 14, y - 66);
            }
        }
        if(state == PS_IDLE && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_up_right"), 0, x, y - 106);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_right"), 0, x + 24, y - 96);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_right"), 0, x + 22, y - 54);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_forward_right"), 0, x + 24, y - 58);
                }
            }
            if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_right"), 0, x + 28, y - 96);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_right"), 0, x + 36, y - 58);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_forward_right"), 0, x + 38, y - 64);
                }
            }
            if(is_crouch == true && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_up_right"), 0, x - 8, y - 84);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_right"), 0, x + 16, y - 74);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_right"), 0, x + 14, y - 30);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_forward_right"), 0, x + 16, y - 36);
                }
            }
            if(is_aiming == "up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_up_right"), 0, x - 8, y - 84);
            }if(is_aiming == "diagonal_up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_right"), 0, x + 12, y - 76);
            }if(is_aiming == "diagonal_down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_right"), 0, x + 10, y - 34);
            }if(is_aiming == "forward_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_forward_right"), 0, x + 8, y - 44);
            }if(is_aiming == "down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_down_right"), 0, x + 4, y - 30);
            }
            
        }
    if(is_facing == "left"){
        if(state == PS_FIRST_JUMP && is_morph == false){
            if(is_aiming == "up" || is_aiming != "up"){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_left_special"), 0, x - 28, y - 74);
            }
        }
        if(state == PS_IDLE && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_up_left"), 0, x - 16, y - 106);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_left"), 0, x - 46, y - 98);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_left"), 0, x - 46, y - 54);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_forward_left"), 0, x - 30, y - 58);
                }
            }
            if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_left"), 0, x - 50, y - 94);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_left"), 0, x - 42, y - 58);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_forward_left"), 0, x - 44, y - 64);
                }
            }
            if(is_crouch == true && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_up_left"), 0, x - 8, y - 84);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_left"), 0, x - 36, y - 74);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_left"), 0, x - 36, y - 32);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("misc_missile_arm_cannon_aim_forward_left"), 0, x - 22, y - 36);
                }
            }
            if(is_aiming == "up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_up_left"), 0, x - 8, y - 84);
            }if(is_aiming == "diagonal_up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_left"), 0, x - 34, y - 76);
            }if(is_aiming == "diagonal_down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_left"), 0, x - 32, y - 34);
            }if(is_aiming == "down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("misc_missile_arm_cannon_aim_down_left"), 0, x - 22, y - 32);
            }
    }
}
//missile cannon arm^^^



//charge effect
if((select_ammo == 0 || select_ammo == 3) && is_somersaulting == false && attack_down && is_charged == false && is_morph == false && charge == true){
    if(is_facing == "right"){
        if(state == PS_FIRST_JUMP && is_morph == false){
            if(is_aiming == "up" || is_aiming != "up"){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 26, y - 78);
            }
        }
        if(state == PS_IDLE && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 66, x - 18, y - 130);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 16, y - 118);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 14, y - 62);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 4, y - 76);
                }
            }
            if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 20, y - 116);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 46, y - 124);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 18, y - 82);
                }
            }
            if(is_crouch == true && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 26, y - 110);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 8, y - 94);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 6, y - 40);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 4, y - 54);
                }
            }
            if(is_aiming == "up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 26, y - 110);
            }if(is_aiming == "diagonal_up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 4, y - 96);
            }if(is_aiming == "diagonal_down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + 2, y - 42);
            }if(is_aiming == "forward_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 12, y - 62);
            }if(is_aiming == "down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 14 , y - 38);
            }
            
        }
    if(is_facing == "left"){
        if(state == PS_FIRST_JUMP && is_morph == false){
            if(is_aiming == "up" || is_aiming != "up"){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 50, y - 96);
            }
        }
        if(state == PS_IDLE && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 34, y - 130);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 68, y - 118);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 66, y - 62);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 56, y - 76);
                }
            }
            if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 72, y - 116);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 56, y - 70);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 70, y - 82);
                }
            }
            if(is_crouch == true && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 24, y - 110);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 58, y - 96);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 56, y - 40);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 46, y - 54);
                }
            }
            if(is_aiming == "up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 26, y - 110);
            }if(is_aiming == "diagonal_up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 56, y - 96);
            }if(is_aiming == "diagonal_down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 52, y - 42);
            }if(is_aiming == "down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 40, y - 38);
            }if(is_aiming == "forward_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 40, y - 66);
            }
    }
}else if((select_ammo == 0 || select_ammo == 3) && is_somersaulting == false && attack_down && is_charged == true && is_morph == false && charge == true){
    if(is_facing == "right"){
        if(state == PS_FIRST_JUMP && is_morph == false){
            if(is_aiming == "up" || is_aiming != "up"){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 26, y - 78);
            }
        }
        if(state == PS_IDLE && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 18, y - 130);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 16, y - 118);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 14, y - 62);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 4, y - 76);
                }
            }
            if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 20, y - 116);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 46, y - 124);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 18, y - 82);
                }
            }
            if(is_crouch == true && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 26, y - 110);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 8, y - 94);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 6, y - 40);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 4, y - 54);
                }
            }
            if(is_aiming == "up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 26, y - 110);
            }if(is_aiming == "diagonal_up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 4, y - 96);
            }if(is_aiming == "diagonal_down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + 2, y - 42);
            }if(is_aiming == "forward_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 12, y - 62);
            }if(is_aiming == "down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 14 , y - 38);
            }
            
        }
    if(is_facing == "left"){
        if(state == PS_FIRST_JUMP && is_morph == false){
            if(is_aiming == "up" || is_aiming != "up"){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 50, y - 96);
            }
        }
        if(state == PS_IDLE && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 34, y - 130);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 68, y - 118);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 66, y - 62);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 56, y - 76);
                }
            }
            if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && is_morph == false && !free){
                if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 72, y - 116);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 56, y - 70);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 70, y - 82);
                }
            }
            if(is_crouch == true && is_morph == false && !free){
                if(is_aiming == "up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 24, y - 110);
                }if(is_aiming == "diagonal_up_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 58, y - 96);
                }if(is_aiming == "diagonal_down_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 56, y - 40);
                }if(is_aiming == "forward_"){
                    draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 46, y - 54);
                }
            }
            if(is_aiming == "up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 26, y - 110);
            }if(is_aiming == "diagonal_up_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 56, y - 96);
            }if(is_aiming == "diagonal_down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 52, y - 42);
            }if(is_aiming == "down_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 40, y - 38);
            }if(is_aiming == "forward_" && free && state != PS_FIRST_JUMP && state != PS_DOUBLE_JUMP){
                draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 40, y - 66);
            }
    }
}


//shading stuff


if(is_charged == true && jump_power_up != "screw_attack_"){
    gpu_set_fog(true, c_white, 0, 1);
    if(is_facing == "right"){
        draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, fog_magic);
    }else if(is_facing == "left"){
        draw_sprite_ext(sprite_index, image_index, x, y, -2, 2, 0, c_white, fog_magic);
    }
    gpu_set_fog(false, c_white, 0, 1);
}else{
    gpu_set_fog(false, c_white, 0, 1);
}

if(speeding == true){
    gpu_set_fog(true, c_blue, 0, 1);
    if(is_facing == "right"){
        draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, fog_magic);
    }else if(is_facing == "left"){
        draw_sprite_ext(sprite_index, image_index, x, y, -2, 2, 0, c_white, fog_magic);
    }
    gpu_set_fog(false, c_blue, 0, 1);
}else{
    gpu_set_fog(false, c_blue, 0, 1);
}

if(shinespark_charged == true){
    gpu_set_fog(true, c_orange, 0, 1);
    if(is_facing == "right"){
        draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, fog_magic);
    }else if(is_facing == "left"){
        draw_sprite_ext(sprite_index, image_index, x, y, -2, 2, 0, c_white, fog_magic);
    }
    gpu_set_fog(false, c_orange, 0, 1);
}else{
    gpu_set_fog(false, c_orange, 0, 1);
}

if(is_shinesparking == true && shinespark_end == 0){
    gpu_set_fog(true, c_orange, 0, 1);
    if(is_facing == "right"){
        draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, fog_magic2);
    }else if(is_facing == "left"){
        draw_sprite_ext(sprite_index, image_index, x, y, -2, 2, 0, c_white, fog_magic2);
    }
    gpu_set_fog(false, c_orange, 0, 1);
}else{
    gpu_set_fog(false, c_orange, 0, 1);
}

if(is_shinesparking == true && shinespark_end >= 1){
    gpu_set_fog(true, c_orange, 0, 1);
    if(is_facing == "right"){
        draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 0.6);
    }else if(is_facing == "left"){
        draw_sprite_ext(sprite_index, image_index, x, y, -2, 2, 0, c_white, 0.6);
    }
    gpu_set_fog(false, c_orange, 0, 1);
}else{
    gpu_set_fog(false, c_orange, 0, 1);
}

if(is_dead == true){
    gpu_set_fog(true, c_black, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 0.15);
    gpu_set_fog(false, c_black, 0, 1);
}else{
    gpu_set_fog(false, c_black, 0, 1);
}

if(is_somersaulting == true && jump_power_up == "screw_attack_"){
    gpu_set_fog(true, c_lime, 0, 1);
    if(is_facing == "right"){
        draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, fog_magic3);
    }else if(is_facing == "left"){
        draw_sprite_ext(sprite_index, image_index, x, y, -2, 2, 0, c_white, fog_magic3);
    }
    gpu_set_fog(false, c_lime, 0, 1);
}else{
    gpu_set_fog(false, c_lime, 0, 1);
}
