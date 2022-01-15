


halo = clamp( halob, -100, 6 )

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
    
}

if state == PS_PRATFALL {
	//can_fast_fall = true
}

if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if hit_player_obj == self {
	wavehit -= 1
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
/*			
if x < shortest_id.x {			
if shortest_id.url == "1913869515" or shortest_id.url == "2069283406" or shortest_id.url == "1997619532" 
or shortest_id.url == "2085832560" or shortest_id.url == "2108469290" or shortest_id.url == "2047413648"
or shortest_id.url == "2154720280" or shortest_id.url == "2136624834"
{
create_hitbox(AT_NSPECIAL , 20 , shortest_id.x , shortest_id.y );      		
}
}
*/

}

/*
if hit_player_obj != self {
if introtimer = 1 {
	        visible = true
		  spawn_hit_fx( x, y, lighten)
	x = inx + (50 * introhit)
	y = iny
	introtimer = 0
	hitpause = 0
	spawn_hit_fx( x, y, SC)
	
	if introhit = 1 {
		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
		sound_play(sound_get("SpaceCut"),false, noone, 2);
		hsp = -7
		vsp = 0
		spr_dir = 1
		
	}
	
	if introhit = -1 {
		hsp = 7
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
        spawn_hit_fx( x  , y - 35 , dimg )
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
		sound_play(asset_get("Spacecut"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 15 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("slice"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 20 {
		spawn_hit_fx( x, y, SC)
		sound_play(asset_get("counterhit"),false, noone, 0.6);
	}
}

if introhit == -1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
	  sound_play(asset_get("sfx_roll"),false, noone, 0.6);	
	   sound_play(sound_get("SpaceCut"),false, noone, 0.8);
	  spawn_hit_fx( x, y , darken )	
	}
	if get_gameplay_time() % 20 = 0 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("Spacecut"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 0 {
		spawn_hit_fx( x, y, 305)
			sound_play(sound_get("RI2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 0 {
visible *= -1
draw_indicator *= -1			
		spawn_hit_fx( x, y, SC)
		sound_play(asset_get("counterhit"),false, noone, 0.6);
	}
}

if get_gameplay_time() % 10 = 0 && introtimer > 1 {
	visible = 0
hsp = (room_width/2 - x + 100  - random_func(1, 200, true)) / 5.5
vsp = (room_height/2 - y - 80  - random_func(2, 160, true)) / 8
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
*/

////////////////

