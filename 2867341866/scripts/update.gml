//ev

if state == PS_WALL_JUMP {
    move_cooldown[AT_FSPECIAL] = 0
    move_cooldown[AT_DSPECIAL] = 0
}


//#region Adrenaline grind
if (state == PS_WAVELAND && state_timer == 2 && !hitpause) {
    
    //grind
    if adrenaline_timer > 0 {
        //set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 9);
        //set_attack( AT_EXTRA_3 );
        //sound_play(asset_get("sfx_kragg_roll_loop"), 1, noone, .6, 1.05)
    }
    sound_play(asset_get("sfx_waveland_kra"), noone, 0, .7, 1)
    sound_play(asset_get("sfx_waveland_fors"), noone, 0, .7, .95)
    sound_play(asset_get("sfx_waveland_oly"), noone, 0, .6, .9)
    sound_stop(asset_get("sfx_quick_dodge"))

}

if (grinding && state == PS_JUMPSQUAT) { // hacky
    sound_stop(asset_get("sfx_kragg_roll_loop"));
} else if (grinding && (state != PS_ATTACK_GROUND || attack != AT_EXTRA_3)) {
    sound_stop(asset_get("sfx_kragg_roll_loop"));
    grinding = false;
}

//#endregion

//#region Adrenaline magagement (aside from alts)
if (adrenaline_timer > 0 && window != 1 && get_gameplay_time() % 24 == 0) spawn_sparkle();
if (adrenaline_timer > 0) {
    dash_anim_speed = base_dash_anim_speed + mod_dash_anim_speed;
    walk_speed = base_walk_speed + mod_walk_speed;
    initial_dash_speed = base_init_dash + mod_init_dash;
    dash_speed = base_dash_speed + mod_dash_speed;
    ground_friction = base_ground_friction + mod_ground_friction;
    wave_friction = base_wave_friction + mod_wave_friction;
    air_max_speed = base_air_max_speed + mod_air_max_speed
    air_accel = base_air_accel + mod_air_accel;
    if (!grinding) max_jump_hsp = base_max_jump_hsp + mod_max_jump_hsp
    wave_land_adj = base_wave_land_adj + mod_wave_land_adj
    knockback_adj = base_knockback_adj + mod_knockback_adj

    if !hitpause  {
            adrenaline_timer--;
        }
        //adrenaline_timer--;
    }
 else {
    dash_anim_speed = base_dash_anim_speed
    walk_speed = base_walk_speed;
    initial_dash_speed = base_init_dash;
    dash_speed = base_dash_speed;
    ground_friction = base_ground_friction;
    wave_friction = base_wave_friction;
    air_max_speed = base_air_max_speed
    air_accel = base_air_accel;
    if (!grinding) max_jump_hsp = base_max_jump_hsp
    wave_land_adj = base_wave_land_adj
    knockback_adj = base_knockback_adj

}
if adrenaline_timer == 1 && !hitpause{
    //print("ywauhiahs")
    sound_play(asset_get("sfx_abyss_despawn"))
}
if adrenaline_timer > 0 { 
    hue_speed = 4
    if (state == PS_AIR_DODGE) {
        if (state_timer % 2 == 1) spawn_sparkle();
        // if (state_timer % 6 == 1) add_afterimage(20);
    }
    if (state == PS_WAVELAND) {
        spawn_sparkle();
    }
} else {
    hue_speed = 2
}
//#endregion

/* DEPRECATED
// Afterimage management (drawn in pre_draw.gml, added by attack_update.gml)
for (var i = 0; i < ds_list_size(afterimage_list); i++) {
    var ai_current = ds_list_find_value(afterimage_list, i);
    ai_current.ai_lifetime = ai_current.ai_lifetime-1;
    if (ai_current.ai_lifetime <= 0) {
        ds_list_remove(afterimage_list, ai_current);
        i--;
    }
}*/

//#region Sparkle management (drawn in pre_draw.gml, added by update/attack_update.gml)
for (var i = 0; i < ds_list_size(sparkle_list); i++) {
    var sp = ds_list_find_value(sparkle_list, i);
    sp.sp_lifetime++;
    if (sp.sp_lifetime >= sp.sp_max_lifetime) {
        ds_list_remove(sparkle_list, sp);
        i--;
    }
}
//#endregion

