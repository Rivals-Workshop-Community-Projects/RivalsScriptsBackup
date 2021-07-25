if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack == AT_DATTACK){
	can_move = false;
	if(window == 1 && window_timer == 1){
		spawn_hit_fx( x, y, smoke_effect);
	}
}

if(attack == AT_DSPECIAL){
	if(!endertnt2){
		if(window == 2 && grabbedid != noone || window == 3 && grabbedid != noone || window == 4 && grabbedid != noone || window == 5 && grabbedid != noone){
		  if(enderfinished == 0){
		  	vsp = 0;
		  	hsp = 0;
			grabbedid.ungrab = 0;
	        grabbedid.invincible = true; //DELETE THIS LINE TO MAKE THE GRABBED PLAYER HITTABLE
	        grabbedid.visible = grabvisibility; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
	        if(spr_dir == 1){
	            	grabbedid.x = enderman.x+24; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
	        		grabbedid.y = enderman.y-14; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
	        }
	        else{
	            	grabbedid.x = enderman.x-24; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
	        		grabbedid.y = enderman.y-14; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
	        }
	        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
	        grabbedid.wrap_time = 6000;
	        grabbedid.state = PS_WRAPPED;
	        if(endermoving == 0){
	        	invincible = true;
				if(up_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
					with(enderman){
						endermove = 1;
					}
					endermoving = 1
		    	}
		        if(left_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
					with(enderman){
						endermove = 2;
					}
					endermoving = 1
		    	}
		        if(right_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
					with(enderman){
						endermove = 3;
					}
					endermoving = 1
		    	}
		        if(up_pressed && left_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
					with(enderman){
						endermove = 4;
					}
					endermoving = 1
		    	}
		        if(up_pressed && right_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
					with(enderman){
						endermove = 5;
					}
					endermoving = 1
		        	}
		        if(down_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
					with(enderman){
						endermove = 6;
					}
					endermoving = 1
		        	}
	        	}
			}
		}
	}
	if(window < 5 && endermany == 0){
		vsp = 0;
		hsp = 0;
	}
	if(!endertnt2){
		if(window == 1 && window_timer == 5){
			if(endermany == 1){
				endermany = 0;
				if(spr_dir == 1){
					enderman = instance_create(x+25, y, "obj_article2");
					with(enderman){
						state = 1
						enderright = 1;
					}
					if(useskins){
						with(enderman){
						DJ = true;
						}
					}
				}
				else{
					enderman = instance_create(x-25, y, "obj_article2");
					with(enderman){
						state = 1
					}
					if(useskins){
						with(enderman){
						DJ = true;
						}
					}
				}
			}
		}
	}
	if(window == 2 && window_timer == 1){
		if(tntout){
			if(place_meeting(x+40, y, tnt)||place_meeting(x-40, y, tnt)){
				endertnt2 = true;
				with(enderman){
					creetouchtnt = true;
				}
				
				instance_destroy(tnt);
				return;
			}
		}
	}
	if(window < 4){
		can_move = false;
	}
	if(enderfinished == 1){
		window = 7;
	}
	if(window == 7){
		endermoving = 0;
		enderfinished = 0;
		enderdone = 1;
	}
	if(window == 6){
		endermoving = 0;
		enderfinished = 0;
		enderdone = 1;
	}
	if(window == 1 && endermany == 0 && window_timer == 1){
		window = 5;
		window_timer = 0;
	}
	if(endertnt2){
				if(up_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
					move_cooldown[AT_DSPECIAL] = 100;
					with(enderman){
						endermovetnt = 1;
					}
					endermoving = 1
		    	}
		        if(left_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
		        	move_cooldown[AT_DSPECIAL] = 100;
					with(enderman){
						endermovetnt = 2;
					}
					endermoving = 1
		    	}
		        if(right_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
		        	move_cooldown[AT_DSPECIAL] = 100;
					with(enderman){
						endermovetnt = 3;
					}
					endermoving = 1
		    	}
		        if(up_pressed && left_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
		        	move_cooldown[AT_DSPECIAL] = 100;
					with(enderman){
						endermovetnt = 4;
					}
					endermoving = 1
		    	}
		        if(up_pressed && right_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
		        	move_cooldown[AT_DSPECIAL] = 100;
					with(enderman){
						endermovetnt = 5;
					}
					endermoving = 1
		        	}
		    	if(down_pressed){//REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
		    		move_cooldown[AT_DSPECIAL] = 100;
					with(enderman){
						endermovetnt = 6;
					}
					endermoving = 1
		        	}
	}
}

