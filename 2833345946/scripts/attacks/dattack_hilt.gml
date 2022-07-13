set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 0);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("dattack_hilt"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dattack_hilt_hurt"));

set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 5);

//spin
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("splat"));
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 22);


//splat
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

//endlag
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_AIR, 3);

//early
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);

//late
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);

//splat
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, 2);