//Blank
if my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num = 2 {
	grabbedID = hit_player_obj
	window = 4
	window_timer = 0
	grabbedID.x =( x + grabbedID.x )/2
	grabbedID.y =( y + grabbedID.y )/2
}

if runeL {
	take_damage( hit_player_obj.player, my_hitboxID.player, my_hitboxID.damage )
}
if runeJ {
	if random_func( 0, 20, 1 ) = 1 {
		orig_knock*= 1.5
		hit_player_obj.orig_knock*= 1.5
		take_damage( hit_player_obj.player, my_hitboxID.player, my_hitboxID.damage )
		sound_play(asset_get("sfx_may_arc_cointoss"))
	}
}

if runeI {
	take_damage( my_hitboxID.player, my_hitboxID.player, floor(my_hitboxID.damage/-3) )
}

if runeN {
	if get_player_team( my_hitboxID.player ) = get_player_team( hit_player_obj.player ) {
		if runeL take_damage( hit_player_obj.player, my_hitboxID.player, -2*my_hitboxID.damage )
		else take_damage( hit_player_obj.player, my_hitboxID.player, -my_hitboxID.damage )
		hit_player_obj.hitstun *= 0.5
	}
}

if runeM {
	effect = random_func( 1, 10, 1 )
	if effect = 0 {
	hit_player_obj.burned = 1
	hit_player_obj.burn_timer = 90
	hit_player_obj.burnt_id = my_hitboxID.player_id
	sound_play(asset_get("sfx_burnapplied"))
	}
	if effect = 1 and hit_player_obj.poison < 4{
	hit_player_obj.poison += 1
	sound_play(asset_get("sfx_frog_croak"))
	}
	if effect = 2 {
	hit_player_obj.hitstop += 20
	sound_play(asset_get("sfx_clairen_tip_strong"))
	spawn_hit_fx( x, y, 127 );
	}
	if effect = 3 {
	hit_player_obj.outline_color = [20, 20, 255]
	}
	if effect = 4 {
	hit_player_obj.outline_color = [0, 0, 0]
	}
	if effect = 5 {
	hit_player_obj.orig_knock *= 0.5
	}
	if effect = 6 {
	my_hitboxID.player_id.attack = AT_NSPECIAL
	my_hitboxID.player_id.window = 2
	my_hitboxID.player_id.nspec_charge = 30
	}
	if effect = 7 {
	take_damage( hit_player_obj.player, my_hitboxID.player, -2*my_hitboxID.damage )
	sound_play(asset_get("mfx_back"))
	}
	if effect = 8 {
	take_damage( hit_player_obj.player, my_hitboxID.player, my_hitboxID.damage )
	sound_play(asset_get("mfx_forward"))
	}
	if effect = 9 {
	my_hitboxID.player_id.attack = AT_DSPECIAL
	my_hitboxID.player_id.window = 2
	my_hitboxID.player_id.window_timer = 0
	}
}