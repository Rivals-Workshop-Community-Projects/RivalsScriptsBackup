set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_strong"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);
//active
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 14); //16
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
//endlag on whiff
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3.5); //4.5
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1); //this window always whiffs so it doesnt need whifflag

//multihits
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);
//finisher
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED, 15);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 2);
//skid out
set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_FSTRONG, 7);
//dash
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
//multihits
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 87);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 87);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, -10);
//set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);
//finisher
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, -12);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 137);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 73);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 55); //45
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 1.05); //0.9
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, hfx_elecbig);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, 2);
//funny skid "collateral damage" hitbox
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 18);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -8);
set_hitbox_value(AT_FSTRONG, 7, HG_WIDTH, 34);
set_hitbox_value(AT_FSTRONG, 7, HG_HEIGHT, 20);
set_hitbox_value(AT_FSTRONG, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 7, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 7, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 7, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 7, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_GROUP, 2);
