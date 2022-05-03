//

followArray = array_create(2,-4);
with (oPlayer) if (state != PS_DEAD) for (var i = 0; i<array_length_1d(other.followArray); ++i) 
if (other.followArray[i] == -4) {other.followArray[i] = id; break;}

onevsone = true 



switch backroom {
	case 0 :
       yoffset1 = 0
       yoffset2 = 0
	
	break;
	
	case 1 :
       yoffset1 = 0
       yoffset2 = 0
	  
	if get_gameplay_time()%300 = random_func(floor(oldcamx%6)+5,300,true) {
	  
	  if Alexrun == -1 {
	  	Alexrun = 300
	  	sound_play(sound_get("nigerun"),false,1,.7,1)
	  }
	
	
	if Alexrun == 1  {
	  	Alexrun = -300
	  	sound_play(sound_get("nigerun"),false,-1,.7,1)
	  }
	}  
	if Alexrun < -1 Alexrun ++ 
	if Alexrun > 1 Alexrun --
	
	break ; 
	
	case 2 :
       yoffset1 = 0
       yoffset2 = 0
	break;
	
	case 3 : 
       yoffset1 = 200
       yoffset2 = 160
	break;
	
}


if intro != 0 {
	intro -- 
    introex = intro - 10 + random_func(1,20,true)
    if intro = 60 {
    	sound_play(sound_get("tstrong"),false,0,.6,.8)
    }
    if intro < 60 && intro > 10 {
    	with oPlayer {
    		x -= 1*spr_dir
    	}
    }
}




if get_gameplay_time() < 140 {
	
	box = 1
	boxx = room_width/2
	
   music_play_file("backroom")
   
} else {

if backroom == 1 {
if e1 == 0 && get_gameplay_time()%1000 = random_func(floor(oldcamx%6)+1,1000,true) {
	e1 = -1
	e1x = room_width/2 + random_func(10,300,true)
	sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.6,1)
	with oPlayer {
		vfx = spawn_hit_fx(other.e1x,room_height/2 + 36, 14)
	    vfx.pause = 4
	}
}

if e1 == 0 && get_gameplay_time()%1000 = random_func(floor(oldcamx%6)+2,1000,true) {
	e1 = 1
	e1x = room_width/2 - random_func(10,300,true)
   sound_play(asset_get("sfx_forsburn_split"),false,noone,.6,1)
   with oPlayer {
		vfx = spawn_hit_fx(other.e1x,room_height/2 + 36, 14)
	    vfx.pause = 4
	}
}
}

if backroom == 1 or backroom == 0{
if e2 == 0 && get_gameplay_time()%1000 = random_func(floor(oldcamx%6)+3,1000,true) {
	e2 = -1
	e2x = room_width/2 + random_func(10,300,true)
	sound_play(asset_get("sfx_forsburn_split"),false,noone,.6,1)
	with oPlayer {
		vfx = spawn_hit_fx(other.e2x,room_height/2 + 36, 14)
	    vfx.pause = 4
	}
}

if e2 == 0 && get_gameplay_time()%1000 = random_func(floor(oldcamx%6)+4,1000,true) {
	e2 = 1
	e2x = room_width/2 - random_func(10,300,true)
   sound_play(asset_get("sfx_forsburn_split"),false,noone,.6,1.3)
   with oPlayer {
		vfx = spawn_hit_fx(other.e2x,room_height/2 + 36, 14)
	    vfx.pause = 4
	}
}
}

if backroom == 1 or backroom == 3{
if e3 == 0 && get_gameplay_time()%1000 = random_func(floor(oldcamx%6)+7,1000,true) {
	e3 = -1
	e3x = room_width/2 + random_func(10,300,true)
	sound_play(asset_get("sfx_holy_lightning"),false,noone,.6,1)
	with oPlayer {
		vfx = spawn_hit_fx(other.e3x,room_height/2 + 36, 14)
	    vfx.pause = 4
	}
}

if e3 == 0 && get_gameplay_time()%1000 = random_func(floor(oldcamx%6)+8,1000,true) {
	e3 = 1
	e3x = room_width/2 - random_func(10,300,true)
   sound_play(asset_get("sfx_holy_lightning"),false,noone,.6,1)
   with oPlayer {
		vfx = spawn_hit_fx(other.e3x,room_height/2 + 36, 14)
	    vfx.pause = 4
	}
}

}

