var atk = AT_DAIR;
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("dair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
var _win = 1;

//frame data
var startup = 12;
var active = 4;
var endlag = 16;
var land_lag = 10;
//knockback/damage values

/*
var dmg = 7;
var knockback = 5;
var kb_scaling = 0.8;
var base_hitpause = 8;
var hitpause_scale = 0.45;
*/

var dmg_1 = 6;
var dmg_2 = 5;
var knockback_1 = 6;
var knockback_2 = 8; // 5
var kb_scaling_1 = 0.5;
var kb_scaling_2 = 0.4; // .45
var base_hitpause_1 = 8;
var base_hitpause_2 = 6;
var hitpause_scale_1 = 0.6;
var hitpause_scale_2 = 0.5;

/*
var dmg = [4, 6];
var knockback = [5, 6];
var kb_scaling = [0.4, 0.8];
var base_hitpause = [6, 8];
var hitpause_scale = [0.4, 0.6];
*/

/*
var dmg = [6, 4];
var knockback = [6, 5];
var kb_scaling = [0.5, 0.45];
var base_hitpause = [8, 6];
var hitpause_scale = [0.6, 0.5];
*/

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, _win, AG_WINDOW_SFX_FRAME, startup-2);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, active);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 4);

var hbox_win = _win;

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, endlag);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, _win, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, _win);
set_attack_value(atk, AG_LANDING_LAG, land_lag);

var hb = 1;

//var sweet_radius = 50;
set_hitbox_value(atk, hb, HG_PARENT_HITBOX, hb);
set_hitbox_value(atk, hb, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hb, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hb, HG_LIFETIME, active);
set_hitbox_value(atk, hb, HG_HITBOX_X, 32); // 28
set_hitbox_value(atk, hb, HG_HITBOX_Y, 20); // 24
set_hitbox_value(atk, hb, HG_WIDTH, 52); // 44
set_hitbox_value(atk, hb, HG_HEIGHT, 40); // 48
set_hitbox_value(atk, hb, HG_SHAPE, 0);
set_hitbox_value(atk, hb, HG_PRIORITY, 8);
set_hitbox_value(atk, hb, HG_DAMAGE, dmg_1);
set_hitbox_value(atk, hb, HG_ANGLE, 270);
set_hitbox_value(atk, hb, HG_BASE_KNOCKBACK, knockback_1);
set_hitbox_value(atk, hb, HG_KNOCKBACK_SCALING, kb_scaling_1);
set_hitbox_value(atk, hb, HG_BASE_HITPAUSE, base_hitpause_1);
set_hitbox_value(atk, hb, HG_HITPAUSE_SCALING, hitpause_scale_1);
//set_hitbox_value(atk, hb, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(atk, hb, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hb, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hb, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hb, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hb, HG_KARMA, 3);
hb++;

//thisll have the sweetspot later but dair just being a big "fuck you" button is really funny
set_hitbox_value(atk, hb, HG_PARENT_HITBOX, hb);
set_hitbox_value(atk, hb, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hb, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hb, HG_LIFETIME, active);
set_hitbox_value(atk, hb, HG_SHAPE, 0);
set_hitbox_value(atk, hb, HG_HITBOX_X, 24);
set_hitbox_value(atk, hb, HG_HITBOX_Y, 2);
set_hitbox_value(atk, hb, HG_WIDTH, 110);
set_hitbox_value(atk, hb, HG_HEIGHT, 73);
set_hitbox_value(atk, hb, HG_PRIORITY, 4);
set_hitbox_value(atk, hb, HG_ANGLE, 50);
set_hitbox_value(atk, hb, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hb, HG_DAMAGE, dmg_2);
set_hitbox_value(atk, hb, HG_BASE_KNOCKBACK, knockback_2);
set_hitbox_value(atk, hb, HG_KNOCKBACK_SCALING, kb_scaling_2);
set_hitbox_value(atk, hb, HG_BASE_HITPAUSE, base_hitpause_2);
set_hitbox_value(atk, hb, HG_HITPAUSE_SCALING, hitpause_scale_2);
// set_hitbox_value(atk, hb, HG_VISUAL_EFFECT_X_OFFSET, 32);
// set_hitbox_value(atk, hb, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hb, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hb, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hb, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hb, HG_KARMA, 2);

set_num_hitboxes(atk, hb);