if(attack == AT_USTRONG){
	if(spr_dir == 1){
		if(window == 5 && window_timer == 12){
			create_hitbox(AT_FSPECIAL, 3, x-20, y+2);	
		}
	}
	else{
		if(window == 5 && window_timer == 12){
			create_hitbox(AT_FSPECIAL, 3, x+20, y+2);
		}
	}
}
if (attack == AT_DSTRONG){
	if(spr_dir == 1){
		if(window == 4 && window_timer == 1){
			spawn_hit_fx( x+37, y-8, smoke2_effect);	
		}
		if(window == 6 && window_timer == 1){
			spawn_hit_fx( x-37, y-8, smoke2_effect);
		}
	}
	else{
		if(window == 4 && window_timer == 1){
			spawn_hit_fx( x-37, y-8, smoke2_effect);	
		}
		if(window == 6 && window_timer == 1){
			spawn_hit_fx( x+37, y-8, smoke2_effect);
		}
	}
}
if(attack == AT_USPECIAL){
	if(window == 1){
		if(tntout){
			with(tnt){
				state = 50;
			}
		}
	}
	can_wall_jump = true;
	if(window == 6 && window_timer == 1){
			create_hitbox(AT_USPECIAL, 15, x, y-24);
		if(upbrng == 0){
			create_hitbox(AT_USPECIAL, 12, x, y-24);
		}
		if(upbrng == 1){
			create_hitbox(AT_USPECIAL, 4, x, y-24);
		}
		if(upbrng == 2){
			create_hitbox(AT_USPECIAL, 5, x, y-24);
		}
		if(upbrng == 3){
			create_hitbox(AT_USPECIAL, 6, x, y-24);
		}
		if(upbrng == 4){
			create_hitbox(AT_USPECIAL, 7, x, y-24);
		}
		if(upbrng == 5){
			create_hitbox(AT_USPECIAL, 8, x, y-24);
		}
		if(upbrng == 6){
			create_hitbox(AT_USPECIAL, 9, x, y-24);
		}
		if(upbrng == 7){
			create_hitbox(AT_USPECIAL, 10, x, y-24);
		}
		if(upbrng == 8){
			create_hitbox(AT_USPECIAL, 11, x, y-24);
		}
		if(upbrng == 9){
			create_hitbox(AT_USPECIAL, 3, x, y-24);
		}
	}
	if(window < 7){
		if(runeO){
			can_move = true;
		}
		else{
			can_move = false;
			hsp = 0;
		}
	}
	else if(window == 7){
		can_move = true;
	}
	if(spr_dir == 1){
		if(window == 4){
			if(window_timer == 1){
				if(runeO){
				create_hitbox(AT_USPECIAL, 13, x-24, y-16);
				}
			}
			if(window_timer == 1 || window_timer == 3 || window_timer == 9 || window_timer == 17){
				spawn_hit_fx( x-2, y-10, upbparticles_effect);
			}
			if(window_timer == 5 || window_timer == 12 || window_timer == 15){
				spawn_hit_fx( x-3, y-10, upbparticles_effect);
			}
			if(window_timer == 9){
				if(runeO){
				window_timer = 0;
				upbloop++;
				if(upbloop > 12){
					upbloop = 0;
					window = 5;
					window_timer = 0;
				}
				}
			}
		}
		if(window == 5){
			if(window_timer == 3 || window_timer == 6){
				spawn_hit_fx( x-2, y-10, upbparticles_effect);
			}
			if(window_timer == 1){
				spawn_hit_fx( x-3, y-10, upbparticles_effect);
			}
		}
	}
	else{
		if(window == 4){
			if(window_timer == 1){
				if(runeO){
				create_hitbox(AT_USPECIAL, 13, x+24, y-16);
				}
			}
			if(window_timer == 1 || window_timer == 3 || window_timer == 9 || window_timer == 17){
				spawn_hit_fx( x+2, y-10, upbparticles_effect);
			}
			if(window_timer == 5 || window_timer == 12 || window_timer == 15){
				spawn_hit_fx( x+3, y-10, upbparticles_effect);
			}
			if(window_timer == 9){
				if(runeO){
				window_timer = 0;
				upbloop++;
				if(upbloop > 12){
					upbloop = 0;
					window = 5;
					window_timer = 0;
				}
				}
			}
		}
		if(window == 5){
			if(window_timer == 3 || window_timer == 6){
				spawn_hit_fx( x+2, y-10, upbparticles_effect);
			}
			if(window_timer == 1){
				spawn_hit_fx( x+3, y-10, upbparticles_effect);
			}
		}
	}
	if(window == 7 && left_down){
		hsp = -6
		vsp = -10
	}
	if(window == 7 && right_down){
		hsp = 6;
		vsp = -10
	}
	if(!left_down && !right_down && !down_down){
		vsp = -14
	}
	if(window == 7 && down_down){
		vsp = 18;
	}
	if(window == 7 && down_down && right_down){
		hsp = 8;
		vsp = 18;
	}
	if(window == 7 && down_down && left_down){
		hsp = -8;
		vsp = 18;
	}
	if(window == 6 && window_timer == 1){
		take_damage(player, -1, 1);	
	}
}
if(attack == AT_DAIR){
	if(window == 1){
		dairtimer = 0;
	}
	if(free == false && dairtimer < 1){
		dairland = 1;
	}
	if(window == 3 && free == true){
		window = 7;
	}
	can_move = false;
	if(dairland = 1){
		destroy_hitboxes();
		dairtimer++;
		if(dairtimer == 1){
			dairland = 0;
			sound_play(sound_get("anvil_land"));
			window = 4;
			window_timer = 0;
		}
	}
}