if (!free) {
	move_cooldown[AT_DAIR] = 0
	move_cooldown[AT_USPECIAL] = 0
	if move_cooldown[AT_FSPECIAL] > 40 {
		move_cooldown[AT_FSPECIAL] = 0
	}
};
if (state == PS_WALL_JUMP) {
	 move_cooldown[AT_DAIR] = 0
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_FSPECIAL] = 0
};

 if get_player_color(player) == 1 && omega == 1 {
 	
 	if visible && get_gameplay_time() % 4 == 0 and ((state != PS_ATTACK_GROUND and state != PS_DASH)  or (attack != AT_TAUNT and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR))) {
 	spawn_hit_fx( floor(x - 7 + (random_func(1, 60, true)/4)) , floor(y) , auram )
 	}
 	
 	if state == PS_DASH_START {
 		if state_timer == 1 {
 				sound_play(sound_get("OZDa"));
 		}
 	}
 	
 	
 	if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && !hitpause {
 		
 		if window == 1 && window_timer == 1 {
 		   switch get_gameplay_time() % 3 {
 		   	
 		   	   case 0 :
 		   	   sound_play(sound_get("OZS1"),false,noone,0.85, 1.05 - random_func(1,10,true)/100);
 		   	   break ;
 		   	   
 		   	   case 1 : 
 		   	   sound_play(sound_get("OZS2"),false,noone,0.85, 1.05 - random_func(1,10,true)/100);
 		   	   break ;
 		   	   
 		   	   case 2 : 
 		   	   sound_play(sound_get("OZS3"),false,noone,0.85, 1.05 - random_func(1,10,true)/100);
 		   	   break ;
 		   	   
 		   }
 		    
 		
 		}
 		
 		
 		if attack == AT_TAUNT{
 			if window == 1 && window_timer == 1 {
 				sound_play(sound_get("OZ1"));
 			}
 		if window == 3 && window_timer == 30 {
 				sound_play(sound_get("OZ2"));
 			}
 	      }
 	     
 	    if attack == AT_DSTRONG {
 			if window == 2 && window_timer == 1 {
 				sound_play(sound_get("OZS1"));
 			}
 			if window == 4 && window_timer == 1 {
 				sound_play(sound_get("OZS3"));	
 	     	}
 			}
 			
 			
 		if attack == AT_USTRONG {
 			if window == 2 && window_timer == 1 {
 				sound_play(sound_get("OZS3"));
 			}
 			
 		}
 	
 	if attack == AT_FSTRONG {
 			if window == 2 && window_timer == 1 {
 				sound_play(sound_get("OZS1"));
 			}
 			if window == 3 && window_timer == 1 {
 				sound_play(sound_get("OZS2"));
 			}
 			if window == 4 && window_timer == 6 {
 				sound_play(sound_get("OZS3"));
 			}
 			
 		}
 	if attack == AT_EXTRA_2{
 			if window == 1 && window_timer == 1 {
 				sound_play(sound_get("OZD1"));
 			}
 	}
 	
 	if attack == AT_EXTRA_3{
 			if window == 1 && window_timer == 1 {
 				sound_play(sound_get("OZF1"));
 			}
 	}
 	
 	if attack == AT_DSPECIAL{
 			if window == 2 && window_timer == 1 {
 				sound_play(sound_get("OZS2"));
 			}
 			if window == 3 && window_timer == 1 {
 				sound_play(sound_get("OZU1"));
 			}
 	}
 	
 	
 	if attack == AT_EXTRA_1{
 			if window == 2 && window_timer == 1 {
 				sound_play(sound_get("OZF1"));
 			}
 			
 				if window == 4 && window_timer < 1 {
 				sound_play(sound_get("OZS1"));
 			}
 			
 				if window == 5 && window_timer < 1 {
 				sound_play(sound_get("OZS2"));
 			}
 			
 				if window == 6 && window_timer < 1 {
 				sound_play(sound_get("OZS1"));
 			}
 			
 				if window == 7 && window_timer < 1 {
 				sound_play(sound_get("OZS2"));
 			}
 			
 				if window == 8 && window_timer < 1 {
 				sound_play(sound_get("OZS3"));
 			}
 			
 				if window == 9 && window_timer < 1 {
 				sound_play(sound_get("OZN2"));
 			}
 			
 				if window == 10 && window_timer < 1 {
 				sound_play(sound_get("OZU1"));
 			}
 		}
 		
 	if attack == AT_FSPECIAL {
 			if window == 1 && window_timer == 1 {
 				sound_play(sound_get("OZS1"));
 			}
 			
 			if window == 1 && window_timer == 15 {
 				sound_play(sound_get("OZS2"));
 			}
 		}
 		
 		
 	if attack == AT_USPECIAL {
 			if window == 2 && window_timer == 1 {
 				sound_play(sound_get("OZU1"));
 			}
 		}
 		
 	if attack == AT_NSPECIAL {
 			if window == 2 && window_timer == 1 {
 				sound_play(sound_get("OZN2"));
 			}
 			
 			if window == 4 && window_timer == 1 {
 				sound_play(sound_get("OZN1"));
 			}
 		}
 		
 		
 }
 }

if attack != AT_DSPECIAL && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
	

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 34);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

 if get_player_color(player) == 4 {
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bladewaveM"));
    		} else {
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bladewave"));
    		}
    	
    		
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 64);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, true);


set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
 if get_player_color(player) == 4 {
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("bladewaveHM"));
    		} else {
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("bladewaveH"));
    		}
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);

 if get_player_color(player) == 4 {
	set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, SCM);
	set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, SCM);
    		} else {
    set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, SC);
    set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, SC);
    		}

 if get_player_color(player) != 4 {
	set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, sprite_get("es"));
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, sprite_get("es"));
	set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_SPRITE, sprite_get("es"));
	set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_SPRITE, sprite_get("es"));
	set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_SPRITE, sprite_get("es"));
	set_hitbox_value(AT_EXTRA_3, 7, HG_PROJECTILE_SPRITE, sprite_get("es"));
    		} else {
    set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, sprite_get("esM"));
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, sprite_get("esM"));
	set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_SPRITE, sprite_get("esM"));
	set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_SPRITE, sprite_get("esM"));
	set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_SPRITE, sprite_get("esM"));
	set_hitbox_value(AT_EXTRA_3, 7, HG_PROJECTILE_SPRITE, sprite_get("esM"));
    		}


	
}


