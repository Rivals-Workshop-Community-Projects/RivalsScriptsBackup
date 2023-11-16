if(attack == AT_FSTRONG){
    if(hbox_num == 1){
        if(hitbox_timer == 4){
            hsp = player_id.strong_charge < 30 ? 13*spr_dir : 18*spr_dir;
        }    
        if(hitbox_timer >= length){
        	var poof = spawn_hit_fx(x,y,player_id.fx_poof);poof.depth = poof.depth - 4;
            with(player_id)sound_play(sound_get("poof"));
        	var hit = create_hitbox(AT_FSTRONG,2,x,y);hit.player = player;
        	if(mariohit){
	        	for(var i = 0; i < 5; i++){
	        		hit.can_hit[i] = can_hit[i];
	        	}
        	}
        	player_id.peach = noone;
            destroyed = true;
        }
        transcendent = true;
        if(Frozen){transcendent = false;}
        if(hitbox_timer > 4){
            if(!Frozen){image_xscale = .2;image_yscale = .3;hsp *= 1.0-(hitbox_timer/250);}
        }else{
        	depth = player_id.depth+1;
        }
        if(hitbox_timer >= 9){
        	kb_value = 6;damage = 4;
        }else{
        	kb_value = 10.5;damage = 6;
        }if(hitbox_timer >= 18 || hitbox_timer < 4){
            image_xscale = 0;image_yscale = 0;
        }if(image_index >= 8)image_index = 8;
    }
}else if(attack == AT_USTRONG){
    angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
    through_platforms = 999;fall_through = true;
	if(!free){
		hsp *= .95;
	}if(hsp > 0){
	    spr_dir = 1;
	}else{
	    spr_dir = -1;
	}
	
	if(get_gameplay_time() % 3 == 0 && hit_priority > 0){var dust = spawn_hit_fx(x,y,player_id.fx_dust_dark);dust.depth = depth+1;}
	
    if(hitbox_timer <= 6){
    	//if(!damageOverride){damage = 9;kb_value = 7;kb_scale = 1.0;}
    	damage = base_dmg;kb_value = 7;kb_scale = base_kbs;hit_priority = 5;transcendent = true;
		image_xscale = .25;image_yscale = .25;
		sound_effect = asset_get("sfx_blow_heavy1");hit_effect = 304;
		if(abs(hsp) > 10 || abs(vsp) > 10){
		    hitbox_timer = 0;
		}
		if(get_gameplay_time() % 4 == 0 && hit_priority > 0){var fire = spawn_hit_fx(x,y,player_id.fx_fire_fast);fire.depth = depth+1;}
		if(get_gameplay_time() % 2 == 0){var fire = spawn_hit_fx(x,y,player_id.fx_fire);fire.depth = depth+1;}
	}else if(hitbox_timer <= 15){
	    //damage = 6;kb_value = 6;kb_scale = 0.8;
	    damage = round(base_dmg*0.6);kb_value = 6;kb_scale = base_kbs*0.8;hit_priority = 5;transcendent = false;
		image_xscale = .2;image_yscale = .2;  
	    sound_effect = asset_get("sfx_blow_medium3");hit_effect = 302;
	}else{
	    hit_priority = 0;transcendent = false;
		image_xscale = .25;image_yscale = .25;  
	}
	if(Frozen){transcendent = false;}
	if(vsp > 5){ //spike
		kb_value *= 0.5;kb_scale *= 0.5;
	}
	kb_angle = (vsp<5 && abs(hsp)>.5)?45:(vsp<2)?90:(abs(hsp)>2)?315:270;
	if((!free || place_meeting(x,y,asset_get("par_block")) && hit_priority > 0) || y >= room_height+500 || x >= room_width+1000 || x < -1000){
        destroyed = true;
    }
    if hitbox_timer == 15 hitbox_timer--; 
}else if(attack == AT_DSTRONG){
	if(player_id.phone_attacking && player_id.attack == AT_DSTRONG && player_id.window > 1){
		hitbox_timer = 0;image_index = 1;
	}else{
		image_index = 0;
	}depth = player_id.depth+1;

}else if(attack == AT_DSPECIAL){
	if(hbox_num == 1){
		hitbox_timer = 0;
		x = player_id.x+45*player_id.spr_dir;y = player_id.y-35;
		if(player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR || player_id.attack == AT_DSPECIAL && player_id.window >= 3){
			destroyed = true;
		}
		if(!destroyed){
	    	with(asset_get("pHitBox")){
				if(type == 2 && place_meeting(x,y,other) && self != other && other.player_id.state != PS_HITSTUN && other.player_id.state != PS_HITSTUN_LAND){
			    	if(damage > 0 && hit_priority > 0 && other.prevhitbox != self && (player != other.player || player == other.player && attack == AT_USTRONG && hbox_num == 1) && ("AriaCantAbsorb" in self && !AriaCantAbsorb || "AriaCantAbsorb" not in self)){
			    		if(can_hit[other.player]){
					    	var eff = spawn_hit_fx(other.x, other.y, hit_effect);eff.pause = 8.58;
					    	var dmg = round(damage*(1+(player_id.strong_charge/100)));
					    	if(player == other.player && attack == AT_USTRONG && hbox_num == 1 && other.player_id.downspecialcharge <= 10 || player != other.player)other.player_id.downspecialcharge += round(dmg/**other.player_id.sidespecialchargemod*/);
				    		can_hit[other.player] = false;
			    		}
		        		with(other.player_id){
				        	dspec_invinc = 16;
				        	invincible = true;invince_time = 16;
				        	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 9);
				    	}
			        	if("AriaDontDestroyWhenAbsorbed" in self && !AriaDontDestroyWhenAbsorbed || "AriaDontDestroyWhenAbsorbed" not in self){
				        	hitbox_timer = length-1;other.prevhitbox = self;
				    	}
			    	}else if(damage > 0 && kb_value > 0 && hit_priority > 0 && other.prevhitbox != self && player != other.player && "AriaCantAbsorb" in self && AriaCantAbsorb){ //turn off projectile invincibility
			    		with(other.player_id){set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);dspec_invinc = -4;}
			    	}
				}
			}
		}
	}
}
else if(attack == AT_DATTACK){
    if(get_gameplay_time() % 6 == 0){var rand_dir = random_func(0, 359, true);var fire = spawn_hit_fx((x) + round(lengthdir_x(10, rand_dir)), y + round(lengthdir_y(10, rand_dir)),player_id.fx_fire_fast);fire.depth = depth+1;}
	if(get_gameplay_time() % 3 == 0){var rand_dir = random_func(1, 359, true);var fire = spawn_hit_fx((x) + round(lengthdir_x(10, rand_dir)), y + round(lengthdir_y(10, rand_dir)),player_id.fx_fire);fire.depth = depth+1;}
}
else if(attack == AT_UAIR){
	if(hbox_num == 1){
		if(Pocketed){
			hitbox_timer = 0;
			was_pocketed = true;
		}
		if(player != player_id.player){
	    	pigtimer++;
	    	if(pigtimer == 240){
	    		player_id.pig_hb = noone;
	    		player_id.move_cooldown[AT_UAIR] = 0;
	    	}
		}		
	    through_platforms = 999;fall_through = true;
		if(hsp > 0){
		    spr_dir = 1;
		}else{
		    spr_dir = -1;
		}
		kb_value = 7;kb_scale = .8;
	    if(hitbox_timer <= 12){
	    	damage = 8;
			image_xscale = .4;image_yscale = .4;
		}else if(hitbox_timer <= 25){
		    damage = 6;
			image_xscale = .3;image_yscale = .3;  
		}
		if(hitbox_timer == 60){
			player_id.pig_hb = noone;
		}
		kb_angle = (vsp<5 && abs(hsp)>.5)?45:(vsp<2)?90:(abs(hsp)>3)?290:270;
		if(!Pocketed && !Frozen && !in_hitpause){
			if(vsp > 5){ //spike
				kb_value *= 0.6;kb_scale *= 0.6;vsp*=1.03;
				if(hitbox_timer % 6 == 0){var fcoin = create_hitbox(attack,3,x+5*spr_dir,y-50);fcoin.player = player;}
			}			
			if((was_pocketed && hitbox_timer >= 15 || !was_pocketed) && (!free || place_meeting(x,y,asset_get("par_block")) && hit_priority > 0) || y >= room_height+500 || x >= room_width+1000 || x < -1000){
		        destroyed = true;
		        with(player_id){sound_play(sound_get("pig_land"));sound_play(sound_get("moneyspew"));}
		        sound_play(asset_get("sfx_shovel_hit_heavy1"));
		        var coin2 = create_hitbox(AT_UAIR,3,x,y);coin2.player = player;
		        var coin = create_hitbox(AT_UAIR,3,x+5,y+5);coin.rng = 1;coin.player = player;coin = create_hitbox(AT_UAIR,3,x-5,y-5);coin.rng = 2;coin.player = player;
		        coin = create_hitbox(AT_UAIR,3,x+10,y+10);coin.rng = 3;coin.player = player;coin = create_hitbox(AT_UAIR,3,x+-10,y+-10);coin.rng = 4;coin.player = player;
		        coin = create_hitbox(AT_UAIR,3,x+15,y+15);coin.rng = 4;coin.player = player;coin = create_hitbox(AT_UAIR,3,x-15,y-15);coin.rng = 6;coin.player = player;
		    }
		    if(hitstop <= 0){
		    	angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
		    	if(abs(vsp) < 2 && vsp < 1.5){vsp *=.6;}
				else if(vsp > -8 && vsp < 0){vsp *=.85;}
				if(!free){
					hsp *= .95;
				}
		    }		    
		}
	    if(destroyed && player_id.pig_hb == self){player_id.pig_hb = noone;player_id.move_cooldown[attack] = 30;}
	    if hitbox_timer == length-1 hitbox_timer--;
	    
	    if(instance_exists(theotherhitbox)){
	    	theotherhitbox.x = x; theotherhitbox.y = y;
	    }
	    if(instance_exists(theotherhitbox)){
    	    with(asset_get("pHitBox")){
    	    	if(place_meeting(x,y,other.theotherhitbox)){
	        		if("dairhitbox" in player_id && player_id.dairhitbox == self){
	        			with(player_id){
					    	vsp = -12;old_vsp = vsp;
	        			}
	        		}    	    		
    	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox && other != self && effect != 100 && (player != other.orig_player || player = other.orig_player && attack != AT_UAIR)){
    	            	if(damage > 0 && kb_value > 0 && hit_priority > 0 /*&& !proj_break*/){
	    	                other.hitplayertimer -= 10;
	    	                other.hitlockout = 6;other.hitlockout2 = 10;
	    	        		if(type <= 1){
	    	        			other.hitpausehit = hitpause;other.in_hitpause = true;
	    	        			if(other.hitpausehit <= 0){
	    	        				other.hitpausehit = 5;
	    	        			}
	    	        			other.hitstop = other.hitpausehit;
	    	        			player_id.hitpause = true;player_id.hitstop = other.hitpausehit;
	                			player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
	                			player_id.has_hit = true;
	    	        		}
	    	        		other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
	    	        		
	    	        		if(type <= 1 && kb_value+(kb_scale*8) >= 3 || type == 2 && kb_value+(kb_scale*8) >= 4){
    	    		            other.can_hit[player] = false;
	    	        		}if(type <= 1 && kb_value+(kb_scale*8) >= 4 || type == 2 && kb_value+(kb_scale*8) >= 6){
    	    		            knockback_angle = kb_angle;
	    	        			other.knockback_power = kb_value;
    	    		            other.hsp += cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*8)*2.5)*spr_dir;
    	    		            if(other.hsp > 0){
    	    		            	other.spr_dir = 1;
    	    		            }else if(other.hsp < 0){
    	    		            	other.spr_dir = -1;
    	    		            }
    	    		            other.vsp -= -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*8)*2.5);
    	    		            other.lastplayerhit = player;
    	    		            if(other.orig_player != player && kb_value+(kb_scale*8) >= 12){
    	    		            	other.player = player;
    	    		            }
	    	        		}
	    	        		other.hit_priority = 4;
	    	                spawn_hit_fx(other.x, other.y, hit_effect);
	    					sound_play(sound_effect);
	    	                other.lasthitbox = id;other.hitbox_timer = 0;
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
	    	angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;grav = 0.8;
	    }else{
	    	hitstop -= 1;grav = 0;
	    }
	}else if(hbox_num == 3){
	    if(hitbox_timer == 40){hit_priority = 0;}
	    if(get_gameplay_time() % 6 == 0){
	    	var rand_dir = random_func(1, 359, true);
	    	var sparkle = spawn_hit_fx((x) + round(lengthdir_x(15, rand_dir)), y - 15 + round(lengthdir_y(15, rand_dir)), player_id.fx_shine_small_slow);sparkle.depth = depth-1;
		}
		if(y >= room_height+500 || x >= room_width+1000 || x < -1000){
			destroyed = true;
		}
        //sick compatibility
        with(oPlayer){
            if(place_meeting(x,y,other) && !other.destroyed && state != PS_HITSTUN && state != PS_HITSTUN_LAND && state != PS_PRATFALL && state != PS_PRATLAND && state != PS_DEAD && state != PS_RESPAWN
            /*&& (get_player_team(player) == get_player_team(other.player) || get_player_team(player) != get_player_team(other.player))*/
            && ("current_money" in self)){
                with(other){
                    destroyed = true;sound_play(rupee_sfx);
                }
                if("current_money" in self){
                    if(get_player_team(player) == get_player_team(other.player)){current_money += 150;}
                    else{current_money += 50;}
                }
            }
        }
        with(pHitBox){
            if(place_meeting(x,y,other) && "housemoney" in self){
                with(other){
                    destroyed = true;sound_play(rupee_sfx);
                }
                if("housemoney" in self){
                    if(get_player_team(player) == get_player_team(other.player)){housemoney += 100;}
                    else{housemoney += 50;}
                }
            }
        }		
	}else if(hbox_num == 4){
	    if(!instance_exists(theotherhitbox)){
	    	destroyed = true;
	    }
	}
}else if(attack == AT_FSPECIAL){
	if(!in_hitpause)proj_angle-=15*spr_dir;
	kb_angle = (vsp<5 && abs(hsp)>.5)?45:(vsp<2)?90:(abs(hsp)>3)?315:270;
	kb_value = base_kb;kb_scale = base_kbs;
	if(vsp > 5){ //spike
		kb_value *= 0.5;kb_scale *= 0.5;
	}
	if(hitbox_timer == length){spawn_hit_fx(x,y,destroy_fx);destroyed = true;}
	if(hbox_num == 5){
		if hitbox_timer == length hitbox_timer--; 
		hit_priority = (abs(hsp) > 2);
	}
	if(hbox_num < 4){
		if(was_free && !free)hitbox_timer = 0;
		if(hitbox_timer == 6 && !free)hit_priority = 0;
		if(free){hit_priority = 1;was_free = true;}
		if(!free)was_free = false;
	}
}else if(attack == AT_NSPECIAL){
	if(Pocketed)was_pocketed = true;
	if(was_pocketed){
		hsp*=.95;
		vsp*=.95;
	}
	with(pHitBox){
		nspec_stun();
	}with(asset_get("obj_article1")) if(self != other){
		nspec_stun();
	}with(asset_get("obj_article2")) if(self != other){
		nspec_stun();
	}with(asset_get("obj_article3")) if(self != other){
		nspec_stun();
	}
	with(player_id){
		if(place_meeting(x,y,other)){
			if(phone_attacking && attack == AT_USPECIAL && window == 2 && window_timer == 1){
				vsp*=1.1;hsp*=1.2;
			}
		}
	}
	if(hitbox_timer == 4){kb_value = 0;projectile_parry_stun = false;hit_priority = 0;}
	var cloud = spawn_hit_fx(x-(25*spr_dir)+random_func(hitbox_timer, 60, true)*spr_dir,y-20+random_func(hitbox_timer, 40, true),player_id.fx_cloud);cloud.spr_dir = -spr_dir;cloud.draw_angle = random_func(0, 360, true);
}

