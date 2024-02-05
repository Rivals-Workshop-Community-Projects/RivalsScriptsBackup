//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Hurt
- 1 Idle
- 2 Walk
- 3 Walkturn
- 4 Crouch
- 5 Jumpstart
- 6 Jump
- 7 Land
- 8 Attack
- 9 Up Special
- 10 Pratfall
- 11 Pratland
- 12 Parried
- 13 STOP FROG

My name is roboshyguy. I'm leaving this note here for the few people who look at article code.
I've just spent an entire month figuring out all of this, and before you ask what happened to me at the end, just know that I probably went insane.
While I have experience with buggy articles and know how to cheese my way around certain obstacles, I dread that this will be my fall.
In order to comprehend the twisting variables and strange air drift mechanics of rivals of aether, you must lose yourself.
Become one with the code, and only then will you understand.
Through the ups and downs of hitbox angles to the loopholes of old_hsp and old_vsp. A beautiful scenery comes forth.
I've been in this froggy nightmare for too long, I can no longer see the sunlight.
*/

//#region Stuff regarding the player

//to keep them still
with(frog_id){
	if(state == PS_DEAD || state == PS_RESPAWN){
		//if they die put them out of frog state
	is_frog = false;
	//print("damn");
	with(other){
	var vfx = spawn_hit_fx(floor(x), floor(y)-40, 144);
	vfx.depth = -10;
	sound_play(sound_get("sfx_cough"));
	    instance_destroy();
    	exit;
	}
	}
	
	if(other.state != 13){
	invince_time = 2;
	invincible = true;
	if(other.state == 0){
	set_state(PS_HITSTUN);	
	}else{
	set_state(PS_PRATFALL);
	}
	free = true;
	can_move = false;
	can_fast_fall = false;
	hsp = 0;
	vsp = 0;
	visible = false;
	}
}

if(frog_id.is_frog){
frog_id.x = x;
frog_id.y = y;
}

//gravity
var grav_speed = .4;
var grav_max = 12;
var air_friction = .025;

if (type == 0 && artificial_hitstop == 0){
	if (free && vsp < 12){
		vsp = vsp + grav_speed;
	}
}
else if (type == 1){
	//do things
}

//life timer, scales with percent
if(hitstop == 0){
frogtimer++;
}

if(frogtimer == 1){
frogtimer_add = get_player_damage( frog_id.player ) * 6;
}

if(frogtimer > 300+frogtimer_add){
	frog_id.visible = true;
	state = 13;
	state_timer = 0;
}

//for color
if(frog_color_slot == 0){
switch (frog_player_num){
	case "1":
	frog_color_slot = 1;
	break;
	case "2":
	frog_color_slot = 2;
	//print("hello");
	break;
	case "3":
	frog_color_slot = 3;
	break;
	case "4":
	frog_color_slot = 7;
	break;
}
	with(player_id){
	set_article_color_slot( other.frog_color_slot , other.frog_color1, other.frog_color2, other.frog_color3);
	}
}


//got hit code -----------------------------------------------------------------------------------------------------------

