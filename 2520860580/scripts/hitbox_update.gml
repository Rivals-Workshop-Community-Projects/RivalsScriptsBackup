///
projectile_parry_stun = false

if attack == AT_EXTRA_1 && hbox_num == 9 {
	hsp = (player_id.x - x)/5 
	vsp = (player_id.y - 10 - y)/5 
	
	if hitbox_timer% 2 == 0 {
		spawn_hit_fx(x + player_id.hsp,y + player_id.vsp,vai)
	}
	
}

if attack == AT_EXTRA_1 && hbox_num == 1 {
	
	if player_id.lockout > 0 {
		destroyed = 1
	}
 slashc = hit_fx_create( sprite_get( "slashc" ), 20 );
 
var heal_player = instance_place(x, y, oPlayer)
prevheal_player = 0
if (heal_player != noone) && heal_player.id != player_id && hitbox_timer > 0 && heal_player != prevheal_player
&& heal_player.visible == true{
	create_hitbox(AT_EXTRA_1, 3 , heal_player.x, heal_player.y - 40)
	spawn_hit_fx(heal_player.x, heal_player.y - 40, slashc)
	sound_play(asset_get("sfx_bird_sidespecial_start"))
	hitbox_timer = -6
	shake_camera(2,5)
	prevheal_player = heal_player
	if player_id.triggered = 0 {
	destroyed = true
	}
   }
   
   
   vdust = hit_fx_create( sprite_get( "vdust" ), 12 );
sprite_change_offset("vdust", 10, 20);        
        


if hitbox_timer == 1 {
    y = player_id.iny
} else {
        if (place_meeting(x + hsp, y + vsp, asset_get("par_block"))) {
                   spawn_hit_fx(x - 40 + random_func(1,80,true),y - 20 + random_func(2,10,true),vdust)
        }    
}
    
}


if attack == AT_EXTRA_1 && hbox_num == 3 {
	if player_id.lockout > 0 {
		destroyed = 1
	}
	
 SC = hit_fx_create( sprite_get( "SC" ), 16 );
 if hitbox_timer == 19 {
          spawn_hit_fx(x, y, SC)
           sound_play(sound_get("SpaceCut")) 
 }
 
 if hitbox_timer == 20 {
     shake_camera(5,5)
     create_hitbox(AT_EXTRA_1, 4 , x, y)
 }
 
}


if attack == AT_EXTRA_2 && hbox_num == 2 {
  hsp /= 1.1
  with player_id{
  	if "hit_player_obj" in self{
			other.y += clamp(floor((hit_player_obj.y - other.y)/12),-3,3)
			other.x += clamp(floor(hit_player_obj.x - other.x)/12,-2,2)
  	}
  }
  
  if hitbox_timer >= 16 && hitbox_timer % 6 == 0{
  	create_hitbox(AT_EXTRA_2, 3, round(x), round(y))
  	  if hitbox_timer % 8 == 0{
  	sound_play(sound_get("SpaceCutB"),false,noone,0.4) 
  	  }
  }
  
    if hitbox_timer < 16 && (hitbox_timer % 6 == 0 or hitbox_timer == 1){
    	  	create_hitbox(AT_EXTRA_2, 4, round(x), round(y))
    	  	 sound_play(sound_get("SpaceCutB"),false,noone,0.4) 
    }
  
  
  if hitbox_timer == 90 or player_id.attack == AT_EXTRA_3 or player_id.attack == AT_FSTRONG {
  	sound_play(asset_get("sfx_ori_bash_projectile"))
  	destroyed = 1
  }
	
}



if attack == AT_FSPECIAL && hbox_num == 1 {
	
	if hitbox_timer > 40{
		spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - random_func(4, 10, true) , esp )
		hit_priority = 9
		with player_id{
        	if "hit_player_obj" in self{
      			other.y += clamp(floor((hit_player_obj.y - other.y - 12)/12),-2,2)
        	}
        }
	}
	
	 if hitbox_timer == 40{
	 	sound_play(sound_get("counterhit"),false,noone,0.5,2)
	 	hsp = 16*spr_dir
     	SC2 = spawn_hit_fx(x,y,302)
     	SC2.pause = 4
     }
     
    if hitbox_timer < 40{
    	hsp /= 1.1
    }
  
	if hitbox_timer == 1{
    	SC2 = spawn_hit_fx(x,y,302)
    	SC2.pause = 4
    }  
	  
	
}


