if(attack == AT_NSPECIAL){
    if(hbox_num == 1){
	    if(instance_exists(theplanet)){
	    	theplanet.x = x; theplanet.y = y;
	    with(asset_get("pHitBox")){
	    	if(place_meeting(x,y,other.theplanet)){
	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox /*&& player != other.current_player*/ && other != self /*&& !proj_break*/){
	            	if("sanic_uspec_count" in player_id && attack != AT_BAIR || "sanic_uspec_count" not in player_id){
		            	if(damage > 0 && kb_value > 0 && hit_priority > 0){
		            		other.current_player = player;other.player = player;
		    	                other.hitplayertimer -= 10;
		    	                other.hitlockout = 6;other.hitlockout2 = 10;
		    	        		if(type <= 1 || "sanic_uspec_count" in player_id && attack == AT_DSPECIAL && hbox_num == 1){
		    	        			other.hitpausehit = hitpause;other.in_hitpause = true;
		    	        			if(other.hitpausehit <= 0){
		    	        				other.hitpausehit = 5;
		    	        			}
		    	        			other.hitstop = other.hitpausehit;
		    	        			player_id.hitpause = true;player_id.hitstop = other.hitpausehit;
		                			player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
		    	        		}
		            			knockback_angle = kb_angle;
		    	        		other.knockback_power = kb_value;
		    		            other.hsp = cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5)*spr_dir;
		    		            if(other.hsp > 0){
		    		            	other.spr_dir = 1;
		    		            }else if(other.hsp < 0){
		    		            	other.spr_dir = -1;
		    		            }
		    		            if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
		    		                other.vsp = -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5);
		    		            }else{
		    		                other.vsp = -sin(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5);
		    		            }
		    		            if player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player){other.dorito_hp -= 1;sound_play(asset_get("sfx_leafy_hit3"))sound_play(asset_get("sfx_leafy_hit1"))}
		    	                spawn_hit_fx(other.x, other.y, hit_effect);
		    					sound_play(sound_effect);
		    	                other.lasthitbox = id;other.hitbox_timer = 0;
		    	                other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
		            	}
		            }
	            }
	        }
	    }
	    }
	    if(hitstop <= 0){
	    	in_hitpause = false;hitlockout -= 1;
	    	if (instance_exists(lasthitbox)) {
	    		hitlockout2 -= 1;
	    	}else{
	    		hitlockout2 = 0;
	    	}
	    }else{
	    	hitstop -= 1;
	    }
		var refresh_time = 15;
		if (hitbox_timer % refresh_time == 0) for (var i = 0; i < 20; i++){
			can_hit[i] = 1;
		}
		if(just_hit){
			if (hitbox_timer % 60 == 0){
				just_hit = false;
			}			
		}
    	proj_angle -=(hsp);
    	dorito_timer++;
    	if(dorito_timer == 240){
    		player_id.dorito_hb = noone;
    	}
        kb_angle = (vsp<6 && abs(hsp)>.5)?45:(vsp<2)?90:(abs(hsp)>2)?315:270;
        kb_value = (vsp<6)?6:4;
        kb_scale = (vsp<6)?.7:.55;
        //I don't fucking know what to do here. Platforms won't allow it to hit even when
        //I use par_jumpthrough so I gave up after 30 mins of troubleshooting
        if(hitbox_timer >= 10 && hit_priority != 0 && (!free 
        || position_meeting(x,y+40+vsp,asset_get("par_block")))/*
        || vsp < 0 && position_meeting(x,y+70+vsp,asset_get("par_jumpthrough"))
        || vsp > 0 && position_meeting(x,y+40+vsp,asset_get("par_jumpthrough"))*/){
            if(!just_landed){
                dorito_hp-=1;
                sound_play(asset_get("sfx_leafy_hit3"))sound_play(asset_get("sfx_leafy_hit1"))
            	just_landed = true;
            }
        }else if(free){
            just_landed = false;
        }
        image_index = dorito_hp;
        if(dorito_hp > 3)image_index = 3;
        if(dorito_hp <= 0 && !destroyed){
            destroyed = true;
            theplanet.destroyed = true;
            player_id.move_cooldown[AT_NSPECIAL] = 65;
			var shard1 = create_hitbox(AT_NSPECIAL,2,x+0*spr_dir,y);shard1.player = player;
			var shard2 = create_hitbox(AT_NSPECIAL,3,x+0*spr_dir,y);shard2.player = player;
			var shard3 = create_hitbox(AT_NSPECIAL,4,x+0*spr_dir,y);shard3.player = player;
        }
    	if(x > room_width+200 || x < -200 || y >= get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE)+(room_height/get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE)-200)){
        	destroyed = true;
        	theplanet.destroyed = true;
        	player_id.move_cooldown[AT_NSPECIAL] = 0;
        	sound_play(asset_get("sfx_leafy_hit3"))sound_play(asset_get("sfx_leafy_hit1"))
    	}
    }else{
    	if(hbox_num != 5){
	        if(!free){
	            destroyed = true;
	            sound_play(asset_get("sfx_leafy_hit1"))
	        }
	    	if(x > room_width+200 || x < -200 || y >= get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE)+(room_height/get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE)-200)){
	        	destroyed = true;
	        	sound_play(asset_get("sfx_leafy_hit1"))
	    	}
	    	if(hbox_num == 2)kb_angle = (vsp<6)?45:(abs(hsp)>2)?315:270;
	    	if(hbox_num == 3)kb_angle = (vsp<6)?90:(abs(hsp)>2)?315:270;
	    	if(hbox_num == 4)kb_angle = (vsp<6)?145:(abs(hsp)>2)?225:270;
    	}else{
	        if(!instance_exists(theplanet)){
				destroyed = true;
			}
    	}
    }
}else if(attack == AT_FSTRONG){
	if(hbox_num == 3){//shrek
		if(Pocketed){
			hitbox_timer = 0;
			was_pocketed = true;
			door_open = false;
			num = 0;
			Pocketable = false;
			img_spd = 0;
		}
		if(was_pocketed){
			if(!door_open){
				hitbox_timer = 19;
				door_open = true;
				hit_priority = 0;
			}
		}
		if(player != player_id.player){
	    	shrek_timer++;
	    	if(shrek_timer == 240){
	    		player_id.shrek_door = noone;
	    		player_id.move_cooldown[AT_FSTRONG] = 0;
	    	}
		}
		if(!free){
			hsp*=.85;
		}		
	    if(landtimer <= 0 && hitbox_timer > 1 && vsp > 0 && (position_meeting(x,y+45+vsp,asset_get("par_block")) || position_meeting(x,y+45+vsp,asset_get("par_jumpthrough")) && !position_meeting(x,y+35+vsp,asset_get("par_jumpthrough")))){
		    var dust2 = spawn_hit_fx(x-30*spr_dir,y+50,player_id.fx_dust_sharp_big)dust2.spr_dir=-spr_dir;dust2.depth = depth-1;
		    var dust3 = spawn_hit_fx(x+30*spr_dir,y+50,player_id.fx_dust_sharp_big)dust3.spr_dir=spr_dir;dust3.depth = depth-1;
		    shake_camera(5,5);
		    sound_play(asset_get("sfx_land_heavy"));sound_play(asset_get("sfx_blow_heavy2"));
		    landtimer = 6;
	    }landtimer -= 1;	
		if(num == 0){ //Idle
			image_index = 0;
			hit_priority = 0;
			UnReflectable = true;depth = player_id.depth+4; 
			if(!free){
				if hitbox_timer == length-1 hitbox_timer--;
			}
			if(free && !Pocketed){
				var falling = create_hitbox(attack,1,x,y+35);falling.player = player;
			}
	    	if(x > room_width+1000 || x < -1000 || y >= room_height+1000 || y < -2000){
	        	destroyed = true;
	        	with(player_id)sound_play(sound_get("airhorn"))
	    	}
			if(door_open){
				if(hitbox_timer == 20){
					with(player_id)sound_play(sound_get("somebody_once_told_me"))
					image_index = 0;
					num = 1;
					hitbox_timer = 0;
					if(img_spd != .35)img_spd = .1;
				}
			}
			detect_box = create_hitbox(attack,7,floor(x+80*spr_dir),floor(y-10));
		    detect_box.UnReflectable = true;
		    //NEW REFLECT CODE
		    reflect_target = noone;
		    reflect_type = 0;
		    
		    if(!instance_exists(reflect_target)){
		    	with(pHitBox){
			    	if(place_meeting(x,y,other.detect_box) && type == 2 && other.reflect_target != self && hit_priority > 0 /*&& (other.player != player)*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
			    		other.reflect_target = self;
			    	}
		    	}
		    }if(!instance_exists(reflect_target)){
		    	with(obj_article1){
			    	if(place_meeting(x,y,other.detect_box) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
			    		other.reflect_target = self;
			    	}
		    	}
		    }if(!instance_exists(reflect_target)){
		    	with(obj_article2){
			    	if(place_meeting(x,y,other.detect_box) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
			    		other.reflect_target = self;
			    	}
		    	}
		    }if(!instance_exists(reflect_target)){
		    	with(obj_article3){
			    	if(place_meeting(x,y,other.detect_box) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
			    		other.reflect_target = self;
			    	}
		    	}
		    }if(!instance_exists(reflect_target)){
		    	with(obj_article_solid){
			    	if(place_meeting(x,y,other.detect_box) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
			    		other.reflect_target = self;
			    	}
		    	}
		    }if(!instance_exists(reflect_target)){
		    	with(obj_article_platform){
			    	if(place_meeting(x,y,other.detect_box) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
			    		other.reflect_target = self;
			    	}
		    	}
		    }
	    if(instance_exists(reflect_target)){
	    	if(!door_open){sound_play(sound_get("flush"));door_open = true;hitbox_timer = 19;img_spd = .35;player_id.move_cooldown[AT_FSTRONG] = 999;length = 100;}
	    }
		}else if(num == 1){
			UnReflectable = true;
			if(hitbox_timer == 31 && img_spd != .35 && img_spd != .15 || hitbox_timer == 9 && img_spd == .35){
				sound_play(asset_get("sfx_swipe_heavy2"));
				var dust2 = spawn_hit_fx(x+80*spr_dir,y+50,player_id.fx_dust_sharp_big)dust2.spr_dir=spr_dir;dust2.depth = depth+4;
				var hit = create_hitbox(AT_FSTRONG,2,x+50*spr_dir,y);hit.player = player;
				hit.PocketBuff = PocketBuff;
				hit.UnReflectable = true;
				if(PocketBuff > 0){
					hit.damage = ceil(hit.damage*(power(1.5,PocketBuff)));hit.kb_scale = hit.kb_scale*(power(1.25,PocketBuff));
					hit.damage = min(hit.damage,999);hit.kb_scale = min(hit.kb_scale,2);
				}			
			}
			if(img_spd == .35 && hitbox_timer == 12)img_spd = .15;
			if(hitbox_timer >= 80 && img_spd != .15 || hitbox_timer >= 44 && img_spd == .15){
				image_index = 8;
				Pocketable = true;
			}
			if(hitbox_timer == length){
				spawn_hit_fx(x+10*spr_dir,y-10,304);
				destroyed = true;
			}
			if(hitbox_timer == 60){
				if(player == player_id.player){
					player_id.shrek_door = noone;
					player_id.move_cooldown[AT_FSTRONG] = 60;
					var fx = spawn_hit_fx(player_id.x,player_id.y-40,301);fx.depth = player_id.depth - 4;
					sound_play(sound_get("lighthit2"));
				}
			}			
		}
	}else if(hbox_num == 2){
		UnReflectable = true;
	    //NEW REFLECT CODE
	    reflect_target = noone;
	    reflect_type = 0;
	    
	    if(!instance_exists(reflect_target)){
	    	with(pHitBox){
		    	if(place_meeting(x,y,other) && type == 2 && other.reflect_target != self && hit_priority > 0 /*&& (other.player != player)*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article1){
		    	if(place_meeting(x,y,other) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article2){
		    	if(place_meeting(x,y,other) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article3){
		    	if(place_meeting(x,y,other) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article_solid){
		    	if(place_meeting(x,y,other) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article_platform){
		    	if(place_meeting(x,y,other) && other.reflect_target != self /*&& other.player != player*/ && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }
	    if(instance_exists(reflect_target)){
	    	with(reflect_target){
	    		player = other.player;
        		spr_dir = other.spr_dir; //flips it to shreks's direction
        		var oldspeed = abs(hsp)+abs(vsp);
    			hsp = (10+(oldspeed/2))*other.spr_dir;//vsp = -(4+(oldspeed/2));
	    		if("was_parried" in self){
			    	was_parried = true;
				}if("hitbox_timer" in self){
			    	hitbox_timer = 0;
				}if("damage" in self){
			    	damage *= 1.5;
				}if("kb_scale" in self){
				    kb_scale *= 1.25;
				}if("hit_priority" in self && hit_priority <= 0){
					hit_priority = 1;
				}
	    	}
	    	spawn_hit_fx(reflect_target.x, reflect_target.y, 194);
	    	sound_play(sound_get("reflect"));
	    }		
	}
}else if(attack == AT_DSTRONG){
    if(landtimer <= 0 && hitbox_timer > 1 && vsp > 0 && (position_meeting(x,y+55+vsp,asset_get("par_block")) || position_meeting(x,y+55+vsp,asset_get("par_jumpthrough")) && !position_meeting(x,y+45+vsp,asset_get("par_jumpthrough")))){
	    dust = spawn_hit_fx(x, y+65, player_id.fx_dust);dust.depth = depth-1;
	    sound_play(asset_get("sfx_land_med"));
	    landtimer = 6;
    }landtimer -= 1;
    if(hbox_num == 1){
		if(x > room_width+1000 || x < -1000 || y >= room_height+1000 || y < -2000){
	    	destroyed = true;
	    	player_id.move_cooldown[AT_DSTRONG] = 0;
	    	with(player_id)sound_play(sound_get("airhorn"))
		}
		if(num == 0){//boi idle
			if(!free && !(x > room_width+1000 || x < -1000 || y >= room_height+1000 || y < -2000)){
				if hitbox_timer == length hitbox_timer--;
			}
			if(free && !Pocketed){
				create_hitbox(attack,2,x,y+40);
			}
			if(image_index > 4)image_index = 0;
			hit_priority = 0;
			if hitbox_timer == length hitbox_timer--;
			if(boi_ride){
				if(hitbox_timer == 1){
					var fx = spawn_hit_fx(x-32*spr_dir,y+48,player_id.fx_dust_sharp_big)fx.spr_dir = -spr_dir;
				}
				if(hitbox_timer == 20){
					depth -= 4;
					num = 1;
					hit_priority = 1;
					CalCanSnack = 2;
					MattCanGrab = true;
					MorshuCanGrab = true;
					hitbox_timer = 0;
					img_spd = .15;
					image_index = !player_id.charged_summon?4:7;
					Pocketable = true;
					UnReflectable = false;
				}
			}
		}else if(num == 1){
			if(!player_id.was_parried && abs(hsp) < 8){
				if(!player_id.charged_summon){
					hsp = 4*spr_dir;
				}else{
					hsp = 7*spr_dir;
					img_spd = .4;
				}
			}
			if(!player_id.charged_summon){
				if(image_index > 6.85)image_index = 4;
			}else{
				if(image_index >= 9.8)image_index = 7;
			}
			if(hitbox_timer == length){
				var fxa = spawn_hit_fx(player_id.x,player_id.y-40,301);fxa.depth = player_id.depth - 4;
				spawn_hit_fx(x,y,302);
				destroyed = true;
				player_id.move_cooldown[AT_DSTRONG] = 0;
				sound_play(sound_get("lighthit2"));
			}
			if(player != player_id.player){
		    	datboi_timer++;
		    	if(datboi_timer == 240){
		    		player_id.dat_boi = noone;
		    		player_id.move_cooldown[AT_DSTRONG] = 0;
		    		var fx = spawn_hit_fx(player_id.x,player_id.y-40,301);fx.depth = player_id.depth - 4;
		    		sound_play(sound_get("lighthit2"));
		    	}
			}
	    	if(!player_id.charged_summon && hitbox_timer % 8 == 0 || player_id.charged_summon && hitbox_timer % 6 == 0){
	    		dust = spawn_hit_fx(x, y+35, player_id.fx_dust);
	    	}
	    	kb_angle = (vsp<6)?45:(abs(hsp)>2)?315:270;
	    	if(hitbox_timer < 40){
		    	kb_scale = (vsp<6)?.9:.4;
		    	base_kb = (vsp<6)?6:4;
	    	}else{
		    	kb_scale = (vsp<6)?.7:.3;
		    	base_kb = (vsp<6)?4:3;
		    	if(hitbox_timer == 40){
		    		damage = floor(damage/1.5);
		    	}
	    	}
		}
    }
}else if(attack == AT_USTRONG){
	if(hbox_num == 1){//doge
		if(Pocketed){
			hitbox_timer = 0;
			was_pocketed = true;
			doge_speak = false;
		}
		if(was_pocketed){
			if(!doge_speak){
				Pocketable = false;
				num = 1;
				hit_priority = 0;
				doge_speak = true;
			}
			hsp*=.85;
		}
		if(player != player_id.player){
	    	doge_timer++;
	    	if(doge_timer == 240){
	    		player_id.doge = noone;
	    		player_id.move_cooldown[AT_USTRONG] = 0;
	    		var fx = spawn_hit_fx(player_id.x,player_id.y-40,301);fx.depth = player_id.depth - 4;
	    		sound_play(sound_get("lighthit2"));
	    	}
		}
		spr_dir = 1;
		if(num == 0){
			if(image_index > 6)image_index = 0;
		    if(landtimer <= 0 && hitbox_timer > 1 && vsp > 0 && (position_meeting(x,y+35+vsp,asset_get("par_block")) || position_meeting(x,y+35+vsp,asset_get("par_jumpthrough")) && !position_meeting(x,y+25+vsp,asset_get("par_jumpthrough")))){
			    sound_play(asset_get("sfx_land_light"));
			    landtimer = 6;
		    }landtimer -= 1;	
			if(!free && !(x > room_width+200 || x < -200 || y >= get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE)+(room_height/get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE)-200))){
				if !doge_speak && hitbox_timer == length hitbox_timer--;
			}
			if(free && !Pocketed){
				var falling = create_hitbox(attack,9,x,y+15);falling.player = player;
			}
			if(x > room_width+1000 || x < -1000 || y >= room_height+1000 || y < -2000){
		    	destroyed = true;
		    	with(player_id)sound_play(sound_get("airhorn"))
			}
			if(doge_speak){
				Pocketable = true;
				was_pocketed = false;
				if(hitbox_timer == 69){
					destroyed = true;
					player_id.charged_summon = 0;
				}
				if(hitbox_timer == 42){
					if(player == player_id.player){
						player_id.doge = noone;
						player_id.move_cooldown[AT_USTRONG] = 27;
						var fx = spawn_hit_fx(player_id.x,player_id.y-40,301);fx.depth = player_id.depth - 4;
						sound_play(sound_get("lighthit2"));
					}
				}
			}
		}else if(num == 1){
			hit_priority = 0;
			if(doge_speak){
				if(hitbox_timer == 6){
					image_index = 7;
					depth -= 4;
					img_spd = .3;
				}
				if(hitbox_timer == 14){
					with(player_id)sound_play(sound_get("bork"))
					var word = create_hitbox(AT_USTRONG,1+(player_id.charged_summon==0?1:2+player_id.charged_summon),x,y-20);word.player = player;
					var hbx = create_hitbox(AT_USTRONG,3,x+2,y-20);hbx.depth = depth - 4;hbx.player = player;
					word.PocketBuff = PocketBuff;
					hbx.PocketBuff = PocketBuff;
					if(PocketBuff > 0){
						word.damage = ceil(word.damage*(power(1.5,PocketBuff)));word.kb_scale = word.kb_scale*(power(1.25,PocketBuff));
						word.damage = min(word.damage,999);word.kb_scale = min(word.kb_scale,2);
						hbx.damage = ceil(hbx.damage*(power(1.5,PocketBuff)));hbx.kb_scale = hbx.kb_scale*(power(1.25,PocketBuff));
						hbx.damage = min(hbx.damage,999);hbx.kb_scale = min(hbx.kb_scale,2);
					}
				}
				if(hitbox_timer == 18){
					num = 0;
					img_spd = .04;
					hitbox_timer = 0;
				}
			}
		}
	}else if(hbox_num == 2 || hbox_num == 4 || hbox_num == 5){
		if(hitbox_timer == 20){
			image_xscale = 0;image_yscale = 0;
			Pocketable = false;
		}
		if(hitbox_timer == 25){
			destroyed = true;
		}
		spr_dir = 1;
	}
}else if(attack == AT_DATTACK){
	if(hbox_num == 1){
		if(!free){
			vsp = 0;
			hsp = 0;
		}
	    //NEW REFLECT CODE
	    reflect_target = noone;
	    reflect_type = 0;
	    
	    if(!instance_exists(reflect_target)){
	    	with(pHitBox){
		    	if(place_meeting(x,y,other) && type == 2 && other.reflect_target != self && ("UnReflectable" in self && (!UnReflectable || "Bounceable" in self && Bounceable) || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article1){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && (!UnReflectable || "Bounceable" in self && Bounceable) || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article2){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && (!UnReflectable || "Bounceable" in self && Bounceable) || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article3){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && (!UnReflectable || "Bounceable" in self && Bounceable) || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article_solid){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && (!UnReflectable || "Bounceable" in self && Bounceable) || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article_platform){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && (!UnReflectable || "Bounceable" in self && Bounceable) || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }
	    if(instance_exists(reflect_target) && launched == 0){
	    	with(reflect_target){
	    		//if(abs(hsp) > 0.25){ //checks for minimum speed (unused lol!)
	            		//spr_dir *= -1; //flips it regardless of its direction, wave doesnt use this one
	            spr_dir = other.spr_dir; //forces it to go where wave is facing lol
				hsp = 10*other.spr_dir;
				vsp = -10;
	            image_angle = 0+(45*(spr_dir+1));
	            other.image_index = 2;
		        other.img_spd = .25;
		        other.launched = 30;	            
	    		//}
	    		if("was_parried" in self){
			    	was_parried = true;
				}if("hitbox_timer" in self){
			    	hitbox_timer = 0;
					for (var i = 0; i < 20; i++){
						can_hit[i] = 1;
					}			    	
				}if("hit_priority" in self && hit_priority <= 0){
					hit_priority = 1;
				}
	    	}
	    	spawn_hit_fx(reflect_target.x, reflect_target.y, 305);
	    	with(player_id)sound_play(sound_get("spring"));
	    }	    
		if(hitbox_timer == length - 1){
			destroyed = true;
		}
		if(launched > 0){
			launched--;
		}else if(launched <= 25){
			img_spd = 0;
			image_index = 0;
		}
		var refresh_time = 15;
		if (hitbox_timer % refresh_time == 0 && launched == 0) for (var i = 0; i < 20; i++){
			can_hit[i] = 1;
		}
	}
}else if(attack == AT_USPECIAL){
    hsp *= 0.95;
    vsp -= 0.01;
    if(vsp > 0){
    	vsp *= 0.9;
    }
    if(hitbox_timer > 25){
    	image_xscale = 0;image_yscale = 0;vsp -= 0.01;
    }else if(hitbox_timer > 14){
    	kb_value = 5;kb_scale = .2;
    	damage = 3;kb_angle = 90;
    	image_xscale = .2;image_yscale = .2;
    }else if(hitbox_timer > 3){
    	kb_value = 8;kb_scale = .4;
    	damage = 5;kb_angle = 90;
    	image_xscale = .3;image_yscale = .25;
    	sound_effect = asset_get("sfx_ell_steam_hit");
    }
    if(hitbox_timer == length - 1){
    	destroyed = true;
    }
}else if(attack == AT_DSPECIAL){
	if(hbox_num == 1){
		image_xscale = clamp(image_xscale,0,12);		
		x = player_id.x+(106+(100*image_xscale-image_xscale))*spr_dir;
		y = player_id.y-45;
	}
}

if(attack != AT_DSPECIAL){
	draw_xscale = spr_dir;
}
#define Get_Alt_Sprite()
if(argument_count > 0 && get_player_color(player) == argument[0]){
	sprite_index = sprite_get(argument[1]);alt_override = true;
}
if(get_player_color(player) != 0 && !alt_override){
	var found = 0;
	for (var i = 0; i < array_length(player_id.sprite_names) && !found; i++){
		if (sprite_index == sprite_get(player_id.sprite_names[i])){
			sprite_index = sprite_get(player_id.sprite_names[i]+"_alts");
			found = 1;
		}
	}
}