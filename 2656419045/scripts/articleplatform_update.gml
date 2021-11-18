// instance_destroy(); exit;

switch(variant) {
	case "ice block projectile platform":
		if(!instance_exists(attach_to)) {
			instance_destroy(); exit;
		}
		
		x = attach_to.x; y = attach_to.y - attach_height;
		
		with(oPlayer) if(id != other.attach_to.contains_player) {
			var is_on_other = false;
			if(free) {
				if(neo_data.tracked_by_floor == other) {
					neo_data.tracked_by_floor = noone;
					
					if(vsp < 0 || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP || !place_meeting(x, y + 2 + other.attach_to.vsp, other)) {
						//Jumping off the ice while it's falling has less influence over your jump velocity
						if(other.attach_to.vsp <= 0) {
							if(abs(hsp) < abs(hsp + other.attach_to.hsp)) hsp += other.attach_to.hsp;
							vsp += other.attach_to.vsp;
						}
						else hsp = sign(hsp) * max(abs(hsp), abs(hsp + 0.75 * other.attach_to.hsp));
					}
					else is_on_other = true;
				}
				else if(!place_meeting(x, y - 12, other) && place_meeting(x, y + 12, other))
					is_on_other = true;
			}
			else if(ground_type == 2 && !place_meeting(x, y - 4, other) && place_meeting(x, y + 2, other))
				is_on_other = true;
			
			if(is_on_other) {
				//Absorb velocity that matches the ice block's
				if(neo_data.tracked_by_floor != other)
					hsp = sign(hsp) * min(abs(hsp), abs(hsp - other.attach_to.hsp));
				
				fall_through = false;
				x += (other.attach_to.hsp > 0)?floor(other.attach_to.hsp):ceil(other.attach_to.hsp);
				neo_data.moving_plat_subpixel += abs(other.attach_to.hsp % 1);
				if(neo_data.moving_plat_subpixel >= 1) {
					neo_data.moving_plat_subpixel--;
					x += sign(other.attach_to.hsp);
				}
				y = other.y + other.attach_to.vsp;
				free = false; ground_type = 2;
				neo_data.tracked_by_floor = other;
				other.attach_to.can_hit[player + (clone || custom_clone) * 10] = false;
				
				if(url == other.player_id.url) movetype_override = MOVESTATS_OBJ.ice;
			}
		}
		
		prev_x = x; prev_y = y;
	break;
	case "ice block projectile renderer":
		if(!instance_exists(attach_to)) {
			instance_destroy(); exit;
		}
	break;
}