if e1 != 0 {
	e1x += e1 
	if e1x > room_width/2 + 400 or e1x < room_width/2 - 400 {
		e1 = 0
		with oPlayer {
		vfx = spawn_hit_fx(other.e1x,room_height/2 + 36, 14)
	    vfx.pause = 4
	    sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.3,1.5)
		}
	}
}

if e2 != 0 {
	e2x += e2*0.6
	if e2x > room_width/2 + 320 or e2x < room_width/2 - 320 {
		e2 = 0
		with oPlayer {
		vfx = spawn_hit_fx(other.e2x,room_height/2 + 36, 14)
	    vfx.pause = 4
	    sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.3,1.5)
		}
	}
}

if e3 != 0 {
	e3x += e3*1.5
	if e3x > room_width/2 + 320 or e3x < room_width/2 - 320 {
		e3 = 0
		with oPlayer {
		vfx = spawn_hit_fx(other.e3x,room_height/2 + 36, 14)
	    vfx.pause = 4
	    sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.3,1.5)
		}
	}
}

}

if laststand == 20 {
  music_play_file("phase2")
}
     
if instance_number(oPlayer) == 2 {
with oPlayer {
  	

  	if get_player_stocks(player) == 1 && alreadydead != 3 {
  		alreadydead = 1
  	}
  	
  	if alreadydead == 3 && (state == PS_DEAD or state == PS_RESPAWN) {
  		set_player_stocks(player, 999)
  		with oPlayer {
  			if self != other {
  				set_player_stocks(player, 404)
  				end_match()
  			}
  		}
  	}
  	
  	if alreadydead = 1 {
  		if (x + hsp > room_width/2 + 600 or x - hsp < room_width/2 - 600 or y - vsp < room_height/2 - 350 or y + vsp > room_height/2 + 350) {
  			set_player_stocks(player, 2)
  			readycutsceneex = 1
  		} else if state != PS_RESPAWN {
  			set_player_stocks(player, 1)
  			readycutsceneex = 0
  		}
  	}
  	
  	if "readycutsceneex" in self {
  		if readycutsceneex = 1 && state == PS_RESPAWN {
  			x = room_width/2
  			y = room_height/2 - 100
  			with oPlayer {
  				alreadydead = 3
  			}
  			with oPlayer {
  				set_player_stocks(player, 404)
  			}
  			set_state(PS_HITSTUN)
  			hitpause = true 
  			hitstop = 99999
  			visble = false 
  			invincible = true 
  			invince_time = 99999
  			old_hsp = 0
  			old_vsp = 0
  		}
  		
  	}
  
}
}


 	 with (asset_get("pHitBox")) {
 	      if hit_priority > 0 && type == 1 {
	            if other.e1 != 0 && abs(x - other.e1x) < 60 && abs(y - (room_height/2 + 36)) < 60 {
	            	 vfx = spawn_hit_fx(other.e1x,room_height/2 + 40, 13)
	                 vfx.pause = 4
	                 sound_play(asset_get("sfx_forsburn_consume"),false,noone,.6,1.5)
	                 sound_play(asset_get("sfx_blow_medium3"),false,noone,.6,1)
	                 other.e1 = 0
	            }
	            
	            if other.e2 != 0 && abs(x - other.e2x) < 60 && abs(y - (room_height/2 + 36)) < 60 {
	            	 vfx = spawn_hit_fx(other.e2x,room_height/2 + 40, 13)
	                 vfx.pause = 4
	                 sound_play(asset_get("sfx_forsburn_consume_fail"),false,noone,.6,.7)
	                 sound_play(asset_get("sfx_blow_medium3"),false,noone,.6,1)
	                 other.e2 = 0
	            }
	            
	            if other.e3 != 0 && abs(x - other.e3x) < 60 && abs(y - (room_height/2 + 36)) < 60 {
	            	 vfx = spawn_hit_fx(other.e3x,room_height/2 + 40, 13)
	                 vfx.pause = 4
	                 sound_play(asset_get("sfx_blow_medium3"),false,noone,.6,1)
	                 sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,.6,1)
	                 other.e3 = 0
	            }
	            
	            if other.box > 0 && abs(x - other.boxx) < 60 && abs(y - (room_height/2 + 36)) < 60 {
	            	 vfx = spawn_hit_fx(other.boxx,room_height/2 + 60, 306)
	                 vfx.pause = 4
	                 sound_play(asset_get("sfx_absa_kickhit"),false,noone,.6,1)
	                 sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,.6,1)
	                 with other {
	                 	box = -30
	                 	switch backroom {
	                 	   case 0:	
	                 	   music_play_file("radio1")
	                 	   break;
	                 	   case 1:	
	                 	   music_play_file("radio2")
	                 	   break;
	                 	   case 2:	
	                 	   music_play_file("radio3")
	                 	   break;
	                 	   case 3:	
	                 	   music_play_file("radio4")
	                 	   break;
	                 	   case 4:	
	                 	   music_play_file("radio5")
	                 	   break;
	                 	}
	                 }
	                 
	            }
	            
 	      }
 	 }


