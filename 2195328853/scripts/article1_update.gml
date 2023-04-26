//article1_update

depth = player_id.depth-1;
if(current_player != orig_player && current_player != player){
	player = current_player;
}
dontdestroylol = false;

//detach if owner change
if(player != orig_player){
	if(player_id.blob_ball == self){
		player_id.blob_ball = noone;
	}else if(player_id.blob_ball2 == self){
		player_id.blob_ball2 = noone;
	}else if(player_id.blob_ball3 == self){
		player_id.blob_ball3 = noone;
	}
}

if(ball_timer == 10){
	if(ball == 0){
	    vsp = -4;hsp = 2*spr_dir;
	}else if(ball == 1){
	    vsp = -5;hsp = 1*spr_dir;
	}else if(ball == 2){
	    vsp = -3;hsp = 3*spr_dir;
	}
}

ball_timer += 1;

if(ballmode == 0){ //normal
	ignores_walls = true;
    if(vsp < 10){
        vsp += 0.15;
    }
    hsp *= 0.995;
	if(bouncetimer <= -10){
		image_index = 0;
	}else if(bouncetimer == 0){
		if(bounceanim == 0){
			image_index = 1;
		}else if(bounceanim == 1){
			image_index = 3;
		}
	}else if(bouncetimer == -5){
		if(bounceanim == 0){
			image_index = 3;
		}else if(bounceanim == 1){
			image_index = 1;
		}
	}
	Pocket_hsp = 7;Pocket_vsp = -5;Pocket_hud_imageindex = 0;
}else if(ballmode == 1){ //ice
	ignores_walls = false;
	if(vsp < 11){
        vsp += 0.45;
    }
	image_index = 5;
	Pocket_hsp = 7;Pocket_vsp = -5;Pocket_hud_imageindex = 3;
}else if(ballmode == 2){ //steam
	ignores_walls = true;
	if(hsp*spr_dir < 15){
        hsp += 0.1*spr_dir;
    }
    vsp *= 0.05;
    ballnum += 1;
    if(ballnum >= 7){
		if(bounceanim == 0){
	    	image_index = 6;bounceanim = 1;ballnum = 0;
		}else{
	    	image_index = 7;bounceanim = 0;ballnum = 0;
		}
	}
	Pocket_hsp = 10;Pocket_vsp = 0;Pocket_hud_imageindex = 1;
}else if(ballmode == 3){ //whirlpool
	ignores_walls = false;
	if(vsp < 7){
        vsp -= 0.1;
    }
    hsp *= 0.98;
    ballnum += 1;
    if(ballnum >= 2){
		if(bounceanim == 0){
	    	image_index = 8;bounceanim = 1;ballnum = 0;
		}else{
	    	image_index = 9;bounceanim = 0;ballnum = 0;
		}
	}
	Pocket_hsp = 2;Pocket_vsp = -3;Pocket_hud_imageindex = 2;
}

bouncetimer -= 1;
if(bouncetimer <= 0){
	if(place_meeting(x,y,asset_get("par_block"))){
		if(hsp > 0 && position_meeting(x+10,y,asset_get("par_block")) || hsp < 0 && position_meeting(x-10,y,asset_get("par_block"))){
			if(ballmode == 0){
				bouncetimer = 5;bounceanim = 0;
				hsp = -hsp;image_index = 4;
			}else if(ballmode == 1){
				if(hsp > 4 || hsp < -4){
					balldestroy = true;
				}
			}else if(ballmode == 2){
				bouncetimer = 5;hsp = -hsp;
			}
		}if(vsp < 0 && position_meeting(x,y-10,asset_get("par_block")) || vsp > 0 && position_meeting(x,y+10,asset_get("par_block"))){
			if(ballmode == 0){
				bouncetimer = 5;image_index = 2;bounceanim = 1;
				if(vsp <= 0){
					if(vsp < -1){
						vsp = -vsp*0.9;	
					}else{
						vsp = -3;	
					}	
				}else if(vsp > 0){
					if(vsp > 1){
						vsp = -vsp*0.9;	
					}else{
						vsp = 3;	
					}	
				}
			}else if(ballmode == 1){
				if(vsp > 7 || vsp < -7){
					balldestroy = true;
				}
			}
		}
	}else if(vsp > 3 && position_meeting(x,y+10,asset_get("par_jumpthrough"))){
		if(ballmode == 0){
			bouncetimer = 5;image_index = 2;bounceanim = 1;
			if(vsp < -1){
				vsp = -vsp*0.9;	
			}else{
				vsp = -3;	
			}
		}else if(ballmode == 1){
			if(vsp > 7){
				balldestroy = true;
			}
		}
	}
}
if(hsp > 0){
	spr_dir = 1;
}else if(hsp < 0){
	spr_dir = -1;
}

