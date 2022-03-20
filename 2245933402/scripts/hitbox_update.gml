//hitbox_update


if attack == AT_USPECIAL && hbox_num == 3 {
	
    if hitbox_timer % 2 == 0 {
     spawn_hit_fx (x  + 18 - random_func(1, 36, true), y - 10 , 108)
    }
           
     if !free {
         destroyed = 1
         create_hitbox(AT_USPECIAL , 4 , x  , y );
         spawn_hit_fx (x , y , 253)
         sound_play(asset_get("sfx_abyss_explosion"));
     }
    
}


if attack == AT_DAIR && hbox_num == 3 {
    
        
            
            
           	if hitbox_timer % 2 == 0 {
             spawn_hit_fx (x , y  , 108)
            }
           
     if !free {
         destroyed = 1
         create_hitbox(AT_USPECIAL , 4 , x  , y );
         spawn_hit_fx (x , y , 253)
         sound_play(asset_get("sfx_abyss_explosion"));
     }
    
}


if attack == AT_NSPECIAL{
	if player_id.move_cooldown[AT_TAUNT_2] > 0 {
		hit_priority = 0
	} else {
		hit_priority = 9	
	}
   dattacks1 = hit_fx_create( sprite_get( "dattacks1" ), 12 );
	spawn_hit_fx (x, y - 39, dattacks1)	
}


if attack == AT_BAIR && hbox_num == 3{
   dattacks1 = hit_fx_create( sprite_get( "dattacks1" ), 12 );
	spawn_hit_fx (x, y - 44, dattacks1)	
	if hitbox_timer == 1 {
		spr_dir *= -1
		hsp *= -1
		vsp = 8 - player_id.window_timer*2
	}
}


if attack == AT_USTRONG && hbox_num == 2 {
	if hitbox_timer == 1 {
	spawn_hit_fx (x , y + 10 , 194)	
	}
   esp2 = hit_fx_create( sprite_get( "esp2" ), 9 );
   spawn_hit_fx (x  + 32 - random_func(1, 64, true), y + 10 , esp2)

	
}



if attack == AT_FSPECIAL && hbox_num == 1 {

	
	if hitbox_timer == 1 {
		hitbox_timer += floor(player_id.spamb/1.25)
	}
	
	if player_id.move_cooldown[AT_FTILT] == 1 {
		for (var i = 1; i <= 4; i++) can_hit[i] = (i == player);
		hsp *= 0.2
		vsp = -7
		sound_play(asset_get("sfx_ell_steam_hit"))
	}
	
	    if hitbox_timer % 15 == 0 or hitbox_timer == 2 or (hitbox_timer > 60 && hitbox_timer % 3 == 0)  {
            sound_play(asset_get("sfx_ell_steam_hit"))
            spawn_hit_fx (x , y, 109)
        }
        
	if hitbox_timer == 80  {
		shake_camera (4,8)
	   spawn_hit_fx (x , y - 10 , 253)
	    spawn_hit_fx (x , y - 10 , 204)
	    sound_play(sound_get("exp2")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 
	   hsp = 0
	   vsp = -1
	}
	
	if hitbox_timer == 86 {
	    create_hitbox(AT_FSPECIAL , 2 , x  , y - 20 );
	    destroyed = 1
	}

    if !free {
    	for (var i = 1; i <= 4; i++) can_hit[i] = (i == player);	
     hsp /= 2.5

      sound_play(sound_get("shell2"));
      vsp = floor(150 - hitbox_timer)/40 * -1

    

    	
    }
           
}

if attack == AT_FSPECIAL && hbox_num == 2 {
     can_hit_self = true	
}


if attack == AT_DSTRONG && hbox_num == 2 {
     can_hit_self = true	
}