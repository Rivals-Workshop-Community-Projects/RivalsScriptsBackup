set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
set_window_value(AT_FSPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, has_rune("I") ? 6 : 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.08);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSPECIAL, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 9);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.33);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, -17);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 999);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.33);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 20);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, has_rune("J") ? 10 : 17);


set_num_hitboxes(AT_FSPECIAL, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Grab");
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 72);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 102);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Throw
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Slam");
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_MISC_ADD, "Damage scaled based on distance.");
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 148);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 148);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, has_rune("J") ? 60 : 69);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1.4);

if (has_rune("O")) {
    big_yes(AT_FSPECIAL);
}

framedata_slowstart(AT_FSPECIAL);

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