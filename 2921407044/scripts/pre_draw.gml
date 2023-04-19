// Pre draw script

//Reload Indicator
if(shells = 0){
    //draw_debug_text(x - 25 + (-1 * 25 * spr_dir), y - 92,"Reload!");
    draw_sprite_ext(sprite_get("indicator"),1,x - (40 * spr_dir),y - 90,spr_dir,1,0,c_white,1);
    if(reload_indicator_sound_played == false){
        sound_play(sound_get("ammo_indicator"));
        reload_indicator_sound_played = true;
    }
}

// Arm flapping on aim section
if(state == PS_ATTACK_AIR || state = PS_ATTACK_GROUND){ // Prevent from drawing on neutral actions after attack
    if(((attack == AT_NSPECIAL_2 && (window == 1 || window == 2 || window == 3 || window == 4))
    || (attack == AT_FSPECIAL_AIR && (window == 1 || window == 2)))
    && free){
        shader_start();
        var arm_flap_image_index = floor((get_gameplay_time()/5) % 6);
        draw_sprite_ext(sprite_get("nspecial_aim_air_arm"),arm_flap_image_index, x + (5*spr_dir), y-58, spr_dir, 1, 0, c_white, 1 );
        draw_sprite_ext(sprite_get("hfx_steam_boost_hover"),arm_flap_image_index,x + (5*spr_dir),y-58,spr_dir,1,0,c_white,1);
        shader_end();
        // Arm Flapping Sound Logic
        if(arm_flap_image_index == 1 && arm_flap_sound_has_flapped = false){ // Make the noise for 1 frame
            sound_play(asset_get( "sfx_birdflap" ),false,noone,1,1);
            //spawn_hit_fx(x + (5*spr_dir), y-58, 11); ////11  - feathers side small - Leaving this out for now
            arm_flap_sound_has_flapped = true;
        }
        if(arm_flap_image_index != 1){arm_flap_sound_has_flapped = false;} // Set variable back to false on any other image index
    }
}

// Unused ----------------------------------------------------------------------
