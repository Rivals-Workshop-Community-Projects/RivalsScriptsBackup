    //update

//Dtilt Cooldown
if(instance_exists(obj_article1) && obj_article1.player_id == id){
    if(obj_article1.state != 3 && obj_article1.state != 0){
        id.move_cooldown[AT_DTILT] = 3;   
    }

}

if(uspec_cd && !free){
    uspec_cd = false;
}

//Dspecial_air TP

if(state_timer == 0 && DSPEC_TP == true){
    x -= 26*getup_dir;
    DSPEC_TP = false;
    
}
//Dstrong_air TP

if(state_timer == 0 && fstr_tp == true){
    //x += 50*fstr_dir;
    fstr_tp = false;
    
}

//Dspecial_air wall jump recover

if(DSPA_grab && state == PS_WALL_JUMP){
    DSPA_grab = false;
    DSPA_grab_id.vsp = -15;
    
}

if(state != PS_ATTACK_AIR && state != PS_WALL_JUMP){
    DSPA_grab = false;
}

//Uspec exhaust reset
if(!free && uspec_exhaust > 2){
    uspec_exhaust = 2;
}

//#region Dsplat

if(Dpuddle){
    with(obj_article1){
        if(player_id == other.id){
            plimit -= 1;
            other.Dpuddle = false;
        }
    }
}
with(oPlayer){
    if(id != other.id){
        if(Dsplat == true){
            if(position_meeting(x, y +20, asset_get("par_block")) 
            || position_meeting(x, y +20, asset_get("par_jumpthrough"))){
                var splat = instance_create(x,y,"obj_article1")
                splat.state = 1;
                Dsplat = false;
                other.Dpuddle = true;
                splat.plimit = 3;
            }
        
            if(state != PS_HITSTUN && state != PS_HITSTUN_LAND){
                Dsplat = false;
            }
        }
    }
}



//#endregion
/*

if(puddle_exist){
    with(obj_article1){
        if(player_id == other.id){
            if(instance_find(obj_article1, true) == false){
                other.puddle_exist = false;
            }
        }
    }
}
*/

//intro 
if(introTimer < 12){ 
    if (introTimer2 < 5){
        introTimer2++;
    } else {
        introTimer2 = 0;
        introTimer++;
    }
}
else{
    
    if (introTimer2 < 6){
        introTimer2++;
    } else {
        introTimer2 = 0;
        introTimer++;
    }
    
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 17) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
if (state == PS_SPAWN || was_reloaded){
	if (spawn_timer < 100 && ColorLock == 0 && jump_down){
	    
	    if (get_player_color(player) == 0){ // Color 0 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Default = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Default = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Default = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Default = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Default = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Default = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	    if (get_player_color(player) == 1){ // Color 1 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Rune_Maker = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Rune_Maker = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Rune_Maker = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Rune_Maker = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Rune_Maker = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Rune_Maker = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 2){ // Color 2 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Crayfish = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Crayfish = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Crayfish = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Crayfish = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Crayfish = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Crayfish = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 3){ // Color 3 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Emerald_Confidant = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Emerald_Confidant = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Emerald_Confidant = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Emerald_Confidant = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Emerald_Confidant = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Emerald_Confidant = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 4){ // Color 4 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Black_Blank = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Black_Blank = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Black_Blank = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Black_Blank = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Black_Blank = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Black_Blank = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 5){ // Color 5 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Robbery_Purple = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Robbery_Purple = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Robbery_Purple = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Robbery_Purple = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Robbery_Purple = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Robbery_Purple = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 6){ // Color 6 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Empty_Flame = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Empty_Flame = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Empty_Flame = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Empty_Flame = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Empty_Flame = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Empty_Flame = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 7){ // Color 7 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Crimson_Scourge = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Crimson_Scourge = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Crimson_Scourge = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Crimson_Scourge = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Crimson_Scourge = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Crimson_Scourge = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	    if (get_player_color(player) == 8){ // Color 8 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				King_of_Kings = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				King_of_Kings = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				King_of_Kings = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				King_of_Kings = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				King_of_Kings = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				King_of_Kings = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 9){ // Color 9 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Humble_Melody = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Humble_Melody = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Humble_Melody = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Humble_Melody = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Humble_Melody = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Humble_Melody = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 10){ // Color 10 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Crystalline_Growth = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Crystalline_Growth = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Crystalline_Growth = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Crystalline_Growth = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Crystalline_Growth = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Crystalline_Growth = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 11){ // Color 11 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Explosive_Rebel = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Explosive_Rebel = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Explosive_Rebel = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Explosive_Rebel = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Explosive_Rebel = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Explosive_Rebel = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 12){ // Color 12 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Poisonous_Roar = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Poisonous_Roar = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Poisonous_Roar = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Poisonous_Roar = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Poisonous_Roar = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Poisonous_Roar = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	    if (get_player_color(player) == 13){ // Color 13 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Attuned_Traveler = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Attuned_Traveler = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Attuned_Traveler = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Attuned_Traveler = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Attuned_Traveler = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Attuned_Traveler = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 14){ // Color 14 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Hardened_Veteran = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Hardened_Veteran = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Hardened_Veteran = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Hardened_Veteran = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Hardened_Veteranx = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Hardened_Veteran = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   	 if (get_player_color(player) == 15){ // Color 15 Variations
	   	    if (up_down && !down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Sanguine_Lightning = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}		
			if (!up_down && down_down && !left_down && !right_down && !attack_down && !taunt_down){
				Sanguine_Lightning = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && left_down && !right_down && !attack_down && !taunt_down){
				Sanguine_Lightning = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && right_down && !attack_down && !taunt_down){
				Sanguine_Lightning = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
			if (!up_down && !down_down && !left_down && !right_down && attack_down && !taunt_down){
				Sanguine_Lightning = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			if (!up_down && !down_down && !left_down && !right_down && !attack_down && taunt_down){
				Sanguine_Lightning = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
	   	}
	   			if (ColorLocked){
			sound_play(asset_get("sfx_shovel_knight_fanfare"));
		}
	}
}