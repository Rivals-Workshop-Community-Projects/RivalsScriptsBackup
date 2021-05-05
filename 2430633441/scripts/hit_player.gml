switch(my_hitboxID.attack) {
	default: break;
	case AT_FSTRONG: case AT_USTRONG:
	case AT_NAIR:
		var p = planet[max(my_hitboxID.hbox_num-1, 0)];
		var o = p.owner;
		if !o.hitpause {o.old_hsp = o.hsp; o.hsp = 0;}
		if !o.hitpause {o.old_vsp = o.vsp; o.vsp = 0;}
		o.hitpause = 1;
		o.hitstop_full = hit_player_obj.hitstop_full;
		o.hitstop = hit_player_obj.hitstop_full;
		break;
	case AT_FAIR: case AT_BAIR:
	if my_hitboxID.type == 1 break;
	
	
	var p = my_hitboxID.planet;
		planet_can_hit[hit_player_obj.player + hit_player_obj.clone*10] = 0;
		var o = p.owner;

		if !o.hitpause {o.old_hsp = o.hsp; o.hsp = 0;}
		if !o.hitpause {o.old_vsp = o.vsp; o.vsp = 0;}
		o.hitpause = 1;
		o.hitstop_full = hit_player_obj.hitstop_full;
		o.hitstop = hit_player_obj.hitstop_full;
	break;
	case AT_EXTRA_1:
		if my_hitboxID.effect == 70 && hit_player_obj.from_crouch {
			hit_player_obj.hitstop_full = 6;
			hit_player_obj.hitstop = 6;
			hit_player_obj.orig_knock = 0;
			hit_player_obj.should_make_shockwave = false;
			print("bonk")
		}
	break;
/*
	case AT_FSTRONG: case AT_USTRONG: case AT_EXTRA_1:
		var p = my_hitboxID.hbox_num-1
		planet[p].hitstop = hit_player_obj.hitstop_full;
		print_debug("planet "+string(p)+" hitstop is now "+string(planet[p].hitstop))
	break;
*/
}
if my_hitboxID.effect == 69 {
	grab_ids[grabbing] = hit_player_obj;
	grabbing++;
	hit_player_obj.synne_grab_x = hit_player_obj.x - x;
	window = 4;
	window_timer = 0;
}