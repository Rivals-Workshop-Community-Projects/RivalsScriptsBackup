///


if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if !free && has_rune("E") {
	daired = 0
}

if(get_gameplay_time() == 1){

inx = x
iny = y
	
}

if(get_gameplay_time() == 2){
	

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
			
if x < shortest_id.x {			
if shortest_id.url == "1913869515" or shortest_id.url == "2069283406" or shortest_id.url == "1997619532" 
or shortest_id.url == "2085832560" or shortest_id.url == "2108469290" or shortest_id.url == "2047413648"
or shortest_id.url == "2154720280" or shortest_id.url == "2136624834"
{
create_hitbox(AT_NSPECIAL , 20 , shortest_id.x , shortest_id.y - 30 );      		
}
}


}


if hit_player_obj != self {
if introtimer = 1 {
	        visible = true
		  spawn_hit_fx( x, y, lighten)
	x = inx + (46 * introhit)
	y = iny
	introtimer = 0
	hitpause = 0
	spawn_hit_fx( x, y, 304)
	
	if introhit = 1 {
		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
		sound_play(sound_get("genocidecutter"),false, noone, 2);
		hsp = -8
		vsp = 0
		spr_dir = 1
		
	}
	
	if introhit = -1 {
		supply += 1
		hsp = 8
		vsp = 0
		spr_dir = -1
	}
	
}

	

if intro = 1 && instance_number(oPlayer) == 2 {

if (hit_player_obj.url == "1913869515" or hit_player_obj.url == "2069283406" or hit_player_obj.url == "1997619532" 
or hit_player_obj.url == "2085832560" or hit_player_obj.url == "2108469290" or hit_player_obj.url == "2047413648"
or hit_player_obj.url == "2154720280" or hit_player_obj.url == "2136624834")
&&  hit_player_obj.introtimer != 0{
take_damage( player, -1 , -1 )	
	/// Zetta Alex Mayu Katie Saji Uza Nolan Elice
if introtimer = -1{
	introtimer = 300
	
}

if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x, y , tauntpar2 )
}

if get_gameplay_time() % 20 == 0 {
        spr_dir *= -1
}

if state != PS_IDLE_AIR && introtimer > 1  {
	set_state (PS_IDLE_AIR)
}
if introhit == 1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) {
	  sound_play(asset_get("sfx_quick_dodge"),false, noone, 0.6);	
      sound_play(sound_get("RI"),false, noone, 0.8);
	  spawn_hit_fx( x, y, lighten)
	}
	
	if get_gameplay_time() % 20 = 10 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("sfx_blow_medium3"),false, noone, 0.6);
		sound_play(asset_get("sfx_quick_dodge"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 15 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("shing"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 20 {
		spawn_hit_fx( x, y, 304)
		sound_play(sound_get("throwshake"),false, noone, 0.6);
	}
}

if introhit == -1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
	  sound_play(asset_get("sfx_roll"),false, noone, 0.6);	
	  sound_play(sound_get("throwapple"),false, noone, 0.8);
	  spawn_hit_fx( x, y , darken )	
	}
	if get_gameplay_time() % 20 = 0 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("sfx_blow_medium3"),false, noone, 0.6);
		sound_play(asset_get("sfx_quick_dodge"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 0 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("shing"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 0 {
		spawn_hit_fx( x, y, 304)
		sound_play(sound_get("throwshake"),false, noone, 0.6);
	}
}


	if get_gameplay_time() % 2 = 0 && introtimer > 1 {
				visible = 0
	}
	if get_gameplay_time() % 2 = 1 && introtimer > 1 {
				visible = true
	}
	
if get_gameplay_time() % 5 = 0 && introtimer > 1 {
hsp = (room_width/2 - x + 100  - random_func(1, 200, true)) / 6 
vsp = (room_height/2 - y - 80  - random_func(2, 160, true)) / 6
}

if introtimer > 0 {
	
		 with (asset_get("oPlayer")) {
	if (player != other.player) {
		
		if hitpause {
		with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
	}
    
    
	}
	
   }
   
				with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
			}
	introtimer -= 1
	
	
	 if introhit = -1 {
	if get_gameplay_time() % 3 = 0 {
		spawn_hit_fx( x, y , darken )	
	}
	}
}

}

}
}

