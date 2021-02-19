//got_parried - called when an opponent parries your attack
if hit_player_obj == id {
	invince_time = floor(invince_time/4)
	
} 

	if my_hitboxID.attack == AT_EXTRA_1 && (my_hitboxID.hbox_num == 20 or my_hitboxID.hbox_num == 21) {
		
//		my_hitboxID.bombowner.hsp *= -1;
//		my_hitboxID.bombowner.vsp *= -1;

		if hit_player_obj == id {
			my_hitboxID.bombowner.hsp *= -1;
			my_hitboxID.bombowner.vsp *= -1;	
			my_hitboxID.bombowner.fuse = clamp(my_hitboxID.bombowner.fuse, 20, 60)			
		} else {
			//var dis = point_direction(my_hitboxID.bombowner.x, my_hitboxID.bombowner.y, x, y-char_height)/18
			my_hitboxID.bombowner.fuse = clamp(my_hitboxID.bombowner.fuse, 20, 60)
			my_hitboxID.bombowner.hitboxed = 0;
			var ang = point_direction(my_hitboxID.bombowner.x, my_hitboxID.bombowner.y, x, y-char_height*2)
			my_hitboxID.bombowner.hsp = lengthdir_x(18, ang)
			my_hitboxID.bombowner.vsp = lengthdir_y(18, ang)+min(0, y-hit_player_obj.y)*0.03
			//my_hitboxID.bombowner.gravity_speed = 0;
			my_hitboxID.bombowner.pop_on_land = 1;
			if my_hitboxID.bombowner.type == 3 {
				my_hitboxID.bombowner.pop_on_land = 0;
				my_hitboxID.bombowner.fuse = 0;
			}
			print_debug("Angle is "+string(ang)+", hsp "+string(my_hitboxID.bombowner.hsp)+", vsp "+string(my_hitboxID.bombowner.vsp))
		}
	}
/*	
	if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num != 8 {
		var parx = hit_player_obj.x;
		var parid =  hit_player_obj.player;
		with (obj_article1) {
			if player_id == other.id {
				hsp = sign(x - parx) * 5;
			}
		}
	}
*/

