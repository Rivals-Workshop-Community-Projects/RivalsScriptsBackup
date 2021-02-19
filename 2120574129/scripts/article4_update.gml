//Buttons
time--;
switch(mode) {
	case 0://above the stage
		if time <= 0 {
			mode = modechanger; 
			time = activetime;
		}
		desty += max((-500-y)*0.1, -1);
	break;
	case 1://center drop
		if time <= 0 {mode = 0; time = downtime; modechanger = 2}
		x = get_marker_x(11);
		desty += max((get_marker_y(11)-y)*0.1, -0.2);
	break;
	case 2://down left
		if time <= 0 {mode = 0; time = downtime; modechanger = 4}
		x = get_marker_x(12);
		desty += max((get_marker_y(12)-y)*0.1, -0.2);
	break;
	case 3://down right
		if time <= 0 {mode = 0; time = downtime; modechanger = 1}
		x = get_marker_x(13);
		desty += max((get_marker_y(13)-y)*0.1, -0.2);
	break;
	case 4://up right
		if time <= 0 {mode = 0; time = downtime; modechanger = 5}
		x = get_marker_x(14);
		desty += max((get_marker_y(14)-y)*0.1, -0.2);
	break;
	case 5://up left
		if time <= 0 {mode = 0; time = downtime; modechanger = 3}
		x = get_marker_x(15);
		desty += max((get_marker_y(15)-y)*0.1, -0.2);
	break;
}
vsp = floor(desty-y);

if(state == 0){
	if hitplayer == 0 with (pHitBox){
		if (other.y > -50){
			if place_meeting(x,y,other) {
				if(other.hitconnect == false){
					spawn_hit_fx(x, y, hit_effect);
				}
				with(other){
					if (hitconnect == false){
			           sound_play(other.sound_effect);
			           hitconnect = true;
			        }
					angle = get_hitbox_angle(other);
					hitplayer = other.player;
			       	state = 1;
			       	cooldown = 31;
			       	other.hitpause = true;
			       	//right
			       	if(angle <= 45 or angle > 315){
			       		if(other.spr_dir == 1){
			       			hit_direction = 1;
			       		}
			       		else if(other.spr_dir == -1){
			       			hit_direction = 3;
			       		}
			       	}//up
			       	else if(angle <= 135){
			       		hit_direction = 2;
			       	}//left
			       	else if(angle <= 225){
			       		if(other.spr_dir == 1){
			       			hit_direction = 3;
			       		}
			       		else if(other.spr_dir == -1){
			       			hit_direction = 1;
			       		}
			       	}
			       	else{//down
			        	hit_direction = 4;
			        }
			    	if(other.type != 2){
			        	playerhitpause = true;
			       	}
				}
		       	
		    }
		}
		}
	sprite_index = defaultsprite;
}

if(state == 1){
	cooldown--;
	if(cooldown == 0){
		state = 0;
		hitplayer = 0;
	}
	if(cooldown == 30){
		//sound_play(hitsound);
	}
	if(cooldown > 24){
		with(asset_get("oPlayer")){
			if(player != other.hitplayer){//Below is literally just a cancel list
				if(state == PS_WALK or state == PS_DASH or state == PS_IDLE or state == PS_IDLE_AIR or state == PS_CROUCH or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP or state == PS_WALK_TURN or state == PS_DASH_START or state == PS_DASH_STOP or state == PS_DASH_TURN or state == PS_WAVELAND or state == PS_LAND or state == PS_TUMBLE){
					if other.spawn_variables[0] = 0 {
						if(!free){
							if(other.hit_direction = 1){
								spr_dir = 1;
								set_attack (AT_DATTACK);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							} else if(other.hit_direction = 2){
								if(state != PS_JUMPSQUAT){
									set_state (PS_JUMPSQUAT);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
							} else if(other.hit_direction = 3){
								spr_dir = -1
								set_attack (AT_DATTACK);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							} else{
								set_state (PS_CROUCH);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							}
						}
						else{
							if(other.hit_direction = 1){
								if (spr_dir == 1){
									set_attack (AT_FAIR);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
								else{
									set_attack (AT_BAIR);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
							} else if(other.hit_direction = 2){
								if(state != PS_DOUBLE_JUMP){
									if(djumps != max_djumps){
										set_state (PS_DOUBLE_JUMP);
										with(other){
											spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
										}
									}
								}
							} else if(other.hit_direction = 3){
								if (spr_dir == 1){
									set_attack (AT_BAIR);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
								else{
									set_attack (AT_FAIR);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
							} else{
								set_attack (AT_DAIR);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							}
						}
					} else {
						if(!free){
							if(other.hit_direction = 1){
								spr_dir = 1;
								set_attack (AT_FSTRONG);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							} else if(other.hit_direction = 2){
								set_attack (AT_USTRONG);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							} else if(other.hit_direction = 3){
								spr_dir = -1
								set_attack (AT_FSTRONG);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							} else{
								set_attack (AT_DSTRONG);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							}
						}
						else{
							if(other.hit_direction = 1){
								if (spr_dir == 1){
									set_attack (AT_FAIR);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
								else{
									set_attack (AT_BAIR);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
							} else if(other.hit_direction = 2){
								set_attack (AT_UAIR);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							} else if(other.hit_direction = 3){
								if (spr_dir == 1){
									set_attack (AT_BAIR);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
								else{
									set_attack (AT_FAIR);
									with(other){
										spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
									}
								}
							} else{
								set_attack (AT_DAIR);
								with(other){
									spawn_hit_fx(other.x, other.y - other.char_height, obj_stage_main.gc_fx)
								}
							}
						}
					}
				}
			}
		}
	}
	if(hit_direction == 1){
		sprite_index = hitright;
	} else if(hit_direction == 2){
		sprite_index = hitup;
	} else if(hit_direction == 3){
		sprite_index = hitleft;
	} else{
		sprite_index = hitdown;
	}
}

if (!place_meeting(x, y, pHitBox)){//To make sounds and effects play on 1 frame
    hitconnect = false;
}
if(playerhitpause == true){//Make hitpause happen in a way that doesn't cause errors because of type.
	with (asset_get("oPlayer")){
		if(attack == AT_UTILT && url == CH_ELLIANA){
			playerhitpause = false;
		}
		else{
		    if (player == other.hitplayer){
		        has_hit = true; //means it hit something, but not a player
		        hitpause = true; //means is in hitpause
		        hitstop = 5; //current hitpause frames
		        hitstop_full = 5; //hitpause initial value (you'd have it the same as hitstop probably)
		        old_hsp = hsp; //important; this is how hitpause pauses the player in place
		        old_vsp = vsp; //it stores the velocity in there and resumes it later
		        //sound_play(asset_get("sfx_birdclap"));
		    }
		}
	}
	playerhitpause = false;
}