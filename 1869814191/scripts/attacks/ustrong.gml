var atk = AT_USTRONG;
set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
var _win = 1;

//frame data
var startup = 18;
var charge_frame = 12;
var active = 3;
var endlag = 24;
//knockback/damage values
var dmg_1 = 6;
var dmg_2 = 9;
var dmg_3 = 7;
var knockback_1 = 6;
var knockback_2 = 8;
var knockback_3 = 7;
var kb_scaling_1 = 1;
var kb_scaling_2 = 1.1;
var kb_scaling_3 = 1.05;
var base_hitpause_1 = 8;
var base_hitpause_2 = 10;
var base_hitpause_3 = 9;
var hitpause_scale_1 = 0.7;
var hitpause_scale_2 = 1.0;
var hitpause_scale_3 = 0.8;

/*
var dmg = 8;
var knockback = 7;
var kb_scaling = 1.0;
var base_hitpause = 8;
var hitpause_scale = 0.6;
*/

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, charge_frame);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, sound_get("sfx_sans_alert"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, _win);
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup-charge_frame);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 3);
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
var hbox = 1;

set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, hbox);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, active);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 44);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -75);
set_hitbox_value(atk, hbox, HG_WIDTH, 16);
set_hitbox_value(atk, hbox, HG_HEIGHT, 152);
set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 3);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_3);
//set_hitbox_value(atk, hbox, HG_DRIFT_MULTIPLIER, 0);
//set_hitbox_value(atk, hbox, HG_SDI_MULTIPLIER, 0);
//set_hitbox_value(atk, hbox, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(atk, hbox, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_3);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_3);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_3);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_3);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hbox, HG_KARMA, 4);
hbox++;

var radius = 30;
set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, hbox);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, active);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 44);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -140);
set_hitbox_value(atk, hbox, HG_WIDTH, radius);
set_hitbox_value(atk, hbox, HG_HEIGHT, radius);
//set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 5);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_2);
//set_hitbox_value(atk, hbox, HG_DRIFT_MULTIPLIER, 0);
//set_hitbox_value(atk, hbox, HG_SDI_MULTIPLIER, 0);
//set_hitbox_value(atk, hbox, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(atk, hbox, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_2);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_2);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_2);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_2);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hbox, HG_KARMA, 4);

hbox++;
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, active);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 0);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -45);
set_hitbox_value(atk, hbox, HG_WIDTH, 60);
set_hitbox_value(atk, hbox, HG_HEIGHT, 60);
set_hitbox_value(atk, hbox, HG_SHAPE, 2);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_1);
//set_hitbox_value(atk, hbox, HG_DRIFT_MULTIPLIER, 0);
//set_hitbox_value(atk, hbox, HG_SDI_MULTIPLIER, 0);
//set_hitbox_value(atk, hbox, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(atk, hbox, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_1);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_1);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_1);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_1);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hbox, HG_KARMA, 3);

set_num_hitboxes(atk, hbox);