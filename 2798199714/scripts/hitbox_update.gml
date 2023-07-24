
if(attack == AT_NSPECIAL){
	if(hbox_num == 1){
		if(swordnum <= 1){
			depth = player_id.depth+1;
			if(player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND){
				destroyed = true;
			}
		}
		if(swordnum == 1){
			if(player_id.attack == AT_NSPECIAL && (player_id.window >= 3 && player_id.window_timer >= 1)){
				swordnum = 2;
				if(player_id.up_down && (vsp < -0.1 || player_id.runeI)){
					hsp *= 0.35;vsp -= 0.25;vsp = min(vsp,-0.75);
					up = true;
				}else if(player_id.runeI){
					if(player_id.down_down){
						hsp *= 0.25;vsp += 0.25;vsp = max(vsp,0.75);
					}else if(player_id.right_down){
						hsp += 0.5;hsp = max(hsp,1);vsp *= 0.25;
					}else if(player_id.left_down){
						hsp -= 0.5;hsp = min(hsp,-1);vsp *= 0.25;
					}
				}
			}
		}
		/*if(swordnum <= 1){
			if(player_id.attack == AT_NSPECIAL && player_id.window <= 2){
				if(player_id.up_down){
					hsp *= 0.5;
					if(vsp > 0.1){vsp -= -0.1;}
					up = true;
				}else{
					up = false;
				}
			}
		}*/
		if(swordnum == 0){ //startup phase
			hsp = hsp*0.8;vsp = vsp*0.8;
			//hsp = player_id.hsp+(hsp*0.9);vsp = player_id.vsp+(vsp*0.9);
			if(hitbox_timer >= 15){
				swordnum = 1;
			}
		}else if(swordnum == 1){ //waiting
			//hsp = player_id.hsp;vsp = player_id.vsp;
		}else if(swordnum == 2){ //start moving
			swordnum = 3;hitbox_timer = 100;
		}else if(swordnum == 3){ //moving
			if(hitbox_timer >= 105){
				hit_priority = 3;
			}
			if(hitbox_timer < 110){
				hsp *= 1.55;vsp *= 1.55;
			}
		}
		/*hsp = min(hsp, 20);vsp = min(vsp, 20);
		hsp = max(hsp, -20);vsp = max(vsp, -20);*/
		angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
    	proj_angle = angle;
    	if(hitbox_timer % 2 == 0 && !Pocketed){
            swordfx = spawn_hit_fx(x, y, player_id.fx_nspecial_swordtrail);swordfx.draw_angle = proj_angle;
        }
        if(vsp >= 10){
        	if(spr_dir == 1 && hsp > 6 || spr_dir == -1 && hsp < -6){
        		kb_angle = 300;
        	}else if(hsp > 6 || hsp < -6){
        		kb_angle = 240;
        	}else{
        		kb_angle = 270;
        	}
        	kb_value = 4;kb_scale = .4;
        }else if(vsp <= -10){
        	if(spr_dir == 1 && hsp > 6 || spr_dir == -1 && hsp < -6){
        		kb_angle = 70;
        	}else if(hsp > 6 || hsp < -6){
        		kb_angle = 110;
        	}else{
        		kb_angle = 90;
        	}
        	kb_value = 6.5;kb_scale = .7;
        }else{
        	if(spr_dir == 1 && hsp > 0 || spr_dir == -1 && hsp < 0){
        		kb_angle = 45;
        	}else{
        		kb_angle = 135;
        	}
        	kb_value = 6;kb_scale = .7;
        }
    	if(x > room_width+120 || x < -120 || y >= room_height+120 || !up && y <= -200){
    		destroyed = true;	
		}else if(up && y <= -200){
    		swordnum2 = 1;y = -190;x -= 300*spr_dir;
    		hsp = 14*spr_dir;vsp = 14;
		}
		
		if(hit_priority > 0){
			MattCanGrab = true;MorshuCanGrab = true;
			CalCanSnack = 1;
			AriaCantAbsorb = false;AriaDontDestroyWhenAbsorbed = true;
			Pocketable = true;
		}else{
			MattCanGrab = false;MorshuCanGrab = false;
			CalCanSnack = 0;
			AriaCantAbsorb = true;AriaDontDestroyWhenAbsorbed = true;
			Pocketable = false;
		}
		
		if(player != orig_player){
			up =  false;
			swordnum = 3;
		}
		
		if(Pocketed){
			swordnum = 1;
			waspocketed = true;
		}else{
			if(waspocketed){
				swordnum = 3;hitbox_timer = 100;
				waspocketed = false;
			}
		}
	}
}

