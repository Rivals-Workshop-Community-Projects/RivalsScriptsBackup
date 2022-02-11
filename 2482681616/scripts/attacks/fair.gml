set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3)
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 17);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FAIR, 6);
//Top
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -104);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 104);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 57);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -69);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 68);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 104);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Back
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, -16);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 115);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Spike
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 52);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, has_rune("K") ? 1 : 0.6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Bottom
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -77);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 68);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 66);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 96);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 94);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

if (has_rune("O")) {
    big_yes(AT_FAIR);
}

#define big_yes
/// big_yes(_move, ...)
var _move = argument[0];
for(var i = 1; i <= get_num_hitboxes(_move); i++) {
	reset_hitbox_value(_move, i, HG_WIDTH);
	reset_hitbox_value(_move, i, HG_HEIGHT);
	reset_hitbox_value(_move, i, HG_HITBOX_X);
	reset_hitbox_value(_move, i, HG_HITBOX_Y);
	set_hitbox_value(_move, i, HG_WIDTH, get_hitbox_value(_move, i, HG_WIDTH) *2);
	set_hitbox_value(_move, i, HG_HEIGHT, get_hitbox_value(_move, i, HG_HEIGHT) *2);
	set_hitbox_value(_move, i, HG_HITBOX_X, get_hitbox_value(_move, i, HG_HITBOX_X) *2);
	set_hitbox_value(_move, i, HG_HITBOX_Y, get_hitbox_value(_move, i, HG_HITBOX_Y) *1.9);
}