if attack == AT_DAIR && state == PS_ATTACK_AIR {
	
	if window == 1 {
	air_max_speed = 5
	}
	
	if window > 1 {
	air_max_speed = 3
	}
	
}else {
	
	air_max_speed = 5
	
	
}

if attack == AT_EXTRA_2 && state == PS_ATTACK_AIR {
	
	air_max_speed = 3

	
}else {
	
	air_max_speed = 5
	
	
}


if attack == AT_UAIR && state == PS_ATTACK_AIR {
	
}else {
	
	uairhit = 2
	
	
}

if (instance_exists(hit_player_obj)) {
xrange = abs(hit_player_obj.x - x);
yrange = abs(y - hit_player_obj.y);
}

if state == PS_DASH_TURN  {
	
	RAR = 5
	
	set_state (PS_WALK_TURN)
	
}

RAR -= 1

if RAR > 0 && state == PS_JUMPSQUAT {
 if right_down - left_down != 0 spr_dir = right_down - left_down
}

if stabt >= 10 {
	if state_cat == SC_HITSTUN {
		hsp /= 2
		vsp /= 2
		if state_timer > 20 {
			set_state(PS_IDLE)
		}
	}
	halotimer = 250
	halo = 6
	overt = get_player_damage( player)
}

if stabt >= 10 {
		take_damage( player, -1 , 7)
		if get_gameplay_time() % 4 == 0 {
			 var aaimg = spawn_hit_fx( floor(x - (0 + random_func(3, 50, true)) * spr_dir)  ,floor( y - 60 + random_func(4, 50, true)) , aimg )
    		aaimg.depth = 1
		}


if (state_cat == SC_HITSTUN or overt >= 999) and !hitpause {
	state_timer = 99
	window_timer = 99
	y -= 30
	set_state(PS_PRATFALL)
	   create_hitbox(AT_NSPECIAL , 4 , x , y - 30);	

	stabt = 0
	spawn_hit_fx( x , y - 40 , 306 )
	spawn_hit_fx( x , y - 40 , 305 )
	spawn_hit_fx( x - (5 * spr_dir) , y - 40 , SC )
	spawn_hit_fx( x - 30 - (5 * spr_dir) , y - 40 , SC )
	spawn_hit_fx( x + 30 - (5 * spr_dir) , y - 40 , SC )
	spawn_hit_fx( x - (5 * spr_dir) , y - 40 - 30 , SC )
	spawn_hit_fx( x - (5 * spr_dir) , y - 40 + 30 , SC )
    	
    y += 2000
    
		sound_play(sound_get("RI"));
}
}   
    
  if free {
        
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 8);
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, -6);
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
    } else {
        
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 8);
         set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
    }



if get_gameplay_time() <= 45 &&  get_gameplay_time() > 3  {

  set_attack (AT_TAUNT)
  window = 2

}


