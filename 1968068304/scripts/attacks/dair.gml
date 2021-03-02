set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -0.5);
//set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);

//fall
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 0.25);



//early hit 1
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 1);


//set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 5);
//set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

//main hit 1
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);



//gap
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 5);


//main hit 2
set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);


//main hit 2 (first attack connected)
set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_DAIR, 6, AG_WINDOW_VSPEED, -4);
//set_window_value(AT_DAIR, 7, AG_WINDOW_VSPEED_TYPE, 2);

//late hit 2
set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 8);

//recovery
set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

//startup 5



set_num_hitboxes(AT_DAIR, 10);

//early hit 1
set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1); 
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
//position
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -27);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -20);
//shape
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 38);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0); //fixed knockback to link into the next hit. 
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 2);
//effects
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//early hit 1 (grounded)
set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2); 
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
//position
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -27);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -20);
//shape
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 38);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0); //fixed knockback to link into the next hit. 
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_HITPAUSE, 2);
//effects
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 2, HG_GROUNDEDNESS, 1); //ground only
set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 1); //cannot tech
//set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 2); //cannot cause flinch

//---


//main hit 1 (1)
set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1); 
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
//position
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -17);
//shape
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 96);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0); //fixed knockback to link into the next hit. 
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//main hit 1 (1) (grounded)
set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2); 
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 1);
//position
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -17);
//shape
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 96);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0); //fixed knockback to link into the next hit. 
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 4, HG_GROUNDEDNESS, 1); //ground only
set_hitbox_value(AT_DAIR, 4, HG_TECHABLE, 1); //cannot tech
//set_hitbox_value(AT_DAIR, 4, HG_FORCE_FLINCH, 2); //cannot cause flinch


///---


//main hit 1 (2)
set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 1); 
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);
//position
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -8);
//shape
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 88);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0); //fixed knockback to link into the next hit. 
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 5, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));



//main hit 1 (2) (grounded)
set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2); 
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);
//position
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -8);
//shape
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 88);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0); //fixed knockback to link into the next hit. 
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 6, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 6, HG_GROUNDEDNESS, 1); //ground only
set_hitbox_value(AT_DAIR, 6, HG_TECHABLE, 1); //cannot tech
//set_hitbox_value(AT_DAIR, 6, HG_FORCE_FLINCH, 2); //cannot cause flinch



//---




//main hit 2 - raw
set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 6);
//priority/grouping
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 1); 
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 2);
//position
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -31);
//shape
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 104);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 104);
set_hitbox_value(AT_DAIR, 7, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 90);
//stun
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 7, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DAIR, 7, HG_VISUAL_EFFECT, 304); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 7, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 7, HG_DRIFT_MULTIPLIER, 1); 

//main hit 2 - if first attack hits
set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 7);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 8, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_DAIR, 8, HG_PRIORITY, 1); 
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 2);
//position
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -31);
//shape
set_hitbox_value(AT_DAIR, 8, HG_WIDTH, 104);
set_hitbox_value(AT_DAIR, 8, HG_HEIGHT, 104);
set_hitbox_value(AT_DAIR, 8, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 8, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 8, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 8, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DAIR, 8, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 8, HG_DRIFT_MULTIPLIER, 1); 



//late hit 2 (1)
set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 20);//8
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 9, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_DAIR, 9, HG_PRIORITY, 1); 
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 2);
//position
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, -53);
//shape
set_hitbox_value(AT_DAIR, 9, HG_WIDTH, 41);
set_hitbox_value(AT_DAIR, 9, HG_HEIGHT, 41);
set_hitbox_value(AT_DAIR, 9, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 9, HG_KNOCKBACK_SCALING, 0.25); //fixed knockback to link into the next hit. 
set_hitbox_value(AT_DAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 9, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 9, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 9, HG_HITSTUN_MULTIPLIER, 0.9); 
//effects
set_hitbox_value(AT_DAIR, 9, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 9, HG_DRIFT_MULTIPLIER, 0.5);

//late hit 2 (2)
set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 20);//8
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 10, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_DAIR, 10, HG_PRIORITY, 1); 
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 2);
//position
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, -10);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, -10);
//shape
set_hitbox_value(AT_DAIR, 10, HG_WIDTH, 46);
set_hitbox_value(AT_DAIR, 10, HG_HEIGHT, 44);
set_hitbox_value(AT_DAIR, 10, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DAIR, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 10, HG_KNOCKBACK_SCALING, 0.25); //fixed knockback to link into the next hit. 
set_hitbox_value(AT_DAIR, 10, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 10, HG_ANGLE_FLIPPER, 7); //hit towards epinel
//stun
set_hitbox_value(AT_DAIR, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 10, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 10, HG_HITSTUN_MULTIPLIER, 0.9); 
//effects
set_hitbox_value(AT_DAIR, 10, HG_VISUAL_EFFECT, 303); //"basic small with spin effect in center"
set_hitbox_value(AT_DAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 9, HG_DRIFT_MULTIPLIER, 0.5);


