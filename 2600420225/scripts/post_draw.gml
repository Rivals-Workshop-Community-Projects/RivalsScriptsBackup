muno_event_type = 4;
user_event(14);

if((select_ammo == 1 || select_ammo == 2 || select_ammo == 4) && is_somersaulting == false && is_morph == false && state != PS_HITSTUN && state != PS_LAND && state != PS_WALL_JUMP){
    if((state == PS_IDLE && is_crouch == false)||(state == PS_CROUCH && is_crouch == false)){
        if(is_aiming == "up_"){
            arm_cannon_x = 0;
            arm_cannon_y = -106;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 24;
            arm_cannon_y = -96;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 22;
            arm_cannon_y = -54;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = 24;
            arm_cannon_y = -58;
        }
    }if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false){
        if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
            arm_cannon_x = 30;
            arm_cannon_y = -96;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 18;
            arm_cannon_y = -58;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = 38;
            arm_cannon_y = -64;
        }
    }if(is_crouch == true){
        if(is_aiming == "up_"){
            arm_cannon_x = -8;
            arm_cannon_y = -84;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 16;
            arm_cannon_y = -74;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 16;
            arm_cannon_y = -32;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = 16;
            arm_cannon_y = -36;
        }
    }if(state == PS_IDLE_AIR){
        if(is_aiming == "up_"){
            arm_cannon_x = -8;
            arm_cannon_y = -84;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 12;
            arm_cannon_y = -76;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 10;
            arm_cannon_y = -34;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = 8;
            arm_cannon_y = -44;
        }else if(is_aiming == "down_"){
            arm_cannon_x = 4;
            arm_cannon_y = -30;
        }
    }
    if(state == PS_FIRST_JUMP){
        if(is_facing == "right"){
            draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_down_"), 0, x - 14, y - 66);
        }else{
            draw_sprite(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_left_special"), 0, x - 28, y - 74);
        }
    }else if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && (is_aiming == "diagonal_up_" || is_aiming == "up_")){
            draw_sprite_ext(sprite_get("misc_missile_arm_cannon_aim_diagonal_up_"), 0, x + (arm_cannon_x * spr_dir), y + arm_cannon_y, spr_dir, 1, 0, c_white, 1);
    }else if(is_aiming == "forward_" && state == PS_IDLE_AIR && is_facing == "left"){
    }else{
        draw_sprite_ext(sprite_get("misc_missile_arm_cannon_aim_" + is_aiming), 0, x + (arm_cannon_x * spr_dir), y + arm_cannon_y, spr_dir, 1, 0, c_white, 1);
    }
}
//missile arm cannon^^^


