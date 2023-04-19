//attack properties
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("ding_neo"));

//startup post charge
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_upb_hit"));

//atk1
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

//atk2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//atk3
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);

//atk4
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX_FRAME, 2);

//atkfinal
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 12);

//endl
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 19);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

//AT_FSTRONG hitbox properties
set_num_hitboxes(AT_FSTRONG, 5);

//individual hitbox properties
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 90); 
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, fire);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("fire2"));
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 90); 
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, fire);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("fire2"));
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 135); 
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, fire);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("fire2"));
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 72);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 250); 
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, fire);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("fire2"));
set_hitbox_value(AT_FSTRONG, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 68);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, firestrong);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));