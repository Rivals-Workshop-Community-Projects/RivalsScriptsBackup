/*         
*                 ---------- hit_player.gml ------------
*       This file runs whenever you hit a player with a hitbox.
*       Useful for applying status effects or triggering on hit events.
*/

new_has_hit_player = true;

//Visual Effects ---------------------------------------------------------------

with (hit_fx_obj)
  if (hit_fx == other.fx_bhit || hit_fx == other.fx_rhit || hit_fx == other.fx_phit)
    depth = -10;
    
if (hitbox != AT_DSTRONG_2){
	with (hit_fx_obj)
	  if (hit_fx == other.fx_slam || hit_fx == other.fx_bslam)
	    depth = -10;
}
 
var hitbox = (my_hitboxID.attack)
var hitbox_num = (my_hitboxID.hbox_num)
switch (hitbox){
	case(AT_DATTACK):
		if (hitbox_num == 1 || hitbox_num == 2){
			hitfx_impact(0);
		}
		if (hitbox_num == 3){
			if (hitstop >= 15){
			hitfx_impact(1);
			hitfx_line(1, 0);
			} else {
			hitfx_impact(0);
			}
		}
		break;
	case(AT_FTILT):
	case(AT_BAIR):
	case(AT_EXTRA_1):
		if (hitstop >= 12){
			hitfx_impact(1);
			hitfx_line(1, 0);
		} else {
			hitfx_impact(0);
		}
		break;
	case(AT_FAIR):
		if (hitstop >= 12){
			hitfx_impact(1);
			if (red_mode){
				hitfx_line(1, 45);
			} else {
				hitfx_line(1, 0);
			}
		} else {
			hitfx_impact(0);
		}
		break;
	case(AT_UTILT):
		if (hitstop >= 12){
			hitfx_impact(1);
			hitfx_line(1, 80);
		} else {
			hitfx_impact(0);
		}
		break;
	case(AT_DTILT):
		if (dtilt_offledge){
			if (hitbox_num == 1){
				if (hitstop >= 12){
					hitfx_impact(1);
					hitfx_line(1, 0);
				} else {
					hitfx_impact(0);
				}
			}
		} else {
			if (hitbox_num == 2){
				if (hitstop >= 8){
					hitfx_impact(1);
					hitfx_line(1, 0);
				} else {
					hitfx_impact(0);
				}
			}
		}
		break;
	case(AT_JAB):
		if (hitbox_num == 2){
			if (hitstop >= 12){
				hitfx_impact(1);
			} else {
				hitfx_impact(0);
			}
		}
		break;
	case(AT_NAIR):
		if (hitbox_num == 1 || hitbox_num == 2){
			if (hitstop >= 12){
				hitfx_impact(0);
			}
		}
		if (hitbox_num == 3 || hitbox_num == 4){
			if (!red_mode){
				if (hitstop >= 10){
					hitfx_impact(1);
					hitfx_line(1, 0);	
				} else {
					hitfx_impact(0);
				}
			} else {
				if (hitstop >= 12){
					hitfx_impact(1);
					hitfx_line(1, 0);	
				} else {
					hitfx_impact(0);
				}
			}
		}
		break;
	case(AT_DAIR):
		if (red_mode){
			if (hitbox_num == 2){
				hitfx_impact(1);
				hitfx_line(1, 0);
			} else {
				hitfx_impact(0);
			}
		} else {
			if (hitstop >= 12){
				hitfx_line(1, 0);	
			}
				hitfx_impact(0);
		}
		break;
	case(AT_UAIR):
	case(AT_FSPECIAL):
	case(AT_FSPECIAL_2):
	case(AT_USPECIAL):
	case(AT_USPECIAL_2):
		hitfx_impact(0);
		break;
	case(AT_EXTRA_2):
		hitfx_impact(1);
		hitfx_line(1, 90);
		break;
	case(AT_FTHROW):
		if (hitbox_num == 2){
			hitfx_impact(1);
			hitfx_line(1, 90);	
		}
		break;
	case(AT_DSTRONG):
	case(AT_DSTRONG_2):
	case(AT_USTRONG_2):
	case(AT_USTRONG):
		hitfx_impact(1);
		hitfx_line(1, 0);
		break;
	case(AT_FSTRONG):
		if (hitbox_num == 1){
			hitfx_impact(1);
			hitfx_line(1, 0);
		}
		break;
}	

if(hit_player_obj.activated_kill_effect){
	kill_effects = true;
}

if (kill_effects = true){
	hitfx_beams(6);
	kill_effects = false;
}

//Sound Effects-----------------------------------------------------------------

combo_cd = 100;
if (combo_buffer == 1 && combo_num <= 1){
    combo_num += .05946;
}

combo_buffer = 1;

