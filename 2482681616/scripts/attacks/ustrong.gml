set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_sein_fstrong"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG, 5);

//Initial Hit
set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_NAME, "Linker 1");
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 176);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX,  asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 2);

//Initial Hit Edge
set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_NAME, "Linker 2");
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -80);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 56);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX,  asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 3, HG_MUNO_HITBOX_NAME, "Linker 3");
set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 4);

//Sweetspot
set_hitbox_value(AT_USTRONG, 4, HG_MUNO_HITBOX_NAME, "Sweet");
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -168);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 86);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 155);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_kragg_rock_pillar"));
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);

//Sourspot
set_hitbox_value(AT_USTRONG, 5, HG_MUNO_HITBOX_NAME, "Sour");
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -148);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 168);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);

if (has_rune("O")) {
    big_yes(AT_USTRONG);
}

framedata_slowstart(AT_USTRONG);

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