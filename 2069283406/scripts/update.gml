///




if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if move_cooldown[AT_EXTRA_3] <= 5 && move_cooldown[AT_EXTRA_3] > 1{
	outline_color = [255-255/move_cooldown[AT_EXTRA_3] , 255-255/move_cooldown[AT_EXTRA_3], 255-255/move_cooldown[AT_EXTRA_3]]
        init_shader();

}

if move_cooldown[AT_EXTRA_3] == 1{
	
	spawn_hit_fx( x, y - 20 , firepar1 )
sound_play(asset_get("sfx_forsburn_combust"))

	if get_player_color(player) == 5{
	
	outline_color = [19, 15, 28]
        init_shader();
} else {
	outline_color = [0, 0, 0]
        init_shader();
}

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
	x = inx + (66 * introhit)
	y = iny
	introtimer = 0
	hitpause = 0
	spawn_hit_fx( x, y, 306)
	
	if introhit = 1 {
		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
		sound_play(asset_get("sfx_blow_heavy2"),false, noone, 2);
		hsp = -8
		vsp = 0
		spr_dir = 1
		
	}
	
	if introhit = -1 {
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
	/// Zetta Alex Mayu Katie Saji Uza Nolan Elice Fuki
if introtimer = -1{
	introtimer = 300
	
}

if get_gameplay_time() % 40 < 20 {
if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x, y - 40 , dsshadow)
}
}

if get_gameplay_time() % 40 > 20 {
if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x, y - 40 , dshadow)
}
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
		sound_play(asset_get("sfx_blow_medium2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 15 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("RZ2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 20 {
		spawn_hit_fx( x, y, 304)
		sound_play(sound_get("RZ"),false, noone, 0.6);
	}
}

if introhit == -1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
	  sound_play(asset_get("sfx_roll"),false, noone, 0.6);	
	   sound_play(asset_get("sfx_blow_heavy2"),false, noone, 0.8);
	  spawn_hit_fx( x, y , darken )	
	}
	if get_gameplay_time() % 20 = 0 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("sfx_blow_medium2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 0 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("RZ2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 0 {
visible *= -1
draw_indicator *= -1			
		spawn_hit_fx( x, y, 304)
		sound_play(sound_get("RZ"),false, noone, 0.6);
	}
}



