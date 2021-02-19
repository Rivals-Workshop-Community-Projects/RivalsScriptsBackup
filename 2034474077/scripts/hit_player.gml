if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.effect == 69){
    if(hit_player_obj.clone == false){
		my_hitboxID.in_hitpause = true;
		my_hitboxID.hitpause_timer = hit_player_obj.hitstop - 1;
    }
}

if(my_hitboxID.attack == AT_USPECIAL_1){
    if(hit_player_obj.clone == false){
        if(window == 2){
            multihit = hit_player_obj;
            if(runeH){
            	set_window_value(AT_USPECIAL_1, 3, AG_WINDOW_TYPE, 1);
            }
        }
    }
}

if(my_hitboxID.attack == AT_USPECIAL){
    if(hit_player_obj.clone == false){
        multihit = hit_player_obj;
        if(window < 8){
            hit_player_obj.should_make_shockwave = false;
        }
    }
}

if(my_hitboxID.attack == AT_USPECIAL_3){
    if(hit_player_obj.clone == false){
        multihit = hit_player_obj;
        if(window < 4){
            hit_player_obj.should_make_shockwave = false;
        }
    }
}

if(my_hitboxID.attack == AT_FSPECIAL_1){
    if(hit_player_obj.clone == false){
        if(window == 2){
            destroy_hitboxes();
            set_attack_value(AT_FSPECIAL_1, AG_NUM_WINDOWS, 13);
            window = 6;
            window_timer = 0;
        }
    }
}  

if(my_hitboxID.attack == AT_FSPECIAL_2){
    if(hit_player_obj.clone == false){
        multihit = hit_player_obj;
    }
}

if(my_hitboxID.attack == AT_FSPECIAL){
    if(hit_player_obj.clone == false){
        if(window == 2){
            multihit = hit_player_obj;
            if(!multihit.super_armor){
        		multihit.hitpause = true;
        		multihit.hitstop = 75;
            	destroy_hitboxes();
            	window = 4;
            	window_timer = 0;
            	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
            }
        }
    }
}

if(my_hitboxID.attack == AT_DSPECIAL_1){
    if(window < 5){
        if(hit_player_obj.clone == false && hit_player_obj.super_armor == false){
            multihit = hit_player_obj;
            multihit.vsp = -4;
            multihit.hsp = 2 * spr_dir;
        }
    }
}

if(my_hitboxID.attack == AT_DSPECIAL_3){
    if(window == 5){
        multihit = hit_player_obj;
        if(!multihit.super_armor){
        	multihit.hitpause = true;
        	multihit.hitstop = 30;
        }
    }else if(window == 6){
    	multihit = noone;
    }
}