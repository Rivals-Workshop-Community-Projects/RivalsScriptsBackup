//hit_player.gml
if (my_hitboxID.attack == AT_NSPECIAL) {
        old_hsp = hsp/2;
        grab_vfx = spawn_hit_fx(x+36*spr_dir, y-42, grab_fx);
        grab_vfx.depth = depth - 1	
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && was_parried == false && hit_player_obj.clone == false)
                {
		destroy_hitboxes();
		attack_end();
		if (!free) set_attack(AT_NSPECIAL2);
		else set_attack(AT_NSPECIAL2AIR);
		if (!instance_exists(grabbed_player_obj)) grabbed_player_obj = hit_player_obj;
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y, hit_player_obj.x, hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) grabbed_player_obj = hit_player_obj; 
		}
	}
}
