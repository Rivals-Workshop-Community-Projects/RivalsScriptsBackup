///

	if karma < 0 {
		karma = 0 
	}


if admw < 0 {
	admw = 0
}


switch admw {

    case 0 :
    
        with (pHitBox) {
		if player_id == other.id {
		     		kb_scale = hitpause/10
		     		hitpause_growth = hitpause/10
  		     }
  	    }
  	    
    break;
    
    case 1:
       with (pHitBox) {
		if player_id == other.id {
		     		kb_scale = hitpause/50
		     		hitpause_growth = hitpause/50
  		     }
  	    }
    
    break;
    
    
    case 2:
             	with (pHitBox) {
		     if player_id == other.id {
		     	extra_hitpause = floor(damage/2)
		     		kb_scale = hitpause/80
		     		hitpause_growth = hitpause/80
  		     }
  	    }
    
    break;


    case 3:
         	with (pHitBox) {
		     if player_id == other.id {
		     	extra_hitpause = floor(damage/2)
		     		kb_scale = hitpause/80
		     		hitpause_growth = hitpause/80
  		     }
  	    }
    break;
     
     
    case 4 :
     	with (pHitBox) {
		     if player_id == other.id {
		     	extra_hitpause = floor(damage/1.3)
		     		kb_scale = hitpause/100
		     		hitpause_growth = hitpause/100
  		     }
  	    }
    break; 

}


/////

//if(get_gameplay_time() == 1){
//
//inx = x
//iny = y
//	
//}
//
//if(get_gameplay_time() == 2){
//	
//
//var shortest_dist = 9999;
//			var shortest_id = noone;
//			
//			with (asset_get("oPlayer")) {
//				if (player != other.player) {
//					var curr_dist = point_distance(x,y,other.x,other.y);
//					if (curr_dist < shortest_dist) {
//						shortest_dist = curr_dist;
//						shortest_id = id;
//					}
//				}
//			}
//			
//if x < shortest_id.x {			
//if shortest_id.url == "2069283406" 
//{
//create_hitbox(AT_NSPECIAL , 20 , shortest_id.x , shortest_id.y - 30 );      		
//}
//}
//
//
//}
//
//
//if  curse_target != self {
//if introtimer = 1 {
//	        visible = true
//		  spawn_hit_fx( x, y, lighten)
//	x = inx + (66 * introhit)
//	y = iny
//	introtimer = 0
//	hitpause = 0
//	spawn_hit_fx( x, y, 306)
//	
//	if introhit = 1 {
//		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
//		sound_play(asset_get("sfx_blow_heavy2"),false, noone, 2);
//		hsp = -8
//		vsp = 0
//		spr_dir = 1
//		
//	}
//	
//	if introhit = -1 {
//		hsp = 8
//		vsp = 0
//		spr_dir = -1
//	}
//	
//}
//
//	
//
//if intro = 1 && instance_number(oPlayer) == 2 {
//
//if ( curse_target.url == "2069283406" )
//&&   curse_target.introtimer != 0{
//	take_damage( player, -1 , -1 )	
//	/// Zetta Alex Mayu Katie Saji Uza Nolan Elice Fuki
//if introtimer = -1{
//	introtimer = 300
//	
//}
//
//if get_gameplay_time() % 40 < 20 {
//if get_gameplay_time() % 3 == 0 {
//        spawn_hit_fx( x, y - 40 , ai)
//}
//}
//
//if get_gameplay_time() % 40 > 20 {
//if get_gameplay_time() % 3 == 0 {
//        spawn_hit_fx( x, y - 40 , ai)
//}
//}
//
//if get_gameplay_time() % 20 == 0 {
//        spr_dir *= -1
//}
//
//if state != PS_IDLE_AIR && introtimer > 1  {
//	set_state (PS_IDLE_AIR)
//}
//
//if introhit == 1 {
//	if get_gameplay_time() % 20 = random_func(10, 20, true) {
//	  sound_play(asset_get("slice1"),false, noone, 0.6);	
//      sound_play(sound_get("RZ3"),false, noone, 0.8);
//	  spawn_hit_fx( x, y, lighten)
//	}
//	
//	if get_gameplay_time() % 20 = 10 {
//		spawn_hit_fx( x, y, 302)
//		sound_play(asset_get("strong1"),false, noone, 0.6);
//	}
//	
//	if get_gameplay_time() % 30 = 15 {
//		spawn_hit_fx( x, y, 305)
//		sound_play(sound_get("slicen"),false, noone, 0.6);
//	}
//	
//	if get_gameplay_time() % 40 = 20 {
//		spawn_hit_fx( x, y, 304)
//		sound_play(sound_get("ustrongdash"),false, noone, 0.6);
//	}
//}
//
//if introhit == -1 {
//	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
//	  sound_play(asset_get("slice1"),false, noone, 0.6);	
//	   sound_play(asset_get("RZ3"),false, noone, 0.8);
//	  spawn_hit_fx( x, y , darken )	
//	}
//	if get_gameplay_time() % 20 = 0 {
//		spawn_hit_fx( x, y, 302)
//		sound_play(asset_get("strong1"),false, noone, 0.6);
//	}
//	
//	if get_gameplay_time() % 30 = 0 {
//		spawn_hit_fx( x, y, 305)
//		sound_play(sound_get("slicen"),false, noone, 0.6);
//	}
//	
//	if get_gameplay_time() % 40 = 0 {
//visible *= -1
//draw_indicator *= -1			
//		spawn_hit_fx( x, y, 304)
//		sound_play(sound_get("ustrongdash"),false, noone, 0.6);
//	}
//}
//
//
//
//if get_gameplay_time() % 10 = 0 && introtimer > 1 {
//hsp = (room_width/2 - x + 100  - random_func(1, 200, true)) / 6 
//vsp = (room_height/2 - y - 80  - random_func(2, 160, true)) / 6
//}
//
//if introtimer > 0 {
//	
//		 with (asset_get("oPlayer")) {
//	if (player != other.player) {
//		
//		if hitpause {
//		with (asset_get("pHitBox")) {
//        if player_id == other.id {
//          destroyed = true;
//        }
//    }
//	}
//    
//    
//	}
//	
//   }
//   
//				with (asset_get("pHitBox")) {
//if(player_id == other.id) {
//    destroyed = true;
//}
//			}
//	introtimer -= 1
//	
//	
//	 if introhit = -1 {
//	if get_gameplay_time() % 3 = 0 {
//		spawn_hit_fx( x, y , darken )	
//	}
//	}
//}
//
//}
//
//}
//}



