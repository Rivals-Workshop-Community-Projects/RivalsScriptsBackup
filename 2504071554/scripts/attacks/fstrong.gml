set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_frog_uspecial_cast"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

//buffer
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

//fast
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 10);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 7);

//end
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED, 3);


//woo
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED, 0);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 2);




set_num_hitboxes(AT_FSTRONG, 3); 

//detection hitbox
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 58);//66
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//this too, but smaller
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 18);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//this is the boom
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 76);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 77);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));












