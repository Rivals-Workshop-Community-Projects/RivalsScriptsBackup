set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone_open"));
set_attack_value(AT_PHONE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_PHONE, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_PHONE, AG_CATEGORY, 2);
set_attack_value(AT_PHONE, AG_OFF_LEDGE, 1);
set_attack_value(AT_PHONE, AG_HURTBOX_SPRITE, sprite_get("dashbox"));
set_attack_value(AT_PHONE, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_PHONE, AG_MUNO_ATTACK_EXCLUDE, 1);

// NOTE: It is not recommended to change the values for anything except for
// AG_WINDOW_ANIM_FRAMES and AG_WINDOW_ANIM_FRAME_START.

//Opening window

set_window_value(AT_PHONE, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAMES, 23);
set_window_value(AT_PHONE, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_PHONE, 1, AG_WINDOW_SFX, sound_get("escapespawn"));
set_window_value(AT_PHONE, 1, AG_WINDOW_SFX_FRAME, 26);

//Looping window

set_window_value(AT_PHONE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PHONE, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 23);

//Closing window

set_window_value(AT_PHONE, 3, AG_WINDOW_LENGTH, 42);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_PHONE, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_PHONE, 3, AG_WINDOW_SFX, sound_get("bottlebreak"));
set_window_value(AT_PHONE, 3, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_PHONE, 1);

set_hitbox_value(AT_PHONE, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_PHONE, 1, HG_ANGLE, 315);
set_hitbox_value(AT_PHONE, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_PHONE, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_PHONE, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_PHONE, 1, HG_HITPAUSE_SCALING, 1.2);

set_hitbox_value(AT_PHONE, 1, HG_HIT_SFX, sound_get("sfx_death"));
set_hitbox_value(AT_PHONE, 1, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_PHONE, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_PHONE, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_PHONE, 1, HG_WIDTH, 50);
set_hitbox_value(AT_PHONE, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_PHONE, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_PHONE, 1, HG_SHAPE, 0);
set_hitbox_value(AT_PHONE, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_PHONE, 1, HG_WINDOW, 3);
set_hitbox_value(AT_PHONE, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_PHONE, 1, HG_PRIORITY, 2);