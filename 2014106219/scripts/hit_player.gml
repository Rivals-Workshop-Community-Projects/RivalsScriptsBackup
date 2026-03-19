//hit_player - called when one of your hitboxes hits a player

//Stun effect
if (my_hitboxID.attack == AT_EXTRA_3 || my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3 ||
	my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 3 || 
	my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 2 ||
	my_hitboxID.attack == AT_DTHROW && my_hitboxID.hbox_num == 9) {
	
	var stung = hit_fx_create(sprite_get("nspecial_proj_after"), 28);
	var stung2 = hit_fx_create(sprite_get("nspecial_proj3_after"), 34);
	spawn_hit_fx(other.x-40*other.spr_dir, other.y+6, stung2);
	spawn_hit_fx(other.x+30*other.spr_dir, other.y-60, stung2);
	spawn_hit_fx(other.x+24*other.spr_dir, other.y-30, stung);
	spawn_hit_fx(other.x-10*other.spr_dir, other.y+10, stung);
	spawn_hit_fx(other.x-20*other.spr_dir, other.y-70, stung);
}

//DSpecial
if (my_hitboxID.attack == AT_DSPECIAL) {
	attack_end();
}

if (my_hitboxID.attack == AT_DSPECIAL_AIR || my_hitboxID.attack == AT_DTHROW) {
	sound_play(sound_get("parasol-bounce"));
	if my_hitboxID.attack == AT_DSPECIAL_AIR {
		attack_end();
		old_vsp = -6;
	}
	if my_hitboxID.attack == AT_DTHROW {
		window = 6;
		window_timer = 0;
		old_vsp = -10;
		old_hsp /= 2;
	}
}

if (( my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_USTRONG_2) && my_hitboxID.hbox_num =! 4) {
	hit_player_obj.should_make_shockwave = false;
	}
	