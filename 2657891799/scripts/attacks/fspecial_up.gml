set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("fspecial_up"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("fspecial_up_hurt"));
set_attack_value(AT_UTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);

//reappear
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, sound_get("ss_attack"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

//attack
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED, -14);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.9);

//endlag
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 304);