if (place_meeting(x, y, asset_get("pHitBox")) && hitstop == 0) { //makes the article hittable when can_get_hit is true
    	with (asset_get("pHitBox")){
    		if (player != other.frog_id.player && get_player_hud_color(player) != get_player_hud_color(other.frog_id.player)){
    			if (place_meeting(x, y, other) && hit_priority != 0 && hitpause != 0 && kb_value != 0 && id != other.last_hit && hbox_group != other.last_hit_group){
    				other.hitbox_hit = self;
    				if(type != 2){
    				player_id.hitpause = true;
                    player_id.hitstop = get_hitstop_formula(get_player_damage( other.frog_id.player ), other.hitbox_hit.damage, other.hitbox_hit.hitpause, other.hitbox_hit.hitpause_growth, other.hitbox_hit.extra_hitpause);
    				}
                    other.hitstop = get_hitstop_formula(get_player_damage( other.frog_id.player ), other.hitbox_hit.damage, other.hitbox_hit.hitpause, other.hitbox_hit.hitpause_growth, other.hitbox_hit.extra_hitpause);
    			}
    		}
    	}
    	if (hitbox_hit != noone){
    		if(hitbox_hit.hitpause != 0 && hitbox_hit.hit_priority != 0 && hitbox_hit.kb_value != 0 && hitbox_hit.id != last_hit && hitbox_hit.hbox_group != last_hit_group){
    			with (hitbox_hit){
        			sound_play(sound_effect);
        			spawn_hit_fx(floor(x), floor(y), hit_effect);
    			}
    			if(hitbox_hit.type == 1){
    			hitbox_hit.player_id.hitpause = true;
    			hitbox_hit.player_id.hitstop_full = get_hitstop_formula(get_player_damage( frog_id.player ), hitbox_hit.damage, hitbox_hit.hitpause, hitbox_hit.hitpause_growth, hitbox_hit.extra_hitpause);
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true;
    			hitstop = get_hitstop_formula(get_player_damage( frog_id.player ), hitbox_hit.damage, hitbox_hit.hitpause, hitbox_hit.hitpause_growth, hitbox_hit.extra_hitpause);
    			hitby = hitbox_hit.player_id;
    			}if(hitbox_hit.type == 2){
    			hitbox_hit.destroyed = true;	
    			}
    			
    			//I finally figured out how to make the same hitbox not able to hit the article twice
    			//along with hitbox group stuff
    			last_hit = hitbox_hit.id;
    			last_hit_group = hitbox_hit.hbox_group;
    			print(hitbox_hit.id);
    			
    			frog_angle = hitbox_hit.kb_angle;
    			if(frog_angle == 361){
    				if(!free){
    					frog_angle = 40;
    				}else{
    					frog_angle = 45;
    				}
    			}
    			//print(frog_angle);
    			
    			frog_kb = get_kb_formula(get_player_damage( frog_id.player ), frog_id.knockback_adj - 0.05, 1.0, hitbox_hit.damage, hitbox_hit.kb_value, hitbox_hit.kb_scale);
    			if(hitbox_hit.player_id.attack != AT_BAIR){
    			spr_dir = hitbox_hit.spr_dir*-1;
    			}else{
    			spr_dir = hitbox_hit.spr_dir;	
    			}
    			
    			//this might be ENTIRELY wrong
    			if (!frog_id.joy_pad_idle){
    				if(frog_angle != 90 && frog_angle != 270){
    				switch(spr_dir){
    					case 1:
    					if(frog_id.joy_dir == frog_angle){
    						frog_kb *= 0.9;
    					}
    					
    					if(frog_id.joy_dir > frog_angle && frog_id.joy_dir <= 90){
    							frog_angle += 18;
    							if((frog_angle) > frog_id.joy_dir){
    							frog_angle = frog_id.joy_dir;	
    							}
    					}   if(frog_id.joy_dir < frog_angle && frog_id.joy_dir <= 90){
    							frog_angle -= 18;
    							if((frog_angle) < frog_id.joy_dir){
    							frog_angle = frog_id.joy_dir;	
    							}
    					}	if(frog_id.joy_dir < frog_angle && frog_id.joy_dir > 90){
    							frog_angle -= 18;
    							if((frog_angle) < frog_id.joy_dir){
    							frog_angle = frog_id.joy_dir;	
    							}
    					}
    					
    					break;
    					case -1:
    					if(frog_id.joy_dir == (frog_angle+90)){
    						frog_kb *= 0.9;
    					}
    					if(frog_id.joy_dir < (frog_angle+90) && frog_id.joy_dir >= 90){
    							frog_angle -= 18;
    							if((frog_angle+90) < frog_id.joy_dir){
    							frog_angle = frog_id.joy_dir-90;	
    							}
    					}
    					if(frog_id.joy_dir > (frog_angle+90) && frog_id.joy_dir >= 90){
    							frog_angle += 18;
    							if((frog_angle+90) > frog_id.joy_dir){
    							frog_angle = frog_id.joy_dir-90;	
    							}
    					}
						if(frog_id.joy_dir > (frog_angle+90) && frog_id.joy_dir < 90){
   								frog_angle += 18;
    							if((frog_angle+90) > frog_id.joy_dir){
    							frog_angle = frog_id.joy_dir-90;	
    							}
    					}
    					break;
    				
    				}
    				    }else{
    				    	if(frog_angle == 90){
    						if(frog_id.joy_dir == 90){
    							frog_angle = 90;
    						}if(frog_id.joy_dir > 90){
    							frog_angle = 90+(18*-spr_dir);
    						}if(frog_id.joy_dir < 90){
    							frog_angle = 90-(18*-spr_dir);
    						}
    					}   if(frog_angle == 270){
    						if(frog_id.joy_dir == 270){
    							frog_angle = 270;
    						}if(frog_id.joy_dir > 270){
    							frog_angle = 270+(18*-spr_dir);
    						}if(frog_id.joy_dir < 270){
    							frog_angle = 270-(18*-spr_dir);
    						}
    					}
    				    }
    			}
    			print(frog_angle);
    			
    			state = 0;
    			state_timer = 0;
    			
    			//knockback
    			//ily dino
    			switch(hitbox_hit.hit_flipper) {
    				case 5: //Reverse HSP (Same as 0)
					hsp = lengthdir_x( frog_kb, frog_angle ) * spr_dir;
					vsp = lengthdir_y( frog_kb, frog_angle ); 
    				break;
    				case 6: //Away Player Hor
    				case 8:
 					hsp = lengthdir_x( frog_kb, frog_angle ) * sign((x - hitbox_hit.player_id.x));
					vsp = lengthdir_y( frog_kb, frog_angle );    				
    				break;
    				case 7: //In Player Hor
    				case 9:
 					hsp = lengthdir_x( frog_kb, frog_angle ) * sign((x + hitbox_hit.player_id.x));
					vsp = lengthdir_y( frog_kb, frog_angle );    				
    				break;
    				default:
					hsp = lengthdir_x( frog_kb, frog_angle ) * -spr_dir;
					vsp = lengthdir_y( frog_kb, frog_angle );    
    				break;
    			}
    			
    			    bounce_vsp = vsp;
    			    bounce_hsp = hsp;
    				//print(hsp);
    			frog_hitstun = get_hitstun_formula(get_player_damage( frog_id.player ), frog_id.knockback_adj, 1.0, hitbox_hit.damage, hitbox_hit.kb_value, hitbox_hit.kb_scale);
    			
    			hitstop = round(hitstop);
    			frog_hitstun = round(frog_hitstun);
    			take_damage(frog_id.player, -1, hitbox_hit.damage);
    			
    			has_bounced = false;
    			frog_got_parried = false;
    			//print(frog_hitstun);
    		}
    		}
    }
    else{
    	hitbox_hit = noone;
    }



