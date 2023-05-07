shader_start();
//nothin'

//draw_sprite_ext(sprite_get("taunt_aura2"), get_gameplay_time()*.2, x - 118, y - 109, 2, 1, 0, c_white, .2);
//draw_sprite_ext(sprite_get("taunt_aura2"), get_gameplay_time()*.3, x - 118, y - 149, 2, 1.5, 0, c_white, .2);
//draw_sprite_ext(sprite_get("taunt_aura2"), get_gameplay_time()*.5, x - 118, y - 209, 2, 2, 0, c_white, .4);

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

if (attack == AT_USPECIAL_2 && window == 2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    draw_sprite_ext(sprite_get("uspecial_ground2_scan"), get_gameplay_time(), x+12 * spr_dir, y-313, 2 * spr_dir, 2, 0, c_white, 0.5);
    //draw_sprite_ext(sprite_get("uspecial_ground2_scan"), 0, x+12 * spr_dir, y-312, 1 * spr_dir, 1, 0, c_white, 1);
}

if (nspecial_time < 38 && move_cooldown[AT_NSPECIAL] > 0){
    draw_sprite_ext(sprite_get("bar"), nspecial_time, x-22, y-126, 1, 1, 0, c_white, 0.6);
}

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
if (attack == AT_NSPECIAL){
    if (window == 1 || window == 6){
    draw_sprite_ext(sprite_get("bar"), 0, x-22, y-126, 1.2, 0.8, 0, c_white, 0.3);
    }
    if (window == 2 || window == 7){
    draw_sprite_ext(sprite_get("bar"), nspecial_time, x-22, y-126, 1, 1, 0, c_white, 1);
    }
    if (window == 3 || window == 4){
    draw_sprite_ext(sprite_get("bar"), nspecial_time, x-22, y-126, 1, 1, 0, c_white, 0.9);
    }
    if (window == 5 || window == 8){
    draw_sprite_ext(sprite_get("bar"), nspecial_time, x-22, y-126, 1, 1, 0, c_white, 0.5);
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
}

if(state == PS_ATTACK_GROUND){
if (attack == AT_USTRONG){
    if (window == 4 || window == 5){
    if (strong_charge > 0 && ((state_timer mod 2) == 0)){ draw_sprite_ext(sprite_get("ustrong_proj_charge"), 0, x - 15 * spr_dir, y - 8, 1 * spr_dir, 1, 0, c_white, 1); }
    }
    if (window == 6 && window_timer < 5){
    if (strong_charge > 0 && ((state_timer mod 2) == 0)){ draw_sprite_ext(sprite_get("ustrong_proj_charge"), 0, x - 25 * spr_dir, y - 8, 1 * spr_dir, 1, 0, c_white, 1); }
    }
    if (window == 6 && window_timer >= 1 && window_timer <= 9){
    if (strong_charge > 0 && ((state_timer mod 1) == 0)){ draw_sprite_ext(sprite_get("ustrong_proj_charge"), 0, x - 26 * spr_dir, y - 8, 1 * spr_dir, 1, 0, c_white, 1); }
    }
    if (window == 6 && window_timer >= 10 && window_timer < 13){
        draw_sprite_ext(sprite_get("ustrong_proj_blast"), 0, x + 1 * spr_dir, y - 1, 1 * spr_dir, 1, 0, c_white, 1);
    }
    if (window == 6 && window_timer >= 13 && window_timer < 20){
        draw_sprite_ext(sprite_get("ustrong_proj_blast"), 1, x + 1 * spr_dir, y - 1, 1 * spr_dir, 1, 0, c_white, 1);
    }
    if (window == 6 && window_timer >= 20 && window_timer < 25){
        draw_sprite_ext(sprite_get("ustrong_proj_blast"), 2, x + 1 * spr_dir, y - 1, 1 * spr_dir, 1, 0, c_white, 1);
    }
    if (window == 6 && window_timer >= 25 && window_timer < 30){
        draw_sprite_ext(sprite_get("ustrong_proj_blast"), 3, x + 1 * spr_dir, y - 1, 1 * spr_dir, 1, 0, c_white, 1);
        }
    }
}

if (IllCrushYou > 0){
    var crushingelectric = random_func(0, 10, true); //making it look like it has pauses
    var crushingelectric2 = random_func(0, 100, true); //rortation
    draw_sprite_ext(sprite_get("electric_effect"), get_gameplay_time()* crushingelectric / 200, x-8, y-20, 1.1, 1.1, 0 + crushingelectric2, c_white, 1);
}

//with (asset_get("oPlayer")){
//with (other_player_id){
    //if (player != other.player){
        //draw_sprite_ext(sprite_get("target"), 0, x, y, 1, 1, 0, c_white, 1);
    //}
//}

shader_end();
