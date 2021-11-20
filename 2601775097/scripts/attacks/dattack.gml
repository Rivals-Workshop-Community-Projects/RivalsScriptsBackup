atk = AT_DATTACK;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("dattack"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);

windowNum = 1; //attack 1 windup 
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 4);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);

windowNum ++; //attack 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 1); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 10);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.05);

windowNum ++; //attack 1 endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.2);

windowNum ++; //attack 2 windup 
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 5);
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 2);

windowNum ++; //attack 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 10);

windowNum ++; //attack 2 endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1); //if the attack misses it's punishable

//amount of hitboxes
set_num_hitboxes(atk, 2);

hitboxNum = 1; //attack 1
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 2); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 18);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 76);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 38);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 40); //35 allows it to be teched if they DI down
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 5); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum); //it needs to be a different value for every different move in the file

hitboxNum ++; //attack 2
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 5); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 28);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 60);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 50);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 6);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 310);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 7); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 1);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "All jabs can cancel into a dash, to use this move");