/////
if state == PS_JUMPSQUAT {
move_cooldown[AT_USTRONG] = 5;
}

if get_gameplay_time() < 90 {
	visible = false
	if  get_gameplay_time() > 70 {
		spawn_hit_fx(x - ((90 - get_gameplay_time())*20)*spr_dir, y - 40 + random_func(4, 80, true) , ai)

	}
}

if get_gameplay_time() == 70 {
	  sound_play(sound_get("uspecialdash"))
}



if get_gameplay_time() == 90 {
	set_attack(AT_DSTRONG)
	window = 2
	window_timer = 0
	visible = true
	spawn_hit_fx ( x, y - 40, SC )
    spawn_hit_fx ( x, y - 40, wh )
    spawn_hit_fx ( x, y - 40, bh )
    
}



if state == PS_WAVELAND && (state_timer % 5 == 0 or state_timer == 1) {
	spawn_hit_fx(x - 10*spr_dir, y , ai)
	sound_stop(asset_get("sfx_quick_dodge"))
}

if state == PS_AIR_DODGE && state_timer % 5 == 0 && state_timer < 10 {
	spawn_hit_fx(x - 10*spr_dir, y , ai)
}


if !free or state == PS_WALL_JUMP {
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_NSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

if admb >= 3 && admw >= 4  {
	if  get_player_color(player) == 5 {
    sound_play(sound_get("CARAMELFN"))
    }
    
    spawn_hit_fx(x,y,darken)
    

    spawn_hit_fx ( x, y + 30, 302 )
    spawn_hit_fx ( x, y + 30, wh )
    spawn_hit_fx ( x, y + 30, bh )
    
    
    sound_play(sound_get("ADfull"))
   

  	    
    admb = -1
    admw = -1
    karmatimer = 360
    

  	    
}

if karmatimer > 2 {
	
	  with (asset_get("oPlayer")) {
	    		
	    		if x + hsp > room_width - 20 {
	    			x = 10
	    		}
	    		
	    		    		
	    		if x + hsp < 20 {
	    			x = room_width - 10
	    		}	
	    		
	    		
	    		if y + vsp > room_height - 20 {
	    			y = 10 
	    			x = room_width/2
	    		}
	    		
	    		
	    		if y + vsp < 0 {
	    			y = 10 
	    		}
	    		
	  }
	  
	  

} 

if (karmatimer > 2) && !hitpause {
	

 if get_player_damage(player) > 0 {

 	  take_damage( player, -1 , -2)
      
 	  karmacom += 2
 }
	
if soultimer < -1 {
		outline_color = [0, 0, 0]
                     	init_shader();
                         spawn_hit_fx (x,y -30 , 302 )
                         spawn_hit_fx (x,y - 30, wh )
                         spawn_hit_fx (x,y - 30, bh )
                     	sound_play(asset_get("sfx_holy_lightning"))
                     	sound_play(sound_get("slicen"))
                     soultimer = 0
                     x = soulx
                     y = souly
                     set_attack (AT_DSPECIAL)
                     window = 4
                     window_timer = 0
}

  	move_cooldown[AT_DSPECIAL] = 5 ;

    karmatimer -= 1

}

if karmatimer == 70 && !hitpause {
    sound_play(sound_get("ADcd"))
}

if karmatimer == 2 {
	
	    
  	    
  	    
	sound_play(sound_get("ADfinish"))
karmatimer = 1
    var karmaredis = karma
    var karmaredis2 = floor(karmacom)

		take_damage( player, -1 , karmacom)

}

if karmatimer == 1 {
	spawn_hit_fx(  x ,  y - 40, shit5 )
	spawn_hit_fx(  x ,  y - 40, shit6 )
    karmatimer = -1
    
       
}

if karmatimer = -1 {
    karma = 0
    karmatimer = 0
    admb = 0
    admw = 0
    karmacom = 0
}


if nshit == 2 {
	nshit = 360
	    spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
}

if nshit > 3 {
    spawn_hit_fx( x + 40 - random_func(6, 80, true) - (10*spr_dir), y - 20 - random_func(7, 80, true) , esp )
	if !hitpause {
	nshit -= 1
	}
}

if nshit == 3 {
	 sound_play(asset_get("sfx_ice_end"))
	nshit = 0
}


if admb == 3 {
		if get_gameplay_time() % 2 == 0 {
	spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - 20 - random_func(4, 80, true) , esp1 )
	}

}

