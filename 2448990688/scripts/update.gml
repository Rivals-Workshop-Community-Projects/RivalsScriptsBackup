user_event(14);

rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))



max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

if swallowed { //Kirby ability script starts here
swallowed = 0
//Define any assets kirby might need to grab from YOUR CHARACTER
var ability_spr = sprite_get("nspecial_kirb");
var ability_hurt = sprite_get("nspecial_kirb_hurt")
var ability_proj = sprite_get("knspecial_proj")
var ability_get = sound_get("sfx_amogus")
//var ability_icon = sprite_get("icon") //Optional
with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
sound_play(ability_get)
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 1);

set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_flareo_rod"));

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 250);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -15);
set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 1);


newicon = ability_icon //Optional, replaces the kirby ability icon
} //Kirby ability script ends here
}

if enemykirby != undefined { //if kirby is in a match & swallowed
with oPlayer { //Run through all players
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
if  window == 4{
	move_cooldown[AT_EXTRA_3] = 30;
	move_cooldown[AT_NSPECIAL] = 30;
	}
}
}
}