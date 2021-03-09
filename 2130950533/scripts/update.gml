// Update the joke aura timer
if (joke_primed) {
    joke_aura_timer = (joke_aura_timer + 1) % joke_aura_timer_max;
    /*
    var current_color = outline_color;
    if (((joke_aura_timer / joke_aura_timer_max) * 8) % 2) {
        outline_color = [90, 90, 90];
    } else {
        outline_color = [130, 130, 130];
    }
    init_shader();
    outline_color = current_color;
    */
}

// Play charging sound
charge_sound = "sfx_abyss_hex_curse";
if (((state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND))
    && ((attack == AT_NSPECIAL) && (window == 2)))
{
    if (!joke_charge_sound_playing) {
        sound_play(asset_get(charge_sound), true);
        joke_charge_sound_playing = true;
    }
} else if (joke_charge_sound_playing) {
    sound_stop(asset_get(charge_sound));
    joke_charge_sound_playing = false;
}

// Move name thingy to avoid overlapping during certain moves
// It has to be set the frame before the window in question begins and repealed the frame before it ends.
default_height = 53;
if (state_cat != SC_GROUND_NEUTRAL) {
    switch (attack) {
        case AT_DSTRONG :
            if (((window == 1) && (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)))
                || (window == 2)
                || ((window == 3) && (window_timer < get_window_value(attack, 3, AG_WINDOW_LENGTH))))
            {
                char_height = 100;
            } else {
                char_height = default_height;
            }
            break;
        case AT_UAIR :
            extra_frames = 0;
            if (!has_hit) {
                extra_frames = 1;
            }
            if (((window == 2) && (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)))
                || ((window == 3) && (window_timer < get_window_value(attack, 3, AG_WINDOW_LENGTH))))
            {
                char_height = 128;
            }  else if (((window == 3) && (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)))
                || ((window == 4) && (window_timer < get_window_value(attack, 4, AG_WINDOW_LENGTH))))
            {
                char_height = 116;
            } else if (((window == 4) && (window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)))
                || ((window == 5) && (window_timer < extra_frames + get_window_value(attack, 5, AG_WINDOW_LENGTH))))
            {
                char_height = 88;
            } else if (((window == 5) && (window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH)))
                || ((window == 6) && (window_timer < extra_frames + get_window_value(attack, 6, AG_WINDOW_LENGTH))))
            {
                char_height = 66;
            } else if (((window == 6) && (window_timer == get_window_value(attack, 6, AG_WINDOW_LENGTH)))
                || ((window == 7) && (window_timer < extra_frames + get_window_value(attack, 7, AG_WINDOW_LENGTH))))
            {
                char_height = 60;
            } else if (((window == 7) && (window_timer == get_window_value(attack, 7, AG_WINDOW_LENGTH)))
                || ((window == 8) && (window_timer < extra_frames + get_window_value(attack, 8, AG_WINDOW_LENGTH))))
            {
                char_height = 58;
            } else {
                char_height = default_height;
            }
            break;
        case AT_USPECIAL :
            if (((window == 1) && (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)))
                || (window == 2))
            {
                char_height = 80;
            } else {
                char_height = default_height;
            }
            break;
        default :
            char_height = default_height;
            break;
    }
} else {
        char_height = default_height;
}


