if (my_hitboxID.attack == AT_FSTRONG){
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.hsp = sign(my_hitboxID.hsp) * (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_HSPEED) + 20);
}

if (my_hitboxID.attack == AT_DSTRONG){
	my_hitboxID.hitbox_timer = 0;
}

if true{
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