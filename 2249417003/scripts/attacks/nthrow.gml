//nthrow.gml
//nair2
set_attack_value(AT_NTHROW, AG_CATEGORY, 1);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NTHROW, AG_LANDING_LAG, 6);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//first startup

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED, -0.5);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));//asset_get("sfx_swipe_medium2"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 0);

//attack startup
set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, sound_get("fesliyan_gunshot"));
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX_FRAME, 1);

//attack hit
set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_charge2"));
//set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX_FRAME, 0);




//attack recovery / wait time
set_window_value(AT_NTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//final endlag
set_window_value(AT_NTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_NTHROW, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NTHROW, 1);

//main hit.
set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 3); 
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1); 
//position
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -26);
//shape
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 94);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 94);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0.7); 
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 6);
//stun
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, 1); 
set_hitbox_value(AT_NTHROW, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NTHROW, 1, HG_SDI_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_LOCKOUT, 3);


