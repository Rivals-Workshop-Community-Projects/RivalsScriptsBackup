

if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if state == PS_PRATFALL {
	can_fast_fall = true
}
if state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND {
	zbayo = 0
}

if hitpause {
	move_cooldown[AT_EXTRA_1] += 1
}

if offense = 0 {
	    walk_speed = 2;
        dash_speed = 5;
}

if offense = 1 {
	    walk_speed = 4;
        dash_speed = 8;
}
if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 {
zbayo = 0 
dmhit = 0
 if get_player_color(player) == 7{
     
     sound_play(sound_get("bruh"));
     
 }
 
}

if hit_player_obj.state == PS_DEAD {
	dmhit = 0
 if get_player_color(player) == 7{
     
     sound_play(sound_get("bruh"));
     
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
create_hitbox(AT_NSPECIAL , 20 , shortest_id.x , shortest_id.y );      		
}
}


}


if hit_player_obj != self {
if introtimer = 1 {
	        visible = true
		  spawn_hit_fx( x, y, lighten)
	x = inx + (45 * introhit)
	y = iny
	introtimer = 0
	hitpause = 0
	spawn_hit_fx( x, y, SC)
	
	if introhit = 1 {
		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
		sound_play(sound_get("counterhit"),false, noone, 2);
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

if get_gameplay_time() % 30 == 0 {
        spawn_hit_fx( x, y , shit5 )
        spr_dir *= -1
}


if get_gameplay_time() % 20 == 0 {

        spawn_hit_fx( x, y , shit3 )
}

if get_gameplay_time() % 10 == 0 {
        spawn_hit_fx( x, y , shit1 )
}

if state != PS_IDLE_AIR && introtimer > 1 && get_gameplay_time() % 5 = 0  {
	set_state (PS_DOUBLE_JUMP)
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
		sound_play(sound_get("slicel"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 20 {
visible *= -1
draw_indicator *= -1		
		spawn_hit_fx( x, y, SC)
		sound_play(asset_get("counterhit"),false, noone, 0.6);
	}
}

if introhit == -1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
	  sound_play(asset_get("sfx_roll"),false, noone, 0.6);	
	   sound_play(sound_get("counterhit"),false, noone, 0.8);
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
		spawn_hit_fx( x, y, SC)
		sound_play(asset_get("counterhit"),false, noone, 0.6);
	}
}

if get_gameplay_time() % 2 = 1 && introtimer > 1 {
				visible = 0
}
if get_gameplay_time() % 2 = 0 && introtimer > 1 {
				visible = true
}
	
if get_gameplay_time() % 3 = 0 && introtimer > 1 {
hsp = (room_width/2 - x + 100  - random_func(1, 200, true)) / 2 
vsp = (room_height/2 - y - 80  - random_func(2, 160, true)) / 4
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
	if get_gameplay_time() % 2 = 0 {
		spawn_hit_fx( x, y , darken )	
	}
	}
}

}

}
}

////////////////

set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 0);


if (!free)  {
	
set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
	move_cooldown[AT_USPECIAL] = 0
	
	
};


if zFhittimer > 0 {
zFhittimer -= 1

if state == PS_PARRY_START or state == PS_AIR_DODGE {
	state = PS_IDLE
	has_airdodge = false
}



}

if zbayo == -1 && state_timer % 3 = 0 {
	 create_hitbox(AT_DSPECIAL , 1 , floor( x + (-110 * spr_dir)) , floor( y - 110) ); 
}

if zbayo > 0 {
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 3);
	
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 25);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 25);

set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 205);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 200);

set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .1);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 7);

	if get_gameplay_time() % 2 == 0 {
	create_hitbox(AT_DSPECIAL , 1 , floor(x + ( -80  - random_func(3, 50, true)) * spr_dir)  ,floor( y - 125 + random_func(4, 50, true)))
	}
} else {
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 8);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 8);
	
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 55);
    
    set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 55);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
    
    set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .5);
    set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);

}

