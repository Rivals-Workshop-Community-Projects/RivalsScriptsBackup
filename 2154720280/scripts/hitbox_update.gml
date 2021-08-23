///
if y > (room_height/2 + 400) {
		destroyed = 1
}
	
	if attack == AT_DTILT && hbox_num == 2 {
    if hitbox_timer < 56 {
    	image_index = 0
    }

    if hitbox_timer == 56 {
    	image_index = 1
    		sound_play(asset_get("sfx_crunch"),false,noone,1,1.5);
    }
    
    if hitbox_timer >= 60 && hitbox_timer < 596{
    	image_index = 2
    	can_hit_self = true
    	hit_priority = 9
    }
    
    if hitbox_timer == 596 {
    	image_index = 1
    	    	    create_hitbox(AT_DSPECIAL , 6 , x , y );
    		sound_play(asset_get("sfx_bite"),false,noone,1,1.3);
    	hit_priority = 0	
    }
    
	}
	
	
var tauntpar1 = hit_fx_create( sprite_get( "tauntpar1" ), 20);
var tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
	
	if attack == AT_NSPECIAL && hbox_num == 1 {
    if hitbox_timer < 30 {
    	vsp = 0
    }
    if hitbox_timer == 30 {
    	vsp = 12
    	sound_play(asset_get("sfx_holy_tablet_appear"));
    } 
      if hitbox_timer > 32 {
      hitbox_timer = 32
    
	
	}
	
    if  (!free && (place_meeting(x, y + 2, asset_get("par_block")))) or player_id.state_cat == SC_HITSTUN  {
    	destroyed = 1
    	spawn_hit_fx( x  , y , 302 )
    	spawn_hit_fx( x  , y , 306 )
    	sound_play(asset_get("sfx_abyss_explosion_big"));
    	create_hitbox(AT_NSPECIAL , 2 , x , y - 10 );
    	create_hitbox(AT_NSPECIAL , 3 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 4 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 5 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 6 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 7 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 8 , x , y - 10);
    }	
	}
	
	
		if attack == AT_NSPECIAL && hbox_num == 8 {
			if hitbox_timer > 31 {
			hitbox_timer -= 1
			}
var heal_player = instance_place(x, y, oPlayer)	
	if (heal_player != noone) && hitbox_timer > 30	 {
	if  heal_player.url != 2154720280 && !has_rune("G")  {
  			sound_play(asset_get("sfx_crunch"));
			spawn_hit_fx( x  , y , tauntpar1 )
		take_damage( heal_player.player, -1 , -10 )
			destroyed = 1
	}
	
	
	if  heal_player.url == 2154720280 {
  	    	sound_play(asset_get("sfx_may_arc_hit"));
			spawn_hit_fx( heal_player.x  , heal_player.y , tauntpar1 )
			spawn_hit_fx( x  , y , tauntpar1 )
		heal_player.supply += 6
		take_damage( heal_player.player, -1 , -8 )
		destroyed = 1
	}
   }		

}
		
		
			if attack == AT_FSPECIAL && hbox_num < 4 {
		
		if !free && (place_meeting(x, y + 2, asset_get("par_block"))) {
    	destroyed = 1
    	create_hitbox(AT_FSPECIAL , 4 , x , y );
        }
		
		if !free {
        sound_play(asset_get("sfx_blow_medium3"));
        spawn_hit_fx(x,y, 109)
    	y += 6
    	hsp/= 2
    	img_spd += 0.5
        }
    
		}
		
		
	if attack == AT_FSPECIAL && hbox_num == 4 {
		
		 if !free {
    	destroyed = 1
    	sound_play(asset_get("sfx_land_light"));
    	create_hitbox(AT_FSPECIAL , 5 , x , y );
        }
		
		}
		
		
		
			
		if attack == AT_FSPECIAL && hbox_num == 5 {
			
					
var heal_player = instance_place(x, y, oPlayer)
if (heal_player != noone) {
	
	if  heal_player.url != 2154720280 && !has_rune("G") {
  			sound_play(asset_get("sfx_bite"));
			spawn_hit_fx( x  , y , tauntpar1 )
		take_damage( heal_player.player, -1 , -2 )
			destroyed = 1
	}
	
	
	if  heal_player.url == 2154720280 {
		tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
  	    	sound_play(asset_get("sfx_orca_bite"));
			spawn_hit_fx( heal_player.x  , heal_player.y , tauntpar1 )
			spawn_hit_fx( x  , y , tauntpar1 )
		heal_player.supply += 1
		destroyed = 1
	}
   }

			hitbox_timer -= 1

			
}
		

		

		
		
		

		


if attack == AT_DSPECIAL && hbox_num < 4 && player_id.move_cooldown[AT_DSPECIAL] > 0{
	player_id.move_cooldown[AT_DSPECIAL] = 2
}		

if attack == AT_DSPECIAL && hbox_num == 1 && !free && player_id.milkpizz != 1  {
	destroyed = 1 
	vsp += 0.1
	spawn_hit_fx( x  , y , 156 )
	spawn_hit_fx( x  , y , 195 )
    	sound_play(sound_get("explosionshake"));
    	create_hitbox(AT_DSPECIAL , 2 , x , y );
	
}

if attack == AT_DSPECIAL && hbox_num == 2 {
	if hitbox_timer == 5 {
		image_xscale *= 1.4
		image_yscale *= 1.4
	}
}


