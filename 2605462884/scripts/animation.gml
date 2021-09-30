/*switch (state){
    case PS_IDLE:
        sprite_index = sprite_get("main")
		image_index = 0;
    break;
    
    default: break;
}*/

if (state==PS_SPAWN){
	if (state_timer<50){sprite_index = asset_get("empty_sprite")}else{sprite_index = body;}
}else if (state==PS_ROLL_BACKWARD||state==PS_ROLL_FORWARD){
	if (window==1){sprite_index = asset_get("empty_sprite")}else{sprite_index = body; image_index = 1}
}else if (state==PS_TECH_BACKWARD||state==PS_TECH_FORWARD){
	if (window!=2){sprite_index = asset_get("empty_sprite")}else{sprite_index = body; image_index = 1}
}else{sprite_index = body;}

if (state==PS_IDLE||state==PS_SPAWN||state==PS_RESPAWN){
	image_index = 0;
}

//walk cycle is 0.4s (24 frames) //I BELIEVE THIS IS STILL PROBABLY FALSE
if (state==PS_DASH||state==PS_WALK){
	var dur = 60*0.2 //(seconds)
	image_index = ((ceil((state_timer+1)/dur)%2)==0)?0:1;
	if (boost_duration>0){
		if (boost_selected==3){
			spr_angle = ((state_timer%360)*8)*(spr_dir*-1);//*6
		}
	}
}
if (state==PS_DASH_START||state==PS_DASH_STOP||state==PS_DASH_TURN||state==PS_WALK_TURN){
	image_index = 1;
}
if (state==PS_FIRST_JUMP||state==PS_DOUBLE_JUMP){
	image_index = (vsp>1)?5:4;
}
if (state==PS_WALL_JUMP||state==PS_WALL_TECH){
	if (state_timer<4){
		image_index = 0;
	}else{ image_index = (vsp>1)?5:4; }
}
if (state==PS_IDLE_AIR){
	image_index = (vsp>1)?5:4;
}
if (state==PS_JUMPSQUAT){
	image_index = 3;
}
if (state==PS_TECH_GROUND){
	if (window==1){ image_index = 3; }else{ image_index = 2; }
}
if (state==PS_LAND||state==PS_LANDING_LAG||state==PS_PRATLAND){
	image_index = 6;
}
if (state==PS_CROUCH){
	image_index = 2;
}
if (state==PS_PARRY_START || state==PS_PARRY){
	if ((window==1)||(window==2&&window_timer<9)){
		image_index = 9;
	}else{ image_index = 8; }
}
if (state==PS_WAVELAND){
	image_index = 7;
}
if (state==PS_AIR_DODGE){
	image_index = 4;
}
if (state==PS_HITSTUN||state==PS_HITSTUN_LAND){
	image_index = 10;
}
if (state==PS_WRAPPED||state==PS_FROZEN){
	image_index = 11;
}
if (state==PS_PRATFALL){
	image_index = 5;
}
if (state==PS_TUMBLE){
	image_index = 5;
	var dur = 60*0.15 //(seconds)
	spr_angle = (90*(ceil((state_timer+1)/dur)%4))*spr_dir;
}
if (state==PS_TUMBLE||((state==PS_DASH||state==PS_WALK) && boost_duration>0 && boost_selected==3 )){
	sprite_change_offset(body_filename, 78, 114-28);
	draw_y = -28
}else{
	sprite_change_offset(body_filename, 78, 114);
	spr_angle = 0;
	draw_y = 0
}

if (state==PS_DASH||state==PS_WALK){
	var dur = 60*0.2 //(seconds)
	image_index = ((ceil((state_timer+1)/dur)%2)==0)?0:1;
}


if (state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND){
	var check = get_attack_value(attack, AG_PD_NOT_FORCE_BODY_CELL);
	if (check == 0){
		var cell = get_window_value(attack, window, AG_BODY_CELL) - 1;
		image_index = cell;
	}
	if (check == 1){
		//idk check for nair or jab or somethin
		if (attack==AT_JAB){
			if (free){
				image_index = (vsp>1)?5:4;
			}else{
				if (hsp == 0){
					image_index = 0;
				}else{
					var dur = 60*0.2 //(seconds)
					image_index = ((ceil((state_timer+1)/dur)%2)==0)?0:1;
				}
			}
			
			if (jab_alternative){
				if (window==1){
					image_index = 14;
				}else{
					if (free){
						image_index = 5;
					}else{
						if (hsp == 0){
							image_index = 0;
						}else{
							var dur = 60*0.2 //(seconds)
							image_index = ((ceil((state_timer+1)/dur)%2)==0)?0:1;
						}
					}
				}
			}
		}
		if (attack==AT_NAIR){
			if (free){
				image_index = (vsp>1)?5:4;
			}
		}
		if (attack==AT_USPECIAL){
			if (window==4){
				if (free){
					image_index = (vsp>1)?5:4;
				}
			}else{
				image_index = 39;
			}
		}
	}
}








//enemy override
with(asset_get("oPlayer")){
	if (id != other.id){
		if (exp_custom_hurt){
			if (state==PS_HITSTUN){
				//spr_angle = 
				sprite_index = asset_get("empty_sprite")
			}
		}
	}
}