//SFX
/*
if (hitbox == AT_DATTACK || hitbox == AT_NAIR || hitbox == AT_DSPECIAL || AT_DSPECIAL_2
|| hitbox == AT_DTILT || hitbox == AT_JAB || hitbox == AT_FTILT || hitbox == AT_UTILT
|| hitbox == AT_FAIR || hitbox == AT_FSPECIAL || hitbox == AT_FSPECIAL_2 || hitbox == AT_DAIR
){
print_debug("YES")
    if (!red_mode){
        sound_play(sound_get("bhit1"), false, noone, 1, 1 + combo_num)
    } else {
        sound_play(sound_get("rhit1"), false, noone, 1, 1 + combo_num)
    }
}
*/
switch(hitbox){
	case(AT_DATTACK):
	case(AT_NAIR):
	case(AT_DSPECIAL):
	case(AT_DSPECIAL_2):
	case(AT_DTILT):
	case(AT_JAB):
	case(AT_FTILT):
	case(AT_UTILT):
	case(AT_FAIR):
	case(AT_FSPECIAL):
	case(AT_FSPECIAL_2):
	case(AT_USPECIAL):
	case(AT_USPECIAL_2):
	case(AT_DAIR):
	case(AT_UAIR):
	case(AT_BAIR):
	case(AT_EXTRA_1):
	case(AT_EXTRA_2):
		//Blue
		if (!red_mode){
			sound_play(sound_get("bhit1"), false, noone, 1, 1 + combo_num)
		} 
		//Purple
		else if (red_mode == 2){
			sound_play(sound_get("rhit1"), false, noone, .8, 1 + combo_num)
			sound_play(sound_get("bhit1"), false, noone, .8, 1 + combo_num)
		}
		//Red
		else {
			sound_play(sound_get("rhit1"), false, noone, 1, 1 + combo_num)
		}
	    break;
	case(AT_FTHROW):
		if (hitbox_num = 2){
		    if (!red_mode){
		        sound_play(sound_get("bhit1"), false, noone, 1, 1 + combo_num)
		    } else {
		        sound_play(sound_get("rhit1"), false, noone, 1, 1 + combo_num)
		    }
		    break;
		}
	break;
	case(AT_DSTRONG):
	case(AT_DSTRONG_2):
	    if (!red_mode){
			sound_play(sound_get("dstrong"), false, noone, 1, 1)
	        sound_play(sound_get("bhit1"), false, noone, 1, 1 + combo_num)
	    } else {
			sound_play(sound_get("ruair"), false, noone, 1, 1)
	        sound_play(sound_get("rhit1"), false, noone, 1, 1 + combo_num)
	    }
	    break;
	case(AT_USTRONG_2):
		if (!red_mode){
			sound_play(sound_get("dstrong"), false, noone, 1, 1)
			sound_play(sound_get("bhit1"), false, noone, 1, 1 + combo_num)
		} else {
			sound_play(sound_get("rustrong"), false, noone, 1, 1)
			sound_play(sound_get("rhit1"), false, noone, 1, 1)
		}
			sound_play(asset_get("sfx_absa_kickhit"), false, noone, 1, 1)
		break;
	case(AT_USTRONG):
		if (!red_mode){
			sound_play(sound_get("ustrong3"), false, noone, 1, 1)
			sound_play(sound_get("bhit1"), false, noone, 1, 1 + combo_num)
		} else {
			sound_play(sound_get("rustrong"), false, noone, 1, 1)
			sound_play(sound_get("rhit1"), false, noone, 1, 1)
		}
			sound_play(asset_get("sfx_absa_kickhit"), false, noone, 1, 1)
		break;
	case(AT_FSTRONG):
		sound_play(sound_get("bhit1"), false, noone, 1, 1 + combo_num)
		if(hitbox_num == 1){
			sound_play(sound_get("dstrong"), false, noone, 1, 1)
		}
		break;
}

//print_debug(hitstop)

