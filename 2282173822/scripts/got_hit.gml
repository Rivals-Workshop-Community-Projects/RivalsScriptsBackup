if enemy_hitboxID.kb_scale > 0{
	var oldest = -1;
	var oldest_obj = noone;
	
	with(asset_get("obj_article1")){
	    if (player_id == other){
	        if (oldest == -1 || exist_timer > oldest){
	            oldest = exist_timer;
	            oldest_obj = id;
	        }
	    }
	}
	
    if oldest_obj != noone oldest_obj.should_die = true;
}