////////////
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, -3 + random_func(1, 6, true) );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_HSPEED, -2 + random_func(2, 4, true) );

if noinv > 0 {
	noinv -= 1
}


if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 {
	
batt += 1
 
}

if batt > 4 {
    batt = 4
}

if batt < 0 {
    batt = 0
}

if supply > 20 {
    supply = 20
    
}

if supply < 0 {
    supply = 0
}


if state == PS_DASH or state == PS_DASH_START {
	if state_timer % 5 == 0 {
		sound_play(asset_get("sfx_dash_start"));
	}
}


if drop > 0 && !hitpause{
	drop -= 1
}

if coindrop > 0 && !hitpause{
	coindrop -= 1
}


if get_gameplay_time() < 5 {
	set_attack (AT_EXTRA_3)
}


if get_player_color(player) >= 6 && taunt_down && golden = 0 && attack != AT_EXTRA_1 && get_gameplay_time() < 200 && get_gameplay_time() > 120{
	set_attack (AT_EXTRA_1)
}


if golden == 1 {
	
	with oPlayer {
	if attack_down && taunt_down && down_down {
		with other {
			set_player_stocks(player, 1)
		set_state(PS_PRATFALL)
		prat_land_time = 99999;
		walk_speed = 4;
        walk_accel = 999;
        walk_turn_time = 999;
        initial_dash_time = 999;
        initial_dash_speed = 999;
        dash_speed = 999;
        knockback_adj = 99;
        golden = 0
		}
	}
    }
	
	if hit_player_obj.state_cat == SC_HITSTUN {
		if state_timer % 15 == 0 {
			create_hitbox(AT_DSPECIAL , 6 , hit_player_obj.x ,  hit_player_obj.y - 40 );
		}
		
		if state_timer % 20 == 0 {
			create_hitbox(AT_FSPECIAL , 4 ,hit_player_obj.x , hit_player_obj.y - 30 );
		}
		
		
					
	}
	if get_gameplay_time() % 40 == 0 {
		create_hitbox(AT_NSPECIAL , 1 , room_width/2 - 500 + random_func(3, 1000, true) , room_height/2 - 1000 );
	}
	
	if get_gameplay_time() % 30 == 0 {
		sound_play(sound_get("throwshake"));
		create_hitbox(AT_DSPECIAL , 1 , room_width/2 - 500 + random_func(3, 1000, true) , room_height/2 - 1000 );
	}	
	
	if get_gameplay_time() % 50 == 0 {
		sound_play(sound_get("throwapple"));
		create_hitbox(AT_DSPECIAL , 3 , room_width/2 + (400 * spr_dir) ,  room_height/2 - 300 + random_func(4, 600, true));
	}	
	
	if 	get_gameplay_time() % 100 == 50	 {
		create_hitbox(AT_DSPECIAL , 7 , room_width/2 - (600 * spr_dir) ,  room_height/2 - 300 + random_func(5, 100, true));
	}
	
		if 	get_gameplay_time() % 100 == 0	 {
		create_hitbox(AT_DSPECIAL , 8 , room_width/2 + (600 * spr_dir) ,  room_height/2 - 300 + random_func(5, 100, true));
	}
	
	if get_player_color(player) <= 10 {
    var outlineclr = abs((sin((get_gameplay_time() - 100) * 0.075) * 255)) + 255
    outline_color = [ outlineclr * 0.6, outlineclr * 0.6, outlineclr * 0.4];
    init_shader();
	}

    
    if state == PS_PRATFALL {
    	set_state (PS_IDLE_AIR)
    
    }
    
    
    if state == SC_HITSTUN {
    	state_timer += 1
    
    }
    
    supply = 20 
    batt = 4
    
    if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
    	if attack == AT_NSPECIAL {
    		set_attack (AT_EXTRA_1)
    		window = 2
    	}
    } 

}

