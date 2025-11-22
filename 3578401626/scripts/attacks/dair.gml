set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("tapping_feet"));

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sfx_swipe_big);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -6);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 5);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sfx_hit5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 10);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 76);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, sfx_hit3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 4);