//hitpause stuff
if(hitstop < 1){
	hitstop = 0;
}

if(frog_hitstun > 0 && hitstop == 0){
	frog_hitstun--;
}if(frog_hitstun < 1){
	frog_hitstun = 0;
}

if(frog_hitstun == 0){
	frog_hitpause = false;
	last_hit_group = -4;
}else{
	frog_hitpause = true;
}

if(!free && vsp == 0){
	if(state == 1 || state == 2 || state == 3 || state == 4 || state == 5 || state == 7){
	frog_djumps = 2;
	frog_has_walljump = true;
	}
}

//air movement
if(free && hitstop == 0 && state != 0){
		if(hsp > frog_air_max_speed){
			hsp = frog_air_max_speed;
		}
		if(hsp < -frog_air_max_speed){
			hsp = -frog_air_max_speed;
		}
		
		if(disable_drift == 0){
				if(frog_id.right_down){
				if(hsp == 0){
					hsp = 1;
				}
				if(hsp < 0 && hsp > -1){
					hsp = 1;
				}
				
				if(hsp < frog_air_max_speed && hsp > 0){
				hsp *= 1.1;
				}
				
				if(hsp < 0){
				hsp *= 0.9;
				}
			}	
			
			if(frog_id.left_down){
				
				if(hsp == 0){
					hsp = -1;
				}
				if(hsp > 0 && hsp < 1){
					hsp = -1;
				}
				
				if(hsp > -frog_air_max_speed && hsp < 0){
				hsp *= 1.1;
				}
				
				if(hsp > 0){
					hsp *= 0.9;
				}
				
			}
			
			if(!frog_id.right_down && !frog_id.left_down){
				hsp *= 0.98;
			}
		}
}