if halo >= 6 {
	if get_player_color(player) < 1 {
		 var outlineclr = (sin((get_gameplay_time() - 100) * 0.1) * -148) + 168
        outline_color = [ outlineclr/10 + 5, outlineclr/10 + 55, outlineclr/10 + 5];
        init_shader(); 
	}
	
	if get_player_color(player) == 1 {
		 var outlineclr = (sin((get_gameplay_time() - 100) * 0.1) * -148) + 168
        outline_color = [ outlineclr/10 + 45, outlineclr/10 + 5, outlineclr/10 + 45];
        init_shader(); 
	}
	
	if get_player_color(player) == 2 {
		 var outlineclr = (sin((get_gameplay_time() - 100) * 0.1) * -148) + 168
        outline_color = [ outlineclr/10 + 5, outlineclr/10 + 5, outlineclr/10 + 75];
        init_shader(); 
	}
	
	if get_player_color(player) == 3 {
		 var outlineclr = (sin((get_gameplay_time() - 100) * 0.1) * -148) + 168
        outline_color = [ outlineclr/10 + 35, outlineclr/10 + 35, outlineclr/10 + 35];
        init_shader(); 
	}
	
	if get_player_color(player) == 4 {
		 var outlineclr = (sin((get_gameplay_time() - 100) * 0.1) * -148) + 168
        outline_color = [ outlineclr/10 + 65, outlineclr/10 + 15, outlineclr/10 + 15];
        init_shader(); 
	}
	
		if get_player_color(player) == 5 {
		 var outlineclr = (sin((get_gameplay_time() - 100) * 0.1) * -148) + 168
        outline_color = [ outlineclr/10 + 45, outlineclr/10 + 15, outlineclr/10 + 35];
        init_shader(); 
	}
	
	halo = 6
	
	if haloann == 0 {
		move_cooldown[AT_USPECIAL] = 0 ;
        move_cooldown[AT_FSPECIAL] = 0 ;

		var haloact = spawn_hit_fx( x - (5 * spr_dir) , y - 40 , 306 )
    		haloact.depth = 0
    		
		sound_play(sound_get("RI"));
		sound_play(asset_get("sfx_frog_fspecial_charge_full"),false,noone,1,1.2)
	    haloann = 1
	}
	
	
}

if halo > 0 and hit_player_obj.state_cat != SC_HITSTUN && halo < 6 {
    if halotimer > 60 {	
    halotimer -= 1;
    }
    else {
    	halotimer -= 0.5;
    }
}

if halo == 6 {
	halotimer -= 1;
}

if halo == 6 {
halotimer += 0.5;
}

if halotimer > 180 {
halotimer = 180;
}

if halotimer < 1 {
	var halodeact = spawn_hit_fx( x - (10 * spr_dir) , y - 50 , 305 )
    		halodeact.depth = 1
    		
    		
    halotimer = 90;		
    if halo < 6 {
	halo -= 1;
    } else {
    	halo = 0
    }
	sound_play(asset_get("sfx_bird_sidespecial_start"));
}

if halo < 6 && 
((state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR)){
	
	    		if get_player_color(player) < 1 {
	outline_color = [0,0,0]
	init_shader();
    		}
    		
    
            if get_player_color(player) == 1 {
	outline_color = [15,0,4]
	init_shader();
    		}
    	
    	    if get_player_color(player) == 2 {
	outline_color = [13,10,25]
	init_shader();
    		}	
    		
            if get_player_color(player) == 2 {
	outline_color = [2,2,2]
	init_shader();
    		}	
    		
    		if get_player_color(player) == 4 {
	outline_color = [5,22,10]
	init_shader();
    		}
    	    if get_player_color(player) == 5 {
	outline_color = [25,12,17]
	init_shader();
    		}	
}

if halo <= 0 {
	halo = 0;
	haloann = 0;
	halotimer = 250;
    
}


wavetime -= 1


if wavetime <= 0 {
	wavetime = 8
	if wavehit > 1 && !hitstop {
	   wavehit -= 1
	   
	   spawn_hit_fx(hit_player_obj.x - 40 + random_func(1, 80, true) , hit_player_obj.y - 80 + random_func(2, 80, true), 302 );	   

       create_hitbox(AT_NSPECIAL , 3 , hit_player_obj.x - 40 + random_func(1, 80, true) , hit_player_obj.y - 60 + random_func(2, 80, true) );	   
    }

	if wavehit == 0 && !hitstop {
	   wavehit -= 1
       wavetime += 0.2
       create_hitbox(AT_NSPECIAL , 5 , hit_player_obj.x , hit_player_obj.y  );	   
    }
}

if state == PS_WAVELAND && state_timer == 1 {
		 spawn_hit_fx( x  , y - 35 , dimg )
}


if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) and state_timer > 6 and state_timer < 16 and state_timer % 5 = 0 {
	 spawn_hit_fx( x  , y - 35 , dimg )
	 
	 if get_player_color(player) == 5 && sakura == 1 {
			spawn_hit_fx( x, y - 30, shit1 )
    		
	}
    	
	}

 if (state == PS_PARRY_START or state == PS_AIR_DODGE) and get_player_color(player) == 5 && sakura == 1 and state_timer < 2 {
			spawn_hit_fx( x, y - 30, shit2 )
    		
	}	
	
	
	