if (instance_exists(ballhitbox)) { //hitbox when moving
    if(hsp < 2 && hsp > -2 && vsp < 1 && vsp > -1 && ballmode == 1){
    	instance_destroy(ballhitbox);
    	ballhitbox = noone;
    } else {
    	ballhitbox.length++;
    	ballhitbox.x = x;
    	ballhitbox.y = y;
    	ballhitbox.player = current_player;
    	ballhitbox.spr_dir = spr_dir
    	if(hitstop <= 0){
	    	var d = point_distance(0, 0, hsp, vsp)
			if(ballmode == 0){
				ballhitbox.kb_angle = darctan2(-vsp, hsp * spr_dir);
				if(ballhitbox.kb_angle < 35 && ballhitbox.kb_angle > -20){
		    		ballhitbox.kb_angle = 35;
		    	}else if(ballhitbox.kb_angle > 145 && ballhitbox.kb_angle < 200){
		    		ballhitbox.kb_angle = 145;
		    	}
				ballhitbox.damage = 2+d/2;
				if(ballhitbox.kb_angle >= 0){
	        		ballhitbox.kb_value = 5+d/8;
	        		ballhitbox.kb_scale = 0.2+d/38;
				}else{
	        		ballhitbox.kb_value = 4+d/20;
	        		ballhitbox.kb_scale = 0.2+d/56;
				}//print_debug(string(ballhitbox.kb_scale));
				ballhitbox.hitpause = 15;
				ballhitbox.sound_effect = asset_get("sfx_waterhit_heavy");
				ballhitbox.hit_effect = 150;
				ballhitbox.hitstun_factor = 1;
				ballhitbox.image_xscale = 0.15;ballhitbox.image_yscale = 0.15;
			}else if(ballmode == 1){
				ballhitbox.kb_angle = darctan2(-vsp, hsp * spr_dir);
				if(ballhitbox.kb_angle < 35 && ballhitbox.kb_angle > -20){
		    		ballhitbox.kb_angle = 35;
		    	}else if(ballhitbox.kb_angle > 145 && ballhitbox.kb_angle < 200){
		    		ballhitbox.kb_angle = 145;
		    	}
				ballhitbox.damage = 5+d/2;
	        	if(ballhitbox.kb_angle >= 0){
	        		ballhitbox.kb_value = 5+d/8;
	        		ballhitbox.kb_scale = 0.2+d/32;
				}else{
	        		ballhitbox.kb_value = 4+d/20;
	        		ballhitbox.kb_scale = 0.2+d/48;
				}//print_debug(string(ballhitbox.kb_value));
				ballhitbox.hitpause = 20;
				ballhitbox.sound_effect = asset_get("sfx_ice_back_air");
				ballhitbox.hit_effect = 199;
				ballhitbox.hitstun_factor = 1;
				ballhitbox.image_xscale = 0.15;ballhitbox.image_yscale = 0.15;
			}else if(ballmode == 2){
				ballhitbox.kb_angle = 35;
				ballhitbox.damage = 1+d/3;
        		ballhitbox.kb_value = 3+d/20;
        		ballhitbox.kb_scale = 0.1+d/32;
				ballhitbox.hitpause = 2;
				ballhitbox.sound_effect = asset_get("sfx_ell_steam_release");
				ballhitbox.hit_effect = 144;
				ballhitbox.hitstun_factor = 1;
				ballhitbox.image_xscale = 0.23;ballhitbox.image_yscale = 0.13;
			}else if(ballmode == 3){
				ballhitbox.kb_angle = darctan2(-vsp, hsp * spr_dir);
				if(ballhitbox.kb_angle < 35 && ballhitbox.kb_angle > -20){
		    		ballhitbox.kb_angle = 35;
		    	}else if(ballhitbox.kb_angle > 145 && ballhitbox.kb_angle < 200){
		    		ballhitbox.kb_angle = 145;
		    	}
				ballhitbox.damage = 1;
	        	ballhitbox.kb_value = 2.75-vsp/1.5;
	        	ballhitbox.kb_scale = 0.2;
				ballhitbox.hitpause = 1;
				ballhitbox.sound_effect = asset_get("sfx_waterhit_medium");
				ballhitbox.hit_effect = 194;
				ballhitbox.hitstun_factor = 0.25;
				ballhitbox.image_xscale = 0.25;ballhitbox.image_yscale = 0.15;
			}
			if(ballhitbox.hitpause < 0){
				ballhitbox.hitpause = 1;
			}
    	}
    	
    	if(ballhitbox.was_parried){
	        instance_destroy(ballhitbox);
			ballhitbox = noone;
	        /*instance_destroy();
    		exit;*/
	    }
	}
	//print_debug(string(ballhitbox.kb_angle));
} else {
	if(hitplayertimer <= 0 && !hitplayer && hitstop <= 0 && ((ballmode == 1 && (hsp >= 2 || hsp <= -2 || vsp > 1 || vsp < -1)) || ballmode != 1)){
	    ballhitbox = create_hitbox(AT_NSPECIAL,1,floor(x),floor(y))
		ballhitbox.player = current_player;
		if(ballmode == 0){
			ballhitbox.kb_angle = darctan2(-vsp, hsp * spr_dir);
			if(ballhitbox.kb_angle < 35 && ballhitbox.kb_angle > -20){
		    	ballhitbox.kb_angle = 35;
		    }else if(ballhitbox.kb_angle > 145 && ballhitbox.kb_angle < 200){
		    	ballhitbox.kb_angle = 145;
		    }
			ballhitbox.damage = 2+d/2;
        	ballhitbox.kb_value = 5+d/8;
        	ballhitbox.kb_scale = 0.2+d/38;
			ballhitbox.hitpause = 15;
			ballhitbox.sound_effect = asset_get("sfx_waterhit_heavy");
			ballhitbox.hit_effect = 150;
			ballhitbox.hitstun_factor = 1;
			ballhitbox.image_xscale = 0.15;ballhitbox.image_yscale = 0.15;
		}else if(ballmode == 1){
			ballhitbox.kb_angle = darctan2(-vsp, hsp * spr_dir);
			if(ballhitbox.kb_angle < 35 && ballhitbox.kb_angle > -20){
		    	ballhitbox.kb_angle = 35;
		    }else if(ballhitbox.kb_angle > 145 && ballhitbox.kb_angle < 200){
		    	ballhitbox.kb_angle = 145;
		    }
			ballhitbox.damage = 5+d/2;
        	ballhitbox.kb_value = 5+d/8;
        	ballhitbox.kb_scale = 0.2+d/32;
			ballhitbox.hitpause = 20;
			ballhitbox.sound_effect = asset_get("sfx_ice_back_air");
			ballhitbox.hit_effect = 199;
			ballhitbox.hitstun_factor = 1;
			ballhitbox.image_xscale = 0.15;ballhitbox.image_yscale = 0.15;
		}else if(ballmode == 2){
			ballhitbox.kb_angle = 35;
			ballhitbox.damage = 1+d/3;
        	ballhitbox.kb_value = 3+d/20;
        	ballhitbox.kb_scale = 0.1+d/32;
			ballhitbox.hitpause = 2;
			ballhitbox.sound_effect = asset_get("sfx_ell_steam_release");
			ballhitbox.hit_effect = 144;
			ballhitbox.hitstun_factor = 1;
			ballhitbox.image_xscale = 0.23;ballhitbox.image_yscale = 0.13;
		}else if(ballmode == 3){
			ballhitbox.kb_angle = darctan2(-vsp, hsp * spr_dir);
			if(ballhitbox.kb_angle < 35 && ballhitbox.kb_angle > -20){
		    	ballhitbox.kb_angle = 35;
		    }else if(ballhitbox.kb_angle > 145 && ballhitbox.kb_angle < 200){
		    	ballhitbox.kb_angle = 145;
		    }
			ballhitbox.damage = 1;
        	ballhitbox.kb_value = 2.75-vsp/1.5;
        	ballhitbox.kb_scale = 0.2;
			ballhitbox.hitpause = 1;
			ballhitbox.sound_effect = asset_get("sfx_waterhit_medium");
			ballhitbox.hit_effect = 194;
			ballhitbox.hitstun_factor = 0.25;
			ballhitbox.image_xscale = 0.25;ballhitbox.image_yscale = 0.15;
		}
		if(ballhitbox.hitpause < 0){
			ballhitbox.hitpause = 1;
		}
	}else{
	    //projectile = false;
	    //ballhitbox = noone;
	}
}

