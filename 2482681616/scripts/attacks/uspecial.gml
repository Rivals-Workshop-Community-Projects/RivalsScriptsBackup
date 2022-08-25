set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);

//Jump
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, has_rune("B") ? 15 : 7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, has_rune("B") ? -12 : -8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 2, AG_MUNO_WINDOW_ROLE, 2);

//Land
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 3, AG_MUNO_WINDOW_ROLE, 3);

//Wall Cling
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_land"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_INVINCIBILITY, 2);

//Wall Cling Loop
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//Wall Cling Climb
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 48);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);

//GO!
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_launch"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, -15);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);



set_num_hitboxes(AT_USPECIAL, 4);
//Start
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Initial");
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 108);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 98);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Looping
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Travelling");
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 108);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 98);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 12);

//Land
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_NAME, "Landing on Wall");
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 92);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 104);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 125);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);

//Hit (Sweetspot)
set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_NAME, "Wall Rise");
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 96);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);

if (has_rune("O")) {
    big_yes(AT_USPECIAL);
}

framedata_slowstart(AT_USPECIAL);

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