if zFhittimer == 1 {
	move_cooldown[AT_EXTRA_2] = 100
		sound_play(sound_get("counterhit"));
	if zFhit = 0 {
			move_cooldown[AT_USPECIAL] = 0
 
		

	 if !left_down and !right_down{
            	
            	
      
			if (ztarget.x < x) {
				spr_dir = 1;
			} else {
				spr_dir = -1;
			}
			x = ztarget.x + (-40 * spr_dir)
			y = ztarget.y + (0 * spr_dir)
	 }
		

			if left_down {
			x = ztarget.x + (40)
			y = ztarget.y + (0 * spr_dir)
			}
			
			if right_down {

			x = ztarget.x - (40)
			y = ztarget.y + (0 * spr_dir)
			}
			
			sound_play(asset_get("sfx_holy_lightning"));

			set_attack(AT_UTILT)
		   	window = 2;
            window_timer = -1;	

	}
	
	if zFhit = 1 {
		
		hsp = 0
		

    

			if (ztarget.x < x) {
				spr_dir = 1;
			} else {
				spr_dir = -1;
			}
			x = ztarget.x 
			 y = ztarget.y 
			 vsp = -3

			sound_play(asset_get("sfx_holy_lightning"));
			if zvoice == 1{
			 if get_player_color(player) == 1{
            	      sound_play(sound_get("perfectJ3V"));
            
            } 
            
            if get_player_color(player) == 4{
            	      sound_play(sound_get("startUSTRONGD"));
            
            } 
            
            if get_player_color(player) != 1 and get_player_color(player) != 4  {
            sound_play(sound_get("perfectJ3"));
            }
			}
			set_attack(AT_UTILT)
		   	window = 2;
            window_timer = -1;	
            zbayo = 7 
	}
	
}

if zFhittimer == 2 {
	create_hitbox(AT_DSPECIAL , 1 , x + (( -80  - random_func(3, 50, true)) * spr_dir)  , y - 105 ); 
	spawn_hit_fx( x, y - 30 + random_func(1, 10, true), shit5 )	
	
}



if state == PS_JUMPSQUAT {
	move_cooldown[AT_NSPECIAL] = 0

}



if (state == PS_WALL_JUMP) {move_cooldown[AT_USPECIAL] = 0};





if state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR {
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
}

if get_player_color(player) == 5 && zvoice == 1 && hit_player_obj.state_cat == SC_HITSTUN {
	
	

		
	
	if get_gameplay_time() % 24 == 0 {
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit7 )
    

	}
	
  	if get_gameplay_time() % 24 == 12 {
   var hit8 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit8 )
   

     }
	
	
	
if get_gameplay_time() % 5 == 0 && (hit_player_obj.hsp > 10 or hit_player_obj.hsp < -10) {
		spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit6 )
    	
	}


	
}

if get_gameplay_time() <= 120 && zvoice == 0 {


	if taunt_down {
		sound_play(asset_get("sfx_gem_collect"));
		zvoice = 1
	}
	
}

if get_gameplay_time() == 130 {
if zvoice == 0 {
            	set_victory_theme(sound_get("MONG"));
        }
            
if zvoice == 1{
 if get_player_color(player) < 1 {
            	set_victory_theme(sound_get("VictoryTheme1"));
            }
            
if get_player_color(player) == 2 {
            	set_victory_theme(sound_get("VictoryTheme1"));
            }

 if get_player_color(player) == 1{
            	      set_victory_theme(sound_get("VictoryThemeV"));
 }
            
if get_player_color(player) == 5 {
            	set_victory_theme(sound_get("VictoryThemeS"));
            }
            
if get_player_color(player) == 4 {
            	set_victory_theme(sound_get("VictoryThemeD"));
            }
            
if get_player_color(player) == 3 {
            	set_victory_theme(sound_get("VictoryThemeG7"));
            }
}

}

if offense = 1 {
	air_dodge_speed = 10;
} else {
	
	air_dodge_speed = 8;
}

if offensetimer > 0 && !hitpause {
  
  offensetimer += 1
	
}

if hit_player_obj.state_cat == SC_HITSTUN {
	move_cooldown[AT_EXTRA_3] += 1
}