if (state == PS_LAND or state == PS_LANDING_LAG or state == PS_WALL_JUMP) && get_player_color(player) == 5 && sakura == 1{
	
	if state_timer == 1{
	spawn_hit_fx( x, y, shit6 )

		
	}
	
	if state_timer == 2{
	spawn_hit_fx( x, y, shit7 )
    	
		
	}
}

if (state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) && get_player_color(player) == 5 && sakura == 1 {
	if state_timer == 3{
			spawn_hit_fx( x, y, shit8 )
    	
		
	}
	
	if state == PS_DOUBLE_JUMP && state_timer == 1 {
		spawn_hit_fx( x, y, shit5 )
	}
	if state_timer == 12{
			spawn_hit_fx( x, y, shit7 )
    		
		
	}
	
	
	if state_timer == 20{
			spawn_hit_fx( x, y, shit6 )
    		
		
	}
}

if state == PS_DASH && get_player_color(player) == 5 && sakura == 1 {
	
	
	if state_timer % 15 == 0{
			 spawn_hit_fx( x, y - 30, shit8 )
    	
		
	}
	
	if state_timer % 20 == 0{
		spawn_hit_fx( x, y - 30, shit7 )
    	
		
	}
	
	
	if state_timer % 25 == 0{
			var hit6 = spawn_hit_fx( x, y - 30, shit6 )
    		hit6.depth = -1000
		
	}
}


if get_player_color(player) == 5 && sakura == 1 && hit_player_obj.state_cat == SC_HITSTUN {
	
	

		
	
	if get_gameplay_time() % 24 == 0 {
    	var hit7 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit7 )
    		hit7.depth = -1000

	}
	
  	if get_gameplay_time() % 24 == 12 {
    var hit8 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit8 )
    	hit8.depth = -1000

     }
	
	
	
if get_gameplay_time() % 5 == 0 && (hit_player_obj.hsp > 10 or hit_player_obj.hsp < -10) {
		var hit6 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit6 )
    		hit6.depth = -1000
	}


	
}

if get_gameplay_time() <= 120 && get_gameplay_time() > 5  && omega == 0 and taunt_pressed && get_player_color(player) == 1{
	omega = 1
	sound_play(sound_get("OZ1"));
	set_victory_theme(sound_get("OZwin"));
}

if get_gameplay_time() <= 120  && get_gameplay_time() > 5  && sakura == 0 and taunt_pressed && get_player_color(player) == 5{
	sakura = 1
	sound_play(asset_get("sfx_gem_collect"));
	
	spawn_hit_fx( x , y - 40, shit5 )
	spawn_hit_fx( x + 80, y - 10, shit7 )
    spawn_hit_fx( x - 80, y - 10, shit7 )
    spawn_hit_fx( x, y - 20, shit6 )
    spawn_hit_fx( x + 40, y - 40, shit8 )
    spawn_hit_fx( x - 40, y - 40, shit8 )
}
	

