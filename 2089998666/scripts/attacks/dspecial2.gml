set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, (sound_get("fail")));

set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
