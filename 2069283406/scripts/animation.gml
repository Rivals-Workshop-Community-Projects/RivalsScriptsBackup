/// ALL THE RUNE BS IN HERE

///
///rune A type="A"
///rune A desc="Dash is now a blink"
if has_rune("A") {
   if state == PS_DASH_START && state_timer == 1 {
   	        spawn_hit_fx( x - 25*spr_dir  , y , dsshadow)
       x += 30*spr_dir	
        sound_play(sound_get("RZ3"),false,noone,0.4);
   }
}


///Shin Senku: Roll and Airdodge last longer, roll can be jumpcancel.
if has_rune("B") {
   if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) {
   	   if state_timer = 9 {
   	   	move_cooldown[AT_NSPECIAL_2] = 26
   	   }
   	   
   	   
   	   if state_timer = 15 {
   	   	move_cooldown[AT_NSPECIAL_2] = 0
   	   }
   	   
   	   if move_cooldown[AT_NSPECIAL_2] != 0{
   	   	  state_timer = 12
   	   	  window_timer = 12
   	   }
   	   
   	   if move_cooldown[AT_NSPECIAL_2] > 0 && move_cooldown[AT_NSPECIAL_2] %3== 0 && state_timer > 9 {
   	   	spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
   	   }
   	   
   	   if state_timer >= 12 && jump_pressed {
   	   	state_timer = 99
   	   	  window_timer = 99
   	   	move_cooldown[AT_NSPECIAL_2] = 0
   	   }
   }
}

///
///rune C desc="Initia Reversal: Tremendous moonwalk speed"
if has_rune("C") {
  if (state == PS_DASH or state == PS_DASH_START) and state_timer > 0 {
	if hsp < 0 && spr_dir == 1 {
		x -= 10*spr_dir
	}
	
	if hsp > 0 && spr_dir == -1 {
	x -= 10*spr_dir
	}

}
}

///rune E desc="Air Trick: Airdodge become Airdash."
if has_rune("E") {
   max_djumps = 2;
}


///rune D desc="Controled Flow: Increase air mobility."
if has_rune("D") {
   max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.4;
}

///rune F desc="Kata 32: Increase parry length. Execute Kata 32 after a successful parry."
if has_rune("K") {
	
	if state == PS_PARRY {

if window_timer == 1{
window_timer = 3
}

if state_timer < 20 {
window_timer = 3	
} 

if state_timer > 20 && window_timer != 20 {
	window_timer += 1
}
	
}

}

