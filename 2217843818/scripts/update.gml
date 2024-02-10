if (speed_mult != 0){
    
    idle_anim_speed *= speed_mult;
    crouch_anim_speed *= speed_mult;
    walk_anim_speed *= speed_mult;
    dash_anim_speed *= speed_mult;
    pratfall_anim_speed *= speed_mult;
    
    walk_speed *= speed_mult;
    walk_accel *= speed_mult;
    walk_turn_time *= speed_mult;
    initial_dash_speed *= speed_mult;
    dash_speed *= speed_mult;
    dash_turn_accel *= speed_mult;
    dash_stop_percent *= speed_mult;
    ground_friction *= speed_mult;
    moonwalk_accel *= speed_mult;
    dash_turn_accel *= speed_mult;
    jump_speed *= speed_mult/1.7;
    short_hop_speed *= speed_mult/1.7;
    djump_speed *= speed_mult/1.7;
    leave_ground_max *= speed_mult;
    max_jump_hsp *= speed_mult;
    air_max_speed *= speed_mult;
    jump_change *= speed_mult;
    air_accel *= speed_mult;
    air_friction *= speed_mult;
    walljump_hsp *= speed_mult/1.7;
    walljump_vsp *= speed_mult/1.7;
    max_fall *= speed_mult/1.7;
    fast_fall *= speed_mult/1.7;
    gravity_speed *= speed_mult;
    hitstun_grav *= speed_mult/2;
    wave_land_adj *= speed_mult;
    wave_friction *= speed_mult;
    
    speed_mult = 0;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    if (attack == AT_USPECIAL_2){
        gravity_speed = .32;
    }
}

if (state != PS_PRATFALL){
    prat_fall_accel = .75;
}

if (free){
    move_cooldown[AT_USPECIAL] = 0;
}

//tas5 alt
if (get_player_color(player) == 24){
    //Run once
    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

    //Run for each color slot you're changing. If you're using different hues (EG Liz shading), make sure they're actually different - The colors still use the original colors saturation/value.
    color_rgb = make_color_rgb (220, 141, 141 ); //pickdark //input rgb values here, uses rgb to create a gamemaker colour variable

    hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue

    set_color_profile_slot( 24, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.
    set_article_color_slot( 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv), 1); //Set color alt/slot to the new color.

    //Repeat for each color slot.
    color_rgb = make_color_rgb (163, 86, 86); //pickmid //input rgb values here, uses rgb to create a gamemaker colour variable

    hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    set_color_profile_slot( 24, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.
    set_article_color_slot( 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv), 1); //Set color alt/slot to the new color.

    init_shader();
}


//runes
if (has_rune("A")){
    set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
    
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

    set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 3);
}

if (has_rune("B")){
    set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 15);
}

if (has_rune("E")){
    set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 8);

    set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 85);
    set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 85);
}

if (has_rune("F")){
    knockback_adj = .85;
}



if (has_rune("G")){
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
}

/*
if (has_rune("H")){
    var yourmom = noone;
    
    with (asset_get("oPlayer")){
        if (player != other.player){
            if (distance_to_object(other) > 75){
                if (!other.taunt_down){
                    other.visible = false;
                }
            }
            else{
                other.visible = true;
            }
        }
    }
    
    if (taunt_down){
        visible = true;
    }
    
}
*/

if (has_rune("I")){
    set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
    set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
    set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -13);
    set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
    set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 75);
    set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
    set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 18);
    set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
    set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 197);
    set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
    
    set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
    set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 6);
    set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -13);
    set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
    set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 75);
    set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
    set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
    set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 18);
    set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
    set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1.0);
    set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1.0);
    set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 197);
    set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);
}


/*
if (has_rune("L")){
    if (dash_speed < 7){
        speed_mult = 3;
    }
}
*/

if (has_rune("B")){
    with (asset_get("pHitBox")){
        if (player == other.player){
            if (air_friction < .1){
                image_xscale *= 1.75;
                image_yscale *= 1.75;
                air_friction = .2;
            }
        }
    }
}

if (has_rune("H")){
    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12);
}
