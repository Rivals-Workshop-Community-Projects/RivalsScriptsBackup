///


if state == PS_SPAWN {
	if state_timer < 60 {
		draw_y = 9999
		draw_indicator = false 
	}
	
	if state_timer == 20 {
	   sound_stop(sound_get("slicel"))
	   sound_play(sound_get("slicel"))
	   introfxe = spawn_hit_fx(x,y,introfx)
	   introfxe.depth = -6
	}
    
	if state_timer == 50 {
	   sound_stop(sound_get("Fstrong"))
	   sound_play(sound_get("Fstrong"),false,noone,.8,1.2)
	    shake_camera(4,4)
	}
	
}

if state == PS_PRATLAND {
    sprite_index = sprite_get("landinglag")
    image_index = min (2,state_timer/5)
} 





if cheapmode == 3 or has_rune("D") {
	
	if attacking && attack == AT_DTILT && window_timer == 6 {
		
		if hit_player_obj == -4 or hit_player_obj == self  {
		var shortest_dist = 9999;
		var shortest_id = noone;
		
		with (asset_get("oPlayer")) {
			if (player != other.player) {
				var curr_dist = point_distance(x,y,other.x,other.y);
				if (curr_dist < shortest_dist) {
					shortest_dist = curr_dist;
					shortest_id = id;
				}
			}
		}
		
		hit_player_obj = shortest_id
		
		}
		
		spawn_hit_fx(x,y,stonem)	
		sound_play(sound_get("Fstrong"),false,noone,.5,1.6)
			
		set_state(PS_IDLE)
		x = hit_player_obj.x - 40*spr_dir
		y = hit_player_obj.y - 10
		vsp = -6
		
		tpfx = spawn_hit_fx(x,y - 20,ptgone)	
		tpfx.depth = -6
	}
	
	
}

if cheapmode == 3 or has_rune("E") {
	
	if attacking && has_hit_player && hitstop >= hitstop_full - 1 && get_gameplay_time()%2 == random_func(1,2,true) && hitpause{
		sound_stop(sound_get("RI"))
		sound_stop(sound_get("timestop"))
		sound_play(sound_get("timestop"),false,noone,1,1.5)
		sound_play(sound_get("timestop"),false,noone,.5,1.5)
		sound_play(sound_get("RI"),false,noone,1,1.6)
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, stonef)
		hit_player_obj.hitstop += 30
  	}
	
}

if cheapmode == 3 or has_rune("F") {
	
	if attacking && has_hit_player && hitpause{
		with hit_player_obj {
			take_damage(player,-1,1)
		}
  	}
	
}

if cheapmode == 3 or has_rune("G") {
	
	if attacking && has_hit_player && hitpause{
			take_damage(player,-1,-1)
  	}
	
	with oPlayer {
		if self != other {
		if state == PS_RESPAWN{
			if state_timer == 1 {
                with other {
                	if !hitpause {
                		sound_play(sound_get("Fstrong"),false,noone,.6,1)
                		lfx = spawn_hit_fx(x,y - 50,SC)
                		set_player_stocks(player, get_player_stocks(player) + 1)
                	} else {
                		other.state_timer -= 1
                	}
                }
			}
		}
	}
   }

}


if cheapmode == 3 or has_rune("H") {
	
	 with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y-12, 100,other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player_id != other.id && type == 2 && hit_priority != 0 && can_hit_self == false{
	    	
	    	damage += 5
	    	
	    	can_hit[other.player] = false
	    	
	    	transcendent = true
	    	hitbox_timer = 0
	    	can_hit_self = true
	    	

	    	
	    	with other {
	    		
            sound_stop(sound_get("parried")); 
            sound_play(sound_get("parried")); 
            shake_camera(4, 6)
	    		
	    	}
	    	
            fx = spawn_hit_fx (x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	fx.pause = 6 
			//hsp = (player_id.x - x)/35
			//vsp = (player_id.y - 30 - y)/35
			hsp = (player_id.x - x)/20
			vsp = (player_id.y - 30 - y)/20
			spr_dir *= -1
			
			
			nearbyhitbox.grav = 0
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			///nearbyhitbox.destroyed = true
            with other {
            	invincible = true 
            	invince_time = 5
            	rfx = spawn_hit_fx(x,y - 40,306)
            	rfx.pause = 5
            }
	    }
	    
	}   

}