/// setstock 
if get_player_color(player) == 11 {
	outline_color = [19, 15, 28]
   if visible {  
   	if !hitpause {
	if get_gameplay_time() % 40 == 0 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 40 == 26{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 40 == 13 {
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
	
		if get_gameplay_time() % 60 == 0 {
   	set_color_profile_slot(get_player_color(player),3, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 60 == 40{
	set_color_profile_slot(get_player_color(player),3, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 60 == 20 {
	set_color_profile_slot(get_player_color(player),3, 160, 195, 250 );	
	}
   	}
   	
   	if hitpause {
	if get_gameplay_time() % 8 == 0	 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 8 == 6{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 8 == 3{
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
   	}
	}
    init_shader();	 
}


  	with (pHitBox) {
  		if player_id == other.id {
  			projectile_parry_stun = 1 
  		}
  	}

if "superTrue" in self {
if superTrue == 1 {
	
	 superTrue = 0
	 		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -4.3);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);
	hit_player_obj.hitpause = 1
	hit_player_obj.hitstop = 20
	hit_player_obj.old_hsp = hit_player_obj.hsp
	hit_player_obj.old_vsp = hit_player_obj.vsp
	hit_player_obj.canUseCounterTimer = 60
         set_attack (AT_EXTRA_2)
         window = 2
         window_timer = 0
    move_cooldown [AT_FTILT] = 200 
       
}
}

if move_cooldown [AT_FTILT] > 1 {
	
	if state_cat == SC_HITSTUN {
		move_cooldown [AT_FTILT] = 0
	}
		 hit_player_obj.canUseCounterTimer = 15
	state_timer = 0
	can_move = false
	supply = 20
	batt = 4
	if free {
		vsp -= 0.35
	}
	
if move_cooldown[AT_FTILT] > 10 && move_cooldown[AT_FTILT] < 100{
		 
	if move_cooldown[AT_FTILT] % 7 == 0 {
		sound_play(sound_get("throw"),false,noone,0.6,0.9);
    		create_hitbox(AT_FSPECIAL , 1 + random_func(1,3,true), floor(x + (32 * spr_dir) + 50 - random_func(10, 100, true)) , floor (y - 5 - (random_func(11, 100, true) / 2)) );
    		spawn_hit_fx( floor(x + (32 * spr_dir) + 50 - random_func(10, 100, true)) , floor (y - 5 - (random_func(11, 100, true) / 2))  , 305 )
	}
	
}	
if move_cooldown [AT_FTILT] ==  180 {
		 		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -4.3);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("throw"));
	     set_attack (AT_FSPECIAL)
         window = 2
         window_timer = 2
	create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
} 

if move_cooldown [AT_FTILT] ==  175 {
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("throw"));
	     set_attack (AT_FSPECIAL)
         window = 2
         window_timer = 2
	create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
} 

if move_cooldown [AT_FTILT] == 170 {
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -4.3);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("shing"));
	     set_attack (AT_FSPECIAL)
         window = 3
         window_timer = 2
	
} 

if move_cooldown [AT_FTILT] == 150 {
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("throw"));
	      set_attack (AT_FSPECIAL)
         window = 2
         window_timer = 2
	create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
		create_hitbox(AT_DSPECIAL , 3 , x , y - 42 );
} 

if move_cooldown [AT_FTILT] == 145 {
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("throw"));
	      set_attack (AT_FSPECIAL)
         window = 2
         window_timer = 2
	create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
} 

if move_cooldown [AT_FTILT] == 140 {
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 2);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 4.4);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 6);
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("shing"));
	      set_attack (AT_FSPECIAL)
         window = 5
         window_timer = 2
         vsp = -6
	
} 