if(disable_drift > 0){
	disable_drift--;
}

//#region State 0: Hurt
if(state == 0){
	if(!free && hitstop < 1){
		if(frog_hitstun == 0){
		state = 7;
		state_timer = 0;
		}else{
			if(!has_bounced){
			last_hit_group = -4;
			vsp = bounce_vsp*-1;
			hsp = bounce_hsp;
			if(vsp < -10){
				vsp = -10;
			}
			sound_play(asset_get("sfx_land_heavy"));
			hitstop = 2;
			has_bounced = true;
			}else{
		state = 7;
		state_timer = 0;				
			}
		}
	}
	
	if(free && !frog_hitpause){
	
		if(frog_id.jump_pressed && frog_djumps != 0){
		with(frog_id){
		clear_button_buffer( PC_JUMP_PRESSED );
		}
			state = 6;
			state_timer = 0;
			vsp = -9;
		sound_play(asset_get("sfx_jumpair"));
		spawn_base_dust(x, y, "djump", spr_dir);
			image_index = 0;
			frog_djumps -= 1;
		}
		
		//attack
		if(frog_id.attack_pressed){
			state = 8;
			state_timer = 0;
		}
		
		//special
		if(frog_id.special_pressed){
			state = 9;
			state_timer = 0;
		}
	}
}

//#region State 1: Idle
if(state == 1){
	hsp *= 0.75;
	frog_old_hsp = 0;
	
	if(!free){
		//basic controls
		
		//walk
		switch(spr_dir){
		case 1:
			if(frog_id.right_pressed || frog_id.right_down){
				state = 2;
				state_timer = 0;
			}	if(frog_id.left_pressed || frog_id.left_down){
				spr_dir *= -1;
				state = 3;
				state_timer = 0;
			}
		break;
		
		case -1:
			if(frog_id.right_pressed || frog_id.right_down){
				spr_dir *= -1;
				state = 3;
				state_timer = 0;
			}	if(frog_id.left_pressed || frog_id.left_down){
				state = 2;
				state_timer = 0;
			}
		break;
		}
		
		//crouch
		if(frog_id.down_pressed || frog_id.down_down){
				state = 4;
				state_timer = 0;			
		}
		
		//jump
		if(frog_id.jump_pressed){
			state = 5;
			state_timer = 0;
		}
		
		//attack
		if(frog_id.attack_pressed){
			state = 8;
			state_timer = 0;
		}
		//special
		if(frog_id.special_pressed){
			state = 9;
			state_timer = 0;
		}
		
	}else{
		state = 6;
		image_index = 4;
		state_timer = 0;
	}
	
	
}

