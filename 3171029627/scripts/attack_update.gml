//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}
if (attack == AT_DATTACK){
	if (window == 1){
		if (window_timer == 1) && !hitpause{
			 sound_play(sound_get("potd_swing1"),false,noone,.6);
		}
		if (window_timer == 12) && !hitpause{
			 sound_play(asset_get("sfx_ell_uspecial_explode"));
			 sound_play(asset_get("sfx_kragg_spike"),false,noone,.8);
		}
	}
}
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == 10) && !hitpause{
			 sound_play(asset_get("sfx_charge_blade_swing"),false,noone,1.0, 1.1);
		}
	}
	if (window == 3){
		if (window_timer == 1) && !hitpause{
			 sound_play(sound_get("weapon_impact1"),false,noone,1.9);
		}
	}
}
if (attack == AT_UTILT){
	if (window == 4){
		if (window_timer == 3) && !hitpause{
			 sound_play(asset_get("sfx_blow_weak2"),false,noone,0.5);
		}
	}
}
if (attack == AT_FSTRONG){
	if (window == 3){
		if (window_timer == 8) && !hitpause{
			 sound_play(sound_get("weapon_impact3"),false,noone,1.9);
		}
	}
}
if (attack == AT_USTRONG){
	if (window == 2){
		if (window_timer == 1) && !hitpause{
			 sound_play(asset_get("sfx_charge_blade_ready"),false,noone,0.8);
		}
		if (window_timer == 8) && !hitpause{
			 sound_play(asset_get("sfx_charge_blade_swing"),false,noone,1.0, 0.9);
		}
	}
}

if (attack == AT_DSTRONG){
	if (window == 2){
		if (place_meeting(x+160*spr_dir,y + 20,asset_get("par_block")) || place_meeting(x+160*spr_dir,y + 20,asset_get("par_jumpthrough"))){
			 set_window_value(AT_DSTRONG, 2, AG_WINDOW_GOTO, 5);
			 if (window_timer == 8) && !hitpause{
					sound_play(sound_get("spear_hit_ground"),false,noone,.8);
			 }
		}
		else set_window_value(AT_DSTRONG, 2, AG_WINDOW_GOTO, 3);
	}
}

//if (attack == AT_NAIR){
	//if (window == 1){
		//if (window_timer == 11) && !hitpause{
			 //sound_play(asset_get("sfx_charge_blade_swing"),false,noone,1.0, 1.1);
		//}
	//}
//}

if (attack == AT_BAIR){
	if (window == 2 && window_timer > 2 && bair_stuck < 3){
		if (place_meeting(x-120*spr_dir,y - 20,asset_get("par_block"))){
			window = 4;
			window_timer = 0;
			//Grab correct snap positions
			var temp_x = -200;
		    var max_temp_x = 0;
		    while (temp_x < max_temp_x
		        && (position_meeting(x + temp_x*spr_dir, y - 20, asset_get("par_block")))){
		            temp_x++;
		        }
		    dest_x = x + (temp_x*spr_dir + 94*spr_dir);
			current_x = x;
			bair_stuck++;
		}
	}
	if (window == 4){
		if (window_timer == 1) && !hitpause{
			 sound_play(sound_get("weapon_impact2"),false,noone,1.6);
		}
	}
	if (window >= 4){
		can_fast_fall = false;
		//Snap to position w/hspeed
		
		//print(current_x)
		//print(dest_x)
		//print((current_x - dest_x) * spr_dir)
		var travel_dest = round(lerp(current_x, dest_x, 1));
		hsp = (travel_dest - x);
		//force_depth = true;
		//depth = 30;
	}
	if (window == 5){
		move_cooldown[AT_BAIR] = 20;
		if (jump_pressed){
			vsp -= 12;
			djumps = 1;
			state_timer = 0;
			state = PS_FIRST_JUMP;
			hurtboxID.sprite_index = sprite_get("triangle_hurtbox");
		}
		can_shield = true;
		can_move = false;
		hsp = 0;
		if (state_timer > 150 or down_pressed){
			window = 6;
			window_timer = 0;
		}
	}
}

if (attack == AT_FSPECIAL){
	if (window == 1 && window_timer == 8 && !hitpause){
		sound_play(sound_get("potd_trail_bg"),false,noone,1.1);
	}
	if (window == 1 && window_timer > 11) hsp = 3*spr_dir;
	if (window == 2){
		if (window_timer == 8 && !hitpause){
			sound_play(sound_get("potd_trail_single"),false,noone,0.6);
		}
		if (state_timer > 20 && shield_pressed){
			window = 6;
			window_timer = 0;
		}
		if (state_timer > 20 && !special_down){
			window = 3;
			window_timer = 0;
			hsp = 7*spr_dir;
		}
		if(!position_meeting(x+20*spr_dir, y+2, asset_get("par_block")) and !position_meeting(x+20*spr_dir, y+2, asset_get("par_jumpthrough"))){
			//Let go at ledge variant
			window = 3;
			window_timer = 0;
			hsp = 7*spr_dir;
			//Jumping into fspecial air variant
			/*set_attack(AT_FSPECIAL_AIR);
			hsp = 4*spr_dir
			vsp = -8 */ 
		}
	}
	if (window >= 3){
		sound_stop(sound_get("potd_trail_bg"));
	}
	if (window == 3 && window_timer == 6 && !hitpause){
		sound_play(sound_get("potd_swing2"),false,noone,0.7);
		sound_play(sound_get("potd_swing3"),false,noone,0.9);
	}
	if (window == 3 && window_timer == 6){
		if (spr_dir == 1 && (left_pressed || left_down)) spr_dir = -1;
		if (spr_dir == -1 && (right_pressed || right_down)) spr_dir = 1;
	}
	//dash armor
	if (window == 2 || window == 3){
		fspecial_armor = true;
	    soft_armor = 0.0001 //extremely negligible soft armor that tricks the game into turning his hurtbox blue, will remove if this actually becomes an issue
	    keep_image_index = image_index;
	    keep_state_timer = state_timer;
	    keep_window_timer = window_timer;
	    keep_window = window;
	    keep_spr_dir = spr_dir;
	}
	else fspecial_armor = false;
}