if has_rune("K") {
	
	set_attack_value(AT_DTILT, AG_CATEGORY, 2);
		set_attack_value(AT_JAB, AG_CATEGORY, 2);
			set_attack_value(AT_FTILT, AG_CATEGORY, 2);
				set_attack_value(AT_UTILT, AG_CATEGORY, 2);
	if state == PS_PARRY {
if window_timer == 1{
window_timer = 3
}

if state_timer < 10 {
window_timer -= 0.5	
} 

if state_timer > 10 && window_timer != 20 {
	window_timer += 1
}
	
}

	if daigomode {

		   soft_armor = 999
	}
	    if daigomode >= 16 {
	    			if vsp > 0 { 
		            vsp /= 2
		            }
         	hit_player_obj.hsp = (x + (35 * spr_dir) - hit_player_obj.x) / 6
	     	hit_player_obj.vsp = (y - floor(daigomode/2) - hit_player_obj.y) / 6
    	}
    	
    if daigomode > 0 && daigomode < 30 && !hitstop{
    	if  daigomode < 28 {
    	daigomode += 1
        }
    	
    	if daigomode == 9 {
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    	}
    	if attack != AT_NAIR && daigomode == 9 {
    		x = hit_player_obj.x - 34 * spr_dir
    		y = hit_player_obj.y - 34
    	    		sound_play(sound_get("RZ"),false,noone,0.5);
    		vsp = 2
    	}
    		
    	
    	if attack != AT_NAIR && daigomode == 10 {
    		attack_end();
    		set_attack(AT_NAIR)
    		window = 1
    		window_timer = 2
    	}
    	

    	
    	if daigomode > 20 {
    		sound_play(sound_get("RZ2"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		x = hit_player_obj.x - 34 * spr_dir
    		attack_end();
    		set_attack(AT_DTILT)
    		window = 1
    		window_timer = 2
    		daigomode = 31
    		invincible = false
    	}
    } 
    
    if daigomode >= 31 && !hitstop {
    	daigomode += 1
    	 if daigomode == 40{
    		sound_play(sound_get("RZ3"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		x = hit_player_obj.x - 34 * spr_dir
    		attack_end();
    		set_attack(AT_JAB)
    		window = 1
    		window_timer = 2
    	}
    	
    	 if daigomode == 50{
    		sound_play(sound_get("RZ2"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		x = hit_player_obj.x - 34 * spr_dir
    		attack_end();
    		set_attack(AT_FTILT)
    		window = 1
    		window_timer = 9
    	}
    	
    	  if daigomode == 60{
    		sound_play(sound_get("RZ3"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		x = hit_player_obj.x - 34 * spr_dir
    		attack_end();
    		set_attack(AT_FSTRONG)
    		window = 1
    		window_timer = 12
    	}
    	
    	  if daigomode == 68{
    		sound_play(sound_get("RZ3"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		x = hit_player_obj.x - 34 * spr_dir
    		attack_end();
    		set_attack(AT_UTILT)
    		window = 1
    		window_timer = 9
    	}
    	
    	
    	if daigomode == 74{
           
            
    		with asset_get("oPLayer") {
    		hitstop = 12
    		hitpause = 1 
    		}
    		
    		shake_camera(4,10)
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , 113)
    		sound_play(sound_get("counterhit"));
    		sound_play(sound_get("RZ"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , lighten)
    		x = hit_player_obj.x - 34 * spr_dir
    		attack_end();
    		set_attack(AT_USPECIAL)
    		window = 1
    	}
    	
    	 if daigomode == 104{
    		x = hit_player_obj.x - 34 * spr_dir
    		attack_end();
    		set_attack(AT_FAIR)
    		window = 1
    		window_timer = 6
    		daigomode = 0
    	 }
    	
    }
}


///rune G desc="Ki release: Nspecial have no startup inside concentration range."

if attacking && has_rune("F") {
	if attack == AT_NSPECIAL && window <= 2 && inrange && firerange > 0{
		window_timer = 99
	}
}


///rune G desc="Ki Blast: Fspecial tap have much more power."
if attacking && has_rune("H") {
	set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 300);
	set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.9);
}

///rune I desc="Void Step: No target Nspecial can fly up and down."
if has_rune("I") {
if attacking && attack == AT_DSPECIAL{
	if !free && window == 2 && window_timer == 1 && !hitpause {
	create_hitbox(AT_FSPECIAL, 1, x - 300*spr_dir, 0);
		move_cooldown[AT_JAB] = 10
	}
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 300);
}
}
///rune J desc="Astra Chaser: Fspecial clone dash on target with 3 mark on them."
///in hitbox update


///rune K desc="Solar Phases: Uspecial is now a 4 kicks combo."

if attacking && has_rune("O") {
	
	if move_cooldown[AT_DTILT] != 0 {
		
		lattacktime = 4
		
		can_fast_fall = false
		if move_cooldown[AT_DTILT] % 5 == 0 {
		 		spawn_hit_fx(x + 50 - random_func(3,100,true), y + 50 - random_func(4,100,true), dsshadow )
		}
		if attack ==  AT_BAIR {
			rside = -1
		} else {
			rside = 1
		}
		hitpause = 0
		vsp = -2
		soft_armor = 999	
		hsp /= 2
		
		    		

	}
	
	if attack == AT_USPECIAL && has_hit && state_timer == 14 {
		    sound_play(sound_get("RZ"),false,noone,0.5);
           spr_dir *= -1
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_BAIR)
    		window = 1
    		window_timer = 9
		move_cooldown[AT_DTILT] = 285
	}
	
	if move_cooldown[AT_DTILT] == 280 {
		spr_dir *= -1
		    sound_play(sound_get("RZ2"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_NAIR)
    		window = 1
    		window_timer = 2
    		move_cooldown[AT_DTILT] = 185
	}
	
	if move_cooldown[AT_DTILT] == 180 {

		    sound_play(sound_get("RZ2"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_UAIR)
    		window = 1
    		window_timer = 8
    			
		x += 30*spr_dir
		spr_dir *= -1	
	}
	
	if move_cooldown[AT_DTILT] == 175 {
		 sound_play(sound_get("RZ"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_BAIR)
    		window = 1
    		window_timer = 8
    			
	}
	
	if move_cooldown[AT_DTILT] == 170 {
		
		    sound_play(sound_get("RZ"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_NAIR)
    		window = 1
    		window_timer = 8
    		spr_dir *= -1
	}
	
   if move_cooldown[AT_DTILT] == 165 {
   	with (hit_player_obj) {
			take_damage(player,-1,-5)
		}

		    sound_play(sound_get("RZ2"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_BAIR)
    		window = 1
    		window_timer = 8
    		
	}
	
	if move_cooldown[AT_DTILT] == 160 {
		
		    sound_play(sound_get("RZ2"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_UAIR)
    		window = 1
    		window_timer = 8
	}
	
	if move_cooldown[AT_DTILT] == 155 {
        
		    sound_play(sound_get("RZ2"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_FAIR)
    		window = 1
    		window_timer = 8

	}
	
	if move_cooldown[AT_DTILT] == 150 {
		
		spr_dir *= -1
		    sound_play(sound_get("RZ"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_NAIR)
    		window = 1
    		window_timer = 5
	}
	
	if move_cooldown[AT_DTILT] == 145 {
		
       
       x -= 10*spr_dir
		    sound_play(sound_get("RZ2"),false,noone,0.5);
    		spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
    		attack_end();
    		set_attack(AT_UAIR)
    		window = 1
    		window_timer = 5
    		move_cooldown[AT_DTILT] = 10
	}
	

	
}

///rune L desc="Stand On: Each connected attack summon a fire clone behind Alex."
// in hitplayer


///rune M desc="Twin Dream: Repeat succeed attacks."
if has_rune("M") && daigomode = 0 && attack != AT_DSPECIAL && lattacktime <= 3 && free { 

if attacking && move_cooldown[AT_USPECIAL_2] != 0 && !hitpause{
		move_cooldown[AT_USPECIAL_2] += 1
}

if hitpause && get_gameplay_time() % 2 == 0 {
		window_timer += 1
}

if move_cooldown[AT_USPECIAL_2] > 0  && !down_hard_pressed && free{
		if  move_cooldown[AT_USPECIAL_2] %3 == 0 {
   	   	spawn_hit_fx( x - (10 * spr_dir)  , y  , dsshadow)
   	   }

		
		if attacking && state_timer < 30 && !has_hit_player {
			
		hsp = hit_player_obj.hsp /1.2
		vsp = hit_player_obj.vsp /1.2
		
			if window == 1 && window_timer == 1 {
				 sound_play(sound_get("RZ"),false,noone,0.3);
    	     	spawn_hit_fx( x - (10 * spr_dir)  , y - 40  , 305)
			}
			hsp = (hit_player_obj.x + 50*(left_down - right_down) - x) / 10
		vsp = (hit_player_obj.y - y) / 10
		x += floor((hit_player_obj.x + 50*(left_down - right_down) - x) / 10)
		y += floor((hit_player_obj.y - y) / 10)
		hit_player_obj.hsp /= 1.1
		hit_player_obj.vsp /= 1.1
		}
}

}

///rune N desc="One Thousand Fates: Nspecial execute opponent above 222%."

if has_rune("N") && move_cooldown[AT_USPECIAL_GROUND] > 0 {
   sprite_index = sprite_get("empty");

hit_player_obj.vsp = random_func(4,4,true) * -1
hit_player_obj.hsp = 5 - random_func(5,10,true)

	move_cooldown[AT_USPECIAL_GROUND] -= 1
 	
 	
 	if move_cooldown[AT_USPECIAL_GROUND] > 10 {
 		x = hit_player_obj.x
 		y = hit_player_obj.y - 40
 		invincible = true
 		draw_indicator = false
 		spawn_hit_fx(x + 100 - random_func(3,200,true), y + 140 - random_func(4,200,true), dsshadow )
 	
 	if move_cooldown[AT_USPECIAL_GROUND] == 140 or move_cooldown[AT_USPECIAL_GROUND] == 70  {
 			 		sound_play(sound_get("RZ2"))
 	}
 	
 	if move_cooldown[AT_USPECIAL_GROUND] == 60 {
 			 		sound_play(sound_get("RZ"))
 	}
 	
 	
	if move_cooldown[AT_USPECIAL_GROUND] % 20 == 0 {
		
		with (hit_player_obj) {
			take_damage(player,-1,1)
		}
		 		spr_dir *= -1
		spawn_hit_fx(x + 100 - random_func(1,200,true), y + 100 - random_func(2,200,true), 301 )
		sound_play(asset_get("sfx_blow_medium2"))
		 		shake_camera(5,4)
	}
	
    if move_cooldown[AT_USPECIAL_GROUND] < 120 && move_cooldown[AT_USPECIAL_GROUND] % 20 == 10 {
    			with (hit_player_obj) {
			take_damage(player,-1,9)
		}
    	 		spr_dir *= -1
		spawn_hit_fx(x + 100 - random_func(3,200,true), y + 100 - random_func(4,200,true), 305 )
		sound_play(asset_get("sfx_blow_medium1"))
		 		shake_camera(5,10)
	}
	
	if move_cooldown[AT_USPECIAL_GROUND] < 60 && move_cooldown[AT_USPECIAL_GROUND] % 6 == 0 {
				with (hit_player_obj) {
			take_damage(player,-1,15)
		}
		 		spr_dir *= -1
		spawn_hit_fx(x + 100 - random_func(3,200,true), y + 100 - random_func(4,200,true), 304 )
		sound_play(asset_get("sfx_blow_heavy2"))
		 		shake_camera(5,10)
	}
 	}
 	
 	if move_cooldown[AT_USPECIAL_GROUND] == 10 {
		  	    move_cooldown[AT_FSPECIAL_2] = 60 
  	    move_cooldown[AT_NSPECIAL_2] = 120 
		
		with (hit_player_obj) {
			take_damage(player,-1,-999)
			take_damage(player,-1,666)
		}
		galx = x
        galy = y
		sound_play(sound_get("mesatsu"),false,noone,1)
		vsp = -6
		move_cooldown[AT_USPECIAL_2] = 60 
 		sound_play(sound_get("RI"))
 		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 306 )
 		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, lighten )
 		shake_camera(10,10)
 		with hit_player_obj {
 				x -= 9999*spr_dir
 		}
 	}
	
}

///rune O desc="Lorax Omen: Spawn plants when walking, Dspecial make plants explode."

if has_rune("G") {
if  !free && hsp != 0 && get_gameplay_time() % 6 == 0 && !attacking{
	   	create_hitbox(AT_EXTRA_3 , 2 + random_func(1, 11, true) , x - 10 + random_func(16, 20, true) , y - 35);
    	spawn_hit_fx( x - 10 + random_func(16, 10, true) , y - 15 , tauntpar1 )
}
}