var atk = AT_DSTRONG;
set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
var _win = 1;

//frame data
var startup = 18;
var charge_frame = 10;
var active = 4;
var endlag = 20;
//knockback/damage values
var dmg_1 = 4;
var dmg_2 = 8;
var knockback_1 = 6;
var knockback_2 = 8;
var kb_scaling_1 = 0.9;
var kb_scaling_2 = 1.1;
var base_hitpause_1 = 7;
var base_hitpause_2 = 9;
var hitpause_scale_1 = 0.85;
var hitpause_scale_2 = 1.0;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, charge_frame);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, sound_get("sfx_sans_alert"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, _win);
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup-charge_frame);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX_FRAME, (startup-charge_frame)-1);
set_window_value(atk, _win, AG_WINDOW_SFX, sound_get("sfx_sans_rise"));
//set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, active);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, _win, AG_WINDOW_SFX, sound_get("sfx_sans_rise"));
var hbox_win = _win;
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, endlag);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, _win, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, _win);
/*
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 5);
*/
/*
set_num_hitboxes(AT_DSTRONG, 6);

// Blue Bone Sweetspots
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -62);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 34);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 100);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 62);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 34);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

//Furthest-out bones

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -88);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 18);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .92);
set_hitbox_value(AT_DSTRONG, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 88);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 18);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 38);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .92);
set_hitbox_value(AT_DSTRONG, 4, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1.0);

//Inner bones

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 12);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -36);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 18);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 120);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, .92);
set_hitbox_value(AT_DSTRONG, 5, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .95);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 12);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 18);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 38);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, .92);
set_hitbox_value(AT_DSTRONG, 6, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, .95);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITSTUN_MULTIPLIER, 1.0);
*/
var hbox = 1;

var frames = 7;
var frames_per_frame = 4; //yeah

var life = frames*frames_per_frame;
var anim_speed = frames/life;

var hbox_active = (1*frames_per_frame)+1;

set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, hbox);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, 9);
set_hitbox_value(atk, hbox, HG_LIFETIME, 4);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 120);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hbox, HG_WIDTH, 32);
set_hitbox_value(atk, hbox, HG_HEIGHT, 64);
set_hitbox_value(atk, hbox, HG_DAMAGE, 7);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hbox, HG_SHAPE, 2);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
//set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback);
//set_hitbox_value(atk, hbox, HG_FINAL_BASE_KNOCKBACK, final_knockback);
//set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling);
//set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause);
//set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale);
set_hitbox_value(atk, hbox, HG_EXTENDED_PARRY_STUN, true);
//(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hbox, HG_KARMA, 4);

hbox++;
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, 3);
set_hitbox_value(atk, hbox, HG_LIFETIME, 3);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 0);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -18);
set_hitbox_value(atk, hbox, HG_WIDTH, 64);
set_hitbox_value(atk, hbox, HG_HEIGHT, 36);
set_hitbox_value(atk, hbox, HG_DAMAGE, 5);
set_hitbox_value(atk, hbox, HG_ANGLE, 40);
set_hitbox_value(atk, hbox, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 1);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hbox, HG_HIT_LOCKOUT, 6);
set_hitbox_value(atk, hbox, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_KARMA, 2);

set_num_hitboxes(atk, hbox);