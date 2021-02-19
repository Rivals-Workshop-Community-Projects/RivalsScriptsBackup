///

if my_hitboxID.attack == AT_JAB or my_hitboxID.attack == AT_NAIR {
    
    sound_play(asset_get("sfx_clairen_tip_weak"))	
    
}

if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 3 {
    
    sound_play(sound_get("bonk"))	
    
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num > 4 {
	 move_cooldown[AT_NSPECIAL] = 5
	 move_cooldown[AT_EXTRA_1] += 5
}


if my_hitboxID.attack != AT_NSPECIAL {
		sound_stop(sound_get("DF"));
			 move_cooldown[AT_EXTRA_1] = 0
}
if my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_DATTACK{
    
    sound_play(asset_get("sfx_clairen_tip_med"))	
    
}

if  my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_BAIR {
    
    sound_play(asset_get("sfx_clairen_hit_strong"))	
    
}

if  my_hitboxID.attack == AT_NSPECIAL {
    
    sound_play(asset_get("sfx_clairen_tip_strong"))	
    if  hit_player_obj != self {
    	if my_hitboxID.hbox_num == 4 {
        	create_hitbox(AT_NSPECIAL, 5, hit_player_obj.x + 20*hit_player_obj.spr_dir, hit_player_obj.y - 40)
    	}
    	if my_hitboxID.hbox_num == 2 {
        	create_hitbox(AT_NSPECIAL, 8, hit_player_obj.x + 20*hit_player_obj.spr_dir, hit_player_obj.y - 40)
    	}
    	
    	if my_hitboxID.hbox_num == 3 {
        	create_hitbox(AT_NSPECIAL, 7, hit_player_obj.x + 20*hit_player_obj.spr_dir, hit_player_obj.y - 40)
    	}
    }
    
}

if (my_hitboxID.attack == AT_DTILT) or my_hitboxID.attack == AT_JAB or my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_UTILT
or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DATTACK
or my_hitboxID.attack == AT_NAIR or my_hitboxID.attack == AT_UAIR or (my_hitboxID.attack == AT_DAIR )or 
(my_hitboxID.attack == AT_FAIR) {
    move_cooldown[AT_EXTRA_2] = 60
    
       scharge += my_hitboxID.damage * 6
} 

if overcharged == 1 {
	
		 spawn_hit_fx (hit_player_obj.x  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 10 - random_func(2, 66, true) , 113)
	   	 sound_play(asset_get("sfx_holy_lightning")); 
	   	 
	if my_hitboxID.damage >= 2 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 1)
         }	
     }
     
     if my_hitboxID.damage >= 3 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 1)
         }	
     }
     
     if my_hitboxID.damage >= 6 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 2)
         }	
     }
     
}
