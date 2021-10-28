// D-STRONG - normal ver.
atk = AT_DSTRONG;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

windowNum = 1; //charge startlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed //8
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

windowNum ++; //charge //animation work is in... well animation.
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 9); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

windowNum ++; //attack windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //6
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //3
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

windowNum ++; //attack
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));

windowNum ++; //attack endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 14);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 10); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1);

windowNum ++; //allow earthquake attack
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));

windowNum ++; //dummy window (7)

//amount of hitboxes
set_num_hitboxes(atk, 5);

hitboxNum = 1; //lingering fire
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 2); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 2); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -60);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 40);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 1); //i want this to do less damage
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 270);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 3); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.2); 
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2); //for some reason this property doesn't go to the create_hitbox() function
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //punch it down to the ground
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 3); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 3); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 1); //3
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -34);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 30);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 70);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 2);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 4); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 2);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 270);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 7); //hitstun //10
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.7); //0.9
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium2")); //heavy1
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3); //1

hitboxNum ++; //fire blast
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 110);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 2);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 7);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 361);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 15); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitboxNum, HG_HIT_LOCKOUT, 20);
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 3); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //earthquake
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 6); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -8);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 260); //273 or 300
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 260); //273 or 300
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 2);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 8); //hitstun //15
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.1); //1.5
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 193);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 3); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, hitboxNum, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 1);
set_hitbox_value(atk, hitboxNum, HG_EFFECT, 12);

hitboxNum ++; //rune I rocks
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 44); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 32);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 32);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 1); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 60);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 4); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.7); 
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 193);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_debris"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, 193);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 2);