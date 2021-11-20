atk = AT_TAUNT;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 13);
set_attack_value(atk, AG_CATEGORY, 0);

windowNum = 1; //taunt start
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip

windowNum ++; //almost fist clench
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0

windowNum ++; //fist clench
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_blow_weak1"));

windowNum ++; //fist clench idle
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 14); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0

windowNum ++; //taunt attack windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0

windowNum ++; //taunt attack windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0

windowNum ++; //attack frame
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

windowNum ++; //end of taunt 1 flow
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 6); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 10); //starting frame. starts from 0

windowNum ++; //end of taunt 1 still
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 30); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 15); //starting frame. starts from 0

windowNum ++; //dummy window (10)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 15); //starting frame. starts from 0

//i'm shookth
windowNum ++; //end of taunt 2-1 - if bar hits the foe it should play
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 16); //starting frame. starts from 0

windowNum ++; //end of taunt 2-2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 30); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 18); //starting frame. starts from 0

windowNum ++; //end of taunt in general
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 19); //starting frame. starts from 0

set_num_hitboxes(atk, 1);

hitboxNum = 1; //actuall taunt attack
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 7); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 2); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -16);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -42);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 24);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 32);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 1); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 10);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 100); //hitstun
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, sound_get("sfx_tauntattack"));
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitboxNum, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3);
set_hitbox_value(atk, hitboxNum, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 1);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "Burning Fury increases the damage and inflicts holy burn");