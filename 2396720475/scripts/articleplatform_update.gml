// article1_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++

if (state_timer == 1 && state == 0){
	state = 1;
}

if (state == 1){

 	if (image_angle >= 270 || image_angle <= 90){
		image_angle = 0;
		x = x + 5;
	}
	else {
		image_angle = 180;
		x = x - 5;
	}

	vsp = 0;
	hsp = 0;
	
	state = 2;	
}

if (state == 2){


	if (instance_exists(player_id.Box)){
		with (player_id.Box){
			if (place_meeting(x, y, other)){
				other.canmove = true;
				
				other.stored_x = x - other.x;
				other.stored_y = y - other.y + 1;
				other.state = 3;
				other.state_timer = -240;
			}
		}
	}
	
	var self_temp = player_id.needleplatform_solid;
	
	with (oPlayer){
		if (player != other.player && url == other.player_id.url){
			if (instance_exists(Box)){
				with (Box){	
					if (place_meeting(x, y, self_temp)){
						self_temp.canmove = true;						
						self_temp.stored_x = x - self_temp.x;
						self_temp.stored_y = y - self_temp.y + 1;
						self_temp.state = 6;
						self_temp.state_timer = -240;
						self_temp.other_box = true;
					}
				}
			}

		}
	}
	
	if (place_meeting(x, y, asset_get("par_block")) && (!place_meeting(x, y, player_id.Box)) && !other_box){
		state = 5;
	}
	
	if (state_timer > 10){
		state = 4;
	}
}

if (state == 5){
	
	if (!place_meeting(x, y, asset_get("par_block")) && new_box && player_id.attack == AT_DSPECIAL && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
		state = 4;
	}

	if (!place_meeting(x, y, asset_get("par_block"))){
		state = 4;
	}
}

if (state == 3){ // Moves with Box

	if (canmove && new_box){
		state = 4;
	}
	
	if (instance_exists(player_id.movingbox) && canmove == true){
		if (standing){
			with(oPlayer){
				if (other.player_id.movingbox.vsp >= 19){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y + 20;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (other.player_id.movingbox.vsp >= 15 && other.player_id.movingbox.vsp < 19){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y + 15;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (other.player_id.movingbox.vsp >= 10 && other.player_id.movingbox.vsp < 15){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y + 10;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (other.player_id.movingbox.vsp >= 5.5 && other.player_id.movingbox.vsp < 10){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y + 5;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (other.player_id.movingbox.vsp >= 0 && other.player_id.movingbox.vsp < 5.5){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (other.player_id.movingbox.vsp < 0 && other.player_id.movingbox.vsp > -10){
					if ((place_meeting(x, y - 3, other) && y < other.y + 10) || (point_distance( x, y, other.x, other.y) < 30 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y - 3;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}
				}

				if (other.player_id.movingbox.vsp <= -10){
					if ((place_meeting(x, y, other) && y < other.y + 5) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y - 13;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}
				}
			}
		}
		
		if (image_angle == 0){
			x = player_id.movingbox.x - stored_x - 5;
		}
		else{
			x = player_id.movingbox.x - stored_x + 5;		
		}
		
		y = player_id.movingbox.y - stored_y;
	}
	
	if (!instance_exists(player_id.movingbox) && !instance_exists(player_id.Box)){
		state = 4;
	}
	
	if (instance_exists(player_id.Box)){
		if (image_angle == 0){
			x = player_id.Box.x - stored_x - 5;
		}
		else{
			x = player_id.Box.x - stored_x + 5;		
		}
		
		y = player_id.Box.y - stored_y;		
	}
}

if (state == 6){ // Moves with Other Tomo Box

	if (canmove && new_box){
		state = 4;
	}
	
	
	with (oPlayer){
		if (player != other.player && url == other.player_id.url){
			if (instance_exists(Box)){
				var oBox = Box;
			}
			else {
				var oBox = noone;
			}

			if (instance_exists(movingbox)){
				var oMovBox = movingbox;
			}
			else {
				var oMovBox = noone;
			}
		}
	}
	
	if (instance_exists(oMovBox) && canmove == true){
		if (standing){
			with(oPlayer){
				if (oMovBox.vsp >= 19){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y + 20;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (oMovBox.vsp >= 15 && oMovBox.vsp < 19){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y + 15;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (oMovBox.vsp >= 10 && oMovBox.vsp < 15){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y + 10;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (oMovBox.vsp >= 5.5 && oMovBox.vsp < 10){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y + 5;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (oMovBox.vsp >= 0 && oMovBox.vsp < 5.5){
					if ((place_meeting(x, y - 3, other) && y < other.y + 15) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}				
				}
				if (oMovBox.vsp < 0 && oMovBox.vsp > -10){
					if ((place_meeting(x, y - 3, other) && y < other.y + 10) || (point_distance( x, y, other.x, other.y) < 30 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y - 3;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}
				}

				if (oMovBox.vsp <= -10){
					if ((place_meeting(x, y, other) && y < other.y + 5) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
						if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
							free = false;
							y = other.y - 13;
						}
						
						if ((state_cat != SC_AIR_COMMITTED) && state != PS_DASH_START){
							if (other.image_angle == 0){
								x = other.x + 25;
							}
							if (other.image_angle == 180){
								x = other.x - 25;
							}
						}
						
					}
				}
			}
		}
	}
	
	if (instance_exists(oMovBox) && canmove == true){
		if (image_angle == 0){
			x = oMovBox.x - stored_x - 5;
		}
		else{
			x = oMovBox.x - stored_x + 5;		
		}
		
		y = oMovBox.y - stored_y;
	}
	
/*
	if (!instance_exists(oMovBox) && !instance_exists(oBox)){
		state = 4;
	}
*/	

	if (instance_exists(oBox)){
		if (image_angle == 0){
			x = oBox.x - stored_x - 5;
		}
		else{
			x = oBox.x - stored_x + 5;		
		}
		
		y = oBox.y - stored_y;		
	}
}


if (state == 4){
	sound_play(sound_get("needle1_sfx"));
	instance_destroy();
	exit;
}

if (state_timer == 400){
	sound_play(sound_get("needle1_sfx"));
	instance_destroy();
	exit;
}

if ((state_timer < 400 && state_timer > 395) || (state_timer < 390 && state_timer > 385) || (state_timer < 380 && state_timer > 375) || (state_timer < 370 && state_timer > 365) || (state_timer < 360 && state_timer > 355) || (state_timer < 350 && state_timer > 345)){
	image_alpha = 0;
}

if ((state_timer < 395 && state_timer > 390) || (state_timer < 385 && state_timer > 380) || (state_timer < 375 && state_timer > 370) || (state_timer < 365 && state_timer > 360) || (state_timer < 355 && state_timer > 350) || (state_timer < 345 && state_timer > 340)){
	image_alpha = 1;
}

if (y < 0 - 300 || y > room_height + 300 || x > room_width + 300 || x < - 300 ){
	sound_play(sound_get("needle1_sfx"));
	instance_destroy();
	exit;
}