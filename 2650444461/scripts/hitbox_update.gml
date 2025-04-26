//hitbox_update
if(player_id.player == orig_player){
	
	if (attack == AT_NSPECIAL){
	    if(hbox_num == 1){
	        free = true;hsp *= 0.97;vsp *= 0.99;
	        if(hitbox_timer == 40 || destroyed){
	            sound_play(bubble_pop_sfx);spawn_hit_fx(x,y,player_id.fx_bubbles);
	        }
	    }
	}
	
	if (attack == AT_DSPECIAL){
	    if(hbox_num == 2){
	        if(x > room_width || x < 0 || y >= room_height+65 || y <= -200){
	            destroyed = true;
	        }
	        if(destroyed || hitbox_timer >= length){
	            spawn_hit_fx(x+20,y,player_id.fx_mudsplash);spawn_hit_fx(x-20,y,player_id.fx_mudsplash);
	            for(var i = 0; i < ds_grid_width(player_id.mud_puddles); i++){
					if(ds_grid_get(player_id.mud_puddles,i,0) == self){
						ds_grid_set(player_id.mud_puddles,i,0,0);
					}
				}destroyed = true;
	        }
	        depth = player_id.depth+1;
	        with(oPlayer){
			    if((!free || other.destroyed)){
				    var dist = point_distance(other.x, other.y-10, x, y); //distance
				    if(dist <= 40 && !other.destroyed){
				    	on_puddle_id = other.orig_player_id;slippery_timer = 10;
				    }
			    }
			    if(!free){
		            if(("scrub" in self && scrub) && other.scrubbed){
		            	what_i_scrubbed = "MudkipMudPuddle";
		                with(other){
		                    var mud = create_hitbox(AT_DTILT, 4, round(other.x+75*other.spr_dir+(dist)/10),round(y-20-(dist)/10));mud.player = other.player;mud.hsp = 8*other.spr_dir;
		                    destroy_fx = 1;KoB_destroy = true;scrubbed = false;
		                }
		            }                
		        }
		    }hitbox_timer = 0;
	    }
	}
	
	if (attack == AT_FAIR){
	    free = true;hsp *= 0.9;
	    if(hitbox_timer >= 16){
	        damage = 4;kb_value = 4;kb_scale = 0.5;kb_angle = 90;hitstun_factor = 0.7;
	        sound_effect = asset_get("sfx_waterhit_weak");hit_effect = 302;image_xscale = 0.17;image_yscale = 0.17;
	    }else if(hitbox_timer >= 4){
	        damage = 6;kb_value = 6;kb_scale = 0.7;kb_angle = 70;hitstun_factor = 0.9;
	        sound_effect = asset_get("sfx_waterhit_medium");hit_effect = 304;image_xscale = 0.2;image_yscale = 0.2;
	    }
	    if(hitbox_timer == 40 || destroyed){
	        sound_play(bubble_pop_sfx);spawn_hit_fx(x,y,player_id.fx_bubbles);
	    }
	}
	
	if (attack == AT_DTILT){
	    if(hbox_num == 4){
	        hsp *= 0.99;spr_dir = hsp>0?1:-1;
	        if(vsp < 6){
				kb_angle = 45;kb_scale = 0.7;kb_value = 6;
			}else{
				kb_angle = 270;kb_scale = 0.5;kb_value = 5;
			}
	        if(!free){
	            destroyed = true;
	        }
	        if(get_gameplay_time() % 3 == 0){
	        	spawn_hit_fx(x,y,player_id.fx_mudtrail);
	    	}
	        if(hitbox_timer == 900 || destroyed){
	            sound_play(asset_get("sfx_waterhit_heavy"));spawn_hit_fx(x,y,player_id.fx_mudsplash);
	        }
	    }
	}
	
	if (attack == AT_TAUNT){
		if(player != orig_player){
			taunt_rain_Y = room_height;
		}
	    if(y >= taunt_rain_Y){
	        destroyed = true;
	        spawn_hit_fx(x,taunt_rain_Y,player_id.fx_watersplash_verysmall);
	    }
	}
	
	//intro pokeball
	if(attack == AT_JAB && hbox_num == 3){
		depth = player_id.depth+1;
		if(pokeball == 0){
			if(get_gameplay_time() % 3 == 0){
	            image_index += 1;
	            if(image_index > 11)image_index = 0;
	        }
			if(pokeball == 0 && y >= player_id.y){
				x = player_id.x;y = player_id.y-4;
				image_index = 12;pokeball = 1;hsp = 0;vsp = 0;grav = 0;
			}
		}else if(pokeball == 1){
			if(get_gameplay_time() % 3 == 0 && image_index < 17){
	            image_index += 1;
	            if(image_index = 15){
	            	sound_play(pokeball_sfx,false,noone,0.85);
	            	var eff = spawn_hit_fx(round(x), round(y-10), player_id.fx_pokeball);eff.depth = player_id.depth-1;
	            	player_id.intro = 0;
	            }if(image_index = 17){
	            	eff = spawn_hit_fx(round(x), round(y-10), player_id.fx_pokeball_orb);eff.depth = player_id.depth-2;
	            }
	        }
		}
	}

	stop_effect = false;
	if(KoB_destroy){hitbox_timer = length;destroyed = true;}
	draw_xscale = spr_dir;

}