if move_cooldown [AT_FTILT] ==  125 {
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("throw"));
	     set_attack (AT_FSPECIAL)
         window = 2
         window_timer = 2
	create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
	create_hitbox(AT_DSPECIAL , 3 , x , y - 42 );
} 

if move_cooldown [AT_FTILT] == 120 {
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -1);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -2);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -3);
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("shing"));
	      set_attack (AT_FSPECIAL)
         window = 3
         hsp = -6*spr_dir
         window_timer = 2
         vsp = -3
	
} 

if move_cooldown [AT_FTILT] ==  105 {
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("throw"));
	     set_attack (AT_FSPECIAL)
         window = 2
         window_timer = 2
	create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
} 


if move_cooldown [AT_FTILT] == 100 {
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 2);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 4.4);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 6);
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("shing"));
	      set_attack (AT_FSPECIAL)
         window = 5
         window_timer = 2
         vsp = -6
	
} 

if move_cooldown [AT_FTILT] ==  85 {
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("throw"));
	     set_attack (AT_FSPECIAL)
         window = 2
         window_timer = 2
	create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
	create_hitbox(AT_DSPECIAL , 3 , x , y - 42 );
} 

if move_cooldown [AT_FTILT] == 80 {
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 2);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 4.4);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 6);
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("shing"));
	      set_attack (AT_FSPECIAL)
         window = 3
         window_timer = 2
         vsp = -3
	hsp = -6*spr_dir
}

if move_cooldown [AT_FTILT] ==  65 {
	move_cooldown[AT_FSPECIAL] = 0
	sound_play(sound_get("throw"));
	     set_attack (AT_FSPECIAL)
         window = 2
         window_timer = 2
	create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
} 

if move_cooldown [AT_FTILT] == 60 {
	move_cooldown[AT_DSPECIAL] = 0
	      set_attack (AT_DSPECIAL)
         window = 4
         window_timer = 16
         hsp = 13*spr_dir
         vsp = -6
	       sound_play(sound_get("throwshake"));
    		sound_play(asset_get("sfx_spin"));
        	supply -= 3
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 42 );
}

if move_cooldown [AT_FTILT] == 50 {
	move_cooldown[AT_DSPECIAL] = 0
	      set_attack (AT_DSPECIAL)
         window = 4
         window_timer = 16
         hsp = 13*spr_dir
	       sound_play(sound_get("throwshake"));
    		sound_play(asset_get("sfx_spin"));
        	supply -= 3
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 42 );
}


if move_cooldown [AT_FTILT] == 40 {
	move_cooldown[AT_DSPECIAL] = 0
	      set_attack (AT_DSPECIAL)
         window = 4
         window_timer = 16
         hsp = 13*spr_dir
	       sound_play(sound_get("throwshake"));
    		sound_play(asset_get("sfx_spin"));
        	supply -= 3
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 42 );
}

if move_cooldown [AT_FTILT] == 30 {

	move_cooldown[AT_DSPECIAL] = 0
	      set_attack (AT_DSPECIAL)
         window = 4
         window_timer = 16
         hsp = 13*spr_dir
	       sound_play(sound_get("throwshake"));
    		sound_play(asset_get("sfx_spin"));
        	supply -= 3
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 42 );
}

if move_cooldown [AT_FTILT] == 20 {

	move_cooldown[AT_DSPECIAL] = 0
	      set_attack (AT_DSPECIAL)
         window = 4
         window_timer = 16
         hsp = 13*spr_dir
	       sound_play(sound_get("throwshake"));
    		sound_play(asset_get("sfx_spin"));
        	supply -= 3
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 42 );
}

if move_cooldown [AT_FTILT] == 10 {

	move_cooldown[AT_DSPECIAL] = 0
	      set_attack (AT_DSPECIAL)
         window = 4
         window_timer = 16
         hsp = 13*spr_dir
	       sound_play(sound_get("throwshake"));
    		sound_play(asset_get("sfx_spin"));
        	supply -= 3
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 42 );
}

}