if (attack == AT_FSPECIAL){
	if(window == 3 && window_timer == 8){
		window = 4;
		window_timer = 1;
	}
	if(window == 2 && window_timer == 1 && skeletonmany > 0){
		spawnegg = instance_create(x,y-55,"obj_article1");
		sound_play(sound_get("pop"));
		skeletonmany += -1;
		if(spr_dir == 1){
				if(useskins){
					with(spawnegg){
						DJ = true;
					}
				}
			with(spawnegg){
				skeleright = 1;
			}
		}
		else{
				if(useskins){
					with(spawnegg){
						DJ = true;
					}
				}
			with(spawnegg){
				skeleright = 0;
			}
		}
		if(free == true){
			with(spawnegg){
				creepair = 1;
			}
		}
	}
	if(skeletonmany == 0){
		if(spr_dir == 1){
			if(window == 1 && window_timer == 1){
				window = 3;
				window_timer = 0;
			}
			if(window == 3 && window_timer < 8){
				with(spawnegg){
					if(state == 1){
						state = 2;
						skeleright = 1;
					}
					if(arrows > 4 && state == 1){
						state = 4;
					}
				}
			}
		}
		else{
			if(window == 1 && window_timer == 1){
				window = 3;
				window_timer = 1;
			}
			if(window == 3 && window_timer < 8){
				with(spawnegg){
					if(state == 1){
						state = 2;
						skeleright = 0;
					}
					if(arrows > 4 && state == 1){
						state = 4;
					}
				}
			}
		}
	}
}
//damage self
if (attack == AT_NSPECIAL){
	if(tntout == false && tntreal == false){
		if(window == 2 && window_timer == 1){
			sound_play(sound_get("pop"));
			if(spr_dir == 1){
				tnt = instance_create(x+5,y-25,"obj_article3");
				tntout = true;
				if(useskins){
					with(tnt){
					dj = true;
					}
				}
			}
			else{
				tnt = instance_create(x-5,y-25,"obj_article3");
				tntout = true;
				with(tnt){
					state = 1;
				}
				if(useskins){
					with(tnt){
					dj = true;
					}
				}
			}
		}	
	}
	else{
		if(!endertnt2){
			if(window == 2 && window_timer == 1){
				move_cooldown[AT_NSPECIAL] = 30;
				tntreal = 1;
					with(tnt){
						if(state == 2 || state == 6){
							creepressed = 1;	
						}
						if(state == 1 || state == 0){
							creepressed = 2;
						}
				}
				window = 4;
			}
		}
	}
}

