// hitbox_update.gml
// Called every frame a hitbox is out
// From the perspective of a hitbox

switch(attack){

	case AT_DSPECIAL:
	
		if (player_id.mim_wisp != noone){
			if (hbox_num == 1){
				x = player_id.mim_wisp.x;
				y = player_id.mim_wisp.y - 40;
			}
		}
		
	break;

	case AT_NSPECIAL:
	
		if(vsp >= 2){
			shadow_ball_fall = true;
		}
		
		if(vsp <= -2){
			shadow_ball_fall = false;
		}

		if(shadow_ball_fall){
			vsp = clamp(vsp - 0.45, -2.5, 2.5);		
		}
		else {		
			vsp = clamp(vsp + 0.70, -2.5, 2);		
		}

		if (hitbox_timer == -25){
			is_new_ball = true;
		}
	

	break;
}