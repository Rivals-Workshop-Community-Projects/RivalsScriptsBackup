//focus?

if (obj_stage_main.player_interest != -4){
	
	with (obj_stage_main.player_interest){
		other.x = (other.x + x)/2;
		other.y = (other.y + y)/2;
	}
	
}else{//if -4
	
	with (asset_get("oPlayer")){
		other.x = other.x + x;
		other.y = other.y + y;
	}
	x = x/(obj_stage_main.player_count+1);
	y = y/(obj_stage_main.player_count+1);
	
	
}

/*
x = mouse_x
y = mouse_y
*/