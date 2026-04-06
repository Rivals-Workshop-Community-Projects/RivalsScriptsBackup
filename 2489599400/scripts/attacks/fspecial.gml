set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));

//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);

//Active
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

//Endlag
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 0);


set_num_hitboxes(AT_FSPECIAL,5);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 128);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 35);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 122);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -44);

set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -44);

set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -44);
