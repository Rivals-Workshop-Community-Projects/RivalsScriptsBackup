set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//hit1 startup
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -0.5);

//hit1 attack
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//hit2 start
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 5);
//set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_FRAME, 1); //new

//hit2
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//hit2 lag

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);




set_num_hitboxes(AT_FAIR,3);


//first hit grounded (sends up). Also used for zoom!
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2); //first group, 2nd window. Mm.
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 1, HG_GROUNDEDNESS, 1); //can only hit ground



//set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4); //first group, 2nd window. Mm.
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 31);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 6);


//first hit aerial (sends in direction youre moving)
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2); //first group, 2nd window. Mm.
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .1);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 3, HG_GROUNDEDNESS, 2); //can only hit air
