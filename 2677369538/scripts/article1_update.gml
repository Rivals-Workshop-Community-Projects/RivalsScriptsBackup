state_timer++;
depth = -10;

switch(state){
	case 0: //confetti spawns, flying out
	if(oPlayer.attack == AT_FSTRONG){image_angle = hsp*3;} else{
	image_angle = hsp;}
	sprite_index = sprite_get("confetti");
	image_index = visual_num;
	/*
	if (visual_num == 0){ image_index = 3;}
	if (visual_num == 1){ image_index = 1; }
	if (visual_num == 2){ image_index = 2; }
	if (visual_num == 3){ image_index = 3; }
	*/
	if (state_timer == 1){ uptime = random_func_2(9, 12, false); }
	if (state_timer < 2){ vsp = -4; hsp = movement * spr_dir / 5; }
	vsp += .1;
	//if ( y-1 > get_instance_y(asset_get("camera_obj")) || y+1 < get_instance_y(asset_get("camera_obj")) ){
	//if (y+300 < get_instance_y(asset_get("camera_obj"))){
		//y = y - stoptime; state = 1; state_timer = 0; 
		//x = x - stoptime2 * spr_dir; state = 1; state_timer = 0; 
		//x = x + stoptime; state = 1; state_timer = 0;
		//vsp = -stoptime;
	//}
	if (vsp > 1){
	//vsp = clamp(vsp, 10, 15);
	if (visual_check == state_timer ||
	visual_check == visual_num ||
	visual_check == movement ||
	visual_check == vsp ||
	visual_check == hsp ||
	visual_check == uptime ||
	visual_check == player_id.state_timer ||
	state_timer > 50){ state = 1; state_timer = 0; }
	}
	break;
	
	case 1: //confetti slowly falls down
	real_time++;
	if (state_timer < 30){
	if (turntime < 30){ turntime++; }
	hsp = ease_linear(1 * spr_dir + (visual_num * spr_dir), 1, turntime, 90);
	vsp = ease_linear(1 + visual_num, 0, turntime, 90);
	image_angle -= 1 * spr_dir;
	}
	if (state_timer >= 30){ spr_dir = -1 * spr_dir; turntime = 0; image_angle = 0; state_timer = 0; } 
	if (real_time > 50){ instance_destroy(); }
	break;
}