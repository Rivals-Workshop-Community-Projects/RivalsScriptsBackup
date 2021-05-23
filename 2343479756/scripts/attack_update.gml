// natsumi attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// natsumi step!

if (attack==AT_JAB){
	was_parried = false;
}

// iasa area
if (!was_parried){
if (attack==AT_JAB){
	if (window>=3){
		if (window==4||has_hit_player){
			iasa_script();
		}
		if (window==3){
			move_cooldown[AT_JAB] = 2;
		}
		
	}
}
if (attack==AT_FTILT){
	if (window==5){
		iasa_script();
	}
}
if (attack==AT_BAIR){
	if (window==5){
		iasa_script();
	}
}
if (attack==AT_UTILT){
	if (window==5){
		iasa_script();
	}
	if (window>=3 && !free){
		attack_end();
		if (has_hit_player){
			landing_lag_time = 4;
		}else{
			landing_lag_time = 8;
		}
		state=PS_LANDING_LAG;
		state_timer=0;
	}
}
if (attack==AT_DTILT){
	if (window==3){
		if (!hitpause){
			if (down_stick_pressed){
				window=4;
				window_timer=0;
			}
		}
	}
	if (window==7){
		//iasa_script(); //decided not to use iasa because cancelling it with crouch kinda wrecked my intention
		can_move = true;
		can_jump = true;
		can_attack = true;
		can_strong = true;
		can_special = true;
		can_shield = true;
		if (right_hard_pressed){set_state(PS_DASH_START);spr_dir=1;}; else if (right_down){set_state(PS_WALK);spr_dir=1;};
		if (left_hard_pressed){set_state(PS_DASH_START);spr_dir=-1;}; else if (left_down){set_state(PS_WALK);spr_dir=-1;};
	}
}
if (attack==AT_USPECIAL){
	if (window==5){
		can_wall_jump=true;
	}
}
}
//iasa area end


if (attack==AT_FSTRONG){
	if (window == 2 && window_timer == 11){
		shake_camera(8,3);
	}
}

if (attack==AT_FSPECIAL){
	fsp_did = true;
	//move_cooldown[AT_FSPECIAL] = 16;
	can_move = false;
	can_fast_fall = false;
	if (!hitpause){
		if (window==1){
			if (window_timer==1){
				nsp_hsp_storage = hsp;
				nsp_vsp_storage = vsp;
				pre_fsp_x = x;
			}
		}
		if (window==2){
			nsp_hsp_storage=nsp_hsp_storage/1.2;
			nsp_vsp_storage=nsp_vsp_storage/1.5;
			hsp=nsp_hsp_storage;
			vsp=nsp_vsp_storage;
		}
		if (window==4){
			draw_indicator = false;
			if (window_timer==12){
				var tmp_dist = get_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH);
				hsp = tmp_dist*spr_dir;
			}
		}
		if (window==5){
			if (window_timer==1){
				hsp = 0;
			}
		}
		if (window>=6){
			if (window==6&&window_timer>=6||window==7){
				can_wall_jump = true;
			}
		}
	}
}

if (attack==AT_DSPECIAL||attack==AT_DSPECIAL_AIR){
	move_cooldown[AT_DSPECIAL] = 30;
	move_cooldown[AT_DSPECIAL_AIR] = 30;
	if (window == 1){
		if (window_timer == 1){
			reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
			reset_attack_value(AT_DSPECIAL, AG_CATEGORY);
			reset_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS);
		}
		hsp = 2*spr_dir
		if (attack==AT_DSPECIAL_AIR){
			vsp = 1
		}
	}
	if (!was_parried){
		if (window==2||window==3||window==4){
			if (!free){
				/*
				if (window==2){
					hsp = (7-((window_timer/5)*1))*spr_dir
				}else{
					hsp = 6*spr_dir
				}
				*/
				if (window==2){
					hsp = (12-((window_timer/5)*2))*spr_dir
				}
				if (window==3){
					var w_l = get_window_value(attack, 3, AG_WINDOW_LENGTH);
					hsp = (ease_linear( 10, 5, window_timer, w_l ) * spr_dir)
				}
				if (window==4){
					var w_l = get_window_value(attack, 4, AG_WINDOW_LENGTH);
					hsp = (ease_linear( 5, 0, window_timer, w_l ) * spr_dir)
				}
				vsp = 0
			}
			if (attack==AT_DSPECIAL_AIR){
				if (window==2){
					hsp = (12-((window_timer/5)*2))*spr_dir
				}
				if (window==3){
					var w_l = get_window_value(attack, 3, AG_WINDOW_LENGTH);
					hsp = (ease_linear( 10, 5, window_timer, w_l ) * spr_dir)
				}
				if (window==4){
					var w_l = get_window_value(attack, 4, AG_WINDOW_LENGTH);
					hsp = (ease_linear( 5, 0, window_timer, w_l ) * spr_dir)
				}
				
				vsp = 3
			}
		}
		if (window == 5){
			var w_l = get_window_value(attack, 5, AG_WINDOW_LENGTH);
			hsp = ease_linear( 4, 0, window_timer, w_l ) * spr_dir
			if (attack==AT_DSPECIAL_AIR){
				vsp = 2
			}
		}
	}//wasparried
	
	if (window == 6){
		if (!hitpause){
			var w_l = get_window_value(attack, 6, AG_WINDOW_LENGTH);
			hsp = (ease_quadOut( -12, 0, window_timer, w_l ) * spr_dir) + dsp_target.hsp
		}
		if (window_timer>=15){
			iasa_script();
		}
		can_move = true;
		can_fast_fall = true;
	}else{
		can_move = false;
		can_fast_fall = false;
	}
}

if (attack==AT_USPECIAL){
	usp_did = true;
	fall_through = true;
	can_fast_fall = false;
	if (window = 2){
		if (window_timer = 1){
			var CAR = instance_create( x-(10*spr_dir), y+8, "obj_article1" )
			CAR.player_id = id;
			CAR.player = player;
			CAR.spr_dir = spr_dir*-1;
		}
	}
}

if (attack==AT_NSPECIAL){
	//set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 25);
	//set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -78);
	if (window = 3){
		if (window_timer = 1){
			spawn_hit_fx( x+(25*spr_dir), y-78, 113 )
		}
	}
	if (!fsp_did&&!usp_did){
		hsp = clamp(hsp,-4,4)//5
		vsp = clamp(vsp,-60,5)
	}
}

if (attack==AT_TAUNT){
	if (window==3 && (taunt_down || state_timer < 70)){
		window = 2;
		window_timer = 0;
	}
	if (window==2 && (!taunt_down && state_timer >= 70)){
		window = 4;
		window_timer = 0;
	}
}

if (attack==AT_DATTACK){
	if (window==1){
		if (window_timer==1){
			reset_attack_value(AT_DATTACK, AG_CATEGORY);
		}
		if (window_timer==3){
			set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
		}
	}
}







