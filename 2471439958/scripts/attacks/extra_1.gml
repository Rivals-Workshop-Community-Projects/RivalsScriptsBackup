set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("shredder"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("shredder_hurt"));
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 0);

//actual start

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);

//SPEEN

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, 0);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED, 0);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_EXTRA_1, 4);

//SPIN HITBOX
set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_TECHABLE, 1)
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("axe_hit3"));
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 2, HG_TECHABLE, 1)
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .12);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, sound_get("axe_hit3"));
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_EXTRA_1, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, .12);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, sound_get("axe_hit3"));
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_EXTRA_1, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_1, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_SFX, sound_get("axe_hit3"));
set_hitbox_value(AT_EXTRA_1, 4, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_EXTRA_1, 4, HG_VISUAL_EFFECT, blood_effect);