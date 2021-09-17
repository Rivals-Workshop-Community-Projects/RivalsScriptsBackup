// U-STRONG - normal ver.
atk = AT_USTRONG;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 8);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

windowNum = 1; //charge startlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_1"));
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

windowNum ++; //charge
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

windowNum ++; //attack 1 windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));

windowNum ++; //attack 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 6); //starting frame. starts from 0

windowNum ++; //attack 1 endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 15);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1);

windowNum ++; //attack 2 start
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 16); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 7);

windowNum ++; //attack 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 19); //starting frame. starts from 0

windowNum ++; //attack 2 endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 21); //starting frame. starts from 0

//amount of hitboxes
set_num_hitboxes(atk, 5);

hitboxNum = 1; //attack 1 forward hitbox
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -38);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 70);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 90);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 7);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 95);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 12); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow1); //fx_lightblow2
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
//set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(atk, hitboxNum, HG_DRIFT_MULTIPLIER, 0);

hitboxNum ++; //attack 1 upward hitbox
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -70);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 120);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 80);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 7);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 12); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow1); //fx_lightblow2
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
//set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(atk, hitboxNum, HG_DRIFT_MULTIPLIER, 0);


hitboxNum ++; //attack 1 backward hitbox
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -50);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -38);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 70);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 90);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 7);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 75);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 12); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow1); //fx_lightblow2
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
//set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(atk, hitboxNum, HG_DRIFT_MULTIPLIER, 0);

hitboxNum ++; //attack 2 projectile
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 30); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 4); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 16);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 60);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 10);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 100);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 12); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_ustrong_lightspear_proj"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightslash);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //it needs to be a different value for every different move in the file

hitboxNum ++; //attack 2 projectile - burning
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 30); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 4); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 8);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 16);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 100);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 12); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_ustrong_lightspearburn_proj"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_VSPEED, -18);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_HSPEED, -1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //it needs to be a different value for every different move in the file