if(attack == AT_FSPECIAL){
    if(hbox_num <= 2){
    	x = player_id.x+45*player_id.spr_dir;y = player_id.y-35;
    	with(asset_get("pHitBox")){
			if(place_meeting(x,y,other) && other.player_id.state != PS_HITSTUN && other.player_id.state != PS_HITSTUN_LAND){
		    	if(damage > 0 && kb_value > 0 && hit_priority > 0 && player != other.player){
		    		if(other.player_id.fspec_invinc <= 0){
				    	var eff = spawn_hit_fx(other.x, other.y, hit_effect);eff.pause = 8.58;
				    	sound_play(sound_effect);
				    	var dmg = round(damage*(1+(player_id.strong_charge/100)));
				    	other.player_id.fspec_charge += dmg;
				    	other.player_id.hitpause = true;other.player_id.hitstop = hitpause;
	                	other.player_id.old_hsp = other.player_id.hsp;other.player_id.old_vsp = other.player_id.vsp;
	                	if(other.player_id.free){
	                		other.player_id.old_hsp -= (dmg/6)*other.player_id.spr_dir;
	                	}else{
		                	other.player_id.old_hsp -= (dmg/1.5)*other.player_id.spr_dir;
		            	}
		            	with(other.player_id){
		            		sound_play(sound_get("shield"));
					    	window = 8;window_timer = 0;
				    	}
			    	}
		        	if(type == 2){
			        	if(!plasma_safe || !transcendent){
				        	destroyed = true;
				    	}
				    	with(other.player_id){
				        	fspec_invinc = 16;
				        	invincible = true;invince_time = 16;
				    	}
			    	}else{
			    		if(other.player_id.fspec_invinc <= 0){
			    			var dmg = round(damage*(1+(player_id.strong_charge/100)));
	    	        		player_id.hitpause = true;player_id.hitstop = hitpause;
	                		player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
			            	if(player_id.free){
		                		player_id.old_hsp = (dmg/6)*other.player_id.spr_dir;
		                	}else{
			                	player_id.old_hsp = (dmg/1.5)*other.player_id.spr_dir;
			            	}
			            	if(other.player_id.spr_dir == 1 && player_id.x > other.player_id.x || other.player_id.spr_dir == -1 && player_id.x < other.player_id.x){
					    		with(other.player_id){
						    		fspec_invinc = 12;
						    		invincible = true;invince_time = 12;
					    		}
			            	}else{
			            		with(other.player_id){
						    		fspec_invinc = 12;
					    		}
			            	}
			    		}
			    	}
		    	}
			}
		}
    }
    if(hbox_num == 3){
    	angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
	    if(hitbox_timer % 3 == 0){
            var trail = spawn_hit_fx(x+10*spr_dir, y, player_id.fx_fspecial_projectile_trail);trail.depth = depth-1;
            trail.spr_dir = spr_dir;trail.draw_angle = proj_angle;
        }
    }
}

if(attack == AT_FSTRONG){
    if(hbox_num == 2){
    	angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
	    if(hitbox_timer % 3 == 0){
            var trail = spawn_hit_fx(x+10*spr_dir, y, player_id.fx_fstrong_projectile_trail);trail.depth = depth-1;trail.draw_angle = proj_angle;
        }
    }
}