//Hit Stuff---------------------------------------------------------------------
var hitbox = (my_hitboxID.attack)
var hitbox_num = (my_hitboxID.hbox_num)
switch (hitbox){
	case(AT_DATTACK):
		//Purple
		if(red_mode == 2){
			if (spr_dir == 1){
				x = hit_player_obj.x + 30
				old_hsp = 4
				spr_dir = -1
			}
			else if (spr_dir == -1){
				x = hit_player_obj.x - 30
				old_hsp = -4
				spr_dir = 1
			}
		}
		break;
    case(AT_FSPECIAL):
    case(AT_FSPECIAL_2):
    case(AT_USPECIAL):
    case(AT_USPECIAL_2):
        //if (my_hitboxID.hbox_num == 1){
        	if (hitbox == AT_FSPECIAL || hitbox == AT_FSPECIAL_2 ){
	        	if (my_hitboxID.hbox_num == 2){
					with (asset_get("obj_article1")){
						if (player_id == other.id){
						hsp = 0;
						vsp = 0;
						state = 6;
						state_timer = 0;
				       	}
				    }
	        	}
			}
		    special_jump = true;
            set_state( PS_IDLE_AIR );
            
            //Purple
            if (red_mode == 2){
            	if (spr_dir == 1){
            		spr_dir = -1
            	} else {
            		spr_dir = 1
            	}
            	old_hsp = (-2 * spr_dir) + hit_player_obj.hsp;
            	old_vsp = -2 + hit_player_obj.vsp;
            } else {
            	old_hsp = -5 * spr_dir;
            	old_vsp = -9;
            }
            
            dash_angle = 0;
            can_fast_fall = true;
            move_cooldown[AT_FSPECIAL] = 15
            move_cooldown[AT_FSPECIAL_2] = 15
			move_cooldown[AT_USPECIAL] = 15;
			move_cooldown[AT_USPECIAL_2] = 15;
            if (special_dash == false){
                move_cooldown[AT_FSPECIAL] = dash_cd;
                move_cooldown[AT_FSPECIAL_2] = dash_cd;
				move_cooldown[AT_USPECIAL] = dash_cd;
				move_cooldown[AT_USPECIAL_2] = dash_cd;
            }
            special_dash = false;
			sound_stop(sound_get("bdash1"))
			sound_stop(sound_get("rdash1"))
        //}
        break;
	case(AT_DAIR):
        if (red_mode && my_hitboxID.hbox_num == 2){
        	spawn_hit_fx(x,y,fx_rdairspike)	
        }
        break;
    case(AT_FSTRONG_2):
    case(AT_UAIR):
		//Before grabbing the opponent, first make sure that:
		//-The player is in an attack animation
		//-The opponent is in hitstun
		//-The player did not get parried, and
		//-The opponent is not a Forsburn clone.
	
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	    	  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			//transition to the 'throw' part of the attack.
			destroy_hitboxes();
			attack_end();
			if (attack == AT_UAIR){
				if (!red_mode || red_mode == 2){
					old_vsp = -14;
					set_attack(AT_EXTRA_1);
				} else {
					old_vsp = -14;
					set_attack(AT_EXTRA_2);
				}
			} else if (attack == AT_FSTRONG_2) {
				set_attack(AT_FTHROW);
			}
			
			//if this attack hasn't grabbed a player yet, grab the player we just hit.
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
			old_grabbed_player_obj = grabbed_player_obj;
		}
	break;
	case(AT_BAIR):
		old_vsp = -3
		break;
    case(AT_EXTRA_2):
		if (hitbox_num == 2){
			sound_play(sound_get("ruair"))
			old_hsp = -5 * spr_dir;
			old_vsp = -9;
			special_jump = true;
			set_state( PS_IDLE_AIR );
	    }
    	break;
}


#define hitfx_impact(size)

//_hitstop = the hitstop time it triggers at
//size = the size of the hit effect (1 is large 0 is medium)
{
	if (size == 1){
		//Blue
		if (!red_mode){
			var h = spawn_hit_fx(other.x,other.y-30,fx_bhit_large)
		} 
		//Purple
		else if (red_mode == 2){
			var h = spawn_hit_fx(other.x,other.y-30,fx_phit_large)
		}
		//Red
		else {
			var h = spawn_hit_fx(other.x,other.y-30,fx_rhit_large)
		}
	} else if (size == 0){
		//Blue
		if (!red_mode){
			var h = spawn_hit_fx(other.x,other.y-30,fx_bhit_med)
		}
		//Purple
		else if (red_mode == 2){
			var h = spawn_hit_fx(other.x,other.y-30,fx_phit_med)
		}
		//Red
		else {
			var h = spawn_hit_fx(other.x,other.y-30,fx_rhit_med)
		}	
	}
	h.draw_angle = (random_func(0,360,true));
}

#define hitfx_line(size, _angle)

//_hitstop = the hitstop time it triggers at
//size = the size of the hit effect (1 is large 0 is medium)
{
	if (size == 1){
		if (!red_mode){
			var l = spawn_hit_fx(other.x,other.y-30, fx_bhit_line)
		} else {
			var l = spawn_hit_fx(other.x,other.y-30, fx_rhit_line)
		}
	} else if (size == 0){
		if (!red_mode){
			var l = spawn_hit_fx(other.x,other.y-30, fx_bhit_line)
		} else {
			var l = spawn_hit_fx(other.x,other.y-30, fx_rhit_line)
		}	
	}
	if (_angle == 0){
		_angle = my_hitboxID.kb_angle;
		switch (my_hitboxID.kb_angle){
			case(361):
				_angle = 5;
				break;
			case(340):
				_angle = 320;
				break;
			case(80):
				_angle = 90;
				break;
		}
	} else {
		var _angle = my_hitboxID.kb_angle;
			__angle = _angle
	}
	l.draw_angle = _angle*spr_dir;
}

#define hitfx_beams(count)
{
	for (var i = 0; i < count; i++){
		
		var r = random_func(i, 2, true);
		if (r == 1){
			if (red_mode){
				var b = spawn_hit_fx(other.x, other.y-30, fx_rhit_beams);
			} else {
				var b = spawn_hit_fx(other.x, other.y-30, fx_bhit_beams);
			}
		} else {
			if (red_mode){
				var b = spawn_hit_fx(other.x, other.y-30, fx_rhit_beams_small);
			} else {
				var b = spawn_hit_fx(other.x, other.y-30, fx_bhit_beams_small);
			}
		}
		
    	b.draw_angle = (random_func(i+1,360,true));
	}
}