if cheapmode == 3 or has_rune("I") {
   with pHitBox {
   	   if "player_id" in self {
   	   	   if player_id == other.id && type == 1 {
   	   	   	   sprite_index = asset_get("hitbox_circle_spr")
   	   	   	  if hitbox_timer == 1 {
   	   	   	  	sound_play(asset_get("sfx_abyss_explosion"),false,noone,.4 + hitpause/20, 1.6 - hitpause/20)
   	   	   	  }
   	   	   	   
   	   	   	  if hitbox_timer == 1 or (hitbox_timer == 8 and attack != AT_NAIR) or hitbox_timer == 16 { 
   	   	   	   if random_func(1,3,true) == 0 {
   	   	   	          hboxfx = spawn_hit_fx(x + player_id.hsp,y-10 + player_id.vsp,306)
   	   	   	         hboxfx.pause = 8
               } else if random_func(1,2,true) == 1{
               	stoneb = hit_fx_create( sprite_get( "stonebs" ), 14);
                  	   	   	   hboxfx = spawn_hit_fx(x + player_id.hsp,y-10 + player_id.vsp,stoneb)
                  	   	   	   hboxfx.draw_angle = get_gameplay_time()*4
                  	   	   	   hboxfx.spr_dir = 1.2
                  	   	   	   hboxfx.image_yscale = 1.2
               } else {
               		SCx = hit_fx_create( sprite_get( "SC" ), 14);
                  	hboxfx = spawn_hit_fx(x + player_id.hsp,y-10 + player_id.vsp,SCx)
                  	hboxfx.spr_dir = 0.9
                  	hboxfx.image_yscale = 0.9
               }
   	   	   	   image_xscale = .8
   	   	   	   image_yscale = .8
   	   	   	   
   	   	   	   if player_id.hitpause == true {
   	   	   	   	hitbox_timer += 1
   	   	   	   }
   	   	   	  }
   	   	   }
   	   }
   }	
    	
}

if cheapmode == 3 or has_rune("J") {
	if attacking && attack == AT_TAUNT {
		shake_camera(4,4)
		with oPlayer {
			if player != other.player && state != PS_RESPAWN {
				take_damage(player,-1,1)
				if other.state_timer % 3 == 0 {
				bbfx = spawn_hit_fx(x + 10 - random_func(1,20,true), y - random_func(2,50,true) - 20, 302)
				bbfx.pause = 4
				bbfx.depth = depth + 1
				}
			}
		}
	}
	
}


if cheapmode == 3 or has_rune("K") {
    thresholdNEO = floor(threshold/(hit_player_obj.knockback_adj))
	if get_player_damage(hit_player_obj.player) >= thresholdNEO {
	if hitpause && hitstop == 1 &&  has_hit_player && get_player_damage(hit_player_obj.player) >= thresholdNEO {
	    snapplayer = hit_player_obj
       attack_end()
       set_attack(AT_EXTRA_1)
       window = 1
       window_timer = 0
     }
	}
	
}

if cheapmode == 3 or has_rune("L") {
	with oPlayer {
    
	if "turningtodustID" in self {
		if turningtodustID == other && turningtodust > 0 && !hitpause{
		
			    take_damage(player,-1,-999)
			    take_damage(player,-1,9999999999)
                hitpause = false 
			    dustspr = sprite_index
			    dustimg = image_index
			    dustdir = spr_dir 
			    dustx = x
			    dusty = y 
			    KOdusted = 60

			    
			    y = 99999
			    turningtodust = 0
			
		}
	}
	
   }
	
	
}

if cheapmode == 3 or has_rune("M") {
	with asset_get("oPlayer") {
	   if self != other && !hitpause && other.state_cat != SC_HITSTUN{
		nearbyp = collision_circle( x, y-32, 10,other, true, true ) 
	
	    
	    if nearbyp != noone{
	    	

	    	with other {
	    		
            create_hitbox(AT_FSTRONG,8,x,y)
	    		
	    	}
	    	

	   }
	}   
   }
}

if cheapmode == 3 or has_rune("N") {
	 if attacking && window == 1 {
	 	super_armor = true 
	 } else {
	 	super_armor = false 
	 }
	
}

if cheapmode == 3 or has_rune("O") {
	if state == PS_LAND or state == PS_LANDING_LAG or state == PS_PRATLAND or state == PS_HITSTUN_LAND {
		if state_timer == 1 {
			create_hitbox(AT_FSTRONG,9,x,y)
				sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,1, 1)
				spawn_hit_fx(x + 20,y,14)
				spawn_hit_fx(x - 20,y,14)
				spawn_hit_fx(x + 50,y,14)
				spawn_hit_fx(x - 50,y,14)
				spawn_hit_fx(x + 150,y,13)
				spawn_hit_fx(x - 150,y,13)
		}
	}
	
}