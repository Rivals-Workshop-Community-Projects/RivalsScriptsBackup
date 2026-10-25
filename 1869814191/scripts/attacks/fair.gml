var atk = AT_FAIR;
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
var _win = 1;

//frame data
var startup = 12;
var active = 4;
var endlag = 16;
var land_lag = 8;
//knockback/damage values
var dmg_1 = 7;
var dmg_2 = 4;
var dmg_3 = 4;
var knockback_1 = 7;
var knockback_2 = 6;
var knockback_3 = 6;
var kb_scaling_1 = 0.8;
var kb_scaling_2 = 0.4;
var kb_scaling_3 = 0.35;
var base_hitpause_1 = 11;
var base_hitpause_2 = 7;
var base_hitpause_3 = 7;
var hitpause_scale_1 = 0.75;
var hitpause_scale_2 = 0.3;
var hitpause_scale_3 = 0.3;

//is set up like this bc it feels easier to manage

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, _win, AG_WINDOW_SFX_FRAME, startup - 2);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, active);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 3);
var hbox_win = _win;

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, endlag);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, _win, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, _win);
set_attack_value(atk, AG_LANDING_LAG, land_lag);
var hb = 1;

set_hitbox_value(atk, hb, HG_PARENT_HITBOX, hb);
set_hitbox_value(atk, hb, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hb, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hb, HG_LIFETIME, active);
set_hitbox_value(atk, hb, HG_HITBOX_X, 22);
set_hitbox_value(atk, hb, HG_HITBOX_Y, 14);
set_hitbox_value(atk, hb, HG_WIDTH, 56);
set_hitbox_value(atk, hb, HG_HEIGHT, 33);
set_hitbox_value(atk, hb, HG_SHAPE, 0);
set_hitbox_value(atk, hb, HG_PRIORITY, 3);
set_hitbox_value(atk, hb, HG_DAMAGE, dmg_1);
set_hitbox_value(atk, hb, HG_ANGLE, 40);
set_hitbox_value(atk, hb, HG_BASE_KNOCKBACK, knockback_1);
set_hitbox_value(atk, hb, HG_KNOCKBACK_SCALING, kb_scaling_1);
set_hitbox_value(atk, hb, HG_BASE_HITPAUSE, base_hitpause_1);
set_hitbox_value(atk, hb, HG_HITPAUSE_SCALING, hitpause_scale_1);
set_hitbox_value(atk, hb, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hb, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hb, HG_KARMA, 3);
hb++;

set_hitbox_value(atk, hb, HG_PARENT_HITBOX, hb);
set_hitbox_value(atk, hb, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hb, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hb, HG_LIFETIME, active);
set_hitbox_value(atk, hb, HG_HITBOX_X, 42);
set_hitbox_value(atk, hb, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hb, HG_WIDTH, 70);
set_hitbox_value(atk, hb, HG_HEIGHT, 92);
set_hitbox_value(atk, hb, HG_SHAPE, 0);
set_hitbox_value(atk, hb, HG_PRIORITY, 2);
set_hitbox_value(atk, hb, HG_DAMAGE, dmg_2);
set_hitbox_value(atk, hb, HG_ANGLE, 45);
set_hitbox_value(atk, hb, HG_BASE_KNOCKBACK, knockback_2);
set_hitbox_value(atk, hb, HG_KNOCKBACK_SCALING, kb_scaling_2);
set_hitbox_value(atk, hb, HG_BASE_HITPAUSE, base_hitpause_2);
set_hitbox_value(atk, hb, HG_HITPAUSE_SCALING, hitpause_scale_2);
set_hitbox_value(atk, hb, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hb, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hb, HG_KARMA, 2);
hb++;

set_hitbox_value(atk, hb, HG_PARENT_HITBOX, hb);
set_hitbox_value(atk, hb, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hb, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hb, HG_LIFETIME, active);
set_hitbox_value(atk, hb, HG_HITBOX_X, 6);
set_hitbox_value(atk, hb, HG_HITBOX_Y, 14);
set_hitbox_value(atk, hb, HG_WIDTH, 90);
set_hitbox_value(atk, hb, HG_HEIGHT, 36);
set_hitbox_value(atk, hb, HG_SHAPE, 0);
set_hitbox_value(atk, hb, HG_PRIORITY, 1);
set_hitbox_value(atk, hb, HG_DAMAGE, dmg_3);
set_hitbox_value(atk, hb, HG_ANGLE, 40);
set_hitbox_value(atk, hb, HG_BASE_KNOCKBACK, knockback_3);
set_hitbox_value(atk, hb, HG_KNOCKBACK_SCALING, kb_scaling_3);
set_hitbox_value(atk, hb, HG_BASE_HITPAUSE, base_hitpause_3);
set_hitbox_value(atk, hb, HG_HITPAUSE_SCALING, hitpause_scale_3);
set_hitbox_value(atk, hb, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hb, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hb, HG_KARMA, 2);

set_num_hitboxes(atk, hb);

/*
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(atk, 1, AG_WINDOW_TYPE, 1);
set_window_value(atk, 1, AG_WINDOW_LENGTH, 5);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(atk, 2, AG_WINDOW_TYPE, 1);
set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(atk, 3, AG_WINDOW_TYPE, 1);
set_window_value(atk, 3, AG_WINDOW_LENGTH, 14);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);