if(attack == AT_USTRONG){
    if(hbox_num == 4 || hbox_num == 6){
    	if(player == orig_player && (player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND)){
			destroyed = true;
		}
	    if((hitbox_timer == 19 || destroyed) && player_id.state != PS_HITSTUN && player_id.state != PS_HITSTUN_LAND){
            var hit = create_hitbox(AT_USTRONG, hbox_num+1, x, y);hit.player = player;
            hit.PocketBuff = PocketBuff;
			if(PocketBuff > 0){
				hit.damage = ceil(hit.damage*(power(1.5,PocketBuff)));hit.kb_scale = hit.kb_scale*(power(1.25,PocketBuff));
				hit.damage = min(hit.damage,999);hit.kb_scale = min(hit.kb_scale,2);
			}
            if(waspocketed2){
            	with(player_id){sound_play(sound_get("lightning"));sound_play(sound_get("lightning2"));}
		    	shake_camera(15,5);
            }
        }
        if(hbox_num == 4 && (position_meeting(x, y+159,asset_get("par_block")) || position_meeting(x, y+159,asset_get("par_jumpthrough")))){
        	y -= 2;
        }
        if(hbox_num == 6){
        	x = player_id.x;y = player_id.y-160;
        	depth = player_id.depth+1;
        }
        
        if(Pocketed){
			waspocketed = true;waspocketed2 = true;
		}else{
			if(waspocketed){
				y -= 120;
				waspocketed = false;
			}
		}hit_priority = 0;
    }
    if(hbox_num == 5 || hbox_num == 7){
	    if(hitbox_timer == 3){
            hit_priority = 0;
        }
    }
}

