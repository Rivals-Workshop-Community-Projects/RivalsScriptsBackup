set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

if (has_rune("G")) { // Rapid-fire emojis
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
    
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
    
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
    
    var num_hitboxes = 1 + (2 * max_throw_increment);
    for (i = 1; i <= num_hitboxes; i++) {
        set_window_value(AT_FSPECIAL, 3 + i, AG_WINDOW_TYPE, 1);
        set_window_value(AT_FSPECIAL, 3 + i, AG_WINDOW_LENGTH, 2);
        set_window_value(AT_FSPECIAL, 3 + i, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_FSPECIAL, 3 + i, AG_WINDOW_ANIM_FRAME_START, 6 + 2/* + (2 * i)*/);
        set_window_value(AT_FSPECIAL, 3 + i, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_FSPECIAL, 3 + i, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
        set_window_value(AT_FSPECIAL, 3 + i, AG_WINDOW_SFX_FRAME, 0);
    }
    
    set_num_hitboxes(AT_FSPECIAL, num_hitboxes);
    
    for (i = 1; i <= num_hitboxes; i++) {
        set_hitbox_value(AT_FSPECIAL, i, HG_PARENT_HITBOX, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_GROUP, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 3 + i);
        set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 300);
        set_hitbox_value(AT_FSPECIAL, i, HG_SHAPE, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_WIDTH, 90);
        set_hitbox_value(AT_FSPECIAL, i, HG_HEIGHT, 60);
        set_hitbox_value(AT_FSPECIAL, i, HG_PRIORITY, 2);
        
        set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE_FLIPPER, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_BASE_KNOCKBACK, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_KNOCKBACK_SCALING, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_BASE_HITPAUSE, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_HITPAUSE_SCALING, 0);
        
        set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT, emoji_splat);
        set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, emoji_splat);
        set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_PARRY_STUN, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_GRAVITY, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_EXTENDED_PARRY_STUN, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_HIT_PARTICLE_NUM, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_HIT_SFX, sound_get("pop"));
    }

    var max_throw_speed = 2;

    // Neutral throw
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 74);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -38);
    var fthrow_neutral_angle = 0;
    var fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_neutral_angle);
    var fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_neutral_angle);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, fthrow_hsp); // neutral angle is strangely
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, fthrow_vsp);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj_mask"));
    
    // Angle up and down in increments
    for (i = 1; i <= max_throw_increment; i++) {
        // Angle up
        var degrees_per_increment = 3;
        var fthrow_up_angle = (i * degrees_per_increment);
        fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_up_angle);
        fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_up_angle);
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_HITBOX_X, 74);
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_HITBOX_Y, -38);
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_PROJECTILE_HSPEED, fthrow_hsp);
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_PROJECTILE_VSPEED, fthrow_vsp);
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_PROJECTILE_ANIM_SPEED, 0.25);
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
        set_hitbox_value(AT_FSPECIAL, (2 * i), HG_PROJECTILE_MASK, sprite_get("fspecial_proj_mask"));
    
        // Angle down
        var fthrow_down_angle = -(i * degrees_per_increment);
        fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_down_angle);
        fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_down_angle);
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_HITBOX_X, 74);
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_HITBOX_Y, -38);
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_PROJECTILE_HSPEED, fthrow_hsp);
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_PROJECTILE_VSPEED, fthrow_vsp);
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_PROJECTILE_ANIM_SPEED, 0.25);
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
        set_hitbox_value(AT_FSPECIAL, 1 + (2 * i), HG_PROJECTILE_MASK, sprite_get("fspecial_proj_mask"));
    }
} else { // Default throw
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 9);
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
    
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
    
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 10);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
    
    for (i = 0; i < 3; i++) {
        set_window_value(AT_FSPECIAL, 4 + (2 * i), AG_WINDOW_TYPE, 1);
        set_window_value(AT_FSPECIAL, 4 + (2 * i), AG_WINDOW_LENGTH, 4);
        set_window_value(AT_FSPECIAL, 4 + (2 * i), AG_WINDOW_ANIM_FRAMES, 0);
        set_window_value(AT_FSPECIAL, 4 + (2 * i), AG_WINDOW_ANIM_FRAME_START, 8 + (2 * i));
        set_window_value(AT_FSPECIAL, 4 + (2 * i), AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_FSPECIAL, 4 + (2 * i), AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
        set_window_value(AT_FSPECIAL, 4 + (2 * i), AG_WINDOW_SFX_FRAME, 0);
        
        set_window_value(AT_FSPECIAL, 5 + (2 * i), AG_WINDOW_TYPE, 1);
        set_window_value(AT_FSPECIAL, 5 + (2 * i), AG_WINDOW_LENGTH, 10);
        set_window_value(AT_FSPECIAL, 5 + (2 * i), AG_WINDOW_ANIM_FRAMES, 0);
        set_window_value(AT_FSPECIAL, 5 + (2 * i), AG_WINDOW_ANIM_FRAME_START, 9 + (2 * i));
    }
    
    set_num_hitboxes(AT_FSPECIAL, 3);
    
    for (i = 1; i <= 3; i++) {
        set_hitbox_value(AT_FSPECIAL, i, HG_PARENT_HITBOX, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_GROUP, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 3 + (2 * i));
        set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW_CREATION_FRAME, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 300);
        set_hitbox_value(AT_FSPECIAL, i, HG_SHAPE, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_WIDTH, 90);
        set_hitbox_value(AT_FSPECIAL, i, HG_HEIGHT, 60);
        set_hitbox_value(AT_FSPECIAL, i, HG_PRIORITY, 2);
        
        set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 4);
        set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE, 85);
        set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE_FLIPPER, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_FSPECIAL, i, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_FSPECIAL, i, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_FSPECIAL, i, HG_HITPAUSE_SCALING, 0);
        
        set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT, emoji_splat);
        set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, emoji_splat);
        set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_PARRY_STUN, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_GRAVITY, 0);
        set_hitbox_value(AT_FSPECIAL, i, HG_EXTENDED_PARRY_STUN, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_HIT_PARTICLE_NUM, 1);
        set_hitbox_value(AT_FSPECIAL, i, HG_HIT_SFX, asset_get("sfx_bubblepop"));
    }
    
    var max_throw_speed = 1.5;
    
    // Neutral throw
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 74);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -38);
    var fthrow_neutral_angle = 0;
    var fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_neutral_angle);
    var fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_neutral_angle);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, max_throw_speed);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj_mask"));
    
    // Angle up
    set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 74);
    set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -56);
    var fthrow_up_angle = 7;
    fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_up_angle);
    fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_up_angle);
    set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, fthrow_hsp);
    set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, fthrow_vsp);
    set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.25);
    set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
    set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("fspecial_proj_mask"));
    
    // Angle down
    set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 74);
    set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -18);
    var fthrow_down_angle = -7;
    fthrow_hsp = lengthdir_x(max_throw_speed, fthrow_down_angle);
    fthrow_vsp = lengthdir_y(max_throw_speed, fthrow_down_angle);
    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, fthrow_hsp);
    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, fthrow_vsp);
    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("fspecial_proj_mask"));
}
