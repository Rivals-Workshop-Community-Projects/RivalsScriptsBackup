set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("slash2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 15);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 6);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 288);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("hit3"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, .4);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 1.2);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 4, HG_EXTRA_HITPAUSE, -3);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);