if (attack == AT_FSPECIAL_AIR){
	move_cooldown[AT_FSPECIAL_AIR] = 15;
	can_fast_fall = false;
	if (window == 1 && window_timer == 4 && !hitpause){
		sound_play(sound_get("potd_swing4"),false,noone,0.6,0.9);
		sound_play(sound_get("potd_swing2"),false,noone,0.7,1.2);
		sound_play(sound_get("potd_swing3"),false,noone,0.9);
	}
	if (window == 3 && !free){
		window = 4;
		window_timer = 1;
		set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("landinglag"));
        hurtboxID.sprite_index = sprite_get("triangle_hurtbox");
	}
}

if (attack == AT_USPECIAL){
	if(window == 1){
		if(vsp > 4){
			vsp -= (0.75 * vsp);
		}
	}
	if (window == 2){
		can_move = false;
		if (window_timer == 24){
			spawn_hit_fx(x, y, uspecial_vfx1);
			if (instance_exists(torment)){
				if (torment.state == 0) spawn_hit_fx(torment.x, torment.y, torment_break1);
				if (torment.state == 1) spawn_hit_fx(torment.x, torment.y, torment_break2);
				if (torment.state == 2) spawn_hit_fx(torment.x, torment.y, torment_break3);
				instance_destroy(torment);
				instance_destroy(torment_opponent);
				torment_opponent = noone;
			}
		}
	}
	if (window == 4){
		can_wall_jump = true;
	}
	if (window == 5 and window_timer == 1){
		destroy_hitboxes();
	}
	if (window == 5 && window_timer == 2 && !hitpause){
		sound_play(sound_get("uspec_respawn"));
	}
	if (window == 6 && window_timer == 24){
		spawn_hit_fx(x, y, uspecial_vfx2);
	}
}

if (attack == AT_DSPECIAL){
	if (window == 1) opponent_damage = 0;
	if (dspecial_grab == true && window <= 7){
		can_fast_fall = false;
		can_move = false;
        hit_player_obj.hitstop = 1;
        if (image_index >= 10 && image_index <= 12){
            hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.5);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-40, 0.5);
	        if (instance_exists(torment_opponent) && hit_player_obj == torment_opponent){
	        	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_GOTO, 6);
	        }
	        else set_window_value(AT_DSPECIAL, 5, AG_WINDOW_GOTO, 7);
        }
    //    if (image_index >= 15 && image_index < 24)torment.sprite_index = asset_get("empty_sprite");
        if (image_index == 24){
        	hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.7);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-50, 0.7);
        }
        if (image_index == 25){
        	hit_player_obj.x = lerp(hit_player_obj.x, x+45*spr_dir, 0.7);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-45, 0.7);
        }
    }
    if (window == 7 && window_timer == 1){
    	if ((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down))spr_dir *= -1;
    }
    if (window == 6 && window_timer == 10){
    	torment.state_draw --;
    }
    if (window == 6 && window_timer == 18){
    	sound_play(sound_get("torment_trigger"),false,noone,1.4);
    }
    if (window == 6 && window_timer == 26){
        if (opponent_damage >= 150){
	       create_deathbox( hit_player_obj.x, hit_player_obj.y-40, 200, 200, hit_player_obj.player, true, 0, 10, 2);
	    }
    }
}

if(attack == AT_TAUNT){
	if (window == 1 && window_timer == 8){
		sound_play(sound_get("breath_out"),false,noone,1.2);
	}
	if (window == 2 && taunt_down && window_timer == 42){
		window_timer = 41;
	}
	if (window == 3 && window_timer == 19){
		window = 8;
	} if (window == 4 && window_timer == 1){
		take_damage( player, -1, 1 );
		sound_stop(sound_get("breath_out"));
		sound_play(sound_get("breath_grunt"),false,noone,1.2);
	}
	if (window == 6 && window_timer == 1){
		sound_play(sound_get("dbd_weapon_drag_11"),false,noone,.3, 1.1);
	}
}

//We'll need to manually code the windows where this will be true, otherwise it's very silly
if (place_meeting(x, y, torment) && instance_exists(torment) && get_window_value( attack, window, AG_WINDOW_CANCEL_FRAME) == -99){
	if (window_timer >= 5){
		super_armor = true;
	} if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) && get_window_value(attack, window, AG_ACTIVE_WINDOW) == 1){
		super_armor = false;
	}
}
else {
	super_armor = false;
}

