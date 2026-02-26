switch(my_hitboxID.attack){
	case AT_DAIR:
		with (my_hitboxID){
			if(hbox_num == 1){
				other.grabp[array_length_1d(other.grabp)] = other.hit_player_obj;
			}
		}
	break;
	case AT_DSPECIAL:
		if (instance_exists(my_hitboxID.hbox_owner)){
			my_hitboxID.hbox_owner.has_hit[hit_player_obj.player] = true;
			my_hitboxID.hbox_owner.hit_timer[hit_player_obj.player] = 30;
		}
		
		if my_hitboxID.hbox_num == 2{
			my_hitboxID.has_hit = true;
		}
	break;
	
	case AT_DTHROW:
		if (my_hitboxID.hbox_num == 2) {
		    old_vsp = -7;
		    sound_play(sound_get("dairbounce"))
		}
	break;

	case AT_UAIR:
		old_vsp = -1.5;
		old_hsp *= 0.5;
	break;

	case AT_NAIR:
		old_vsp -= 1;
	break;
	
	case AT_DSTRONG_2:
		if (my_hitboxID.hbox_num == 3){
			spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, HFX_KRA_ROCK_SMALL);
		}
	break;

	case AT_NSPECIAL_2:
		if (has_rune("I")) {
			destroy_hitboxes();
			attack_end();
			set_attack(AT_DSPECIAL_AIR);
			hurtboxID.sprite_index = sprite_get("pizzahead_dspecial_air_hurt");
			window = 4;
			window_timer = 10;
			cameFromNspecial = true;
		}
	break;
	
}