if admw == 4 {
		if get_gameplay_time() % 2 == 1 {
	spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - 20 - random_func(4, 80, true) , esp2 )
	}
}
// Soul
if soultimer <= -240 && !hitpause {

    soultimer += 1

}

	if soulfree && soultimer < 0 && soulx < x {
		soulx += min(floor((x - 90*spr_dir - soulx)/40), 2)
		
	}
	
	if soulfree && soultimer < 0 {
	souly += min(floor((y - 90 - souly)/40), 1)
	}
	
	if soulfree && soultimer < 0 && soulx >= x {
		soulx += max(floor((x - 90*spr_dir - soulx)/40), -2)
	}
	
	
if soultimer < 0 && get_gameplay_time() % 4 == 2 {
	create_hitbox(AT_DSPECIAL , 2 , floor(x + 20 - random_func(6, 40, true) - (10*spr_dir)), floor(y - 10 - random_func(7, 40, true))); 
}

if soultimer < 0 && get_gameplay_time() % 4 == 0 {
	create_hitbox(AT_DSPECIAL , 3 , floor(x + 20 - random_func(6, 40, true) - (10*spr_dir)), floor(y - 10 - random_func(7, 40, true))); 
}

if soultimer < 0 && get_gameplay_time() % 60 == 0 && soulfree == 1 {
	take_damage( player, -1 , 1)
}

	if soulfree == -1 && soultimer >= -300 && soultimer < -1 && move_cooldown[AT_EXTRA_3] <= 0 {
		 create_hitbox(AT_NSPECIAL , 5 , soulx  , souly - 30 ); 
		 move_cooldown[AT_EXTRA_3] = 60
     	spawn_hit_fx (soulx,souly - 30, 302 )
		sound_play(asset_get("sfx_ice_ftilt"))
		take_damage( player, -1 , 1)
	}
	

	
	if soulfree == -1 && soultimer >= -300 && soultimer < -1 && move_cooldown[AT_EXTRA_3] > 40 {
	            spawn_hit_fx( soulx + 60 - random_func(6, 120, true) - (10*spr_dir), souly - 0 - random_func(8, 80, true) , esp1 )
	            spawn_hit_fx( soulx + 60 - random_func(7, 120, true) - (10*spr_dir), souly - 0 - random_func(9, 80, true) , esp2 )
	}
	
	if soulfree == -1 && soultimer >= -300 && soultimer < -1 && move_cooldown[AT_EXTRA_3] % 20 == 0 {
	spawn_hit_fx (soulx,souly - 30, wh )
    spawn_hit_fx (soulx,souly - 30, bh )
	}