if(attack == AT_DSTRONG){
	if(hbox_num < 9){
		if (hitbox_timer == 6 && (position_meeting(x+40*spr_dir,y+40,asset_get("par_block")) || position_meeting(x+40*spr_dir,y+40,asset_get("par_jumpthrough")))){
			if(hbox_num == 6){
				var fx_shockwave = spawn_hit_fx(x+40*spr_dir,y+40,player_id.fx_shockwave);fx_shockwave.depth = depth-1;
				var newfire = create_hitbox(AT_DSTRONG, 7, x+40*spr_dir, y);newfire.player = player;
			}else if(hbox_num != 8 || hbox_num == 8 && playercharge >= 30){
				var fx_shockwave = spawn_hit_fx(x+40*spr_dir,y+40,player_id.fx_shockwave);fx_shockwave.depth = depth-1;
				var newfire = create_hitbox(AT_DSTRONG, 8, x+40*spr_dir, y);newfire.player = player;
			}
		}
	}else if(hbox_num == 9){
		hsp = tornadospeed*spr_dir;
		if(hit_priority != -1 && !Pocketed){
			if (position_meeting(x+80*spr_dir,y+4500,asset_get("par_block")) /*|| position_meeting(x-20*spr_dir,y+4500,asset_get("par_block"))*/
			|| position_meeting(x+80*spr_dir,y+4500,asset_get("par_jumpthrough")) /*|| position_meeting(x-20*spr_dir,y+4500,asset_get("par_jumpthrough"))*/){
				
			}else if(!waspocketed){
				hitbox_timer = 130;
			}
			if (hitbox_timer == 130){
				hitbox_timer = 131;hit_priority = -1;image_xscale = 0;image_yscale = 0;anim = 8;
				var hit = create_hitbox(AT_DSTRONG, 11, x, y);hit.player = player;sound_stop(tornadosfx);sound_play(tornado_end_sfx);
				hit.PocketBuff = PocketBuff;
				if(PocketBuff > 0){
					hit.damage = ceil(hit.damage*(power(1.75,PocketBuff)));hit.kb_scale = hit.kb_scale*(power(1.25,PocketBuff));
					hit.damage = min(hit.damage,999);hit.kb_scale = min(hit.kb_scale,2);
				}
	        	var star = spawn_hit_fx(x+40*spr_dir, y+4470, player_id.fx_star_tiny);star.depth = depth-1;
				star = spawn_hit_fx(x-40*spr_dir, y+4470, player_id.fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
			}
			
			if(hit_priority != -1){
				if(hitbox_timer < 8){
					if(hitbox_timer % 2 == 0){
						anim -= 1;
					}
				}else{
					shake_camera(2,2);
					if(hitbox_timer % 2 == 0){
						anim += 1;
					}if(hitbox_timer % 4 == 0){
						var hit = create_hitbox(AT_DSTRONG, 10, x, y);hit.player = player;
						/*hit.PocketBuff = PocketBuff;
						if(PocketBuff > 0){
							hit.damage = ceil(hit.damage*(power(1.5,PocketBuff)));hit.kb_scale = hit.kb_scale*(power(1.25,PocketBuff));
							hit.damage = min(hit.damage,999);hit.kb_scale = min(hit.kb_scale,2);
						}*/
					}
					if(anim >= 8){
						anim = 0;
					}
				}
				if(hitbox_timer % 3 == 0){
					var fx_shockwave = spawn_hit_fx(x-20+round(random_func(1, 40, true)),y+4500,player_id.fx_shockwave_short);fx_shockwave.depth = depth-1;
					var dust = spawn_hit_fx(x-40*spr_dir,y+4500,player_id.fx_dust_sharp);dust.depth = depth-1;dust.spr_dir = -spr_dir;
				}if(hitbox_timer % 4 == 0){
					var fx_shockwave = spawn_hit_fx(x-30+round(random_func(2, 60, true)),y+4500,player_id.fx_shockwave_short_2);fx_shockwave.depth = depth-1;
					var dust = spawn_hit_fx(x-10*spr_dir,y+4500,player_id.fx_slam);dust.depth = depth-1;dust.spr_dir = -spr_dir;
				}
				if(!waspocketed2){
					with(player_id){
						if(!runeG && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSTRONG && window == 6){
							window_timer = 0;
						}
					}if(player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.state == PS_PRATFALL || player_id.state == PS_PRATLAND){
						hitbox_timer = 131;hit_priority = -1;image_xscale = 0;image_yscale = 0;anim = 8;
						sound_stop(tornadosfx);sound_play(tornado_end_sfx);
			        	var star = spawn_hit_fx(x+40*spr_dir, y+4470, player_id.fx_star_tiny);star.depth = depth-1;
						star = spawn_hit_fx(x-40*spr_dir, y+4470, player_id.fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
					}
				}
			}
		}else{
			if(hitbox_timer % 4 == 0 && !Pocketed){
				anim += 1;
			}
		}
		
		if(Pocketed){
			waspocketed = true;waspocketed2 = true;
			sound_stop(tornadosfx);
		}else{
			if(waspocketed){
				y -= 4470;tornadosfx = sound_play(tornado_sfx);
				waspocketed = false;
				if(hit_priority != -1){
					anim = 11;hit_priority = 0;
				}
			}
		}
	}
}

if(attack == AT_FTILT){
    if(hbox_num == 7){
	    if (!position_meeting(x,y+18,asset_get("par_block")) && !position_meeting(x,y+18,asset_get("par_jumpthrough"))){
	    	y += 2;
	    }
	    if (!position_meeting(x,y+20,asset_get("par_block")) && !position_meeting(x,y+20,asset_get("par_jumpthrough"))){
	    	if (!position_meeting(x,y+55,asset_get("par_block"))){
		    	destroyed = true;
		    }
	    }
	    if(hitbox_timer % 3 == 0){
            spawn_hit_fx(x, y+20, player_id.fx_shockwave_short2);
        }
    }
}

draw_xscale = spr_dir;