set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("paperRip03"));// asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("paperFly01"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, sound_get("paperRepair03"));// asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX_FRAME, 2);//3?


set_num_hitboxes(AT_DSTRONG, 6);

//GROUNDED

//set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 128);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);//290);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
/*set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 303); //304);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);*/
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

//set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);//290);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
/*set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 303); //304);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);*/
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

//set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -64);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);//290);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1);
/*set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 303); //304);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);*/
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);


//AERIAL

//set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 128);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 310);//290);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1.0);

//set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 310);//290);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_HITSTUN_MULTIPLIER, 1.0);

//set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -64);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 310);//290);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_HITSTUN_MULTIPLIER, 1.0);