//#region State 2: Walk
if(state == 2){
	if(!free){
	hsp = 4*spr_dir;
	
	switch(spr_dir){
		case 1:
		if(!frog_id.right_down){
			state = 1;
			state_timer = 0;
		}
		break;
		
		case -1:
		if(!frog_id.left_down){
			state = 1;
			state_timer = 0;
		}
		break;		
		break;
	}
	
		//jump
		if(frog_id.jump_pressed){
			frog_old_hsp = hsp;
			state = 5;
			state_timer = 0;
		}
	
		//attack
		if(frog_id.attack_pressed){
			state = 8;
			state_timer = 0;
		}
		//special
		if(frog_id.special_pressed){
			state = 9;
			state_timer = 0;
		}
		
	}else{
		state = 6;
		image_index = 4;
		state_timer = 0;
	}
	
	if(state_timer % 10 == 0){
	spawn_base_dust(x, y, "walk", spr_dir);	
	}
}

//#region State 3: Walkturn
if(state == 3){
	if(state_timer == 6){
	state = 2;
	state_timer = 0;
	
	}	
}

//#region State 4: Crouch
if(state == 4){
	hsp *= 0.75;
	
	if(frog_id.down_down){
		if(state_timer == 6){
			state_timer = 5;
			image_index = 1;
		}
	}
	if(state_timer == 13){
		state = 1;
		state_timer = 0;
	}
	
	if(state_timer > 8){
		//walk
		switch(spr_dir){
		case 1:
			if(frog_id.right_pressed || frog_id.right_down){
				state = 2;
				state_timer = 0;
			}	if(frog_id.left_pressed || frog_id.left_down){
				spr_dir *= -1;
				state = 3;
				state_timer = 0;
			}
		break;
		
		case -1:
			if(frog_id.right_pressed || frog_id.right_down){
				spr_dir *= -1;
				state = 3;
				state_timer = 0;
			}	if(frog_id.left_pressed || frog_id.left_down){
				state = 2;
				state_timer = 0;
			}
		break;
		}		
	}
	
		//jump
		if(frog_id.jump_pressed){
			state = 5;
			state_timer = 0;
		}
	
		//attack
		if(frog_id.attack_pressed){
			state = 8;
			state_timer = 0;
		}
		//special
		if(frog_id.special_pressed){
			state = 9;
			state_timer = 0;
		}
		
		//platdrop
		if(place_meeting(x,y,asset_get("par_jumpthrough"))){
			if(frog_id.down_hard_pressed){
			y += 10;
		state = 6;
		image_index = 4;
		state_timer = 0;
			}
		}
}

//#region State 5: Jumpstart
if(state == 5){
	if(state_timer == 5){
		hsp = 0;
	sound_play(asset_get("sfx_jumpground"));
	spawn_base_dust(x, y, "jump", spr_dir);
	if(frog_id.jump_down){
	vsp = -11;
	}else{
	vsp = -6;	
	}
	hsp = frog_old_hsp;
	state = 6;
	state_timer = 0;
	with(frog_id){
	clear_button_buffer( PC_JUMP_PRESSED );
	}
	}	
}

//#region State 6: Jump
if(state == 6){
	
	if(!free && state_timer > 3){
		with(frog_id){
		clear_button_buffer( PC_JUMP_PRESSED );
		}
		state = 7;
		state_timer = 0;
	}
	
	if(image_index == 5){
	image_index = 4;	
	}
	
		//walljump
		if(frog_has_walljump){
			if(hit_wall){
				if(frog_id.jump_pressed){
				with(frog_id){
				clear_button_buffer( PC_JUMP_PRESSED );
				}
				
				if(frog_id.right_down){
					spr_dir = -1;
				}if(frog_id.left_down){
					spr_dir = 1;
				}
				
					state_timer = 0;
					vsp = -9;	
					hsp = 5*spr_dir;
					sound_play(asset_get("sfx_jumpwall"));
					spawn_base_dust(x-20*spr_dir, y, "walljump", spr_dir);
					disable_drift = 10;
					image_index = 0;
					frog_has_walljump = false;
			
				}
				
			}
		}
	
		//djump
		if(frog_id.jump_pressed && frog_djumps != 0){
		with(frog_id){
		clear_button_buffer( PC_JUMP_PRESSED );
		}
			state_timer = 0;
			vsp = -9;
		sound_play(asset_get("sfx_jumpair"));
		spawn_base_dust(x, y, "djump", spr_dir);
			image_index = 0;
			frog_djumps -= 1;
		}
		
		if(vsp > 1){
			image_index = 4;
		}
		
		//attack
		if(frog_id.attack_pressed){
			state = 8;
			state_timer = 0;
		}
		//special
		if(frog_id.special_pressed){
			state = 9;
			state_timer = 0;
		}
		
		//platdrop
		if(place_meeting(x,y,asset_get("par_jumpthrough"))){
			if(frog_id.down_hard_pressed && frog_id.down_down){
			y += 10;
		state = 6;
		image_index = 4;
		state_timer = 0;
			}
		}
		
		//fastfall
		if(vsp > -1){
		if(frog_id.down_hard_pressed){
			vsp = 12;
			}
		}
		
}

