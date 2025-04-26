set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//Startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 12);

//Active Dash
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 7);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);

//Endlag
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.05);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.05);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_GOTO, 7);

//Grab Connected
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("sfx_claw_swipe_weak1"));
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 6);

//Throw Active
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);

//Throw Endlag
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_FSPECIAL_2, 4);

//Grab Hitbox
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, fx_smash_grab);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Hitbox 1
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -110);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, fx_blood_hit1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 12);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("sfx_claw_impact_weak1"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_PARTICLE_NUM, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);

//Hitbox 2
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -110);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 72);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, fx_blood_hit1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, 12);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, sound_get("sfx_claw_impact_weak1"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_PARTICLE_NUM, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);

//Hitbox Finisher
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -110);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, fx_blood_hit2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, 12);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, sound_get("sfx_claw_impact_medium1"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_PARTICLE_NUM, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);