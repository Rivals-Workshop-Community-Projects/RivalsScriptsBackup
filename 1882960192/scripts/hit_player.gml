//hit_player - called when one of your hitboxes hits a player

//Stun effect
if (my_hitboxID.attack == AT_EXTRA_3 || my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3 || 
	my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 1 || 
	my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 2 ||
	my_hitboxID.attack == AT_DTHROW && my_hitboxID.hbox_num == 9) {
	
	spawn_hit_fx(other.x-40*other.spr_dir, other.y+6, stung2);
	spawn_hit_fx(other.x+30*other.spr_dir, other.y-60, stung2);
	spawn_hit_fx(other.x+24*other.spr_dir, other.y-30, stung);
	spawn_hit_fx(other.x-10*other.spr_dir, other.y+10, stung);
	spawn_hit_fx(other.x-20*other.spr_dir, other.y-70, stung);
}

//FSpecial bounce
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	my_hitboxID.hitbox_timer = my_hitboxID.length-4;
	my_hitboxID.vsp = 0;
	my_hitboxID.hsp = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1) {
	my_hitboxID.hitbox_timer = my_hitboxID.length-4;
	my_hitboxID.vsp = 0;
	my_hitboxID.hsp = 0;	
}

//DSpecial double jump restore
if (my_hitboxID.attack == AT_DSPECIAL_AIR || my_hitboxID.attack == AT_DTHROW) {
	djumps = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_2) {
	move_cooldown[AT_FSPECIAL] = 8;
	}

if (( my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_USTRONG_2) && my_hitboxID.hbox_num =! 4) {
	hit_player_obj.should_make_shockwave = false;
	}
