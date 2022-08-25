set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DAIR, 2);
//Sweetspot
set_hitbox_value(AT_DAIR, 1, HG_MUNO_HITBOX_NAME, "Spike");
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 9);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 66);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING,  has_rune("K") ? 1 : 0.7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Sourspot
set_hitbox_value(AT_DAIR, 2, HG_MUNO_HITBOX_NAME, "Sour");
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

if (has_rune("O")) {
    big_yes(AT_DAIR);
}
framedata_slowstart(AT_DAIR);

#define framedata_slowstart(_move)
for(var i = 1; i <= get_num_hitboxes(_move); i++) {
	var kb = get_hitbox_value(_move, i, HG_BASE_KNOCKBACK);
	var kbs = get_hitbox_value(_move, i, HG_KNOCKBACK_SCALING);
	var damage = get_hitbox_value(_move, i, HG_DAMAGE);
	var hstop = get_hitbox_value(_move, i, HG_BASE_HITPAUSE);
	set_hitbox_value(_move, i, HG_MUNO_HITBOX_BKB, string(kb) + " / " + string(kb * slowstart_knockback_mult));
	set_hitbox_value(_move, i, HG_MUNO_HITBOX_KBG, string(kbs) + " / " + string(kbs * slowstart_knockbackscale_mult));
	set_hitbox_value(_move, i, HG_MUNO_HITBOX_DAMAGE, string(damage) + " / " + string(damage * slowstart_damage_mult));
	set_hitbox_value(_move, i, HG_MUNO_HITBOX_BHP, string(hstop) + " / " + string(hstop - slowstart_hitstop_sub));
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
