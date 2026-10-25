var atk = AT_FTILT;
set_attack_value(atk, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
var _win = 1;

var startup = 10;
var active = 4;
var endlag = 12;
var land_lag = 4;
//knockback/damage values
var dmg = 5;
var knockback = 7;
var kb_scaling = 0.6;
var base_hitpause = 6;
var hitpause_scale = 0.4;

var dmg_1 = 6;
var dmg_2 = 6;
var knockback_1 = 5;
var knockback_2 = 6;
var kb_scaling_1 = 0.6;
var kb_scaling_2 = 0.7;
var base_hitpause_1 = 6;
var base_hitpause_2 = 8;
var hitpause_scale_1 = 0.7;
var hitpause_scale_2 = 0.9;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, _win, AG_WINDOW_SFX_FRAME, startup-2);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, active);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 2);
var hbox_win = _win;

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, endlag);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, _win, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, _win);
set_attack_value(atk, AG_LANDING_LAG, land_lag);
var hbox = 1;

set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, hbox);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, active);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 58);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -33);
set_hitbox_value(atk, hbox, HG_WIDTH, 96);
set_hitbox_value(atk, hbox, HG_HEIGHT, 64);
//set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_1);
set_hitbox_value(atk, hbox, HG_ANGLE, 45);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_1);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_1);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_1);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_1);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_KARMA, 2);
/*
hbox++;

var sweet_radius = 30;
set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, hbox);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, active);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 96);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -29);
set_hitbox_value(atk, hbox, HG_WIDTH, sweet_radius);
set_hitbox_value(atk, hbox, HG_HEIGHT, sweet_radius);
set_hitbox_value(atk, hbox, HG_SHAPE, 0);
set_hitbox_value(atk, hbox, HG_PRIORITY, 5);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_2);
set_hitbox_value(atk, hbox, HG_ANGLE, 361);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_2);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_2);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_2);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_2);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, 304);
*/
set_num_hitboxes(atk, hbox);