if dmhit > 0 && move_cooldown[AT_EXTRA_3] <= 0 {
	dmhit -= 1
	move_cooldown[AT_EXTRA_3] = 160
	sound_play(asset_get("sfx_ice_shieldup"));
}

if offensetimer > 160 and offense > 0{
	offense = 0
	offensetimer = 0
		var halodeact = spawn_hit_fx( x - (16 * spr_dir) , y - 50 , 302 )
    		halodeact.depth = depth + 10
    		
    	sound_play(asset_get("sfx_ice_shieldup"));	
		sound_play(asset_get("sfx_jumpair"));
}

if (state_cat == SC_HITSTUN) {
 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
}

if attack != (AT_USPECIAL) {
	
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 95);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 95);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
}

ztrashes = random_func(15, 3, false);



if (state == PS_AIR_DODGE  && state_timer == 1 && offense = 1) {
	spawn_hit_fx( x - (10 * spr_dir) , y - 50 , shit1 )
        sound_play (asset_get("sfx_bird_sidespecial"));		

}
	
if (state == PS_AIR_DODGE  && state_timer == 7) {
	 create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 110 ); 
	 
	 if offense == 1 {
	 set_attack (PS_IDLE_AIR)
     spawn_hit_fx( x - (10 * spr_dir) , y - 30 , shit7 )
    has_airdodge = false		
	 }
}







if (state == PS_TECH_FORWARD  && state_timer > 5 && state_timer < 15 && state_timer % 3 = 0) {
	create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 105 ); 


	
}

if (state == PS_TECH_BACKWARD  && state_timer > 5 && state_timer < 15 && state_timer % 3 = 0) {
	create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 105 ); 

}
	


if (state == PS_ROLL_FORWARD  && state_timer == 7) {
	create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 105 ); 
}

if (state == PS_ROLL_BACKWARD  && state_timer == 7) {
	create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 105 ); 
}

if (state == PS_ROLL_FORWARD  && state_timer == 13) {
	create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 105 ); 
}

if (state == PS_ROLL_BACKWARD  && state_timer == 13) {
	create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 105 ); 
}


if (state == PS_AIR_DODGE  && state_timer == 2) {
	create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 110 ); 
}




if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 31) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if (introTimer2 == 0 && introTimer == 2) {
    sound_play (sound_get("slicel"));
}

if (introTimer2 == 0 && introTimer == 8) {
    sound_play (sound_get("counterhit"));
}

if (introTimer2 == 0 && introTimer == 10) {
    sound_play (sound_get("SpaceCut"));
}

if zvoice == 1{
	
     if get_player_color(player) == 1{
     	if (introTimer2 == 0 && introTimer == 11) {
            	      sound_play(sound_get("introV"));
     }
     }
     
     if get_player_color(player) == 3{
     	if (introTimer2 == 0 && introTimer == 0) {
            	      sound_play(sound_get("introG7"));       
     }
     }
     
     if get_player_color(player) == (5) {
     	if (introTimer2 == 0 && introTimer == 0) {
            	      
            	sound_play(sound_get("introS"));
            }
            
            
     	if (introTimer2 == 0 && introTimer == 8) {
            	      
            	sound_play(sound_get("perfectUS"));
            }
     }
     
        if get_player_color(player) == (2) {
     	if (introTimer2 == 0 && introTimer == 11) {
            	      
            	sound_play(sound_get("intro"));
            }
     }
     
             if get_player_color(player) == (8) {
     	if (introTimer2 == 0 && introTimer == 11) {
            	      
            	sound_play(sound_get("intro"));
            }
     }
     
                  if get_player_color(player) == (7) {
     	if (introTimer2 == 0 && introTimer == 11) {
            	      
            	sound_play(sound_get("bruh"));
            }
     }
     
     
      if get_player_color(player) == (4) {
     	if (introTimer2 == 0 && introTimer == 11) {
            	      
            	sound_play(sound_get("introD"));
            }
     }
     
       if get_player_color(player) < 1 {
     	if (introTimer2 == 0 && introTimer == 11) {
            	      
            	sound_play(sound_get("intro"));
            }
     }
     
     
}



