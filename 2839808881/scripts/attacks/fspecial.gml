set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));


//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_wheel_start"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);


//loop
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9); // 0
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//turn
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_wheel_turn"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.25);


//jumpstart
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.25);


//jump
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 9); // 0
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.25);

//endlag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_wheel_stop"));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.5);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 1.25);

//ignore the spill
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sound_get("sfx_wheel_stop"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_num_hitboxes(AT_FSPECIAL, 0);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 36);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6); // 6
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_wheel_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);