if(hitplayer && hitstop <= 0){
	hitplayertimer -= 1;
	if(hitplayertimer <= 0){
		hitplayer = false;
	}
}

//if (collision_rectangle( x-10, y-10, x+10, y+10, asset_get("pHitBox"), true, true ) && hitlockout <= 0){
with(asset_get("pHitBox")){
    if(other.hitlockout <= 0 && ((attack != AT_NSPECIAL && (attack != AT_FSPECIAL || attack == AT_FSPECIAL && (hbox_num == 2 || hbox_num == 3)) && other.hitlockout2 <= 0 && player_id == other.player_id) || player_id != other.player_id)){
        if(place_meeting(x,y,other)){
        	if(damage > 0 && kb_value > 0 && hit_priority > 0 && other.ballmode != 3 || attack == AT_FSPECIAL && (hbox_num == 2 || hbox_num == 3) && player_id == other.player_id){
	        		//if(other != ballhitbox /*&& place_meeting(x,y,other)*/ && player != other.player){
	                other.player = player;other.current_player = player;
	                if(instance_exists(other.ballhitbox)){
	                	if(instance_exists(other.ballhitbox.player)){
	                    	other.ballhitbox.player = player;
	                	}
	                }other.hitplayertimer -= 10;
	                other.hitlockout = 20;
	                other.hitlockout2 = 60;
	        		other.spr_dir = spr_dir;
	        		if(type <= 1){
	        			other.hitstop = hitpause;
	        			player_id.hitpause = true;player_id.hitstop = hitpause;
            			player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
	        		}
        			other.ball_timer -= hitpause;
        			knockback_angle = kb_angle;
	        		if(knockback_angle == 361){
	        			knockback_angle = 45;
	        		}
	        		if(other.ballmode == 0){
		                other.hsp = cos(degtorad(knockback_angle))*(kb_value+(kb_scale*6)*1.5)*spr_dir;
		                if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
		                    other.vsp = -sin(degtorad(-knockback_angle))*(kb_value+(kb_scale*6)*1.5);
		                }else{
		                    other.vsp = -sin(degtorad(knockback_angle))*(kb_value+(kb_scale*6)*1.5);
		                }
	        		}else if(other.ballmode == 1){
	        			other.hsp = cos(degtorad(knockback_angle))*(kb_value+(kb_scale*6)*2.5)*spr_dir;
		                if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
		                    other.vsp = -sin(degtorad(-knockback_angle))*(kb_value+(kb_scale*6)*2.5);
		                }else{
		                    other.vsp = -sin(degtorad(knockback_angle))*(kb_value+(kb_scale*6)*2.5);
		                }
	        		}else if(other.ballmode == 2){
	        			other.hsp = cos(degtorad(knockback_angle))*(kb_value+(kb_scale*6)*6)*spr_dir;
	        		}else if(other.ballmode == 3){
		                if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
		                    other.vsp = -sin(degtorad(-knockback_angle))*(kb_value+(kb_scale*6)*3);
		                }else{
		                    other.vsp = -sin(degtorad(knockback_angle))*(kb_value+(kb_scale*6)*3);
		                }
	        		}
	        		if(player_id == other.player_id){
	        			if(attack == AT_FSPECIAL){
	        				if(hbox_num == 1){
		        				if(other.ballmode == 2){
		        					other.hsp *= 1.5;
		        				}else{
		        					other.hsp *= 3;
		        				}
		        			}else if(hbox_num == 2){
		        				other.spr_dir = -other.spr_dir;
		        				other.hsp = 4*other.spr_dir;
		        			}else if(hbox_num == 3){
		        				other.spr_dir = spr_dir;
		        				other.hsp = 5*spr_dir;
		        			}
	        			}else if(attack == AT_DSPECIAL && hbox_num == 1){
	        				other.vsp = 14;
	        			}
	        		}
	                spawn_hit_fx(round(other.x), round(other.y), hit_effect);
					sound_play(sound_effect);
	                other.lasthitbox = id;
	                other.ball_timer -= 60;
	                if(other.ball_timer < 11){
        				other.ball_timer = 11;
        			}
	            }
        }
    }
}
if(hitstop <= 0){
	hitlockout -= 1;
	if (instance_exists(lasthitbox)) {
		hitlockout2 -= 1;
	}else{
		hitlockout2 -= 10;
	}
}

