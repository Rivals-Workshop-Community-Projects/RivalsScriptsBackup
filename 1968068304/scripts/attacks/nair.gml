set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -0.25);

set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);


set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 11); //17
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 9); //4
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 4);

//main hit and sourspot.
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 4);
//priority/grouping
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3); //highest priority
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1); //all hitboxes share a group
//position
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -12);
//shape
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.3); 
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 85);
//stun
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));//("sfx_ell_drill_stab"));



//foot hitbox, early.
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4); 
//priority/grouping
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1); //lowest priority
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1); //all hitboxes share a group
//position
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, 0);
//shape
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.3); 
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 82);
//stun
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NAIR, 2, HG_DRIFT_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));//("sfx_ell_drill_stab"));



//upper hitbox, stale.
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, get_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4);
//priority/grouping
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3); //highest priority
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1); //all hitboxes share a group
//position
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -12);
//shape
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.3); 
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 85);
//stun
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 3, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NAIR, 3, HG_DRIFT_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));//("sfx_ell_drill_stab"));


//foot hitbox, stale.
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, get_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 4);
//priority/grouping
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1); //lowest priority
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1); //all hitboxes share a group
//position
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, 0);
//shape
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 38);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.3); 
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 82);
//stun
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NAIR, 4, HG_DRIFT_MULTIPLIER, 1);

//effects
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));//("sfx_ell_drill_stab"));