// Kirby copy compatibility
// I'm going to give Kirby the emoji-throwing move
if swallowed {
    swallowed = 0;
    var ability_spr = sprite_get("kirby_copy_ability");
    var ability_hurt = sprite_get("kirby_copy_ability_hurt")
    var ability_icon = sprite_get("kirby_ability_hud") //Optional
    var proj_sprite = sprite_get("fspecial_proj");
    var proj_mask = sprite_get("fspecial_proj_mask");
    //var emoji_splat_sprite = sprite_get("emoji_splat");
    //var emoji_splat = hit_fx_create(emoji_splat_sprite, 12);
    //var emoji_particle = sprite_get("emoji_particle");
    with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
        newicon = ability_icon; //Optional, replaces the kirby ability icon
        
        //set_hit_particle_sprite(1, emoji_particle);
        
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 1);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
        
        for (i = 1; i <= 3; i++) {
            set_window_value(AT_EXTRA_3, 3 + i, AG_WINDOW_TYPE, 1);
            set_window_value(AT_EXTRA_3, 3 + i, AG_WINDOW_LENGTH, 9);
            set_window_value(AT_EXTRA_3, 3 + i, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_EXTRA_3, 3 + i, AG_WINDOW_ANIM_FRAME_START, 6 + (2 * i));
            set_window_value(AT_EXTRA_3, 3 + i, AG_WINDOW_HAS_SFX, 1);
            set_window_value(AT_EXTRA_3, 3 + i, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
            set_window_value(AT_EXTRA_3, 3 + i, AG_WINDOW_SFX_FRAME, 0);
        }
        
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 2);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 1);
        
        set_num_hitboxes(AT_EXTRA_3, 3);
        
        for (i = 1; i <= 3; i++) {
            set_hitbox_value(AT_EXTRA_3, i, HG_PARENT_HITBOX, 0);
            set_hitbox_value(AT_EXTRA_3, i, HG_HITBOX_TYPE, 2);
            set_hitbox_value(AT_EXTRA_3, i, HG_HITBOX_GROUP, 1);
            set_hitbox_value(AT_EXTRA_3, i, HG_WINDOW, 3 + i);
            set_hitbox_value(AT_EXTRA_3, i, HG_WINDOW_CREATION_FRAME, 5);
            set_hitbox_value(AT_EXTRA_3, i, HG_LIFETIME, 50);
            set_hitbox_value(AT_EXTRA_3, i, HG_SHAPE, 0);
            set_hitbox_value(AT_EXTRA_3, i, HG_WIDTH, 90);
            set_hitbox_value(AT_EXTRA_3, i, HG_HEIGHT, 60);
            set_hitbox_value(AT_EXTRA_3, i, HG_PRIORITY, 2);
            
            set_hitbox_value(AT_EXTRA_3, i, HG_DAMAGE, 2);
            set_hitbox_value(AT_EXTRA_3, i, HG_ANGLE, 70);
            set_hitbox_value(AT_EXTRA_3, i, HG_ANGLE_FLIPPER, 0);
            set_hitbox_value(AT_EXTRA_3, i, HG_BASE_KNOCKBACK, 3);
            set_hitbox_value(AT_EXTRA_3, i, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_EXTRA_3, i, HG_BASE_HITPAUSE, 4);
            set_hitbox_value(AT_EXTRA_3, i, HG_HITPAUSE_SCALING, 0);
            
            //set_hitbox_value(AT_EXTRA_3, i, HG_VISUAL_EFFECT, emoji_splat);
            //set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_DESTROY_EFFECT, emoji_splat);
            set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_UNBASHABLE, 0);
            set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_PARRY_STUN, 1);
            set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_GRAVITY, 0);
            set_hitbox_value(AT_EXTRA_3, i, HG_EXTENDED_PARRY_STUN, 1);
            //set_hitbox_value(AT_EXTRA_3, i, HG_HIT_PARTICLE_NUM, 1);
            set_hitbox_value(AT_EXTRA_3, i, HG_HIT_SFX, asset_get("sfx_bubblepop"));
        }
        
        var max_throw_speed = 6;
        
        // Neutral throw
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 44);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -24);
        var fthrow_neutral_angle = 0;
        var fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_neutral_angle);
        var fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_neutral_angle);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, max_throw_speed);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, proj_sprite);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, proj_mask);
        
        // Angle up
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 44);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -42);
        var fthrow_up_angle = 20;
        fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_up_angle);
        fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_up_angle);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, fthrow_hsp);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, fthrow_vsp);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.25);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, proj_sprite);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, proj_mask);
        
        // Angle down
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 44);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -4);
        var fthrow_down_angle = -15;
        fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_down_angle);
        fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_down_angle);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_HSPEED, fthrow_hsp);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_VSPEED, fthrow_vsp);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, proj_sprite);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_MASK, proj_mask);
    }
}

// Simulate Kirby's attack_update
if enemykirby != undefined { //if kirby is in a match & swallowed
    with (asset_get("oPlayer")) { //Run through all players
        // And only do things in EXTRA_3 - could run amok if Kirby + other character that uses Extra 3 are in play
        if (((state == PS_ATTACK_AIR)
             || (state == PS_ATTACK_GROUND))
            && (attack == AT_EXTRA_3))
        {
            if (window == 2) {
                if ((window_timer + 1) == get_window_value(attack, 2, AG_WINDOW_LENGTH)) {
                    // Decide which direction to throw
                    if (up_down) {
                        window = 5;
                        window_timer = 0;
                    } else if (down_down) {
                        window = 6;
                        window_timer = 0;
                    } else {
                        window = 4;
                    window_timer = 0;
                    }
                }
            } else if (window == 3) {
                if (((window_timer + 1) == get_window_value(attack, 3, AG_WINDOW_LENGTH))
                    && (special_down))
                {
                    window = 7;
                    window_timer = 0;
                }
            } else if (window == 7) {
                window = 1;
                window_timer = 0;
            } else if (window == 4) {
                if ((window_timer + 1) == get_window_value(attack, 4, AG_WINDOW_LENGTH)) {
                    window = 3;
                    window_timer = 0;
                }
            } else if (window == 5) {
                if ((window_timer + 1) == get_window_value(attack, 5, AG_WINDOW_LENGTH)) {
                    window = 3;
                    window_timer = 0;
                }
            } else if (window == 6) {
                if ((window_timer + 1) == get_window_value(attack, 6, AG_WINDOW_LENGTH)) {
                    window = 3;
                    window_timer = 0;
                }
            }
        }
    }
}