//charge effect
if((select_ammo == 0 || select_ammo == 3) && is_somersaulting == false && attack_down && is_morph == false && charge == true && state != PS_HITSTUN && state != PS_LAND && state != PS_WALL_JUMP){
    if(is_charged == false){
    if((state == PS_IDLE && is_crouch == false)||(state == PS_CROUCH && is_crouch == false)){
        if(is_aiming == "up_"){
            arm_cannon_x = -18;
            arm_cannon_y = -130;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 16;
            arm_cannon_y = -118;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 14;
            arm_cannon_y = -62;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = 4;
            arm_cannon_y = -76;
        }
    }if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false){
        if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
            arm_cannon_x = 20;
            arm_cannon_y = -116;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 46;
            arm_cannon_y = -124;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = 18;
            arm_cannon_y = -82;
        }
    }if(is_crouch == true){
        if(is_aiming == "up_"){
            arm_cannon_x = -26;
            arm_cannon_y = -110;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 8;
            arm_cannon_y = -94;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 6;
            arm_cannon_y = -40;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = -4;
            arm_cannon_y = -54;
        }
    }if(state == PS_IDLE_AIR){
        if(is_aiming == "up_"){
            arm_cannon_x = -26;
            arm_cannon_y = -110;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 4;
            arm_cannon_y = -96;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 2;
            arm_cannon_y = -42;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = -12;
            arm_cannon_y = -62;
        }else if(is_aiming == "down_"){
            arm_cannon_x = -14;
            arm_cannon_y = -38;
        }
    }
    if(state == PS_FIRST_JUMP){
        if(is_facing == "right"){
            draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 26, y - 78);
        }else{
            draw_sprite(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x - 50, y - 96);
        }
    }else if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && (is_aiming == "diagonal_up_" || is_aiming == "up_")){
            draw_sprite_ext(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + (arm_cannon_x * spr_dir), y + arm_cannon_y, spr_dir, 1, 0, c_white, 1);
    }else if(is_aiming == "forward_" && state == PS_IDLE_AIR && is_facing == "left"){
    }else{
        draw_sprite_ext(sprite_get("beam_attacks_" + beam_level + "_charging"), charging_timer / 6, x + (arm_cannon_x * spr_dir), y + arm_cannon_y, spr_dir, 1, 0, c_white, 1);
    }
}else if(is_charged == true){
    if((state == PS_IDLE && is_crouch == false)||(state == PS_CROUCH && is_crouch == false)){
        if(is_aiming == "up_"){
            arm_cannon_x = -18;
            arm_cannon_y = -130;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 16;
            arm_cannon_y = -118;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 14;
            arm_cannon_y = -62;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = 4;
            arm_cannon_y = -76;
        }
    }if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false){
        if(is_aiming == "diagonal_up_" || is_aiming == "up_"){
            arm_cannon_x = 20;
            arm_cannon_y = -116;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 46;
            arm_cannon_y = -124;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = 18;
            arm_cannon_y = -82;
        }
    }if(is_crouch == true){
        if(is_aiming == "up_"){
            arm_cannon_x = -26;
            arm_cannon_y = -110;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 8;
            arm_cannon_y = -94;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 6;
            arm_cannon_y = -40;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = -4;
            arm_cannon_y = -54;
        }
    }if(state == PS_IDLE_AIR){
        if(is_aiming == "up_"){
            arm_cannon_x = -26;
            arm_cannon_y = -110;
        }else if(is_aiming == "diagonal_up_"){
            arm_cannon_x = 4;
            arm_cannon_y = -96;
        }else if(is_aiming == "diagonal_down_"){
            arm_cannon_x = 2;
            arm_cannon_y = -42;
        }else if(is_aiming == "forward_"){
            arm_cannon_x = -12;
            arm_cannon_y = -62;
        }else if(is_aiming == "down_"){
            arm_cannon_x = -14;
            arm_cannon_y = -38;
        }
    }
    if(state == PS_FIRST_JUMP){
        if(is_facing == "right"){
            draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 26, y - 78);
        }else{
            draw_sprite(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x - 50, y - 96);
        }
    }else if((state == PS_WALK || state == PS_DASH || state == PS_DASH_START) && is_crouch == false && (is_aiming == "diagonal_up_" || is_aiming == "up_")){
            draw_sprite_ext(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + (arm_cannon_x * spr_dir), y + arm_cannon_y, spr_dir, 1, 0, c_white, 1);
    }else if(is_aiming == "forward_" && state == PS_IDLE_AIR && is_facing == "left"){
    }else{
        draw_sprite_ext(sprite_get("beam_attacks_" + beam_level + "_ready_to_fire"), animation_counter / 2, x + (arm_cannon_x * spr_dir), y + arm_cannon_y, spr_dir, 1, 0, c_white, 1);
    }
}
}

//shading stuff

if(shading == true){
if(is_charged == true && jump_power_up != "screw_attack_"){
    gpu_set_fog(true, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, 0, c_white, fog_magic);
    gpu_set_fog(false, c_white, 0, 1);
}else{
    gpu_set_fog(false, c_white, 0, 1);
}

if(speeding == true){
    gpu_set_fog(true, c_blue, 0, 1);
        draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, 0, c_white, fog_magic);
    gpu_set_fog(false, c_blue, 0, 1);
}else{
    gpu_set_fog(false, c_blue, 0, 1);
}

if(shinespark_charged == true){
    gpu_set_fog(true, c_orange, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, 0, c_white, fog_magic);
    gpu_set_fog(false, c_orange, 0, 1);
}else{
    gpu_set_fog(false, c_orange, 0, 1);
}

if(is_shinesparking == true && shinespark_end == 0){
    gpu_set_fog(true, c_orange, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, 0, c_white, fog_magic2);
    gpu_set_fog(false, c_orange, 0, 1);
}else{
    gpu_set_fog(false, c_orange, 0, 1);
}

if(is_shinesparking == true && shinespark_end >= 1){
    gpu_set_fog(true, c_orange, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, 0, c_white, 0.6);
    gpu_set_fog(false, c_orange, 0, 1);
}else{
    gpu_set_fog(false, c_orange, 0, 1);
}

if(is_somersaulting == true && jump_power_up == "screw_attack_"){
    gpu_set_fog(true, c_lime, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, 0, c_white, fog_magic3);
    gpu_set_fog(false, c_lime, 0, 1);
}else{
    gpu_set_fog(false, c_lime, 0, 1);
}
}