//#region State 7: Land
if(state == 7){
	hsp *= 0.9;
	if(state_timer == 1){
		sound_play(asset_get("sfx_land_light"));
		spawn_base_dust(x, y, "land", spr_dir);
	}
	
	if(state_timer >= 5 && !free){
			//walk
		switch(spr_dir){
		case 1:
			if(frog_id.right_pressed || frog_id.right_down){
				state = 2;
				state_timer = 0;
			}	if(frog_id.left_pressed || frog_id.left_down){
				spr_dir *= -1;
				state = 3;
				state_timer = 0;
			}
		break;
		
		case -1:
			if(frog_id.right_pressed || frog_id.right_down){
				spr_dir *= -1;
				state = 3;
				state_timer = 0;
			}	if(frog_id.left_pressed || frog_id.left_down){
				state = 2;
				state_timer = 0;
			}
		break;
		}
		
	state = 1;
	state_timer = 0;
	}
	if(free){
		state = 6;
		state_timer = 0;		
	}
	
	//platdrop
			if(place_meeting(x,y,asset_get("par_jumpthrough"))){
			if(frog_id.down_hard_pressed){
			y += 10;
		state = 6;
		image_index = 4;
		state_timer = 0;
			}
		}
	
}

//#region State 8: Attack
if(state == 8){
	
	if(!free){
	hsp *= 0.8;	
	}
	
	if(state_timer = 1){
		frog_hitbox1 = 0;
		frog_hitbox2 = 0;
		frog_old_vsp = 0;
		frog_has_hit = false;
	}
	
	if(state_timer == 3){
		sound_play(asset_get("sfx_swipe_weak2"));
		sound_play(asset_get("sfx_orcane_fspecial_pud"), false, noone, 0.5);
	}

	if(state_timer == 6){
		frog_hitbox1 = create_hitbox(AT_DSPECIAL, 10, floor(x)+40*spr_dir, floor(y)-25);
		frog_hitbox1.spr_dir = spr_dir;
		frog_hitbox1.player = frog_id.player;
	}	
	if(state_timer == 9){
		frog_hitbox2 = create_hitbox(AT_DSPECIAL, 9, floor(x)+45*spr_dir, floor(y)-30);
		frog_hitbox2.spr_dir = spr_dir;
		frog_hitbox2.player = frog_id.player;
	}

	if(instance_exists(frog_hitbox1) && frog_hitbox1 != 0){
		frog_hitbox1.x = floor(x)+40*spr_dir;
		frog_hitbox1.y = floor(y)-25;
	}
	
	if(instance_exists(frog_hitbox2) && frog_hitbox2 != 0){
		frog_hitbox2.x = floor(x)+45*spr_dir;
		frog_hitbox2.y = floor(y)-30;
	}
	
	if(state_timer == 24){
	if(!free){
		if(!frog_got_parried){
	state = 1;
	state_timer = 0;	
		}else{
		state = 12;
		state_timer = 0;
		}
		
	}else{
		if(!frog_got_parried){
	state = 6;
	state_timer = 0;
		}else{
		state = 10;
		state_timer = 0;
		}
		
	}
	}
	
	//hitfall
	if(free && vsp != 0){
		if(frog_has_hit && artificial_hitstop == 0){
			if(frog_id.down_hard_pressed){
			vsp = 12;
			}			
		}
	}
	
}

