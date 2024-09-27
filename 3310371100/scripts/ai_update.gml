//ai_update - called every frame for this character as a CPU

//attempt at making usher CPU slightly more competent

if (ai_recovering){
	if (state==PS_ATTACK_AIR && attack==AT_USPECIAL){
		//if youre recovering... HOLD SPECIAL!!
		special_down = true;
		if ( place_meeting(x+(50*spr_dir), y, asset_get("par_block")) ){
			if (window>4){
				//WALLJUMP DANG IT! : the code
				jump_pressed = true;
			}
		}
		if (point_distance(x,y, ai_target.x,ai_target.y)<120){
			//if (ai_target.state==PS_ATTACK_AIR||ai_target.state==PS_ATTACK_GROUND){
				if (has_walljump){
					down_pressed = true;
					down_hard_pressed = true;
				}
				
			//}
		}
	}
    if (move_cooldown[AT_USPECIAL] > 0){
        // use Fspecial when Uspecial is on cooldown
        if ((has_walljump || y < get_stage_data(SD_Y_POS) + 16) && y > get_stage_data(SD_Y_POS) - 32){
            up_down = false;
            special_pressed = true;
        }
    }
}

//anyways heres the fix
if (get_training_cpu_action() == CPU_FIGHT){

//uh oh! someone's right nearby when im just out of pratland/parrystun? i suspect a shenanagan afoot!
//perhaps they'll try to parry me again? for fun?
//let's roll
if (prev_state==PS_PRATLAND&&state_timer<3){
	//print("THIS?")
	if (point_distance( x, 0, ai_target.x, 0 )<90){
		if (y+(0)-50 < ai_target.y && ai_target.y < y+(0)+50){
			if (state_cat==SC_GROUND_NEUTRAL){
				//print("THIS!!")
				set_state(PS_PARRY_START)
				if (get_gameplay_time()%2==0){//i do this because im lazy to figure out rng
					right_pressed = 6;
					right_down = true;
				}else{
					left_pressed = 6;
					left_down = true;
				}
			}
		}
	}
}else if (ai_target.state==PS_PRATLAND&&ai_target.was_parried&&get_player_damage( ai_target.player )>70){//when opponent is parried. this took me more time than i should like wtf
	//print("YO LOOK AT THIS PARRIED GUY "+string(ai_target.state_timer))
	//ready_to_attack = false;
	//ai_going_into_attack = false;
	//ai_attack_time = 60;
	if (ai_target.state_timer<parry_lag-(11+5)){
		var fstr_dist = 40;
		if (x+(fstr_dist*spr_dir)-70 < ai_target.x && ai_target.x < x+(fstr_dist*spr_dir)+70){
			if (y+(-25)-30 < ai_target.y && ai_target.y < y+(-25)+30){
				//print("LETS GET EM")
				if (state_cat==SC_GROUND_NEUTRAL){
					set_attack( AT_FSTRONG )
				}
				
			}
		}
	}//statetimer
		if (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR){
			if (attack==AT_FSTRONG){
				if (window==1){//fstr startup after charge is about 10 frames rn
					if (ai_target.state_timer>parry_lag-12){
						//print("UH OH i should release this")
						attack_down = false;
						strong_down = false;
					}else{
						attack_down = true;
						strong_down = true;
					}
				}
			}
		}
	
}else{

if (ai_target.state==PS_HITSTUN||(ai_target.prev_state==PS_HITSTUN&&state_timer<6)){
	
	if (attack==AT_NAIR){
		if (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR){
			var nair_dist = 20;
			if (x+(nair_dist*spr_dir)-30 < ai_target.x && ai_target.x < x+(nair_dist*spr_dir)+30){
				attack_pressed = true;
				attack_down = true;
			}
		}
	}
	//uspecial
	if (x+(0*spr_dir)-20 < ai_target.x && ai_target.x < x+(0*spr_dir)+20){
		if (y+(-80)-80 < ai_target.y && ai_target.y < y+(-80)+80){
			//print("yuh")
			if (state_cat==SC_GROUND_NEUTRAL||state_cat==SC_AIR_NEUTRAL){
				if (get_player_damage( ai_target.player )>100){
					set_attack( AT_USPECIAL )
				}
			}
		}
	}
	
	var utilt_dist = 20;
	if (x+(utilt_dist*spr_dir)-40 < ai_target.x && ai_target.x < x+(utilt_dist*spr_dir)+40){
		if (y+(-70)-30 < ai_target.y && ai_target.y < y+(-70)+30){
			if (attack==AT_UTILT){ //if already
				//print("feeling like..utilt")
				if (state_cat==SC_GROUND_NEUTRAL){
					if (get_gameplay_time()%5==0){
						set_attack( AT_UTILT )
					}else{
						set_state( PS_JUMPSQUAT )
					}
				}
			}
			if (state_cat==SC_GROUND_NEUTRAL){
				if (get_gameplay_time()%3==0){
					set_attack( AT_UTILT )
				}
			}
		}
	}
	var fair_dist = 50;
	if (x+(fair_dist*spr_dir)-70 < ai_target.x && ai_target.x < x+(fair_dist*spr_dir)+70){
		if (y+(-40)-80 < ai_target.y && ai_target.y < y+(-40)+60){
			if (state_cat==SC_AIR_NEUTRAL&&!(state==PS_FIRST_JUMP&&state_timer<2)){
				//print("FAIR?")
				if (get_player_damage( ai_target.player )>80){
					set_attack( AT_FAIR )
				}
			}
		}
	}
	var uair_dist = 30;
	if (x+(uair_dist*spr_dir)-60 < ai_target.x && ai_target.x < x+(uair_dist*spr_dir)+60){
		if (y+(-60)-40 < ai_target.y && ai_target.y < y+(-60)+50){
			if (state_cat==SC_AIR_NEUTRAL&&!(state==PS_FIRST_JUMP&&state_timer<3)){
				//print("uair?")
					set_attack( AT_UAIR )
			}
		}
	}
	var dsp_dist = 20;
	if (x+(dsp_dist*spr_dir)-20 < ai_target.x && ai_target.x < x+(dsp_dist*spr_dir)+20){
		if (y+(-15)-20 < ai_target.y && ai_target.y < y+(-15)+20){
			//print("dsp?")
			if (state_cat==SC_GROUND_NEUTRAL || state_cat==SC_AIR_NEUTRAL){
				set_attack( AT_DSPECIAL )
			}
		}
	}
	
	var fstr_dist = 40;
	if (x+(fstr_dist*spr_dir)-60 < ai_target.x && ai_target.x < x+(fstr_dist*spr_dir)+60){
		if (y+(-30)-20 < ai_target.y && ai_target.y < y+(-30)+20){
			//print("fstr?")
			if (state_cat==SC_GROUND_NEUTRAL){
				set_attack( AT_FSTRONG )
			}
		}
	}
	var fsp_dist = 60;
	if (x+(fsp_dist*spr_dir)-70 < ai_target.x && ai_target.x < x+(fsp_dist*spr_dir)+70){
			//print("..")
		if (y+(-30)-60 < ai_target.y && ai_target.y < y+(-30)+60){
			//print("yeps?!")
			/*down_pressed = false;
			up_pressed = false;
			if (spr_dir==1){right_pressed = true;}else{left_pressed = true;};
			attack_pressed = false;
			special_pressed = true;
			special_down = true;
			jump_pressed = true;*/
			if (state_cat==SC_GROUND_NEUTRAL||state_cat==SC_AIR_NEUTRAL){
			//print("YEA?!")
				if (!free){
					if (state!=PS_JUMPSQUAT){
						set_state( PS_JUMPSQUAT )
					}
				}else{
					if (state!=PS_JUMPSQUAT&&(state==PS_FIRST_JUMP&&state_timer>2)){
						set_attack( AT_FSPECIAL )
					}
				}
			}
			
		}
		
	}
	
}//hitstun

//out of nowhere
if (ai_target.state!=PS_PARRY_START&&!(ai_target.state==PS_PARRY&&ai_target.state_timer<4)){
	if (!(ai_target.state==PS_AIR_DODGE&&ai_target.window==2)){
		if (!((ai_target.state==PS_ROLL_BACKWARD||ai_target.state==PS_ROLL_FORWARD)&&(ai_target.window==2||ai_target.invincible==true))){
var dsp_dist = 40;
if (x+(dsp_dist*spr_dir)-30 < ai_target.x && ai_target.x < x+(dsp_dist*spr_dir)+30){
	if (y+(-15)-20 < ai_target.y && ai_target.y < y+(-15)+20){
		//print("dsp?")
		if (state_cat==SC_GROUND_NEUTRAL || state_cat==SC_AIR_NEUTRAL){
					set_attack( AT_DSPECIAL )
		}
		
	}
}
var utilt_dist = 10;
if (x+(utilt_dist*spr_dir)-30 < ai_target.x && ai_target.x < x+(utilt_dist*spr_dir)+30){
	if (y+(-70)-40 < ai_target.y && ai_target.y < y+(-70)+40){
		if (state_cat==SC_GROUND_NEUTRAL){
			//print("utilt?")
			if (get_gameplay_time()%3==0){
				set_attack( AT_UTILT )
			}
		}
	}
}
var uair_dist = 30;
if (x+(uair_dist*spr_dir)-60 < ai_target.x && ai_target.x < x+(uair_dist*spr_dir)+60){
	if (y+(-60)-40 < ai_target.y && ai_target.y < y+(-60)+50){
		if (state_cat==SC_AIR_NEUTRAL&&!(state==PS_FIRST_JUMP&&state_timer<3)){
			//print("uair?")
			set_attack( AT_UAIR )
		}
	}
}
var dtilt_dist = 60;
if (x+(dtilt_dist*spr_dir)-60 < ai_target.x && ai_target.x < x+(dtilt_dist*spr_dir)+60){
	if (y+(-15)-40 < ai_target.y && ai_target.y < y+(-15)+60){
		if (state_cat==SC_GROUND_NEUTRAL){
			//print("dtilt! "+string(state_timer))
			set_attack( AT_DTILT )
		}else if(state==PS_DASH){
			set_state(PS_CROUCH)
		}
	}
}
		}
	}
}//out of nowhere

}//weird else from afar

if (ai_target.ushr_rainclouded){
	var fstr_dist = 30;
	if (x+(fstr_dist*spr_dir)-50 < ai_target.x && ai_target.x < x+(fstr_dist*spr_dir)+50){
		if (y-80 > ai_target.y){
			//print("fstr?")
			if (state_cat==SC_GROUND_NEUTRAL){
				set_attack( AT_FSTRONG )
			}
		}
	}
}

if (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR){
	
	if (attack==AT_FSPECIAL){
		var fsp_two_dist = 80;
		if (x+(fsp_two_dist*spr_dir)-30 < ai_target.x && ai_target.x < x+(fsp_two_dist*spr_dir)+30){
			//print("yeah")
			special_pressed = true;
			special_down = true;
		}
	}
	
}

}//training cpu action fight