if(attack == AT_JAB){
	if(window < 6){
		if(was_parried){
	    	was_parried = false;
		}
	}
}

if(attack == AT_EXTRA_1){
	if(window == 1 && window_timer == 1){
		sound_play(sound_get("pop"));
	}
	if(window == 2 && window_timer == 1){
		sound_play(sound_get("step1"));
		sound_play(sound_get("enderhit2"));
	}
	if(window == 3 && window_timer == 1){
		sound_play(sound_get("pop"));
	}
}
if(attack == AT_EXTRA_2){
		if(window == 2 && window_timer == 14){
			noteblock = instance_create(x,y,"obj_article2");
		with(noteblock){
			noteblock = true 
			state = 50
		}
	}
	if(window == 4){
		if(special_pressed && taunt_pressed){
			window = 5;
			window_timer = 0;
		}
		//flats
		if(!special_pressed){
			if(attack_pressed && !left_down && !down_down && !right_down && !up_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 1;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(attack_pressed && left_down && !right_down && !up_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 3;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.1);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(attack_pressed && left_down && up_down && !right_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 5;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.25);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(attack_pressed && up_down && !right_down && !left_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 6;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.3);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(attack_pressed && right_down && up_down && !left_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 8;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.5);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(attack_pressed && right_down && !left_down && !up_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 10;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.65);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(attack_pressed && right_down && down_down && !left_down && !up_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 12;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.85);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(attack_pressed && down_down && !right_down && !up_down && !left_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 13;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
		}
		//sharps
		if(!attack_pressed){
			if(special_pressed && !left_down && !right_down && !down_down && !up_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 2;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.05);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(special_pressed && left_down && !right_down && !down_down && !up_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 4;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.2);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(special_pressed && left_down && up_down && !right_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 7;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.4);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(special_pressed && up_down && !left_down && !right_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 9;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.6);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(special_pressed && right_down && !up_down && !left_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 11;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 1.8);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
		}
		//flats+1
		if(!jump_pressed){
			if(shield_pressed && !left_down && !down_down && !right_down && !up_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 1;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(shield_pressed && left_down && !right_down && !up_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 3;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.1);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(shield_pressed && left_down && up_down && !right_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 5;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.25);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(shield_pressed && up_down && !right_down && !left_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 6;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.3);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(shield_pressed && right_down && down_down && !left_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 8;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.5);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(shield_pressed && right_down && !left_down && !up_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 10;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.65);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(shield_pressed && right_down && down_down && !left_down && !up_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 12;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.85);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(shield_pressed && down_down && !right_down && !up_down && !left_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 13;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 3);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
		}
		//sharps+1
		if(!shield_pressed){
			if(jump_pressed && !left_down && !right_down && !down_down && !up_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 2;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.05);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(jump_pressed && left_down && !right_down && !down_down && !up_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 4;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.2);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(jump_pressed && left_down && up_down && !right_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 7;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.4);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(jump_pressed && up_down && !left_down && !right_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 9;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.6);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
			if(jump_pressed && right_down && !up_down && !left_down && !down_down){
				mustimer++;
				if(mustimer == 1){
					with(noteblock){
						note = true;
						note_col = 11;
					}
					sound_play(sound_get("mus"), 0, 0, 1, 2.8);
				}
				if(mustimer == 7){
					mustimer = 0;
				}
			}
		}
	}
	if(window == 5){
		with(noteblock){
			byebye = true;
		}
	}
}