if "superTrue" in self {
if superTrue == 1 {
	spawn_hit_fx(x,y - 40,SC)
	
	if hit_player_obj == self {
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
	
	if hit_player_obj.state_cat == SC_HITSTUN {
			hit_player_obj.old_hsp = hit_player_obj.hsp
	     hit_player_obj.old_vsp = hit_player_obj.vsp
		hit_player_obj.hitpause = true
	   hit_player_obj.hitstop = 30
	}
	
	 superTrue = 0
	 hit_player_obj.canUseCounterTimer = 30
	move_cooldown [AT_USPECIAL] = 0
	 
	

	if left_down && !right_down {
		spr_dir = -1
	}
	if !left_down && right_down {
		spr_dir = 1
	}

    if free {
    	halo = 0
    	has_hit_player = false
      set_attack(AT_DAIR) 
      window = 1
      window_timer = 0
      move_cooldown [AT_BAIR] = 120
      sound_play(sound_get("counterhit"),false,noone,1.2,0.9)
    }
    
    if !free {
    	 
    	halo = 0
    	has_hit_player = false
      set_attack(AT_USPECIAL) 
      window = 1
      window_timer = 0
      move_cooldown [AT_NAIR] = 120
      sound_play(sound_get("counterhit"),false,noone,1.2,0.9)
    }
    
}  

}


if  move_cooldown [AT_NAIR] > 0 {
	hsp = 0
	if move_cooldown [AT_NAIR] < 110 {
	    vsp = 0
	    hitstop = 0
	    y -= 10
	    hit_player_obj.hitstop = 0
	}
	
	
	hit_player_obj.canUseCounterTimer = 60
	 if move_cooldown [AT_NAIR] = 110 {
	 	sound_play(sound_get("SpaceCut"),false,noone,1,1)
	 	create_hitbox(AT_NSPECIAL,2, x,y - 30)
	 	create_hitbox(AT_NSPECIAL,1, x,y - 30)
	 }
	
	if move_cooldown [AT_NAIR] < 110  && move_cooldown [AT_NAIR] % 7 == 0{
	 	create_hitbox(AT_NSPECIAL,2, x,y - 30)
	 	sound_play(sound_get("SpaceCut"),false,noone,1,1)
	 }
	
	if move_cooldown [AT_NAIR] < 110  && move_cooldown [AT_NAIR] % 7 == 4{
	 	create_hitbox(AT_NSPECIAL,1, x,y - 30)
	 	sound_play(sound_get("SpaceCutB"),false,noone,1,1)
	 }
	 
	if move_cooldown [AT_NAIR] = 90 {
		move_cooldown [AT_NAIR] = 0
		vsp = -5
		halo = 6
	}
	
}
	
if move_cooldown [AT_BAIR] > 0 {
	
	hit_player_obj.canUseCounterTimer = 60
	
	if move_cooldown [AT_BAIR] > 68 && (has_hit_player or !free) {
		
		if has_hit_player {
		hitstop = 0
		spawn_hit_fx(x,y - 40,305)
		x = hit_player_obj.x - 30*spr_dir
		y = hit_player_obj.y
		hit_player_obj.hitstop = 120
		}
		
		spawn_hit_fx(x,y - 40,SC)
		sound_play(sound_get("SpaceCut"),false,noone,1,1)
		move_cooldown [AT_BAIR] = 55
		
	}
	
	if move_cooldown [AT_BAIR] == 50 {
		sound_play(sound_get("SpaceCut"),false,noone,1,1)
		spawn_hit_fx(x,y - 40,305)
		hsp = -8*spr_dir
		vsp = -6
		old_vsp = -6
		hitstop = 0
		set_attack(AT_FAIR) 
        window = 1
        window_timer = 0
	}
	
	if move_cooldown [AT_BAIR] == 36 {
		halo = 6
		shake_camera(4,4)
		sound_play(sound_get("counterhit"),false,noone,1,1)
		
		create_hitbox(AT_NSPECIAL,2, x ,y + 30)
		create_hitbox(AT_NSPECIAL,2, x + 20*spr_dir,y - 0)
		create_hitbox(AT_NSPECIAL,2, x + 35*spr_dir,y - 30)
		create_hitbox(AT_NSPECIAL,2, x + 20*spr_dir,y - 60)
		create_hitbox(AT_NSPECIAL,2, x ,y - 90)
		
		vsp = -6
		
		move_cooldown [AT_BAIR] = 0
	}
}


///Melon
if "esMnum" in self {
    	if esMnum > 0 {
    		esMnum -= 1
    		set_hitbox_value(AT_EXTRA_2, 11, HG_PROJECTILE_HSPEED, 6 + random_func(1,13,true)/2);
            set_hitbox_value(AT_EXTRA_2, 11, HG_PROJECTILE_VSPEED, -4 - + random_func(2,6,true));

    		
            if esMnum % 3 == 0 {
            	            
            var melone = spawn_hit_fx( floor(hit_player_obj.x - (0 + random_func(3, 50, true)) * spr_dir)  ,floor( hit_player_obj.y - 70 + random_func(4, 50, true)) , 303 )
    		melone.depth = 1
            	create_hitbox(AT_EXTRA_2,11,floor(hit_player_obj.x),floor(hit_player_obj.y - 40) )
            }
    	}
    }