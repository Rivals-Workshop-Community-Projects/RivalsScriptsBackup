// [6] POWER SMASH
atk = AT_FSPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("powersmash"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("powersmash_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 0);

windowNum = 1; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

windowNum ++; //windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

windowNum ++; //jump before attack
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

windowNum ++; //attack
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 24); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -10);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 6);

windowNum ++; //still falling
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 10);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0.5);

windowNum ++; //sfx frame
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 5); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 4)

hitboxNum = 1; //drag hitbox when falling
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 5); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 2); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 8);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 48);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 32);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 3);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 320);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 6); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3);

hitboxNum ++; //ground collision - sweetspot
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 7); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -8);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 60);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 46);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 4); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 8);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 55); //270
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 9); //8
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 1.2); //0.8
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 10); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2);

hitboxNum ++; //ground collision - sourspot
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 7); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 6); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -8);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 168);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 62);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 5);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 80); //90
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 8); //7
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.8); //0.7
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 6); //0
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 6); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "30 MP (5 MP to activate, 25 MP to attack)
Can be jump canceled");