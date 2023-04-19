// got_parried

if(hit_player_obj != self){
	if(my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num >= 2 || my_hitboxID.attack != AT_JAB){

		if(my_hitboxID.attack == AT_NSPECIAL){
			var angle3 = point_direction(my_hitboxID.x, my_hitboxID.y, x, y - 30);
			my_hitboxID.hsp = lengthdir_x(-24, angle3);
		    my_hitboxID.vsp = lengthdir_y(-24, angle3);
			my_hitboxID.transcendent = true;my_hitboxID.damage *= 2;
		}
		
		if(!runeA){
			with(obj_article1){
				if(player_id == other && player == other.player){
					state = 5;timer = 0;
				}
			}
		}
	}
}