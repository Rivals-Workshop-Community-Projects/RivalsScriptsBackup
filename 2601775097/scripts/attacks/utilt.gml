atk = AT_UTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 4);

windowNum = 1; //windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
//set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.1);

windowNum ++; //windup 2 electric boogaloo
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 3);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

windowNum ++; //attack itself
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -10.5);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1); //if the attack misses it's punishable

//amount of hitboxes
set_num_hitboxes(atk, 2);

hitboxNum = 1; //strong hit
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 2); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 2); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 22);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 48);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 4); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 9);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 87);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 12); //hitstun
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 0);
set_hitbox_value(atk, hitboxNum, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 1);

hitboxNum ++; //air poke
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 3); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 7); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 1); //the reason this is here is so it won't mess with the dust effects
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 20);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 54);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 88);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 8);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90); //was 100
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 8); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.8); //hitstun
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 0); //was causing issues
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 0);
set_hitbox_value(atk, hitboxNum, HG_FORCE_FLINCH, 0);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "Affected by Burning Fury's buff");