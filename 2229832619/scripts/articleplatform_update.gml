//???

var reduce = 0;
if (player_id.state==PS_ATTACK_AIR || player_id.state==PS_ATTACK_GROUND){
	if (player_id.attack==AT_DSPECIAL){
		//8,9,10 is start
		if (player_id.window==8||player_id.window==9||player_id.window==10){
			clamp(state_timer++,0,20);
			image_alpha = ease_cubeOut( 0, 50, state_timer, 20 )/100
		}
		if (player_id.window>10){ reduce = true; }
	}else{ reduce = true; }
}else{ reduce = true; }

if (image_alpha>0){
	if (reduce){
		//if (state_timer>0){
			//state_timer--;
		//}
		image_alpha-=0.1;
		state_timer = 0;
	}
}