//#region Alts


/*
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb( 212, 143, 3); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 3, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
*/
    //Rainbow

    //Run once
    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

    //Run for each color slot you're changing. If you're using different hues (EG Liz shading), make sure they're actually different - The colors still use the original colors saturation/value.
    color_rgb = make_color_rgb (46, 61, 74 ); //pickdark //input rgb values here, uses rgb to create a gamemaker colour variable

    hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue

    set_color_profile_slot( 22, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.

    //Repeat for each color slot.
    color_rgb = make_color_rgb (96, 129, 156); //pickmid //input rgb values here, uses rgb to create a gamemaker colour variable

    hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    set_color_profile_slot( 22, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.

    //Repeat for each color slot.
    color_rgb = make_color_rgb (142, 190, 230 ); //picklight //input rgb values here, uses rgb to create a gamemaker colour variable

    hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    set_color_profile_slot( 22, 5, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.

    init_shader();



//print(ssnk_tagpal.active_clr)



if get_player_color(player) == 16 {
  set_article_color_slot( 16, 3, 166, 133, 0 ); //pickdark
  set_article_color_slot( 16, 4, 252, 202, 0 ); //pickmid
  set_article_color_slot( 16, 5, 255, 255, 255 ); //picklight
}
//print(adrenaline_timer)
//Neon
if adrenaline_timer == adrenaline_max || adrenaline_timer == adrenaline_max - 10 || adrenaline_timer == 5{
    if get_player_color( player ) == 12 {
        // Neon (FTL)
        set_color_profile_slot( 12, 0, 28, 34, 87 ); //bodydark
        set_color_profile_slot( 12, 1, 46, 78, 143 ); //bodylight
        set_color_profile_slot( 12, 2, 46, 78, 143 ); //bodyshine
        set_color_profile_slot( 12, 3, 161, 157, 2 ); //pickdark
        set_color_profile_slot( 12, 4, 222, 217, 33 ); //pickmid
        set_color_profile_slot( 12, 5, 247, 250, 255 ); //picklight
        set_color_profile_slot( 12, 6, 1, 140, 204 ); //feet
        set_color_profile_slot( 12, 7, 1, 208, 248 ); //feetlight
        
        // hate it here
        set_article_color_slot( 12, 3, 161, 157, 2 ); //pickdark
        set_article_color_slot( 12, 4, 222, 217, 33 ); //pickmid
        set_article_color_slot( 12, 5, 247, 250, 255 ); //picklight
    }
    if ssnk_tagpal.active_clr == 30 {
        // SUPER AUR......
        set_color_profile_slot( 30, 0, 202, 167, 17 ); //bodydark
        set_color_profile_slot( 30, 1, 253, 215, 57 ); //bodylight
        set_color_profile_slot( 30, 2, 253, 243, 200 ); //bodyshine
        set_color_profile_slot( 30, 3, 202, 167, 17 ); //pickdark
        set_color_profile_slot( 30, 4, 253, 215, 57 ); //pickmid
        set_color_profile_slot( 30, 5, 253, 243, 200 ); //picklight
        set_color_profile_slot( 30, 6, 180, 45, 0 ); //feet
        set_color_profile_slot( 30, 7, 207, 102, 41 ); //feetlight
         outline_color = [129, 87, 1];
         set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("SUPERAUR"));

    }
    init_shader();
}

if adrenaline_timer == 10 || adrenaline_timer == 1  {
    if get_player_color( player ) == 12 {
        // Neon (FTL)
        set_color_profile_slot( 12, 0, 25, 30, 59 ); //bodydark
        set_color_profile_slot( 12, 1, 51, 58, 97 ); //bodylight
        set_color_profile_slot( 12, 2, 51, 58, 97 ); //bodyshine
        set_color_profile_slot( 12, 3, 93, 105, 78 ); //pickdark
        set_color_profile_slot( 12, 4, 199, 197, 141 ); //pickmid
        set_color_profile_slot( 12, 5, 242, 255, 242 ); //picklight
        set_color_profile_slot( 12, 6, 88, 126, 133 ); //feet
        set_color_profile_slot( 12, 7, 85, 171, 186 ); //feetlight
    
        set_article_color_slot( 12, 3, 93, 105, 78 ); //pickdark
        set_article_color_slot( 12, 4, 199, 197, 141 ); //pickmid
        set_article_color_slot( 12, 5, 242, 255, 242 ); //picklight
    }
    if ssnk_tagpal.active_clr == 29 {
        // SONIC
        set_color_profile_slot( 29, 0, 0, 21, 179 ); //bodydark
        set_color_profile_slot( 29, 1, 33, 54, 217 ); //bodylight
        set_color_profile_slot( 29, 2, 33, 54, 217 ); //bodyshine
        set_color_profile_slot( 29, 3, 141, 150, 184 ); //pickdark
        set_color_profile_slot( 29, 4, 202, 206, 224 ); //pickmid
        set_color_profile_slot( 29, 5, 247, 248, 255 ); //picklight
        set_color_profile_slot( 29, 6, 180, 0, 1 ); //feet
        set_color_profile_slot( 29, 7, 207, 79, 79 ); //feetlight
         outline_color = [0, 0, 0];
         set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("baby"));

    }
    init_shader();
}

//#endregion

if babysoundtimer > 0 {
    babysoundtimer = babysoundtimer - 1 
}
if babysoundtimer == 20 {
    sound_volume(babysound, 0, 20)
}



//#region Intros

if get_player_color(player) == 13 {
    if (introTimer2 < 5) {
        introTimer2++;
    } else {
        introTimer2 = 0;
        introTimer++;
    }
} else {
    if (introTimer2 < 6) {
        introTimer2++;
    } else {
        introTimer2 = 0;
        introTimer++;
    }
}


//this increments introTimer every few frames, depending on the number entered

if (introTimer < 7 && state == PS_SPAWN) {
    hud_offset = 30;
} if introTimer > 6 && introTimer < 12 && state == PS_SPAWN {
    hud_offset = 110
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
if get_player_color( player ) != 13 {
    if get_gameplay_time() == 70 {
        sound_play(asset_get("sfx_ice_back_air"))
        sound_play(asset_get("mfx_star"))
        //sound_play(asset_get("sfx_mol_tauntup"))
        sound_play(asset_get("sfx_oly_taunt2"))
        sound_play(asset_get("sfx_buzzsaw_hit"))
        sound_play(asset_get("sfx_oly_nspecial_flashbreak"))

        //spawn_hit_fx( x, y, 306 )

    }
    if get_gameplay_time() == 105 {
        sound_play(asset_get("sfx_land_heavy"))
        sound_play(asset_get("sfx_waveland_kra"), noone, 0, .7, 1)

    }
} else {
    
    if get_gameplay_time() == 70 {
        sound_play(asset_get("sfx_abyss_portal_spawn"))
    }

}
//#endregion




#define spawn_sparkle()
    var sparkle_type = random_func_2(42, 4, true);
    if (sparkle_type == 0) spawn_particle_random("sparkle_m1", 20, 20);
    else if (sparkle_type == 1) spawn_particle_random("sparkle_m2", 24, 20);
    else if (sparkle_type <= 3) spawn_particle_random("sparkle_s", 16, 20);
    
#define spawn_particle_random(in_sprite, lifetime, seed)
    var min_rad = 30;
    var rad_range = 10;
    var y_offset = -20;
    var _rot = random_func_2(seed, 240, false) - 60;
    var _dist = min_rad + random_func_2(seed+1, rad_range, false);
    var _x = x + lengthdir_x(_dist, _rot);
    var _y = y + lengthdir_y(_dist, _rot) + y_offset;
    var sparkle = {
        sp_x : _x,
        sp_y : _y,
        sp_sprite_index : sprite_get(in_sprite),
        sp_max_lifetime : lifetime,
        sp_lifetime : 0,
        sp_spr_dir : spr_dir
    };
    ds_list_add(sparkle_list, sparkle);
    
#define add_afterimage(in_lifetime)
    var afterimage = {
        ai_x : x,
        ai_y : y,
        ai_sprite_index : sprite_index,
        ai_image_index : image_index,
        ai_lifetime : in_lifetime,
        ai_max_lifetime : in_lifetime,
        ai_spr_dir : spr_dir
    };
    ds_list_add(afterimage_list, afterimage);