if get_player_color(player) == 3 {
	
     if get_gameplay_time() % 62 = random_func(10, 30, true){ 
    	outline_color = [60, 0, 0]
        init_shader();} 
        
     if get_gameplay_time() % 63 = random_func(10, 30, true){ 
     outline_color = [0, 0, 0]
     init_shader();} 
     
     if zvoice == 1 {
      if get_gameplay_time() % 63 = random_func(6, 30, true){ 
     create_hitbox(AT_DSPECIAL , 1 , x + (-110 * spr_dir) , y - 105 ); 
     
      }
      
      if get_gameplay_time() % 63 = random_func(7, 30, true){ 
     create_hitbox(AT_DSPECIAL , 1 , x + (-115 * spr_dir) , y - 105 ); 
      	
      } 
     
     
     
      if ((get_gameplay_time() % 73 = random_func(5, 30, true)) && state == PS_IDLE) { 
     
        set_attack (AT_TAUNT);
      	window = 16;
      	window_timer = 95;
      } 
     }
      
    if (spr_dir == 1){  
        set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("B"));   
        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("B"));
    } else {
    	set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("B2"));   
    	set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("B2"));
    }
    
   
    set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 15);
    set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 15);
    
    set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, SB);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("X"));
    
    set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, SB);
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("X"));
    
    set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, SB);
    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("X"));
    
    set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, SB);
    set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("X"));
    
     
   }


if get_player_color(player) == 1{
	
	    var outlineclr = (sin((get_gameplay_time() - 1) * 0.1) * -20) + 20
		outline_color = [5 + outlineclr, 5 + outlineclr, 18 + outlineclr * 2]
        init_shader(); 
}
	
if get_player_color(player) == 5{
	
	outline_color = [9, 5, 18]
        init_shader();
   
	
}

if get_player_color(player) == 6 {
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X,  100);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("SC2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, SC);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);


set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X,  100);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("SC2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, SC);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X,  130);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("SC1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("counterhit"));
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, SC);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, -6);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X,  160);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("SC2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, SC);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);

        if get_gameplay_time() % 22 = 0{
            if get_player_damage( player ) > 0{
                set_player_damage( player, get_player_damage( player ) - 1 )
            }
        }
        
           if get_gameplay_time() % 22 = 0{     
  create_hitbox(AT_FSTRONG , 9 , x - 150 + random_func(1, 300, true) , y - 300 + random_func(2, 30, true) );

   }
   
              if get_gameplay_time() % 22 = 10{     
  create_hitbox(AT_NSPECIAL , 6 , x - 150 + random_func(1, 300, true) , y - 300 + random_func(2, 30, true) );

   }
   
   
   if get_gameplay_time() % 52 = random_func(9, 30, true){     
  create_hitbox(AT_NSPECIAL , 4 , x - 100 + random_func(1, 200, true) , y - 105 + random_func(2, 80, true) );
   sound_play(sound_get("SpaceCut2"));
   }
   
   
   
   if get_gameplay_time() % 42 = random_func(10, 30, true){     
  create_hitbox(AT_NSPECIAL , 3 , x - 100 + random_func(1, 200, true) , y - 105 + random_func(2, 80, true) );
   sound_play(sound_get("SpaceCut2"));
   }
        walk_speed = 5;
        walk_accel = 2;
        walk_turn_time = 1;
        initial_dash_speed = 12;
        dash_speed = 18;
        dash_stop_time = 1;
        dash_turn_time = 1;
        dash_stop_percent = 0;
        ground_friction = 2;
        max_jump_hsp = 9;
        air_max_speed = 12;
        jump_change = 5;
        djumps = 0;
        land_time = 0;
        has_walljump = true
        var outlineclr = (sin((get_gameplay_time() - 100) * 0.1) * -148) + 168
        outline_color = [ outlineclr * 4, outlineclr * 2, outlineclr];
        init_shader();
        
/////////////////////

if ((state == PS_AIR_DODGE|| state == PS_ROLL_BACKWARD ||
state == PS_ROLL_FORWARD) && state_timer == 7){
create_hitbox(AT_DSPECIAL , 1 , x , y - 105 );    
}

if ((state == PS_AIR_DODGE|| state == PS_ROLL_BACKWARD ||
state == PS_ROLL_FORWARD) && state_timer == 1){
create_hitbox(AT_FSPECIAL , 3 , x , y -40 );    

}

if ((state == PS_AIR_DODGE) && state_timer == 8){

	
    
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

			if (shortest_id.x < x) {
				spr_dir = 1;
			} else {
				spr_dir = -1;
			}
			x = shortest_id.x + (-60 * spr_dir)
			y = shortest_id.y + (-20 * spr_dir)
			set_state (PS_IDLE)
		create_hitbox(AT_DSPECIAL , 1 , x , y - 105 );   


		
}

        if ((state == PS_ROLL_BACKWARD ||
state == PS_ROLL_FORWARD) && state_timer == 18){
	
    
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

			if (shortest_id.x < x) {
				spr_dir = 1;
			} else {
				spr_dir = -1;
			}
			x = shortest_id.x + (-60 * spr_dir)
			y = shortest_id.y + (0 * spr_dir)
			set_state (PS_IDLE)
create_hitbox(AT_DSPECIAL , 1 , x , y - 105 );   

		
}

}
    
    
    



