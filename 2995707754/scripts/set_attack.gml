//set_attack.gml
if attack == AT_USPECIAL {
	if flight_mode == 0 { flight_mode = 1; } else {
		flight_mode = 0; 
	}
}

animation_timer = 0;
ice_form_vfx_timer = 0;
ice_lance_cancel = 0;

frost_missile_offset = 1;
if attack == AT_DSPECIAL && move_cooldown[AT_DSPECIAL] == 0 {
	target_dist = -1;

	var nearest_player = noone;
	var nearest_distance = -1;
	var target_x = -1;
	var target_y = -1;
	var petshop_id = get_player_team(player);
	with oPlayer {
		if self != other {
			if (nearest_player == noone || point_distance(x, y, other.x, other.y) < nearest_distance) && get_player_team(player) != get_player_team(petshop_id) {
				nearest_player = self;
				nearest_distance = point_distance(x, y, other.x, other.y);
				target_x = x;
				target_y = y;
			} 
		}
	}

	frost_missile_target_x = target_x;
	frost_missile_target_y = target_y-32;
	spawn_dust_fx( frost_missile_target_x, frost_missile_target_y, sprite_get("frost_missile_crosshair"), 40 );
	missile_spr_dir = spr_dir;
}

if attack == AT_FSPECIAL && flight_mode == 1 { flight_mode = 0; }

if attack == AT_DATTACK { attack = AT_FTILT; }
if flight_mode == 1 {
	if !(attack == AT_USPECIAL || attack == AT_BAIR || attack == AT_DAIR || attack == AT_FSTRONG) {
		flight_meter -= 5;
	} else {
		if attack == AT_BAIR || attack == AT_DAIR {
			flight_meter -= 1;
		}
	}
	if attack == AT_JAB { attack = AT_NAIR; }
	if attack == AT_UTILT { attack = AT_UAIR; }
	if attack == AT_DTILT { attack = AT_DAIR; }
	if attack == AT_FTILT { attack = AT_FAIR; }
} else {
	if attack == AT_DTILT && (left_down || right_down) { attack = AT_DSPECIAL_2; }
}

if up_strong_pressed { attack = AT_USTRONG; flight_mode = 0; if joy_dir > 90 && joy_dir < 270 { spr_dir = -1 } else { if joy_dir < 90 && joy_dir > -90 { spr_dir = 1; } }  } else {
	if down_strong_pressed { attack = AT_DSTRONG; } else {
		if left_strong_pressed || right_strong_pressed { attack = AT_FSTRONG; if joy_dir > 90 && joy_dir < 270 { spr_dir = -1 } else { if joy_dir < 90 && joy_dir > -90 { spr_dir = 1; } } }
	}
}