if(attack == AT_USPECIAL){
	if(hbox_num == 1){
		if(hitbox_timer == length){
        	var poof = spawn_hit_fx(x-55*spr_dir,y,player_id.fx_smoke_pink);poof.depth = depth+2;poof = spawn_hit_fx(x+75*spr_dir,y,player_id.fx_smoke_pink);poof.depth = depth+2;
		    poof = spawn_hit_fx(x-35*spr_dir,y-75+45,player_id.fx_smoke_pink);poof.depth = depth+2;poof = spawn_hit_fx(x+45*spr_dir,y-75+45,player_id.fx_smoke_pink);poof.depth = depth+2;
		    poof = spawn_hit_fx(x+5*spr_dir,y-95+45,player_id.fx_smoke_pink);poof.depth = depth+2;
		    poof = spawn_hit_fx(x,y-25,player_id.fx_smoke_pink);poof.depth = depth+2;
		    poof = spawn_hit_fx(x-45*spr_dir,y+55,player_id.fx_smoke_pink);poof.depth = depth+2;poof = spawn_hit_fx(x+35*spr_dir,y+55,player_id.fx_smoke_pink);poof.depth = depth+2;
		    sound_play(sound_get("poof"));
		}
	}
}

draw_xscale = spr_dir;

#define nspec_stun
if(place_meeting(x,y,other) && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self) && "Freezable" not in self || "Freezable" in self && Freezable){
	if("in_hitpause" in self){
		if(!in_hitpause){
			in_hitpause = 1;		
		}
		if(in_hitpause && other.hitbox_timer == other.length)in_hitpause = false;
	}else if("hitstop" in self){
		hitstop = 2;
		if(hitstop > 0 && other.hitbox_timer == other.length)hitstop = 0;
	}
	if("Frozen" in self)Frozen = other.hitbox_timer < other.length;
}else if(!place_meeting(x,y,other) && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self) && "Freezable" not in self || "Freezable" in self && Freezable){
	if("in_hitpause" in self){
		if(in_hitpause && other.hitbox_timer == other.length)in_hitpause = false;
	}else if("hitstop" in self){
		if(hitstop>0 && other.hitbox_timer == other.length)hitstop = 0;
	}
	if("Frozen" in self)Frozen = false;
}