if swallowed { 
    swallowed = 0
        var ability_spr = sprite_get("kspecial");
        var ability_hurt = sprite_get("kspecial_hurt");
        var sound = sound_get("SpaceCut");
        var sound2 = sound_get("SpaceCutB")
        var sound3 = sound_get("korb");
        var cut = sprite_get("SCK")
        var myicon = sprite_get("kicon")
    with enemykirby { 
    	
    	air_dodge_speed = 10;
    	
newicon = myicon        
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr );
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2 );
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, -7);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);


set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);



set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, sound2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 11);




set_num_hitboxes(AT_EXTRA_3, 1);


set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X,  100);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, cut);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, sound);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);


} 
}


///trum codec


if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 22;
    trummelcodecsprite1 = sprite_get("zetta");
    trummelcodecsprite2 = sprite_get("zetta");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2; //Alto
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "weird weapon";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;

    //Page 1
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 1; 

    trummelcodecline[page,1] = "アタシの)じかん";
    trummelcodecline[page,2] = "をムダにするもん";
    trummelcodecline[page,3] = "ならアンタ、しん";
    trummelcodecline[page,4] = "だもドウゼンだよ";
    page++;

    //Page 2
    trummelcodecspeaker[page] = 2; //
    trummelcodecexpression[page] = 0; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "weird language";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = ""; //There's nothing in line 4
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 1; //Bowser
    trummelcodecexpression[page] = 1; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "90% of what she said";
    trummelcodecline[page,2] = "can be translated to:";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = ""; //There's nothing in line 4
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 1; //Bowser
    trummelcodecexpression[page] = 0; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "Uhm.....";
    trummelcodecline[page,2] = "[Yep, you are dead.]?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = ""; //There's nothing in line 4
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 2; //Alto
    trummelcodecexpression[page] = 5; 

    trummelcodecline[page,1] = "ow the edge";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 5
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "Hmp. Now set the CPU";
    trummelcodecline[page,2] = "to (Fight) so i can beat";
    trummelcodecline[page,3] = "you to a pulp already.";
    trummelcodecline[page,4] = "";
    page++;
       //Page 6
    trummelcodecspeaker[page] = 2; //Alto
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "setting what";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 7
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 1; 

    trummelcodecline[page,1] = "*sigh*";
    trummelcodecline[page,2] = "another one who can't";
    trummelcodecline[page,3] = "grasp things beyond The Wall.";
    trummelcodecline[page,4] = "";
    page++;
    
     //Page 7
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "Foolishness, Snail,";
    trummelcodecline[page,2] = "Foolishness.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
        //Page 8
    trummelcodecspeaker[page] = 1; //Alto
    trummelcodecexpression[page] = 2; 

    trummelcodecline[page,1] = "What wall are you";
    trummelcodecline[page,2] = "talking about ?";
    trummelcodecline[page,3] = "...";
    trummelcodecline[page,4] = "And was that a reference ?";
    page++;
    
       //Page 9
    trummelcodecspeaker[page] = 0; //Bowser
    trummelcodecexpression[page] = 0; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "Oh, about that. ";
    trummelcodecline[page,2] = "Due to her abnormal";
    trummelcodecline[page,3] = "perception of space,";
    trummelcodecline[page,4] = ""; //There's nothing in line 4
    page++;
    
      //Page 9
    trummelcodecspeaker[page] = 0; //Bowser
    trummelcodecexpression[page] = 0; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "she sometime like to break The Wall ";
    trummelcodecline[page,2] = "just for fun.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = ""; //There's nothing in line 4
    page++;
    
      //Page 10
    trummelcodecspeaker[page] = 2; //Alto
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "am confused";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 11
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 1; 

    trummelcodecline[page,1] = "Cut it off, or";
    trummelcodecline[page,2] = "I'll do it for you.";
    trummelcodecline[page,3] = "So you here for a ";
    trummelcodecline[page,4] = "fight or not ?";
    page++;
    
    //Page 12
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 2; 

    trummelcodecline[page,1] = "My patient is running";
    trummelcodecline[page,2] = "pretty low right now.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 13
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 4; 

    trummelcodecline[page,1] = "I’d stay fifteen feet";
    trummelcodecline[page,2] = "away, if I were you.  ";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
     //Page 13
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 1; 

    trummelcodecline[page,1] = "That’s Zetta and ";
    trummelcodecline[page,2] = "she means no mercy ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 14
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 2; 

    trummelcodecline[page,1] = "She can create orbs of Ki";
    trummelcodecline[page,2] = "and also slice and dice ";
    trummelcodecline[page,3] = "nearly anything with that";
    trummelcodecline[page,4] = "(weird weapon) you called.";
    page++;
    
    
    //Page 15
    trummelcodecspeaker[page] = 2; //Alto
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "sound broken";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 16
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 1; 

    trummelcodecline[page,1] = "I think i’d like to ";
    trummelcodecline[page,2] = "be back in one piece. ";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "And im a cloud, haha.";
    page++;
    
    
    //Page 16
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "Just try not to ";
    trummelcodecline[page,2] = "let her speed and ";
    trummelcodecline[page,3] = "illusionary trick you";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 20
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 2; 

    trummelcodecline[page,1] = "Knowledge without real";
    trummelcodecline[page,2] = "experience wont do";
    trummelcodecline[page,3] = "you any good.";
    trummelcodecline[page,4] = "";
    page++;
    
}