//#region State 9: Special
if(state == 9){
	
	if(state_timer < 10){
		idle_anim_rate = 3; 
		hsp = 0;
		vsp = 0;
	}
	
	if(state_timer == 10){
	sound_play(asset_get("sfx_bubblemouth"));	
	}
	
	if(state_timer > 10 && state_timer < 30){
		idle_anim_rate = 6; 
		if(image_index == 5){
			image_index = 3;
		}
		vsp = -8;
		
		if(state_timer % 2 == 0){
		var bubble = create_hitbox(AT_DSPECIAL, 11, floor(x), floor(y)-10);
		bubble.player = frog_id.player;
		
			rng_var = random_func(0, 7, true);
			switch(rng_var){
				case 0:
				bubble.vsp = 2;
				bubble.hsp = 0;
				bubble.length = 45;
				break;
				
				case 1:
				bubble.vsp = 3;
				bubble.hsp = 1;
				bubble.length = 25;
				break;
				
				case 2:
				bubble.vsp = 2.5;
				bubble.hsp = -1;
				bubble.length = 25;
				break;
				
				case 3:
				bubble.vsp = 0.5;
				bubble.hsp = 0.75;
				bubble.length = 15;
				break;
				
				case 4:
				bubble.vsp = 2.5;
				bubble.hsp = -0.5;
				bubble.length = 20;
				break;

				case 5:
				bubble.vsp = 4;
				bubble.hsp = -1.5;
				bubble.length = 30;
				break;
				
				case 6:
				bubble.vsp = 3;
				bubble.hsp = 1.25;
				bubble.length = 25;
				break;
				
			}
			
		}
		
	}
	
	if(state_timer == 50){
		state = 10;
		state_timer = 0;
	}
	
			//walljump
		if(frog_has_walljump){
			if(hit_wall){
				if(frog_id.jump_pressed){
				with(frog_id){
				clear_button_buffer( PC_JUMP_PRESSED );
				clear_button_buffer( PC_SPECIAL_PRESSED );
				special_down = false;
				}
				
				if(frog_id.right_down){
					spr_dir = -1;
				}if(frog_id.left_down){
					spr_dir = 1;
				}
					
					state = 6;
					state_timer = 0;
					vsp = -9;	
					hsp = 5*spr_dir;
					sound_play(asset_get("sfx_jumpwall"));
					spawn_base_dust(x-20*spr_dir, y, "walljump", spr_dir);
					disable_drift = 10;
					image_index = 0;
					frog_has_walljump = false;
			
				}
				
			}
		}
	

}

//#region State 10: Pratfall
if(state == 10){
	if(!free){
		sound_play(asset_get("sfx_land_med"));
		spawn_base_dust(x, y, "land", spr_dir);
		if(frog_got_parried){
			state = 12;
			state_timer = 0;
		}else{
			state = 11;
			state_timer = 0;
		}
	}
	
	if(free){
		if(!frog_got_parried){
			
			
					//walljump
		if(frog_has_walljump){
			if(hit_wall){
				if(frog_id.jump_pressed){
				with(frog_id){
				clear_button_buffer( PC_JUMP_PRESSED );
				clear_button_buffer( PC_SPECIAL_PRESSED );
				special_down = false;
				}
				
				if(frog_id.right_down){
					spr_dir = -1;
				}if(frog_id.left_down){
					spr_dir = 1;
				}
					
					vsp = -9;	
					hsp = 5*spr_dir;
					sound_play(asset_get("sfx_jumpwall"));
					spawn_base_dust(x-20*spr_dir, y, "walljump", spr_dir);
					disable_drift = 10;
					state = 6;
					state_timer = 0;
					frog_has_walljump = false;
			
				}
				
			}
		}
		
		
		}
	}
}

