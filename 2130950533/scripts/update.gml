// Update the emoji aura timer
if (comedy_zone_charges_granted > 0) {
    joke_aura_timer = (joke_aura_timer + 1) % joke_aura_timer_max;
}
// Flash intermittently while fully charged
 if (flash_countdown > 0) {
    flash_countdown--;
    outline_color = flash_outline_color;
    init_shader();
} else if (outline_off_countdown > 0) {
    outline_off_countdown--;
    outline_color = weak_outline_color;
    init_shader();
} else {
    outline_color = default_outline_color;
}
if ((joke_primed) && (outline_off_countdown == 0) && (flash_countdown == 0)) {
    // Start the flash
    flash_countdown = flash_duration;
    // Start the off-cycle
    outline_off_countdown = outline_off_duration;
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

// Reset the emoji throwing angle
if (((state != PS_ATTACK_AIR) && (state != PS_ATTACK_GROUND))
    || (attack != AT_FSPECIAL))
{
    prev_throw_angle = 0;
}

// Move name thingy to avoid overlapping during certain moves
// It has to be set the frame before the window in question begins and repealed the frame before it ends.
default_height = 53;
if (state_cat != SC_GROUND_NEUTRAL) {
    switch (attack) {
        case AT_DSTRONG :
            if (((window == 1) && (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)))
                || (window == 2)
                || (window == 3)
                || ((window == 4) && (window_timer < 4)))
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
            if (((window == 6) && (window_timer >= 8))
                || (window == 7))
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
// I'm going to give Kirby the emoji-throwing move, but
// only throw straight sideways for simplicity
if swallowed {
    swallowed = 0;
    var ability_spr = sprite_get("kirby_copy_ability");
    var ability_hurt = sprite_get("kirby_copy_ability_hurt")
    var ability_icon = sprite_get("kirby_ability_hud") //Optional
    var proj_sprite = sprite_get("fspecial_proj");
    var proj_mask = sprite_get("fspecial_proj_mask");
    // These don't seem to work
    //var emoji_splat_sprite = sprite_get("emoji_splat");
    //var emoji_splat = hit_fx_create(emoji_splat_sprite, 12);
    //var emoji_particle = sprite_get("emoji_particle");
    with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
        newicon = ability_icon; //Optional, replaces the kirby ability icon
        
        //set_hit_particle_sprite(1, emoji_particle);
        
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 8);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 0);
        
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 0);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 9);
        
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 6);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 300);
        set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 85);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_EXTENDED_PARRY_STUN, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_PARTICLE_NUM, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_bubblepop"));
        
        var max_throw_speed = 1.5;
        
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
    }
}