if get_gameplay_time() % 10 = 0 && introtimer > 1 {
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


/// Dramatic death 

if autodash = 0 {
if state == PS_WALK_TURN && dashing == 1 {
	state = PS_DASH_START
}

if (state == PS_IDLE && state_timer > 2) or state == PS_IDLE_AIR {
	dashing = 0
}

if state == PS_DASH {
	dashing = 1
	if left_down or right_down {
    state = PS_DASH_START
	}
}
}

if get_player_color(player) == 5{
	
	outline_color = [19, 15, 28]
        init_shader();
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
    
    if state_timer == 8 {
    	spr_dir *= -1
    }
    
    if state_timer > 8 and state_timer < 18 and state_timer % 2 = 0 { 
	 spawn_hit_fx( x + (10 * spr_dir)  , y  , dsshadow)
    }
    
    if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	 
	 if state_timer == 7 {
	     sound_play(sound_get("RZ3"),false,noone,0.6);
	 }
	 
	 if state_timer < 9{
	     hsp = -1.5 * spr_dir
	 }
	 
	 if state_timer > 9 && state_timer < 25 {
	     x += (27 - state_timer) * spr_dir
	 }
	 
	 if state_timer > 9 {
	     hsp = 0
	 }
	 
}

if state == PS_AIR_DODGE and state_timer < 15 {
    
     if state_timer == 1 {
	     sound_play(sound_get("RZ3"),false,noone,0.6);
	      spawn_hit_fx( x  , y -6 , dsshadow)
	 }
	 
	 if state_timer > 3 and  state_timer % 5 = 0 {
	 
    spawn_hit_fx( x  , y -6 , dsshadow)
}

}

if state == PS_WAVELAND {
	if state_timer == 1 &&hsp != 0{
		 spawn_hit_fx( x  , y  , dsshadow)
	}

}

if get_gameplay_time() < 80 {
    draw_indicator = false;

  set_attack (AT_JAB)
  window = 9
  
  if get_gameplay_time() == 65  {
  sound_play(sound_get("RZ"));
  sound_play(sound_get("RZ2"));
 }

 if get_gameplay_time() >= 65  {
	if get_gameplay_time() % 2 = 0 {
		spawn_hit_fx( x + ((80 - get_gameplay_time())  * spr_dir) * 35  , y , dsshadow )
		spawn_hit_fx( x - ((80 - get_gameplay_time())  * spr_dir) * 35  , y , dsshadow )
    }
 }
 
  if get_gameplay_time() >= 60  {
 if get_gameplay_time() % 3 = 0 {
         spawn_hit_fx( x + 20 - random_func(14, 40, true) , y , dsshadow )
     }
  }

}


if get_gameplay_time() == 80 {
    draw_indicator = true;
 sound_play(asset_get("sfx_burnapplied"))
 set_attack (AT_DSTRONG)
}

if get_gameplay_time() <= 120 && attack == AT_DSTRONG && window >= 2{
if get_gameplay_time() % 2 = 0 {
		spawn_hit_fx( x + 300 - random_func(10, 600, true) , y + 30 , firepar1 )
		
    }
    
    
     if get_gameplay_time() % 4 = 0 {
         spawn_hit_fx( x + 50 - random_func(13, 100, true) , y + 30 , firepar1 )
     }
}
     
     

if state == PS_DASH_START {
    
  if state_timer > 2 {
         hsp = (15 - ((state_timer) * 1.5)) * spr_dir
  }
  
}

with (oPlayer) {
  if (id != other.id) {
    if ((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1) {
        with (oPlayer) {
  if (id != other.id) {
      fireon = 0
      firerange = -100
  }
    }
  }
}
}


if fireon == 3 && firerange > 0 {
    if get_gameplay_time() % 4 == 0 {
    spawn_hit_fx(floor ( hit_player_obj.x + 130 + (0.7*firerange)) , floor ( hit_player_obj.y  + 300 - random_func(9, 600, true)) , firepar1 );
   spawn_hit_fx(floor ( hit_player_obj.x - 130 - (0.7*firerange)) , floor ( hit_player_obj.y  + 300 - random_func(10, 600, true)) , firepar1 );
}
        
}

if (((x + 150 + (0.7*firerange)) - hit_player_obj.x) > 0 and ((x - 150 - (0.7*firerange)) - hit_player_obj.x) < 0){
    inrange = true
} else {
    inrange = false
}

if fireon <= 0 {
	firetimer = 300
}

if firetimer > 0{
    firetimer -= 1
}

if firerange > 1{

    firerange -= 1
    if firerange > 100 {
    firerange -= firerange/300	
    }

}

if firetimer == 0 && get_gameplay_time() >= 120 {
    firetimer -= 1
    firerange = -100
    fireon = 0
    sound_play(asset_get("sfx_spin"));
    sound_play(asset_get("sfx_ori_grenade_aim"));
     spawn_hit_fx(floor ( hit_player_obj.x) , floor ( hit_player_obj.y) , firepar1 );
}

if !free or state == PS_WALL_JUMP {
    move_cooldown[AT_NSPECIAL] = 0
    move_cooldown[AT_USPECIAL] = 0
    lattack = 0
    lattacktime = 0
}




if get_player_color(player) == 5 && sakura == 1 && hit_player_obj.state_cat == SC_HITSTUN {
	
	

		
	
	if get_gameplay_time() % 24 == 0 {
    	var hit7 = spawn_hit_fx( floor (hit_player_obj.x + random_func(23, 10, true)), floor (hit_player_obj.y - 30 + random_func(24, 10, true)), shit7 )
    		hit7.depth = -1000

	}
	
  	if get_gameplay_time() % 24 == 12 {
    var hit8 = spawn_hit_fx( floor (hit_player_obj.x + random_func(23, 10, true)), floor (hit_player_obj.y - 30 + random_func(24, 10, true)), shit8 )
    	hit8.depth = -1000

     }
	
	
	
if get_gameplay_time() % 5 == 0 && (hit_player_obj.hsp > 10 or hit_player_obj.hsp < -10) {
		var hit6 = spawn_hit_fx( floor (hit_player_obj.x + random_func(23, 10, true)), floor (hit_player_obj.y - 30 + random_func(24, 10, true)), shit6 )
    		hit6.depth = -1000
	}


	
}

if (state == PS_LAND or state == PS_LANDING_LAG or state == PS_WALL_JUMP) && get_player_color(player) == 5 && sakura == 1{
	
	if state_timer == 1{
			var hit6 = spawn_hit_fx( x, y, shit6 )
    		hit6.depth = -1000
		
	}
	
	if state_timer == 2{
			var hit7 = spawn_hit_fx( x, y, shit7 )
    		hit7.depth = -1000
	}		
	
}

if state == PS_FIRST_JUMP && get_player_color(player) == 5 && sakura == 1 {
	if state_timer == 3{
			var hit8 = spawn_hit_fx( x, y, shit8 )
    		hit8.depth = -1000
		
	}
	
	if state_timer == 9{
			var hit7 = spawn_hit_fx( x, y, shit7 )
    		hit7.depth = -1000
		
	}
	
	
	if state_timer == 15{
			var hit6 = spawn_hit_fx( x, y, shit6 )
    		hit6.depth = -1000
		
	}
}


if state == PS_DASH_START && get_player_color(player) == 5 && sakura == 1 {
	if state_timer == 1{
			var hit8 = spawn_hit_fx( x, y - 30, shit8 )
    		hit8.depth = -1000
		
	}

}

if state == PS_WAVELAND && get_player_color(player) == 5 && sakura == 1 {
	if state_timer == 1{
			var hit8 = spawn_hit_fx( x, y - 30, shit5 )
    		hit8.depth = -1000
		 spawn_hit_fx( x + (10 * spr_dir)  , y  , dsshadow)
	}

}

if get_gameplay_time() <= 120 && shade == 0 and taunt_pressed && get_player_color(player) != 5{
	shade = 1
	sound_play(asset_get("sfx_coin_collect"));
	
	spawn_hit_fx( x , y - 50, 305 )
}


if get_gameplay_time() <= 120 && sakura == 0 and taunt_pressed && get_player_color(player) == 5{
	sakura = 1
	sound_play(asset_get("sfx_gem_collect"));
	
	spawn_hit_fx( x , y - 40, shit5 )
	spawn_hit_fx( x + 80, y - 10, shit7 )
    spawn_hit_fx( x - 80, y - 10, shit7 )
    spawn_hit_fx( x, y - 20, shit6 )
    spawn_hit_fx( x + 40, y - 40, shit8 )
    spawn_hit_fx( x - 40, y - 40, shit8 )
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR{
	attacking = true
}
	
if state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR{
		attacking = false
	if shadeshine == 1{
		shadeshine = 0
		spawn_hit_fx( x , y - 60 , tauntpar1 )
	}
	
	
	
}


if get_gameplay_time() <= 120 && autodash = 0 && shield_pressed {
	sound_play(asset_get("sfx_gem_collect"));
    spawn_hit_fx( x , y - 60 , tauntpar1 )
	autodash = 1
}

//MAGIC COLOUR CODE
if get_player_color(player) = 7 {
	hue+= 5
	if hue>255 {
		hue = 0;
	}
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(255, 100, 50);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(7,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(7,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
}

init_shader();

/// setstock 

