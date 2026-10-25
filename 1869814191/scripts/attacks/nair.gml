var atk = AT_NAIR;
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("nair"))
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
var _win = 1;

var startup = 7;
var active = 3;
var endlag = 14;
var land_lag = 4;
//knockback/damage values
var dmg = 4;
var knockback = 7;
var kb_scaling = 0.35;
var base_hitpause = 7;
var hitpause_scale = 0.35;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX_FRAME, startup-1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, active);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 2);
var hbox_win = _win;
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 3);
set_window_value(atk, _win, AG_WINDOW_LENGTH, endlag);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, _win, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_LANDING_LAG, land_lag);
set_attack_value(atk, AG_NUM_WINDOWS, _win);

var hb = 1;
set_hitbox_value(atk, hb, HG_PARENT_HITBOX, hb);
set_hitbox_value(atk, hb, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hb, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hb, HG_LIFETIME, active);
set_hitbox_value(atk, hb, HG_HITBOX_X, 0); // -4
set_hitbox_value(atk, hb, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hb, HG_WIDTH, 80);
set_hitbox_value(atk, hb, HG_HEIGHT, 60);
set_hitbox_value(atk, hb, HG_SHAPE, 2);
set_hitbox_value(atk, hb, HG_PRIORITY, 5);
set_hitbox_value(atk, hb, HG_DAMAGE, dmg);
set_hitbox_value(atk, hb, HG_ANGLE, 60);
set_hitbox_value(atk, hb, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, hb, HG_BASE_KNOCKBACK, knockback);
set_hitbox_value(atk, hb, HG_KNOCKBACK_SCALING, kb_scaling);
set_hitbox_value(atk, hb, HG_BASE_HITPAUSE, base_hitpause);
set_hitbox_value(atk, hb, HG_HITPAUSE_SCALING, hitpause_scale);
set_hitbox_value(atk, hb, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hb, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hb, HG_KARMA, 2);

set_num_hitboxes(atk, hb);