shader_start();
//set_character_color_slot(0, 255, 195, 100, 1);

// post_draw.gml - credit to gigachad
//gpu_set_blendmode(bm_add);
//draw_sprite_ext(sprite_index, image_index , x , y - get_gameplay_time() % 10  , spr_dir, 1, 0 , -1 , 0.5 - (get_gameplay_time() % 10/20));
//draw_sprite_ext(sprite_index, image_index , x , y   , spr_dir, 1, 0 , -1 , 0.2);
//gpu_set_blendmode(bm_normal);

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
if (attack == AT_NSPECIAL){
    if ( (window == 1 || window == 6) ){
        if (nspecial_time == 37){
            draw_sprite_ext(sprite_get("bar"), 36, x-22, y-127, 1, 1, 0, c_white, 0.5);
        }
    }
    if ( (window == 2 || window == 7) ){
        if (nspecial_time < 37){
            draw_sprite_ext(sprite_get("bar"), nspecial_time, x-22, y-127, 1, 1, 0, c_white, 1);
        }
        if (nspecial_time == 37){
            draw_sprite_ext(sprite_get("bar"), 36, x-22, y-127, 1, 1, 0, c_white, 1);
        }
    }
    
    if (window == 10 && window_timer > 20 && window_timer < 35){
        //draw_sprite_ext(sprite_get("unibeam"), get_gameplay_time()*.3, x + 40, y - 90, 2, 2, -15 * spr_dir, c_white, 1);
        draw_sprite_ext(sprite_get("unibeam"), get_gameplay_time()*.4, x + 102 * spr_dir, y - 10, 2 * spr_dir, 2, -15 * spr_dir, c_white, 1);
        draw_sprite_ext(sprite_get("unibeam_stretch"), get_gameplay_time()*.4, x + 102 * spr_dir, y - 10, 90 * spr_dir, 2, -15 * spr_dir, c_white, 1);
        }
    if (window_timer >= 35 && window_timer < 40){
        draw_sprite_ext(sprite_get("unibeam_done"), get_gameplay_time()*.4, x - 60 * spr_dir, y - 60, 2 * spr_dir, 2, -15 * spr_dir, c_white, 1);
        }
    }
    if (attack == AT_FSTRONG){
        if (window == 2 && window_timer >= 3){
        draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.4, x-19 * spr_dir, y-48, 2, (abs(hsp) / 6), 270 * spr_dir, c_white, 1);
		draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x-19 * spr_dir, y-48, 2, (abs(hsp) / 6), 270 * spr_dir, booster_color, 1);
        }
    }
}

if (nspecial_time > 0 && nspecial_time < 36){
    draw_sprite_ext(sprite_get("bar"), nspecial_time, x-22, y-127 - hud_offset, 1, 1, 0, c_white, 0.4);
}

if (attack == AT_USPECIAL_2 && window == 2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    draw_sprite_ext(sprite_get("uspecial_ground2_scan"), get_gameplay_time(), x+8 * spr_dir, y-315, 2 * spr_dir, 2, 0, c_white, 0.5);
}

if (draw_indicator == true){
if (attack == AT_DSPECIAL_2){
    if (window == 2 && state_timer == 9 && state == PS_ATTACK_GROUND){
    draw_sprite_ext(sprite_get("bar2"), dspecial_charge, x-44, y-111 - hud_offset, 2, 1.2, 0, c_white, 0.3);
    }
    if (window == 2 && state_timer == 10 && state == PS_ATTACK_GROUND){
    draw_sprite_ext(sprite_get("bar2"), dspecial_charge, x-44, y-111 - hud_offset, 2, 1.2, 0, c_white, 0.5);
    }
    if (window == 2 && state_timer == 11 && state == PS_ATTACK_GROUND){
    draw_sprite_ext(sprite_get("bar2"), dspecial_charge, x-44, y-111 - hud_offset, 2, 1.2, 0, c_white, 0.7);
    }
    if (window == 2 && state_timer > 11 && state == PS_ATTACK_GROUND){
    draw_sprite_ext(sprite_get("bar2"), dspecial_charge, x-44, y-111 - hud_offset, 2, 1.2, 0, c_white, 1);
    }
    if ( (window == 6 || window == 7) && state == PS_ATTACK_GROUND){
    draw_sprite_ext(sprite_get("bar2"), 21, x-44, y-111 - hud_offset, 2, 1.2, 0, c_white, 0.9);
    }
}

if (timestop == true){
    draw_sprite_ext(sprite_get("bar2"), timestop_amount, x-44, y-111 - hud_offset, 2, 1.2, 0, c_white, 0.9);
    }
}

if (TauntElec > 0){
    var crushingelectric = random_func(0, 10, true); //1
    var crushingelectric2 = random_func(0, 100, true); //2
    draw_sprite_ext(sprite_get("electric_effect"), get_gameplay_time() * crushingelectric2 / 250, x-28, y-27 - crushingelectric, 1.5, 1.5, 0, c_white, 1);
}

shader_end();