if soultimer < -1 && soultimer > -240 && down_down && special_down && can_attack {
	outline_color = [0, 0, 0]
	init_shader();
    spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
	sound_play(asset_get("sfx_holy_lightning"))
	sound_play(sound_get("slicen"))
soultimer = 0
x = soulx
y = souly
move_cooldown[AT_DSPECIAL] = 0
hsp = 0
vsp = 0
set_attack (AT_DSPECIAL)
window = 4
window_timer = 0
}


if soultimer < -1 {
	
	var col = get_gameplay_time() % 60 * 1.5
	
	if get_gameplay_time() % 60 == 0 {
	 col1 = random_func(10, 255, true)
	 col2 = random_func(11, 255, true)
	 col3 = random_func(12, 255, true)
	}
	
	if get_player_color(player) < 1 {
	outline_color = [190 - col, 20 - col, 60 - col]
	init_shader();
	}
	
	if get_player_color(player) == 1 {
	outline_color = [140 - col, 210 - col, 0 - col]
	init_shader();
	}
	
	if get_player_color(player) == 2 {
	outline_color = [196 - col, 70 - col, 0 - col]
	init_shader();
	}
	
	if get_player_color(player) == 3 {
	outline_color = [220 - col, 220 + col, 0 - col]
	init_shader();
	}
	
	if get_player_color(player) == 4 {
	outline_color = [255 - col, 60 - col, 160 - col]
	init_shader();
	}
	
	if get_player_color(player) == 5 {
	outline_color = [col1 - col, col2 - col, col3 - col]
	init_shader();
	}
	
	if get_player_color(player) == 6 {
	outline_color = [250 - col, 250 - col, 140 - col]
	init_shader();
	}

	if state == PS_PARRY_START {
		set_state (PS_WAVELAND)
		spawn_hit_fx(x - 10*spr_dir, y , ai)	
		if (!left_down && !right_down) or (left_down && right_down){
			hsp = 9 * spr_dir
		} 
		
		if (!left_down && right_down) {
			hsp = 9
		} 
		
		if (left_down && !right_down) {
			hsp = -9 
		} 
	}

if soultimer > -340 && soultimer < -1  { 	
	
	nearbyhitbox = collision_circle( soulx, souly - 10, 20, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone{
		if nearbyhitbox.player_id != self && nearbyhitbox.type == 1  {
						outline_color = [0, 0, 0]
                     	init_shader();
                         spawn_hit_fx (x,y -30 , 302 )
                         spawn_hit_fx (x,y - 30, wh )
                         spawn_hit_fx (x,y - 30, bh )
                     	sound_play(asset_get("sfx_holy_lightning"))
                     	sound_play(sound_get("slicen"))
                     soultimer = 0
            state_timer = 99
		    invincible = 0
		    window_timer = 99
		    hsp = 0
		    vsp = -2
		    nearbyhitbox.hitbox_timer -= 2
		    nearbyhitbox.hitpause += 10
		    nearbyhitbox.extra_hitpause += 10
		    nearbyhitbox.image_xscale *= 2
		    nearbyhitbox.image_yscale *= 2
                     x = soulx 
                     y = souly 

                     
	}
	}
}
	
if (y >= room_height - vsp) or ( x + hsp > room_width) or ( x + hsp < 0) or (y <= vsp + 10) {
			outline_color = [0, 0, 0]
	init_shader();
    spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
	sound_play(asset_get("sfx_holy_lightning"))
	sound_play(sound_get("slicen"))
	sound_play(sound_get("strong3"))
soultimer = 0
x = soulx
y = souly
            state_timer = 99
		    invincible = 0
		    window_timer = 99
    vsp = -7
    hsp = 0		    
		        spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
    take_damage(player,-1,15)
    
    has_walljump = false 
    
    shake_camera(4,12)
set_state(PS_PRATFALL)
prat_land_time = 150;
window = 4
window_timer = 0
	}
}


