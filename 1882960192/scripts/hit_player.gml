//hit_player - called when one of your hitboxes hits a player


if (my_hitboxID.attack == AT_USPECIAL) {
		my_hitboxID.destroyed = true;
		create_hitbox(AT_USPECIAL, 1, -5, -95);
}


//Stun effect

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3 || my_hitboxID.attack == AT_EXTRA_3) {

	var nspecialstun = hit_fx_create(sprite_get("nspecial_stun"), 34);
	
	spawn_hit_fx( other.x, other.y, nspecialstun);
}

//FSpecial bounce
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	my_hitboxID.hitbox_timer = 80;
	if (my_hitboxID.grounds == 2) {
			my_hitboxID.vsp = -9;
			my_hitboxID.hsp = -2*(spr_dir);	
	}
	else {
			my_hitboxID.vsp = -5;
		}
}

if (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_2) {
	move_cooldown[AT_FSPECIAL] = 45;
	}

if (( my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_USTRONG_2) && my_hitboxID.hbox_num =! 4) {
	hit_player_obj.should_make_shockwave = false;
	}
	
if (( my_hitboxID.attack == AT_DAIR) && my_hitboxID.hbox_num =! 5) {
	hit_player_obj.should_make_shockwave = false;
	}
