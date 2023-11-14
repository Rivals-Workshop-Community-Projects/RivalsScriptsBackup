if (my_hitboxID.attack == AT_FAIR){
    sound_play(asset_get("sfx_crunch_water"));
}

if (my_hitboxID.attack == AT_BAIR){
    if (my_hitboxID.hbox_num == 2){
        sound_play(sound_get("shine"));
    }
}

if (my_hitboxID.attack == AT_UAIR){
    if (my_hitboxID.hbox_num == 2){
        sound_play(sound_get("anime_bell"), false, noone, 0.7, 1);
    }
}

if (my_hitboxID.attack == AT_UTILT){
    sound_play(asset_get("sfx_leafy_hit3"));
}

/*
if (my_hitboxID.attack == AT_FTILT){
    sound_play(asset_get("sfx_shovel_hit_heavy1"));
}
*/

if (my_hitboxID.attack == AT_DATTACK){
    if (my_hitboxID.hbox_num == 1){
        spawn_hit_fx( hit_player_obj.x - 0*hit_player_obj.spr_dir, hit_player_obj.y - 100, coin_vfx );
        sound_play(sound_get("coin"), false, noone, 0.3, 1);
    }
}

if (my_hitboxID.attack == AT_JAB){
    if (my_hitboxID.hbox_num == 1){
        sound_play(sound_get("bonk"), false, noone, 0.3, 0.9);
    }
    if (my_hitboxID.hbox_num == 2){
        sound_play(sound_get("bonk"), false, noone, 0.3, 1.5);
    }
    if (my_hitboxID.hbox_num == 3){
        sound_play(sound_get("hit"));
    }
}

if (my_hitboxID.attack == AT_USTRONG){
    if (my_hitboxID.hbox_num != 1 && !ustrong_sfx_played){
        sound_stop(sound_get("machinegun"));
        sound_play(sound_get("machinegun"), false, noone, 1, 1);
        ustrong_sfx_played = true;
    }
}

if (my_hitboxID.attack == AT_FSTRONG){
    sound_play(sound_get("bonk"), false, noone, 1, 1);
}

if (my_hitboxID.attack == AT_DSTRONG){
    sound_play(asset_get("sfx_ell_steam_hit"), false, noone, 1, 1);
}

if (my_hitboxID.attack == AT_FSPECIAL){
    //spawn article on hit
    if (my_hitboxID.hbox_num == 1){
        with (my_hitboxID){
            if (!was_parried && other.hit_player_obj.state == PS_HITSTUN && other.hit_player_obj.clone == false){
                //remove any other present article versions
                with (asset_get("obj_article1")){
                    if (player_id == other.player_id){
                        state = 9;
                        state_timer = 0;
                    }
                }
                
                //create article version
                var daruma = instance_create(x + (spr_dir*0), y, "obj_article1");
            
                daruma.hit_player_init = true;
                //daruma.target_id = hit_player_obj.player_id;
            }
        }
    }
    
    if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
        with (my_hitboxID){
            if (player == other.player){
                sound_play(sound_get("jab_scissors"));
            }
        }
    }
}

if (my_hitboxID.attack == AT_NSPECIAL){
	with (my_hitboxID){
		if (hbox_num == 1){
			sound_play(asset_get("sfx_crunch_water"));
			
			//create article version
	        var fist = instance_create(x + (spr_dir*0), y, "obj_article3");
	        fist.vsp = -5.5;
	        fist.hsp = -1*spr_dir;
	        fist.y -= 5;
	        fist.spr_dir = spr_dir;
	        
	        //if it gets parried and hits nano it goes very high
	        if (was_parried && other.hit_player_obj == player_id){
	        	fist.vsp *= 4;
	        	with (other){
		        	sound_play(sound_get("ricochet"), false, noone, 0.5, 0.9);
	        	}
	        }
		}
	}
}

if (my_hitboxID.attack == AT_DSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		with (my_hitboxID){
			sound_play(sound_get("dspec_cow_hit"));
		}
		window = 5;
		window_timer = 0;
		old_vsp = -6;
		
		destroy_hitboxes();
		
		move_cooldown[AT_DSPECIAL] = 30;
	}
}

var nano_id = id;

		    if (hit_player_obj.in_daruma_range || in_daruma_range){
		        if ((player == nano_id.player && my_hitboxID.attack != AT_FSPECIAL) || player != nano_id.player){ //disables other darumas triggering the attack
		            if (hit_player_obj.state == PS_HITSTUN && hit_player_obj.clone == false && (my_hitboxID.type == 1 || (hit_player_obj.in_daruma_range && my_hitboxID.type == 2))){
		                with (obj_article1){
		                    if (player_id == nano_id){
		                        if (state == 1){
		                            target_id = other.hit_player_obj;
		                            //targetter_id = other.player;
		                            state = 4;
		                            state_timer = 0;
		                            break;
		                            //end loop early to not loop through every daruma
		                        }
		                    }
		                }
		            }
		        }
		    }