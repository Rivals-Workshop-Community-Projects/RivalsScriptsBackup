var atk = AT_DSPECIAL;
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
var _win = 1;

//frame data
var startup = 20;
var grab_loop = 10;
var whiff = 24;
var endlag = 4;
var throw_time = 15;

//knockback/damage values
var dmg = 5;

var throw_kb = 8;

var kb_scaling = 0.4;
//var d_kb_scale = 0.2;
var base_hitpause = 6;
var extra_hitpause = 6; // so garf can land uair easier.
var hitstun_mult = 0.8;
var hitpause_scale = 0.6;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 3);
/*
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, sound_get("sfx_soul_battlestart"));
*/
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, grab_loop);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 3);
_win++;

//whiff
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, whiff);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 4);

set_attack_value(atk, AG_NUM_WINDOWS, _win); 
_win++;
//Grabbed

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, grab_loop);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 8);
//print_debug("GRAB WINDOW: " + string(_win));
_win++;

//Throw
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, throw_time);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 9);
var throw_win = _win;

//Hitboxes
var hbox = 1;

var box = 64;

set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, hbox);
set_hitbox_value(atk, hbox, HG_WINDOW, 2);
set_hitbox_value(atk, hbox, HG_LIFETIME, grab_loop);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 60);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -34);
set_hitbox_value(atk, hbox, HG_WIDTH, box);
set_hitbox_value(atk, hbox, HG_HEIGHT, box);
set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 5);
set_hitbox_value(atk, hbox, HG_DAMAGE, 0);
set_hitbox_value(atk, hbox, HG_ANGLE, 0);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(atk, hbox, HG_EXTRA_HITPAUSE, 50);
set_hitbox_value(atk, hbox, HG_HIT_SFX, sound_get("sfx_soul_hit"));
set_hitbox_value(atk, hbox, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hbox, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, 1);

hbox++;
set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, hbox);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, throw_win);
set_hitbox_value(atk, hbox, HG_WINDOW_CREATION_FRAME, throw_time / 5);
set_hitbox_value(atk, hbox, HG_LIFETIME, 5);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 60);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -34);
set_hitbox_value(atk, hbox, HG_WIDTH, box+8);
set_hitbox_value(atk, hbox, HG_HEIGHT, box+8);
set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 9);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, throw_kb);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause);
set_hitbox_value(atk, hbox, HG_EXTRA_HITPAUSE, extra_hitpause);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale);
set_hitbox_value(atk, hbox, HG_HITSTUN_MULTIPLIER, hitstun_mult);
set_hitbox_value(atk, hbox, HG_HIT_SFX, sound_get("sfx_soul_break"));
set_hitbox_value(atk, hbox, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);

set_num_hitboxes(atk, hbox);