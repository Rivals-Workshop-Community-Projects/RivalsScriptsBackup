var atk = AT_UTILT;
set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
var _win = 1;

//frame data
var startup = 6;
var active = 6;
var endlag = 12;
//damage values
var dmg_1 = 1;
var dmg_2 = 3;
var knockback_1 = 5;
var knockback_2 = 7;
var kb_scaling_1 = 0;
var kb_scaling_2 = 0.5;
var base_hitpause_1 = 4;
var base_hitpause_2 = 8;
var hitpause_scale_1 = 0;
var hitpause_scale_2 = 0.4;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(atk, _win, AG_WINDOW_SFX_FRAME, startup-1);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, active);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 2);

var hbox_win = _win;

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, endlag);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, _win, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, _win);

var hbox = 1;

var radius = 50;

set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, 2);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 36);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -37);
set_hitbox_value(atk, hbox, HG_WIDTH, radius);
set_hitbox_value(atk, hbox, HG_HEIGHT, radius);
//set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_1);
set_hitbox_value(atk, hbox, HG_ANGLE, -90);
set_hitbox_value(atk, hbox, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_1);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_1);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_1);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_1);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_TECHABLE, 3);
set_hitbox_value(atk, hbox, HG_KARMA, 1);


hbox++;
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hbox, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, 2);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 36);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -57);
set_hitbox_value(atk, hbox, HG_WIDTH, radius);
set_hitbox_value(atk, hbox, HG_HEIGHT, radius);
//set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_1);
set_hitbox_value(atk, hbox, HG_ANGLE, -90);
set_hitbox_value(atk, hbox, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_1);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_1);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_1);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_1);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_TECHABLE, 3);
set_hitbox_value(atk, hbox, HG_KARMA, 1);

hbox++;
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hbox, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, 2);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 36);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -57);
set_hitbox_value(atk, hbox, HG_WIDTH, radius);
set_hitbox_value(atk, hbox, HG_HEIGHT, radius);
//set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg_2);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback_2);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling_2);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause_2);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale_2);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_KARMA, 1);

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