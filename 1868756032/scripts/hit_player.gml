if my_hitboxID.attack == AT_NSPECIAL { //Grab and stuff
	if my_hitboxID.hbox_num == 1 {
		window = 3;
		window_timer = 0;
		hit_player_obj.grabbed = 1;
		hit_player_obj.should_make_shockwave = false;
		grabbedid = hit_player_obj;
		destroy_hitboxes();
		if get_player_team( hit_player_obj.player ) == get_player_team( player ) {
			take_damage(hit_player_obj.player, -1, -5)
		}
	}
	if my_hitboxID.hbox_num == 3 {
		current_ability = hit_player_obj.abilitygiven;
		if get_player_team( hit_player_obj.player ) == get_player_team( player ) {
			take_damage(hit_player_obj.player, -1, -5)
			hit_player_obj.state = PS_IDLE
		}
		hit_player_obj.current_ability = 0
		hit_player_obj.swallowed = 1
		hit_player_obj.enemykirby = self
		if get_player_color(player) != 0 and get_player_color(player) != 13  {
		switch (current_ability) {
		case 1:
			set_color_profile_slot(get_player_color(player),0,218,161,106);
			set_color_profile_slot(get_player_color(player),1,122,90,78);
		break;
		case 2:
			set_color_profile_slot(get_player_color(player),0,29,33,91);
			set_color_profile_slot(get_player_color(player),1,205,247,247);
		break;
		case 3:
			set_color_profile_slot(get_player_color(player),0,121,173,100);
			set_color_profile_slot(get_player_color(player),1,187,155,143);
		break;
		case 4:
			set_color_profile_slot(get_player_color(player),0,168,87,143);
			set_color_profile_slot(get_player_color(player),1,230,218,25);
		break;
		case 5:
			set_color_profile_slot(get_player_color(player),0,108,155,113);
			set_color_profile_slot(get_player_color(player),1,228,225,173);
		break;
		case 6:
			set_color_profile_slot(get_player_color(player),0,255,255,228);
			set_color_profile_slot(get_player_color(player),1,128,96,28);
		break;
		case 7:
			set_color_profile_slot(get_player_color(player),0,214,215,244);
			set_color_profile_slot(get_player_color(player),1,217,135,205);
		break;
		case 8:
			set_color_profile_slot(get_player_color(player),0,180,230,230);
			set_color_profile_slot(get_player_color(player),1,251,250,252);
		break;
		case 9:
			set_color_profile_slot(get_player_color(player),0,253,253,253);
			set_color_profile_slot(get_player_color(player),1,200,182,226);
		break;
		case 10:
			set_color_profile_slot(get_player_color(player),0,59,73,135);
			set_color_profile_slot(get_player_color(player),1,182,244,48);
		break;
		case 11:
			set_color_profile_slot(get_player_color(player),0,65,54,80);
			set_color_profile_slot(get_player_color(player),1,0,255,247);
		break;
		case 12:
			set_color_profile_slot(get_player_color(player),0,175,145,200);
			set_color_profile_slot(get_player_color(player),1,157,212,84);
		break;
		case 13:
			set_color_profile_slot(get_player_color(player),0,50,54,40);
			set_color_profile_slot(get_player_color(player),1,126,167,87);
		break;
		case 14:
			set_color_profile_slot(get_player_color(player),0,58,210,228);
			set_color_profile_slot(get_player_color(player),1,200,126,30);
		break;
		}
		}
	}
	if my_hitboxID.hbox_num == 2 {
		if get_player_team( hit_player_obj.player ) == get_player_team( player ) {
			take_damage(hit_player_obj.player, -1, -5)
			hit_player_obj.state = PS_IDLE
		}
	}
}

if my_hitboxID.attack == AT_NSPECIAL_ORI { //Bash
	if my_hitboxID.hbox_num == 1 {
		window = 4;
		window_timer = 0;
		grabbedid = hit_player_obj;
		bash_angle = -1
		reset_hitbox_value(AT_NSPECIAL_ORI,2,HG_ANGLE)
		destroy_hitboxes();
	}
}

if my_hitboxID.attack == AT_USPECIAL {
	if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2 or my_hitboxID.hbox_num == 3 {
		hit_player_obj.should_make_shockwave = false;
	}
}

// if (my_hitboxID.attack == AT_FAIR) and ((my_hitboxID.hbox_num == 1) or (my_hitboxID.hbox_num == 2)) { //Make sure it links
	// if (vsp > -5) {
		// vsp -= 2
	// }
// }

if (my_hitboxID.attack == AT_NSPECIAL_SYLV) and (my_hitboxID.hbox_num == 1) {
	create_hitbox( AT_NSPECIAL_SYLV, 2, my_hitboxID.x, my_hitboxID.y )
}

if (my_hitboxID.attack == AT_NSPECIAL_ELLI) and (my_hitboxID.hbox_num == 1) {
	create_hitbox( AT_NSPECIAL_ELLI, 2, my_hitboxID.x, my_hitboxID.y )
}

if my_hitboxID.attack == AT_NSPECIAL_CLAI { //Grab and stuff
	if my_hitboxID.hbox_num == 1 {
		window = 3;
		window_timer = 0;
		hit_player_obj.grabbed = 1;
		grabbedid = hit_player_obj;
		destroy_hitboxes();
		djumps = 0
	}
}

if (my_hitboxID.attack == AT_NSPECIAL_MAY) {
	if (ds_list_find_index(marked_list, hit_player_obj) = -1) {
		ds_list_add(marked_list, hit_player_obj);
	}
}