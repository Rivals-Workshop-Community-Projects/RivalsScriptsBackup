//article1_update

coin_timer += 1;
if(bell_type2 == 0){
    sprite_index = sprite_get("bells_coin");
    bell_type = 0;
}else if(bell_type2 == 1){
    sprite_index = sprite_get("bells_bag");
    bell_type = 1;
}

if(free){
    if(vsp < 10){
        vsp += 0.2;
    }
    hsp *= 0.985;
}else{
    hsp = 0;
}

if(coin_timer >= 45){
	if(point_distance(x,y,player_id.x,player_id.y-25) < 35){
		if(bell_type == 0){
			player_id.bells += 100;
		}else{
			player_id.bells += 1000;
		}
		instance_destroy();
	    exit;
	}
}

if(x >= room_width || x <= -room_width || y >= room_height || y <= -room_height || coin_timer > 600){
    instance_destroy();
    exit;
}