if(ballmode == 3){
	with(oPlayer){
	    if(get_player_team(player) != get_player_team(other.player)){ //dont hit yourself or teammates
	    	var dist = point_distance(other.x, other.y, x, y); //distance to tornado
	    	if(dist < 70){
		        var dist2 = other.x - x;
		        var dir = point_direction(x,y,other.x,other.y); //direction between player and tornado
		        var pullspeed = (400 * (1/dist)) * sign(dist2);
	            if (abs(dist2) > 18) { //less speed jitter near the center
	                x += clamp(pullspeed,-2,2);
	                y += clamp(pullspeed,-2,2);
	            }
			    //free = true;
	    	}
	    }
	}
}

if(get_gameplay_time() % 2 == 0){
	if(ballmode == 0 || ballmode == 1){
    	var rand_dir = random_func(1, 359, true);
    	spawn_hit_fx(round((x) + round(lengthdir_x(5, rand_dir))), round(y + round(lengthdir_y(5, rand_dir))), player_id.fx_bluetrail);
	}else if(ballmode == 3){
    	//var rand_dir = random_func(1, 359, true);
    	spawn_hit_fx(x, y+8, player_id.fx_bluetrailwhirlpool2);
    	spawn_hit_fx(x, y-8, player_id.fx_bluetrailwhirlpool);
	}
}
if(get_gameplay_time() % 1 == 0){
	if(ballmode == 2){
		var rand_dir = random_func(1, 359, true);
    	spawn_hit_fx(round((x) + round(lengthdir_x(10, rand_dir))), round(y + round(lengthdir_y(10, rand_dir))), player_id.fx_bluetrail2);
	}
}
if(hitstop < 0){
	if(get_gameplay_time() % 20 == 0){
		spawn_hit_fx(round(x),round(y), player_id.fx_blob_ball_explosion);
	}
}
if(x > room_width || x < 0 || y >= room_height+65 || y <= -200 /*|| ball_timer > 300*/ || balldestroy){
    if (instance_exists(ballhitbox)) {
    	instance_destroy(ballhitbox);
    	ballhitbox = noone;
    }
    if(ballmode == 0){
	    create_hitbox(AT_NSPECIAL,3,round(x),round(y));
	    spawn_hit_fx(round(x+20),round(y+20), player_id.fx_blob_ball_explosion);spawn_hit_fx(x-20,y+20, player_id.fx_blob_ball_explosion);
	    spawn_hit_fx(round(x+20),round(y-20), player_id.fx_blob_ball_explosion);spawn_hit_fx(x-20,y-20, player_id.fx_blob_ball_explosion);
	    sound_play(asset_get("sfx_waterhit_heavy"));
	}else if(ballmode == 1){ //ice
	    create_hitbox(AT_NSPECIAL,4,round(x),round(y));
	    spawn_hit_fx(round(x),round(y), 199);
	    sound_play(asset_get("sfx_ice_back_air"));
	}else if(ballmode == 2){ //steam
	    create_hitbox(AT_NSPECIAL,5,round(x),round(y));
	    spawn_hit_fx(round(x+20),round(y-20), 144);spawn_hit_fx(round(x-20),round(y-20), 144);spawn_hit_fx(round(x+20),round(y+20), 144);spawn_hit_fx(round(x-20),round(y+20), 144);
		sound_play(asset_get("sfx_ell_steam_release"));
	}else if(ballmode == 3){ //whirlpool
	    create_hitbox(AT_NSPECIAL,6,round(x),round(y));
	    spawn_hit_fx(round(x),round(y), 196);
	    sound_play(asset_get("sfx_waterhit_heavy"));
	}
    
    instance_destroy();
    exit;
}