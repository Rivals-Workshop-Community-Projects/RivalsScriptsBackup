set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//startup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6)
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));

//active 1
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 2);

//active 2
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);

//endlag
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,6);

//initial
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 1,  HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 38);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM, 1);

//multihits
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, hfx_tiny);
set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_UTILT, 3, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 3);;
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UTILT, 4, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 36);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UTILT, 5, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 36);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 78);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 62);
set_hitbox_value(AT_UTILT, 6, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_UTILT, 6, HG_HIT_PARTICLE_NUM, 1);