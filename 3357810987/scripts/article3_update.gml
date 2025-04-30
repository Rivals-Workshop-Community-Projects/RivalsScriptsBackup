//Relics update
state_timer++;

if(spawn_emphasis > 0){
	spawn_emphasis -= 0.5
}

if(y_float == y_float_max){
	y_float_dir = -1;
} else if (y_float == -y_float_max){
	y_float_dir = 1;
}
y_float += y_float_dir;


switch(state){
	case 0://Sit idle and unhittable, 
		relic_spawn--;
		image_alpha = 0;
		state_timer = 0;
		hitplayer = 0;
		hsp = 0;
		vsp = 0;
		if (relic_spawn == 10*60){
			var position_swap = (random_func(1, 8, true)) + 1;
			x = get_marker_x(position_swap);
			y = get_marker_y(position_swap);
			print("Relic spawn reset")
		}
		with(asset_get("oPlayer")){
			if (place_meeting(x,y,other.id)){
				var position_swap = (random_func(1, 8, true)) + 1;
				other.x = get_marker_x(position_swap);
				other.y = get_marker_y(position_swap);
				print("Relic detected a player")
			}
		}
		with(obj_stage_article){
			if(variable_instance_exists(id, "isrelic") and state <= 2){
				if (place_meeting(x,y,other.id)){
					var position_swap = (random_func(1, 8, true)) + 1;
					other.x = get_marker_x(position_swap);
					other.y = get_marker_y(position_swap);
					print("Relic detected another relic")
				}
			}
		}
		if(relic_spawn <= 0){//Go to next state
			state++;
			spawn_emphasis = 10;
			sound_play(sound_get("rebirth_heart"));
			print("I'm going to spawn now at x " + string(x) + " y " + string(y))
			spawn_spot_y = y;
		}
	break;
	case 1://First spawning in
		if(image_alpha < 1){
			image_alpha += 0.2;
		} else {
			state++;
			y_float = -30;
			y_float_dir = -1;
		}
	break;
	case 2://Idle and hittable
		image_alpha = 1;
		hitplayer = 0;
		var hitboxhit = noone;
		if(y > spawn_spot_y + 10){
			//vsp -= 0.05;
			//y_float = -30;
			y_float_dir = -1;
			vsp = 0;
		} else if ( y < spawn_spot_y - 10){
			//vsp += 0.05;
			//y_float = 30;
			y_float_dir = 1;
			vsp = 0;
		}
		vsp += (y_float/600)
		with (pHitBox){
			if (place_meeting(x,y,other) and type != 2){
				if(other.hitconnect == false){
					spawn_hit_fx(x, y, hit_effect);
				}
				with(other){
					if (hitconnect == false){
			               sound_play(other.sound_effect);
			               hitconnect = true;
			        }
			            hitplayer = other.player;
			            if(other.kb_value != 0){
			        		hitstrength = other.kb_value;
				        } else {
				        	hitstrength = 2.5;
				        }
		            	hitpausing = other.hitpause;
			            hitboxhit = other.id;
			        	hitangle = get_hitbox_angle(hitboxhit);
			      		state = 3;
			      		hsp = hitstrength*dcos(hitangle)*1.5;
	    				vsp = -hitstrength*dsin(hitangle)*2;
	    				spawn_emphasis = 5;
			      		other.hitpause = true;
			   		if(other.kb_value == 0){
			   			playerhitpause = false;
			   		} else {
				   		playerhitpause = true;
				   		sound_play(sound_get("rebirth_power"));
				   		print_debug("Hitplayer: " + string(hitplayer));
			   		}
				}
			}
		}
	break;
	case 3://Hit
		kb_timer++;
		destx = x;
		desty = y;
		if(vsp < 0){
			vsp -= -hitstrength*dsin(hitangle)/25;
		}
		if(kb_timer >= kb_max * (hitstrength*0.5) or kb_timer == 10){
			kb_timer = 0;
			with(oPlayer){
				if(player == other.hitplayer){
					relics_on_player++;
					other.state = 4;
					other.relic_num = relics_on_player;
					other.checked_dmg = get_player_damage(player);
					other.state_timer = 0;
				}
			}
		}
	break;
	case 4://Follow player
		depth = 0 + relic_num;
		if(relic_num == 1){
			with(oPlayer){
				if(player == other.hitplayer){
					other.relic_target_x = x - 30*spr_dir;
					other.relic_target_y = (y-20) + other.y_float;
					other.relic_spr_dir = spr_dir;
					if((get_player_damage(player) >= other.checked_dmg + other.dmg_cap and hitpause) or state == PS_RESPAWN or state == PS_DEAD or (was_parried && state_timer == 1 and state != PS_IDLE)){
						//with(other){//Relic 1
							//print_debug("Reset relic " + string(relic_num) + " from hitplayer " + string(hitplayer));
							other.relic_num = 0;
							relics_on_player--;
						//}
					}
				}
			}
		} else if (relic_num > 1){
			with(obj_stage_article){
				if(variable_instance_exists(id, "isrelic")){
					if((hitplayer == other.hitplayer) and (relic_num == other.relic_num -1)){
						other.relic_target_x = x - 8*relic_spr_dir;
						other.relic_target_y = y - y_float / relic_num;
						other.relic_spr_dir = relic_spr_dir;
						other.y_float_dir = y_float_dir;
						other.y_float = y_float;
					}
				}
			}
		} else {//When relic goes down to 0
			//Reset back to idling
			state = 0;
			state_timer = 0;
			relic_spawn = 15*60;
			y_float = 30;
			y_float_dir = -1;
			vsp = 0;
			checked_dmg = 9999;
			nail_time = 0;
			var relic_fail = create_hitbox(AT_EXTRA_2,1,x,y);
			relic_fail.hsp = hsp;
			relic_fail.vsp = -5 + vsp;
			relic_fail.draw_xscale = 2;
			relic_fail.draw_yscale = 2;
			relic_fail.image_index = image_index;
			with(oPlayer){
				if(player == other.hitplayer){
					if(state != PS_RESPAWN or state != PS_DEAD){
						with(other){
							sound_play(sound_get("rebirth_sub"));
						}
					}
				}
			}
			with(obj_stage_article){
				if(variable_instance_exists(id, "isrelic")){
					if(hitplayer == other.hitplayer and relic_num > 0){//Getting the other relics
						print_debug("Adjusted relic " + string(relic_num) + " from hitplayer " + string(hitplayer));
						relic_num--;
					}
				}
			}
			switch(spawn_variables[0]){//Reset effects
				case 0://Nail
					/*with(oPlayer){
						if(player == other.hitplayer){
							outline_color = [ 0, 0, 0 ];
							init_shader();
						}
					}*/
				break;
				case 1://Eye
					with(oPlayer){
						if(player == other.hitplayer){
							roll_forward_max = roll_forward_max/1.5;
							roll_backward_max = roll_backward_max/1.5;
							air_dodge_speed = air_dodge_speed/1.5;
						}
					}
				break;
				case 2://Rib
					with(oPlayer){
						if(player == other.hitplayer){
							super_armor = false;
						}
					}
				break;
				case 3://Ring
					with(oPlayer){
						if(player == other.hitplayer){
							max_djumps--;
						}
					}
				break;
				case 4://Heart
					with(oPlayer){
						if(player == other.hitplayer){
							blood_glow = 0;
							outline_color = [ 0, 0, 0 ];
							init_shader();
						}
					}
				break;
			}
		}
		//Effects
		switch(spawn_variables[0]){
			case 0://Nail
				nail_time++;
				if(nail_time >= nail_max){
					with(oPlayer){
						if(player == other.hitplayer){
							with(other){
								if state_timer%16 == 0 {
									var sparks = spawn_hit_fx(other.x-ease_sineInOut(-20,20,random_func_2(0,360,true),360),other.y-16,fx_dspecial_sparks);
									sparks.depth = other.depth-5;
									sparks.sinx = random_func_2(1,360,true);
									sparks.fx_speed = 4;
									sparks.vsp = -.5;
									sparks.grav = -.2;
								}
								if state_timer%30 == 0 {
									var angle = random_func_2(0,20,true)+80;
									var embers = spawn_hit_fx(other.x,other.y-8,fx_nspecial2_trail);
									embers.spr_dir = random_func_2(1,2,true)==0?-1:1;
									embers.depth = other.depth-1;
									embers.draw_angle = 90;
									embers.hsp = lengthdir_x(3,angle);
									embers.vsp = lengthdir_y(3,angle);
									embers.grav = .2;
								}
							}
							if((attack == AT_FTILT or attack == AT_FTILT_2 or attack == AT_FAIR or attack == AT_FAIR_2 or attack == AT_JAB or attack == AT_JAB_2) and window_timer == 1 and window == 1 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR)){
								with(other){//Retrieve code back from article
									sound_play(sound_get("sfx_hellfire"));
									nail_time = 0;
									var hellfire = create_hitbox(AT_NSPECIAL, 1, other.x + 20*other.spr_dir, other.y - 50);
										hellfire.spr_dir = other.spr_dir;
										hellfire.draw_xscale = other.spr_dir;
										hellfire.player = hitplayer
										hellfire.hsp*= other.spr_dir;
										//hellfire.vsp = 2*other.free;
								}
							}
						}
					}
				}
			break;
			case 1://Eye
				with(oPlayer){
					if(player == other.hitplayer){
						if(other.state_timer == 1){
							roll_forward_max = roll_forward_max*1.5;
							roll_backward_max = roll_backward_max*1.5;
							air_dodge_speed = air_dodge_speed*1.5;
						}
						if(state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD){
							visible = false;
							with(other){
								if other.state_timer == 0 {
									sound_stop(asset_get("sfx_roll"));
									sound_play(asset_get("sfx_forsburn_disappear"));
									sound_play(sound_get("sfx_bats_flap"),0,0,.3);
									sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.3);
								}
								if other.state_timer >= 3 && other.state_timer <= 16 {
									other.hud_offset = room_height;
									if (other.state_timer-3)%5 == 0 || other.state_timer == 16 { 
										var mist = spawn_hit_fx(other.x,other.y-48,fx_mist_cloud);
										mist.depth = other.depth+1;
										mist.hsp = other.hsp/15;
										mist.grav = .05;
										mist.draw_angle = random_func_2(0,360,true);
										mist.scale = random_func_2(30+i,1,false)*.25;
									}
								} else {
									other.hud_offset = 0;
								}
								if (other.state_timer >= 3 && other.state_timer <= 8) && other.state_timer % 2 == 0 {
									for (var i = 0; i < 2; i++){
										var dirto = !other.spr_dir ? random_func_2(i,20,true) : 180-random_func_2(i,20,true);
										var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x,y-56);
										bat.depth = other.depth+1;
										bat.hsp = lengthdir_x(random_func_2(20+i,4,false)+1,dirto);
										bat.vsp = lengthdir_y(random_func_2(20+i,4,false)+1,dirto);
									}
								}
							}
						} else if (state == PS_AIR_DODGE) {
							visible = false;
							with(other){
								if other.state_timer >= 3 && other.state_timer <= 14 {
									other.hud_offset = room_height;
									if (other.state_timer-3)%5 == 0 || other.state_timer == 16 { 
										var mist = spawn_hit_fx(other.x,other.y-48,fx_mist_cloud);
										mist.depth = depth+1;
										mist.hsp = other.hsp/15;
										mist.grav = .05;
										mist.draw_angle = random_func_2(0,360,true);
										mist.scale = random_func_2(30+i,1,false)*.25;
									}
								} else {
									other.hud_offset = 0;
								}
								if (other.state_timer >= 2 && other.state_timer <= 8) && other.state_timer % 2 == 0 {
									if other.state_timer == 2 {
										sound_play(sound_get("sfx_bats_flap"),0,0,.35);
										sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.35);
									}
									for (var i = 0; i < 2; i++){
										var dirto = point_direction(0,0,hsp,vsp);
										var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x,y-56);
										bat.depth = depth+1;
										bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+1,dirto);
										bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+1,dirto);
									}
								}
							}
						} else {
							visible = true;
						}
					}
				}
			break;
			case 2://Rib
				with(oPlayer){
					if(player == other.hitplayer){
						if(attack == AT_FSTRONG or attack == AT_FSTRONG_2 or attack == AT_USTRONG or attack == AT_USTRONG_2 or attack == AT_DSTRONG or attack == AT_DSTRONG_2){
							super_armor = true;
							if(hitstop == hitstop_full and has_hit == false){
								with(other){
								//aesthetics
									var i = 0;
									var mist = spawn_hit_fx(other.x,other.y-other.char_height+48-random_func_2(50,32,true),fx_mist_cloud_hit);
									mist.depth = other.depth-1;
									mist.grav = .01;
									mist.spr_dir = random_func_2(0,2,true)==0?-1:1;
									mist.scale = random_func_2(10,1,false)*.25;
									repeat(4){
										var dirto = 90+random_func_2(100+i,90,true)-45;
										var bat = create_hitbox(AT_EXTRA_5,random_func_2(110+i,2,true)+1,x,y-56);
										bat.length = bat.length-10;
										bat.depth = depth-1;
										bat.hsp = lengthdir_x(random_func_2(120+i,2,false)+1,dirto);
										bat.vsp = lengthdir_y(random_func_2(120+i,2,false)+1,dirto);
										i++;
									}
									sound_play(asset_get("sfx_ell_steam_hit"));
									sound_play(sound_get("sfx_bats_squeak_single"+string(random_func_2(0,3,true)+1)),0,0,.4);
									sound_stop(enemy_hitboxID.sound_effect);
								}
							}
						}
					}
				}
			break;
			case 3://Ring
				with(oPlayer){
					if(player == other.hitplayer){
						if(other.state_timer == 1){
							max_djumps++;
						}
						if(djumps == max_djumps && state == PS_DOUBLE_JUMP){
							if (state_timer >= 2 && state_timer <= 8) && state_timer % 2 == 0 {
								if state_timer == 2 {
									with(other){
										sound_play(sound_get("sfx_bats_flap"),0,0,.75);
										sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.75);
									}
								}
								with(other){
									for (var i = 0; i < 6; i++){
										var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,other.x - random_func_2(i,80,true)+40,other.y+10);
										var dirto = point_direction(0,0,other.hsp,other.vsp);
										bat.length = bat.length-5;
										bat.depth = other.depth-1;
										bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+1,dirto)+round(ease_sineInOut(-3,3,(other.window_timer-9),2));
										bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+.5,dirto);
									}
								}
							}
						}
					}
				}
			break
			case 4://Heart
				with(oPlayer){
					if(player == other.hitplayer){
						if(has_hit_player && hitstop == hitstop_full){
							take_damage( player, -1, -2 );
							blood_glow = -1.25;
							outline_color = [ 235, 26, 26 ];
							init_shader();
							other.state_timer = 0;
						}
						//Decrease blood glow when not hitting with fspecial
						if(blood_glow < 0){
							blood_glow+=0.075;
						} else{
							//if(outline_color != [ 117, 24, 17 ] and other.state_timer > 20){
							outline_color = [0, 0, 0];
							init_shader();
							//}
							//print(blood_glow);
						}
					}
				}
			break;
		}
		
		//Motion
		if(relic_target_x > x){
			destx += max(((relic_target_x)-x)*0.1, -1);
		} else if (relic_target_x < x){
			destx += min(((relic_target_x)-x)*0.1, 1);
		}
		if(relic_target_y > y){
			desty += max((relic_target_y-y)*0.1, 0.2);
		} else if (relic_target_y < y){
			desty += min((relic_target_y-y)*0.1, -0.2);
		}
		vsp = floor(desty-y);
		hsp = floor(destx-x);
	break;
}

//Hit mechanics
if (!place_meeting(x, y, pHitBox)){//To make sounds and effects play on 1 frame
    hitconnect = false;
}
if(playerhitpause == true){//Make hitpause happen in a way that doesn't cause errors because of type.
	with (asset_get("oPlayer")){
		if((attack == AT_UTILT && url == CH_ELLIANA)){
			playerhitpause = false;//Elliana's utilt on detecting too much hitpause crashes the game?? So this nullifies that.
		}
		else{
		    if (player == other.hitplayer){
		        has_hit = true; //means it hit something, but not a player
		        hitpause = true; //means is in hitpause
		        hitstop = other.hitpausing; //current hitpause frames
		        hitstop_full = other.hitpausing; //hitpause initial value (you'd have it the same as hitstop probably)
		        old_hsp = hsp; //important; this is how hitpause pauses the player in place
		        old_vsp = vsp; //it stores the velocity in there and resumes it later
		        //sound_play(asset_get("sfx_birdclap"));
		    }
		}
	}
	playerhitpause = false;
}