if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) and state_timer > 6 and state_timer < 16 and state_timer % 5 = 0 {
	 
	 if get_player_color(player) == 5 && zvoice == 1 {
			spawn_hit_fx( x, y - 30, shit1 )
    		
	}
    	
	}

 if (state == PS_PARRY_START or state == PS_AIR_DODGE) and get_player_color(player) == 5 && zvoice == 1 and state_timer < 2 {
			spawn_hit_fx( x, y - 30, shit2 )
    		
	}	
	
	
	
if (state == PS_LAND or state == PS_LANDING_LAG or state == PS_WALL_JUMP) && get_player_color(player) == 5 && zvoice == 1{
	
	if state_timer == 1{
	spawn_hit_fx( x, y, shit6 )

		
	}
	
	if state_timer == 2{
	spawn_hit_fx( x, y, shit7 )
    	
		
	}
}

if (state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) && get_player_color(player) == 5 && zvoice == 1 {
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

if state == PS_DASH && get_player_color(player) == 5 && zvoice == 1 {
	
	
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


/// setstock 




if get_player_color(player) == 8 {
	outline_color = [19, 15, 28]
   if visible {  
   	if !hitpause {
	if get_gameplay_time() % 40 == 0	 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 40 == 26{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 40 == 13 {
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
   	}
   	
   	if hitpause {
	if get_gameplay_time() % 8 == 0	 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 8 == 6{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 8 == 3 {
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
   	}
	}
    init_shader();	 
}
