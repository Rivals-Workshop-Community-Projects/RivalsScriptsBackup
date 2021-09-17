// [5] CHASM BURSTER
atk = AT_EXTRA_1;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("chasmburster"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("chasmburster_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("chasmburster_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("chasmburster_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 8);

windowNum = 1; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")); //only activates in midair

windowNum ++; //windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 2);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

windowNum ++; //pre-attack frame (falling)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 10);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0

windowNum ++; //attack
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_kragg_spike"));

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 16); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0

windowNum ++; //endlag 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0

windowNum ++; //attack - burning fury buffed
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 2);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_kragg_spike"));

windowNum ++; //endlag - burning fury buffed
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 16); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0

set_num_hitboxes(atk, 5);

hitboxNum = 1; //initial attack
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 5); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 12);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 56);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 5);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 361);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 7); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITSTUN_MULTIPLIER, 1.4);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3);

hitboxNum ++; //chasms bursting
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //this window doesn't actually exist on purpose
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2)
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 18);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 56);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 1);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 38);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 90);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 80);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_chasmburster"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_empty);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //initial attack - burning fury ver
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 8); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 12);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 56);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 7);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 361);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 7); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITSTUN_MULTIPLIER, 1.4);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //chasms bursting - burning fury ver
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //this window doesn't actually exist on purpose
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2)
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 18);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 1);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 38);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 90);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 80);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 6);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 13);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_chasmburster"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_empty);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //soft spike stomp
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 12); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -14);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 48);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 32);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 3);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 300);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 7); //hitstun
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 1);