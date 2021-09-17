// LORD'S PUNISHMENT
atk = AT_TAUNT_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("lordpunishment"));
set_attack_value(atk, AG_NUM_WINDOWS, 21);

//INITIAL ACTIVATION (windows 1 - 4)
windowNum = 1; //start
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, sound_get("sfx_accelblitz_timestop"));

windowNum ++; //stop 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 28); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 20);

windowNum ++; //power up
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_burnconsume"));

windowNum ++; //power up freeze frame
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 40); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));


//LEAP (windows 5 - 11)
windowNum ++; //windup - leap
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

windowNum ++; //windup hold - leap
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, sound_get("sfx_forceleap_jump"));

windowNum ++; //leap - jump
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -15);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_upbmove"));

windowNum ++; //leap - fall
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 10);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 11); //starting frame. starts from 0

windowNum ++; //leap land frame
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 13); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));

windowNum ++; //power smash catastrophe
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 15); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));

windowNum ++; //power smash catastrophe end
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 17); //starting frame. starts from 0

//CREATING LIGHT SWORD (windows 12 - 14)
windowNum ++; //light sword creation - part 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 32); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 19); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 30);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, sound_get("sfx_lordpunishment_sword_spawn"));

windowNum ++; //light sword creation - part 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 23); //starting frame. starts from 0

windowNum ++; //light sword - hold up
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 40); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 26); //starting frame. starts from 0

//BURNING LIGHT SWORD SLASH (windows 15 - 18)
windowNum ++; //light sword - slash windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 27); //starting frame. starts from 0

windowNum ++; //light sword - pre-slash pose
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 29); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 7);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, sound_get("sfx_lordpunishment_sword_slash"));

windowNum ++; //light sword - slash attack
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 16); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 30); //starting frame. starts from 0

windowNum ++; //light sword - slash end pose
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 34); //starting frame. starts from 0

//END (windows 19 - 21)
windowNum ++; //attack end - part 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 35); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 17);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

windowNum ++; //attack end pose
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 39); //starting frame. starts from 0

windowNum ++; //attack end - part 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 40); //starting frame. starts from 0

set_num_hitboxes(atk, 3);

hitboxNum = 1; //ZA WARUDO
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 1); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 60); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 999999);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 999999);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 1);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 8);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 0);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 361);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 1); //hitstun
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow3);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3);

hitboxNum ++; //burning ground
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 5); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 700);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 60);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 1);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 2);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitboxNum, HG_HITSTUN_MULTIPLIER, 5);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, od_fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 6);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PLASMA_SAFE, 1);

hitboxNum ++; //sword slash
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 17); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 6); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 750);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 450);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 10);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 18);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 40);
//set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 9); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(atk, hitboxNum, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(atk, hitboxNum, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, od_fx_fireblow3);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 6);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 1);