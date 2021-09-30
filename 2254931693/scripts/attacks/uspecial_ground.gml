set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 0);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_ground_hurt"));

set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, sound_get("bonby_upspecial_rise"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 26);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, asset_get("sfx_may_whip2"));
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX_FRAME, 25);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL_GROUND, 6);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 73);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 67);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WIDTH, 92);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HEIGHT, 82);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITSTUN_MULTIPLIER, 0.65);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HIT_SFX, sound_get("bonby_upspecial_hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_VISUAL_EFFECT, uspecial_hiteffect);