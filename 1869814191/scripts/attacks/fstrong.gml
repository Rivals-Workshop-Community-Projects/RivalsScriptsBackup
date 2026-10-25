var atk = AT_FSTRONG;
set_attack_value(atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
var _win = 1;

//frame data
var startup = 16;
var charge_frame = 10;
var active = 4;
var endlag = 24;
//knockback/damage values
var dmg_1 = 4;
var dmg_2 = 8;
var knockback_1 = 6;
var knockback_2 = 8;
var kb_scaling_1 = 0.9;
var kb_scaling_2 = 1.0;
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
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, _win, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, _win);
var hbox = 1;

set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, active);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 57);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hbox, HG_WIDTH, 94);
set_hitbox_value(atk, hbox, HG_HEIGHT, 50);
set_hitbox_value(atk, hbox, HG_SHAPE, 2);
set_hitbox_value(atk, hbox, HG_PRIORITY, 3);
set_hitbox_value(atk, hbox, HG_ANGLE, 45);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_2);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_2);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_2);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_2);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_2);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hbox, HG_KARMA, 4);
hbox++;

// var radius = 30;
// set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
// set_hitbox_value(atk, hbox, HG_LIFETIME, active);
// set_hitbox_value(atk, hbox, HG_HITBOX_X, 86);
// set_hitbox_value(atk, hbox, HG_HITBOX_Y, -30);
// set_hitbox_value(atk, hbox, HG_WIDTH, radius);
// set_hitbox_value(atk, hbox, HG_HEIGHT, radius);
// set_hitbox_value(atk, hbox, HG_PRIORITY, 6);
// set_hitbox_value(atk, hbox, HG_ANGLE, 45);
// set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_2);
// set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_2);
// set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_2);
// set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_2);
// set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_2);
// set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_bigboned);

set_num_hitboxes(atk, hbox);