// if attack == AT_FSPECIAL && hbox_num == 5 {
//   if hitbox_timer == 1{
//   	SC2 = spawn_hit_fx(x,y,302)
//   	SC2.pause = 4
//   }
  
//   if hitbox_timer == 40{
//   	destroyed = 1
//   	sub = create_hitbox(AT_FSPECIAL,1,round(x),round(y))
//   	sub.spr_dir = spr_dir
//   	SC2 = spawn_hit_fx(x,y,302)
//   	SC2.pause = 4
//   }
//   hsp /= 1.05
// }

if attack == AT_FSPECIAL && hbox_num == 3 {
	
	if hitbox_timer > 150 && player_id.lockout > 0 {
		destroyed = 1
	}
	
	player_id.move_cooldown[AT_FSPECIAL] = 2

	if hitbox_timer == 1 {
    	hitbox_timer = 120
	}
	
	if hitbox_timer < 290 && player_id.stormtarget.state != PS_DEAD && player_id.stormtarget.state != PS_RESPAWN {
		
		x = player_id.stormtarget.x
		y = player_id.stormtarget.y - 40
	}
	
		if hitbox_timer == 270 {
			sound_play(asset_get("sfx_absa_boltcloud"))
		}
		
		if hitbox_timer == 300 {
			sound_play(sound_get("counterhit"))
			spawn_hit_fx(x,y,305)
			create_hitbox(AT_FSPECIAL,2,x,y)
		}
		
		
}


if attack == AT_DSPECIAL && hbox_num == 3 {
   if player_id.state_cat == SC_HITSTUN {
   	destroyed = true
   }
   
    if player_id.attacking && player_id.attack == AT_DSPECIAL && player_id.window == 3 {
   	destroyed = true
   	sound_play(asset_get("sfx_absa_whip1"))
   	sound_play(sound_get("counterhit"),false,noone,0.6)
   	shake_camera(4,6)
   }
   
}


if attack == AT_DSPECIAL && hbox_num == 2 {
	
	  player_id.move_cooldown[AT_DSPECIAL] = 60
	  
	  if hitbox_timer == 1 {
	  	sound_play(asset_get("sfx_ori_grenade_launch"))
	  }
	  
	 if (hitbox_timer == 8 or hitbox_timer % 10 == 0) and hitbox_timer <= 40 {
	 	spawn_hit_fx(x,y + 300, rains)
	 }
	if  hitbox_timer > 65  && hitbox_timer < 85 {
		 sound_play(sound_get("SpaceCutB"),false,noone,0.4) 	
	create_hitbox(AT_DSPECIAL,1,x + 100 - random_func(1,200,true),y)
	}
}


if attack == AT_DSPECIAL && hbox_num == 1 {
	
		spawn_hit_fx( x, y - random_func(4, 10, true) , esp )
		
	if (place_meeting(x , y + vsp , asset_get("par_block"))) {

		   	shake_camera(2,2)
		destroyed = 1
		sound_play(sound_get("slicel"),false,noone,0.6) 
		spawn_hit_fx(x,y + vsp, mblade5)
		spawn_hit_fx( x - 12, y + 40 - random_func(4, 10, true) , esp )
		spawn_hit_fx( x + 12, y + 40 - random_func(4, 10, true) , esp )
	}
}


if attack == AT_USPECIAL && hbox_num == 16 && (!free or hitbox_timer == 59)  {
	 spawn_hit_fx(x,y,berrye)
	 if !free {
	  sound_play(asset_get("sfx_orca_bite"),false,noone,0.5) 	
	 sound_play(asset_get("sfx_poison_hit_med"),false,noone,0.3) 
	 } else {
	 sound_play(asset_get("sfx_poison_hit_med"),false,noone,0.3) 	
	 }
	 
	 destroyed = 1
}
