timer ++;

image_alpha = 1 - (timer / 10); 

if (timer >= 20){
    instance_destroy();
}

if (player_id.attack == AT_FSPECIAL){
	if (player_id.lightspeed_dir == 1){
		y = (y - ((8 / timer) * 0.55))
	} else if (player_id.lightspeed_dir == 2){
		y = (y + ((8 / timer) * 0.55))
	}
	x = (x + ((20 / timer) * 0.55) * spr_dir)
}