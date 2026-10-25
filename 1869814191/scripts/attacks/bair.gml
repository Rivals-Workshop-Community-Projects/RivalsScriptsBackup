set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -72);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 9); // 10
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_SDI_MULTIPLIER, .67);
set_hitbox_value(AT_BAIR, 1, HG_KARMA, 1);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -72);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 9); // 10
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_SDI_MULTIPLIER, .67);
set_hitbox_value(AT_BAIR, 2, HG_KARMA, 1);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -68);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 3, HG_KARMA, 1);


/*var atk = AT_BAIR;
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("bair"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 7);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
var _win = 1;

var startup = 8;
var active = 3;
var endlag = 16;
var land_lag = 4;
//knockback/damage values
var dmg = 3;
var knockback = 5;
var kb_scaling = 0.4;
var base_hitpause = 6;
var hitpause_scale = 0.25;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, active);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
var hbox_win = _win;

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, endlag);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 3);

set_attack_value(atk, AG_NUM_WINDOWS, _win);
set_attack_value(atk, AG_LANDING_LAG, land_lag);
var hbox = 1;

set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, hbox_win);
set_hitbox_value(atk, hbox, HG_LIFETIME, active);
set_hitbox_value(atk, hbox, HG_HITBOX_X, -36);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hbox, HG_WIDTH, 72);
set_hitbox_value(atk, hbox, HG_HEIGHT, 92);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg);
set_hitbox_value(atk, hbox, HG_ANGLE, 125);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale);
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_num_hitboxes(atk, 1);