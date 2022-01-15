set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

// You raise me up
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 4); // 5
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED, 0);

// Wait, what's that sound
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 20); // 24
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED, 0);

// KABOOM
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HSPEED, 0);

// Yikes, that was somethin'
set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTHROW, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HSPEED, 0);

// Return to your original position
set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTHROW, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTHROW, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(AT_UTHROW, 1);

// Create a hitbox where the opponent will be released
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -82);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 68);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 87);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 6.5); // 6.6
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.9); // 1.1
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 6.5); // 6.6
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0.9); // 1.1
//set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 1); // no visual effect
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, blast_hit_effect);
//set_hitbox_value(AT_UTHROW, 1, HG_IGNORES_PROJECTILES, 0);
//set_hitbox_value(AT_UTHROW, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));