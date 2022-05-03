//ai_update - called every frame for this character as a CPU

if(temp_level == 9){
	ai_attack_time = 0;
}

if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}
if(ai_recovering && attack == AT_USPECIAL){
	with(oPlayer){
		if(point_distance(x, y, other.x, other.y) > 100){
			other.special_down = true;
		}else{
			other.special_down = false;
		}
	}
}