/*

 
 with (asset_get("oPlayer")) { 
 	
 	 with (asset_get("pHitBox")) {
 	
        if player_id == other.id {
        	
              with (asset_get("pHitBox")) {
 	      
 	             nearbyhitbox = collision_circle( x-12, y-12, 34,other, true, true ) 
	           
	            if nearbyhitbox != noone && player_id != other.player_id && hit_priority != 0 {
	            	
	            	 if abs(damage - other.damage) <= 2 { 
	            	     shake_camera(4,4)
	            	         sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,.8,max(1, 1.6 - random_func(1,10,true)/100))
	            	         spawn_hit_fx(floor(x/2 + other.x/2),floor(y/2 + other.y/2),302)
	            	         player_id.old_vsp = max(-6,(min(6,(player_id.y - other.player_id.y)/10)))
	            	         player_id.old_hsp = max(-6,(min(6,(player_id.x - other.player_id.x)/10)))
	            	         player_id.hitstop = 12
	            	         player_id.hitpause = 1
	            	         player_id.brr = -20
	            	         other.player_id.old_vsp = max(-6,(min(6,(other.player_id.y - player_id.y)/10)))
	            	         other.player_id.old_hsp = max(-6,(min(6,(other.player_id.x - player_id.x)/10)))
	            	         other.player_id.hitstop = 12
	            	         other.player_id.hitpause = 1
	            	         other.player_id.brr = -20
	            	         other.destroyed = true
	            	         destroyed = true
	            	         
	            	} else if damage > other.damage {
	            	    shake_camera(6,6)
	            		     sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,max(1, 1  - random_func(1,10,true)/100))
	            	         player_id.old_vsp = player_id.vsp
	            	         player_id.old_hsp = player_id.hsp
	            	         player_id.hitstop = 20
	            	         player_id.hitpause = 1
	            	         spawn_hit_fx(floor(other.x),floor(other.y),304)
	            	         player_id.brrr = -30
	            	         other.player_id.old_vsp = max(-6,(min(6,(other.player_id.y - player_id.y)/10)))
	            	         other.player_id.old_hsp = max(-6,(min(6,(other.player_id.x - player_id.x)/10)))
	            	         other.player_id.hitstop = 90
	            	         other.player_id.hitpause = 1
	            	         other.player_id.brrr = 90
	            	         other.destroyed = true
  		
	            	} else if damage < other.damage {
	            	    shake_camera(6,6)
	            		     sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,max(1, 1 - random_func(1,10,true)/100))
	            	         spawn_hit_fx(floor(x),floor(y),304)
	            	         other.player_id.old_vsp = other.player_id.vsp
	            	         other.player_id.old_hsp = other.player_id.hsp
	            	         other.player_id.hitstop = 20
	            	         other.player_id.hitpause = 1
	            	         other.player_id.brrr = -30
	            	         player_id.old_vsp = max(-6,(min(6,(other.player_id.y - player_id.y)/10)))
	            	         player_id.old_hsp = max(-6,(min(6,(other.player_id.x - player_id.x)/10)))
	            	         player_id.hitstop = 90
	            	         player_id.hitpause = 1
  	                         player_id.brrr = 90
  	                         destroyed = true
	            	}
                      
	            }
              } 
       }
 }
 
 
    if "brrr" in self {
    	if brrr > 0 {
    		brrr -- 
    		x += 2
    		if brrr % 3 == 0 {
    			x -= 6
    		}
    	}
    	if brrr < 0 {
    	    brrr ++ 
    	    if state_cat == SC_HITSTUN {
    	        state = PS_IDLE_AIR
    	    }
    	}
    } 	
 	
 	
 }