//#region State 11: Pratland
if(state == 11){
	hsp *= 0.8;
	vsp = 0;
	if(!free){
		if(state_timer > 12){
			state = 1;
			state_timer = 0;
		}
	}
}

//#region State 12: Parried
if(state == 12){
	if(!free){
		if(state_timer > 39){
			frog_got_parried = false;
			state = 1;
			state_timer = 0;
		}
	}
}

//#region State 13: STOP FROG
if(state == 13){
	with(frog_id){
		if(free){
	set_state(PS_IDLE_AIR);
		}else{
	set_state(PS_IDLE);
		}
	vsp = other.vsp;
	hsp = other.hsp;
	spr_dir = other.spr_dir;
	is_frog = false;
	}
	var vfx = spawn_hit_fx(floor(x), floor(y)-40, 144);
	vfx.depth = -10;
	sound_play(sound_get("sfx_cough"));
	    instance_destroy();
    	exit;	
}





//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("toad"+frog_player_num+"_hurt");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 1;
        break;
    case 1:
    	idle_anim_rate = 5; 
        new_sprite = sprite_get("toad"+frog_player_num+"_idle");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 1;
        break;
    case 2:
    	idle_anim_rate = 8; 
        new_sprite = sprite_get("toad"+frog_player_num+"_walk");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 1;
        break;
    case 3:
    	idle_anim_rate = 2; 
        new_sprite = sprite_get("toad"+frog_player_num+"_walkturn");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 1;
        break;
    case 4:
    	idle_anim_rate = 2; 
        new_sprite = sprite_get("toad"+frog_player_num+"_crouch");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 2;
        break;
    case 5:
    	idle_anim_rate = 2; 
        new_sprite = sprite_get("toad"+frog_player_num+"_jumpstart");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 2;
        break;
    case 6:
    	idle_anim_rate = 10; 
        new_sprite = sprite_get("toad"+frog_player_num+"_jump");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 2;
        break;
    case 7:
    	idle_anim_rate = 2; 
        new_sprite = sprite_get("toad"+frog_player_num+"_land");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 1;
        break;
    case 8:
    	idle_anim_rate = 3; 
        new_sprite = sprite_get("toad"+frog_player_num+"_attack");
        mask_index = sprite_get("toad_attack_hurt"); 
        animation_type = 1;
        break;
    case 9:
        new_sprite = sprite_get("toad"+frog_player_num+"_special");
        mask_index = sprite_get("toad_special_hurt"); 
        animation_type = 1;
        break;
    case 10:
    	idle_anim_rate = 10; 
        new_sprite = sprite_get("toad"+frog_player_num+"_jump");
        mask_index = sprite_get("frog_hurtbox"); 
        image_index = 4;
        animation_type = 1;
        break;
    case 11:
    	idle_anim_rate = 5; 
        new_sprite = sprite_get("toad"+frog_player_num+"_land");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 1;
        break;
    case 12:
    	idle_anim_rate = 15; 
        new_sprite = sprite_get("toad"+frog_player_num+"_land");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 1;
        break;
    case 13:
    	idle_anim_rate = 15; 
        new_sprite = sprite_get("toad"+frog_player_num+"_hurt");
        mask_index = sprite_get("frog_hurtbox"); 
        animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
if(artificial_hitstop == 0){
state_timer++;
}
if(artificial_hitstop > 0){
	if(vsp != 0){
	frog_old_vsp = vsp;
	}
	if(hsp != 0){
	frog_older_hsp = hsp;
	}
	vsp = clamp(vsp,0,0);
	hsp = clamp(hsp,0,0);
	artificial_hitstop--;
}
if(artificial_hitstop < 0){
	artificial_hitstop = 0;
}
if(artificial_hitstop == 1){
	hsp = frog_older_hsp;
	vsp = frog_old_vsp;
	artificial_hitstop = 0;
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;