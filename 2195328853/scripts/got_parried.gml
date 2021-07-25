// got_parried

if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.player == my_hitboxID.player_id.player){
    with(my_hitboxID.player_id){
	    if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	        was_parried = true;
	    }else if(!(state == PS_DEAD || state == PS_RESPAWN)){
		    if(free){
			    set_state(PS_PRATFALL)
		    }else{
			    set_state(PS_PRATLAND)
		    }
	    }
    }
    with(asset_get("obj_article1")){
        if(player_id == other){
            current_player = other.hit_player_obj.player;
            var angle3 = point_direction(other.x, other.y, x, y - 30);
    	    hsp = lengthdir_x(-20, angle3);
            vsp = lengthdir_y(-20, angle3);
        }
    }
}