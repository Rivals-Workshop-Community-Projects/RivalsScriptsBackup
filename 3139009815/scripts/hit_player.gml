if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
	dspecial_stun_target = hit_player_obj;
	dspecial_stun_timer = dspecial_stun_timer_max;
} else {
	dspecial_stun_timer = 0;
}

if my_hitboxID.attack == AT_FSPECIAL {
	if my_hitboxID.hbox_num == 1 {
		var opp_distance = point_distance(x, y, hit_player_obj.x, hit_player_obj.y);
		var fspecial_wait = get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH);

		with hit_player_obj {
			hitstop = (opp_distance / other.fspecial_travel_speed) + fspecial_wait;
			old_hsp = 0;
			old_vsp = 0;
			hsp = 0;
			vsp = 0;
		}
		if attack == AT_FSPECIAL && !hit_player_obj.super_armor { // just in case the knife is parried or blocked by armour
			window = 5;
			window_timer = 0;
		}
	}
}

var soul_orb_size = 0
var create_soul_orb = false

switch (attack){
	case AT_DSTRONG:
	case AT_FTILT:
	case AT_BAIR:
	case AT_NSPECIAL:
		    lantern_charge += 10;
			soul_orb_size = 1;
			create_soul_orb = true;
	break;
	case AT_DSPECIAL:
		if (has_hit == true){
		    lantern_charge += 30;
			soul_orb_size = 1.5;
			create_soul_orb = true;
	    }
	break;
}
		if (has_hit == true){
		    lantern_charge += 1;
		}
		
switch (attack){
	case AT_USPECIAL:
		if my_hitboxID.hbox_num == 7 && has_hit == true {
			sound_play(resource_get("crow_caw"));
		}
	break;
	case AT_DSPECIAL:
		if has_hit == true{
			sound_play(asset_get("sfx_abyss_despawn"), false, false, 2, 0.9);
		}
	break;	
break;
}

if create_soul_orb {
	var soul_orb = create_hitbox(AT_JAB, 3, hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2);
	var soul_launch_dist = 80
	var attack_angle = my_hitboxID.kb_angle
	var soul_trail_length = soul_orb.length * .5
	with soul_orb {
		draw_xscale = soul_orb_size
		draw_yscale = soul_orb_size
		soul_start_x = x
		soul_start_y = y
		soul_goto_x = lengthdir_x(soul_launch_dist, attack_angle - 90) * other.spr_dir
		soul_goto_y = lengthdir_y(soul_launch_dist, attack_angle - 90)
		soul_last_positions_x = array_create(soul_trail_length, -99)
		soul_last_positions_y = array_create(soul_trail_length, -99)
	}
}

//hit_player_obj.hitstop = get_player_damage(hit_player_obj.player)/1;
//hit_player_obj.hitstop_full = hit_player_obj.hitstop;