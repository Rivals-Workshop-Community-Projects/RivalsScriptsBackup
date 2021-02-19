///

if attack == AT_NSPECIAL && hbox_num == 1{
	if hitbox_timer < 60 {	
	hsp += 0.4 * spr_dir
	}
	if  hitbox_timer % 1 == 0 && player_id.char_height = 52.1{
		i1 = hit_fx_create( sprite_get( "np1" ), 10);
			spawn_hit_fx( x , y , i1 )
    }
	
}



if attack == AT_NSPECIAL && hbox_num == 2{
	if hitbox_timer < 60 {	
	hsp += 0.4 * spr_dir
	}
	
	if  hitbox_timer % 1 == 0 && player_id.char_height = 52.1{
		i2 = hit_fx_create( sprite_get( "np2" ), 10);
			spawn_hit_fx( x , y , i2 )
    }
	
}

if attack == AT_NSPECIAL && (hbox_num == 3 or hbox_num == 4){
	
	if hitbox_timer < 60 {
	hsp += 0.2 * spr_dir
	}

	if  hitbox_timer % 1 == 0 && player_id.char_height = 52.1{
		i3 = hit_fx_create( sprite_get( "np3" ), 10);
			spawn_hit_fx( x , y , i3 )
    }
	
}


if attack == AT_NSPECIAL && (hbox_num == 5 or hbox_num == 7 or hbox_num == 8){
	
	if hitbox_timer < 20 {
		hsp /= 1.2
	}
	if player_id.move_cooldown[AT_FTILT == 1] {
		destroyed = 1
	}
 i5 = hit_fx_create( sprite_get( "np5" ), 12);	
 if hitbox_timer % 4 == 0 or hitbox_timer == 1 {
 	create_hitbox (AT_NSPECIAL, 6, x, y)
 }	
	 
	if hitbox_timer%4 == 0 or hitbox_timer == 1{
		sound_play(asset_get("sfx_clairen_tip_loop"));
	}
	
	if hitbox_timer%6 == 0 or hitbox_timer == 1{
		sound_play(asset_get("sfx_waveland_abs"));
		spawn_hit_fx( x , y , i5 )
	}
}

if attack == AT_DSPECIAL && (hbox_num == 1){
           i5 = hit_fx_create( sprite_get( "np5" ), 12);
	if player_id.move_cooldown[AT_FTILT == 1] {
		destroyed = 1
	}	
	 
	if hitbox_timer%4 == 0 or hitbox_timer == 1{
		sound_play(asset_get("sfx_clairen_tip_loop"));
	}
	
	if hitbox_timer%6 == 0 or hitbox_timer == 1{
			spawn_hit_fx( x , y , i5 )
		sound_play(asset_get("sfx_waveland_abs"));
	}
	
	with oPlayer{
	if clone continue
	var heal_player = instance_place(x, y, other)
	if (heal_player != noone) {
	
    	if  url != other.player_id.url {
			x += 4 * (1 - (get_gameplay_time()%3))        
             if other.hitbox_timer % 5 == 0 {
            }
            
        }
        
   }    
    
   }
	
}

if attack == AT_DSPECIAL && (hbox_num > 2 && hbox_num != 7){
           i5 = hit_fx_create( sprite_get( "np5" ), 12);
		
	if player_id.move_cooldown[AT_FTILT == 1] {
		destroyed = 1
	}
	
	if hitbox_timer % 7 == hbox_num or hitbox_timer == 1{
			spawn_hit_fx( x , y , i5 )
	}
	
    with oPlayer{
	if clone continue
	var heal_player = instance_place(x, y, other)
	if (heal_player != noone) {
	
    	if  url != other.player_id.url {
			x += 4 * (1 - (get_gameplay_time()%3))        
             if other.hitbox_timer % 5 == 0 {
            }
            
        }
        
   }    
    
   }
   
	
}

if attack == AT_DSPECIAL && hbox_num == 7{
	can_hit_self = true	
}