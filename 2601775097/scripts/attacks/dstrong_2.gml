// D-STRONG - theikos ver.
atk = AT_DSTRONG_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dstrong_t"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("theikos_dstrong_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 10);

windowNum = 1; //windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_charged"));

windowNum ++; //charge window
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 9); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -0.1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));

windowNum ++; //attack itself
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 6); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));

windowNum ++; //endlag 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -6);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);

windowNum ++; //endlag 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1); //if the attack misses it's punishable

//amount of hitboxes
set_num_hitboxes(atk, 3);

hitboxNum = 1; //initial projectile
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 99999); //for normal bar: 30
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 16);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 32);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_empty);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_dstrong_t_fireball"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0); //gets faster with charge
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_VSPEED, 0); //gets faster with charge
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 0); //only false for theikos bar
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_IS_TRANSCENDENT, 1); //only true for theikos bar
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //collision explosion
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 6);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0); //spawns on enemy
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, 0); //spawns on enemy
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 100);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 100);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 10); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 8);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 270);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 9); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.8); 
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 0); //only false for theikos bar
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_IS_TRANSCENDENT, 1); //only true for theikos bar
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //ground fire (maybe i'll need to convert to article)
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 80);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0); //the spawning of the X and Y positions are decided by hitbox_update
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 40);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 54);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 1);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 2);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 8);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 3); //hitstun
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 0); //only false for theikos bar
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);