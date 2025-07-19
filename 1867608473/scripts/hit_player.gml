// Variable Definition
var hitmove = my_hitboxID.attack;

// Writes the id to grabbed


if (hitmove == AT_DSTRONG && window == 3 && !hit_player_obj.clone) {
	hit_player_obj.should_make_shockwave = false;
	for (var z = 0; z <= array_length(dstrong_hit_list); z++) {
		if dstrong_hit_list[z,0] == noone {
			dstrong_hit_list[z,0] = hit_player_obj;
			dstrong_hit_list[z,1] = hit_player_obj.x;
			break;
		}
	}
	//hit_player_obj.x = x;
}

// Universal Sai Sound Thing
sound_stop(asset_get("sfx_blow_weak1"));
sound_stop(asset_get("sfx_blow_weak2"));
sound_stop(asset_get("sfx_blow_medium1"));
sound_stop(asset_get("sfx_blow_medium2"));
sound_stop(asset_get("sfx_blow_medium3"));
sound_stop(asset_get("sfx_blow_heavy1"));
sound_stop(asset_get("sfx_blow_heavy2"));

switch my_hitboxID.sound_effect {
	case 643: //icehit weak
	case 644:
		if get_player_name(player) == "GIIK"{
			sound_play(sound_get("sfx_hit_giik"), false, 0, 1, 1.25);
		} else {
			sound_play(sound_get("hweak"));
		}
	break;

	case 647: //icehit medium
	case 648: //medium1 2 and 3
	case 649: //weak1 and weak2
		if get_player_name(player) == "GIIK"{
			sound_play(sound_get("sfx_hit_giik"));
		} else {
			sound_play(sound_get("hmed"));
		}
		//spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 40, 303 );
	break;

	case 654:
	case 655: //heavy1 and 2
		if get_player_name(player) == "GIIK"{
			sound_play(sound_get("sfx_hit_giik"), false, 0, 1, .75);
		} else {
			sound_play(sound_get("hstrong"));
		}
	break;

}