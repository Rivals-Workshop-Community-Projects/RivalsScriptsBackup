// [10] SEARING DESCENT
atk = AT_EXTRA_3;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("searingdescent"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("searingdescent_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 8);
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);


windowNum = 1; //windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, sound_get("sfx_searingdescent_rise"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 7);

windowNum ++; //rising fire
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 3);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -9.75);

windowNum ++; //midair burst
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, 1.75);

windowNum ++; //endlag of part 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, 0.7);



windowNum ++; //midair jump windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 16);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, 1.25);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -9);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, sound_get("sfx_searingdescent_meteor"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 14);

windowNum ++; //pre-descent single frame (it's for the spike)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

windowNum++; //descent
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 10);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, -0.5);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 15);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

windowNum++; //landing
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 15);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));


set_num_hitboxes(atk, 6);

hitboxNum = 1; //rising fire hitbox 1
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 24); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -16); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 54);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 60);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 80);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitboxNum, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //rising fire hitbox 2
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 24); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -32); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 60);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 90);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 90);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //rising fire hitbox 3
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 24); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -52); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 64);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 70);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 100);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //meteor sweetspot
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 6); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 4);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 6);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -8); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, 0); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 32);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 32);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 270);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow3);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 1);
set_hitbox_value(atk, hitboxNum, HG_HIT_LOCKOUT, 2);

hitboxNum ++; //meteor constant sourspot
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 7); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 4);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -8); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -32); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 50);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 80);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 270);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //meteor landing hitbox
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 8); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 6); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -16); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 110);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 2);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 50);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitboxNum, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "20 MP (10 MP to activate, 10 MP to use the meteor attack)
Hold down SPECIAL to get launched down in a lingering hitbox. Can be jump/dodge canceled after a short duration
Burning Fury increases the height gained, damage and knockback");