if attack == AT_DSPECIAL && hbox_num == 3 {
	
    if hitbox_timer % 6 == 0 {
		create_hitbox(AT_DSPECIAL , 4 , x , y );
    }
	
	if hitbox_timer < 60 {
	hsp /= 1.015
	}
    
    if hitbox_timer == 60 {
    	spr_dir *= -1
    }
    
    if hitbox_timer > 60 && hitbox_timer < 110 {
       hsp += 0.2 * spr_dir	
    }
    
    if hitbox_timer == 179 {
    	spawn_hit_fx(x,y - 10, 302)
    }
}

if attack == AT_EXTRA_3 {
	
	if hitbox_timer == 4 {
		sound_play(asset_get("sfx_swipe_heavy2"));
		sound_play(sound_get("demonlaugh"));
	}
	
	if hitbox_timer == 36 {
		sound_play(sound_get("voiceustrong"));
	}
	
	if hitbox_timer == 70{
		sound_play(asset_get("sfx_swipe_heavy1"));
	}
    
    if hitbox_timer == 80 {
    	vsp = -10
    	hsp = -10 * spr_dir
		sound_play(sound_get("jumpair"));
	}
	
	if hitbox_timer > 80 {
		vsp += 0.5
	}
}



/// Coin


	if attack == AT_DSPECIAL && hbox_num == 6 {
		
		
		 if !free {
    	destroyed = 1
    	create_hitbox(AT_DSPECIAL , 5 , x , y );
        }
		
		}
		
		
		
			
		if attack == AT_DSPECIAL && hbox_num == 5 {

var heal_player = instance_place(x, y, oPlayer)
if (heal_player != noone) {
	
	if  heal_player.url != 2154720280 && !has_rune("G") {
	tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
  	    	sound_play(asset_get("sfx_coin_collect"));
			spawn_hit_fx( heal_player.x  , heal_player.y , tauntpar2 )
			spawn_hit_fx( x  , y , 109 )
		take_damage( heal_player.player, -1 , -1 )
			destroyed = 1
	}
	
	if  heal_player.url == 2154720280 {
		tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
  	    	sound_play(asset_get("sfx_coin_collect"));
			spawn_hit_fx( heal_player.x  , heal_player.y , tauntpar2 )
			spawn_hit_fx( x  , y , 109 )
		take_damage( heal_player.player, -1 , -1 )	
		heal_player.supply += 1
		destroyed = 1
	}
   }
   
			hitbox_timer -= 1

   }
		


/// golden		
if player_id.golden == 1 or player_id.attra == 1 {
	
	
	if (attack == AT_NSPECIAL && hbox_num == 8) or (attack == AT_DSPECIAL && hbox_num == 5) or (attack == AT_FSPECIAL && hbox_num == 5) {
	x += (player_id.x - x) / 60
	y += (player_id.y - y) / 60
	fall_through = true
	if player_id.x - x < 0 {
		hsp -= 0.2
	} else {
		hsp += 0.2
	} 
	
	if player_id.y - y < 0 {
		vsp -= 0.4
	} else {
	    
	} 
	}
	if attack == AT_DSPECIAL && hbox_num == 4 {
	hitbox_timer += 2
	}
			
}


if attack == AT_DSPECIAL && hbox_num == 1 && !free && player_id.milkpizz = 1  {
    spawn_hit_fx( x  , y , 302 )
    	spawn_hit_fx( x  , y , 306 )
    		spawn_hit_fx( x  , y , 195 )
    	spawn_hit_fx( x  , y - 50 , 156 )
    			spawn_hit_fx( x  , y + 50 , 195 )
    	spawn_hit_fx( x - 50  , y , 156 )
    		spawn_hit_fx( x + 50  , y , 156 )
    	sound_play(asset_get("sfx_abyss_explosion_big"));
    	create_hitbox(AT_DSPECIAL , 2 , x + 50 , y - 10);
        create_hitbox(AT_DSPECIAL , 2 , x - 50 , y - 10);
        create_hitbox(AT_DSPECIAL , 2 , x , y - 60);
        create_hitbox(AT_DSPECIAL , 2 , x , y + 40);
    	destroyed = 1
    
	spawn_hit_fx( x  , y , 195 )
    	spawn_hit_fx( x  , y , 156 )
    	sound_play(sound_get("explosionshake"));
    	create_hitbox(AT_DSPECIAL , 2 , x , y );
    	hitbox_timer = 0
	
	
}


if attack == AT_DSPECIAL && hbox_num == 3 && player_id.milkpizz = 1   {
		
		if hitbox_timer > 60 {
    	spawn_hit_fx( x  , y , 302 )
    	spawn_hit_fx( x  , y , 306 )
    	spawn_hit_fx( x  , y , 195 )
    	    	spawn_hit_fx( x - 100*spr_dir  , y , 156 )
    	    	    	spawn_hit_fx( x + 100*spr_dir  , y , 156 )

    	    	sound_play(sound_get("explosionshake"));
    	sound_play(asset_get("sfx_abyss_explosion_big"));
    	create_hitbox(AT_NSPECIAL , 2 , x , y - 10 );
    	create_hitbox(AT_NSPECIAL , 3 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 4 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 5 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 6 , x , y - 10);
    	create_hitbox(AT_NSPECIAL , 7 , x , y - 10);
    	create_hitbox(AT_DSPECIAL , 2 , x , y - 10 );
    	create_hitbox(AT_DSPECIAL , 2 , x - 100*spr_dir , y - 10 );
    	create_hitbox(AT_DSPECIAL , 2 , x + 100*spr_dir , y - 10 );
    	destroyed = 1
		}
}

if has_rune("L") {
		if attack == AT_DSPECIAL && hbox_num == 5 {
			if !free {
			hitbox_timer += 5
			}
		}
}


