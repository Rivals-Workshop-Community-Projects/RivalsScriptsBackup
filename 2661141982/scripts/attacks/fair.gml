set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);//10
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 16);//6
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);//this should be here, not during active window


set_num_hitboxes(AT_FAIR,2);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 36);//30
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 58);//50
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);//8
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);//6
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .6);//.6
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .35);//.25
//set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, lanternfx);
// set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20)
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));//sfx_infinidagger
//set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 1);


set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 41);//20
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -16);//-15
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 27);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 44);//20
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);//8
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 275);//280
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .6);//.25
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .7);
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_FAIR, 2, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_FAIR, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 1);
// set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 10)