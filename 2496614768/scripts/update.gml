/// intro 

if canceltime > 1 {
	
	if state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND {
		
	if !free {
		set_state(PS_PRATLAND)
		state_timer = 0
	} else {
		set_state(PS_PRATFALL)
		state_timer = 0
	}
	
	canceltime = 0
	
	}
	
}


if get_gameplay_time() == 1{
	set_attack(AT_EXTRA_1)
	window = 1
	window_timer = 0
}

if !instance_exists(hit_player_obj){
hit_player_obj = self
}

if visible && free && !attacking && can_attack && taunt_pressed {
	    		set_attack(AT_TAUNT)
	    		window = 2
	    		window_timer = 0
	    		vsp = -6
	    		sound_play(sound_get("shing"),false,noone,0.7,1.2 + random_func(1,3,true)/10) 
	    		sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1,1.2 + random_func(1,3,true)/10) 
}


if shock >= 1 && walk_speed == 3{
	
walk_speed = 4;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = .5;
dash_stop_time = 10;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.8;

leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; 
wave_land_adj = 1;
}

if shock < 1 && walk_speed != 3 {
	
walk_speed = 3;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = .5;
dash_stop_time = 10;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.8;
	
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; 
wave_land_adj = 0.8;

}


if shock < 0 shock = 0 ;
if shock > 10 shock = 10 ;

if shock < 5 move_cooldown[AT_DSPECIAL] = 2 ;

if shocktimer > 0 && !hitpause && hit_player_obj.state_cat != SC_HITSTUN{
	inactive -= 1
	shocktimer -= 1
	
	if inactive < 30 {
		shocktimer -= 1
	}
	
	if inactive < -30 {
		shocktimer -= 2
	}
	
	if inactive < -90 {
		shocktimer -= 4
	}
}

if shocktimer <= 0 && shock > 0{
	 shocktimer += 300
	 shock -= 1
	 sound_play(asset_get("sfx_absa_singlezap1"),false,noone,0.7,0.6 + random_func(1,3,true)/10) 
	  	    ais2 = sprite_index
            aii2 = image_index 
            aix2 = x 
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30
}

if shock == 10 && shocked = 1{
shocked = 2
shake_camera(6,10)
spawn_hit_fx(x,y - 10,sw2)
spawn_hit_fx(x,y,sw)
	sound_play(sound_get("shockready"),false,noone,0.6,1 + random_func(1,3,true)/10) 
	sound_play(sound_get("downbhit"),false,noone,0.6,1 + random_func(1,3,true)/10) 
}

if shock >= 5 && shocked = 0{
shocked = 1
shake_camera(6,10)
spawn_hit_fx(x,y - 10,sw2)
sound_play(sound_get("shockready"),false,noone,0.4,0.7 + random_func(1,3,true)/10)
            if bhood {
             sound_play(sound_get("wiss"),false,noone,1,1 + random_func(1,3,true)/10)    
            }
            sound_play(sound_get("wissn"),false,noone,1,0.9 + random_func(1,3,true)/10)   
            sound_play(sound_get("downbhit"),false,noone,0.6,1.2 + random_func(1,3,true)/10) 
           sound_play(sound_get("shing"),false,noone,0.6,1.2 + random_func(1,3,true)/10) 
	
}


if shock < 5 {
	shocked = 0
}

if shock < 10 && shock >= 5 {
	shocked = 1
}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}



if timebreak > 0 {
	
	
	set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 0);
	set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
	set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
	
	if !free && hsp != 0 && get_gameplay_time() % 12 == 0 {
		create_hitbox(AT_EXTRA_1,5,x,y - 22)
	}
	
	if state_timer == 1 && (state == PS_JUMPSQUAT or state == PS_WAVELAND or state == PS_LAND or state == PS_LANDING_LAG or state == PS_PRATLAND)  {
		create_hitbox(AT_EXTRA_1,5,x,y - 22)
		if state == PS_JUMPSQUAT {
		create_hitbox(AT_EXTRA_1,6,x,y - 22)
		}
	}
	
	
	if state_timer == 1 && (state == PS_AIR_DODGE or state == PS_DOUBLE_JUMP)  {
		create_hitbox(AT_EXTRA_1,7,x,y - 32)
	}
	
 timesound = 0.5	
 if !hitpause {
 timebreak -= 1
 }
 suppress_stage_music( 0.1, 60 );	
 
 if aid1 == 14 {
 	        ais2 = sprite_index
            aii2 = image_index 
            aix2 = x 
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30
 }
 
  if aid1 == 0 {
 	        ais1 = sprite_index
            aii1 = image_index 
            aix1 = x 
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
 }
 
    with oPlayer{
	      if id != other.id {
	      	if !hitpause {
	      	 old_hsp = hsp
	      	 old_vsp = vsp
	      	 hitpause = true
	      	 hitstop = 2
	      	} else {
	      		hitstop += 1
	      	}
	      	
	      	
	      	if state_cat == SC_HITSTUN  {
	      		
	      	   	if other.timebreak > (other.timebreakmax - 30) {
	      	    	x -= floor((other.timebreak - (other.timebreakmax - 30)))/5*spr_dir
	      	    	y -= floor((other.timebreak - (other.timebreakmax - 30)))/20
	      		}
	      		
	      		x -= (1 - (get_gameplay_time()%2)*2)*2
	      	}
	      	
	      }
	
    }
} else {
	timesound = 0
	
		
	set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	
}

if timebreak == 1 {
	spawn_hit_fx(x,y,lighten)
	shake_camera(6,6)
		sound_play(sound_get("sideb"),false,noone,0.7,1.3 + random_func(1,3,true)/20) 
	    with oPlayer{
	      if id != other.id {
	      	if hitpause {
	      		hitstop = 2
	      	}
	      }
  	
        }
}

if aid1 > 0 {
	aid1 -= 2 
}

if aid2 > 0 {
	aid2 -= 2
}

if !hitpause {

}



if state_cat == SC_HITSTUN or !free or state == PS_WALL_JUMP{
    if move_cooldown[AT_NSPECIAL] > 100 && state != PS_WALL_JUMP{
    	move_cooldown[AT_NSPECIAL] = 0
    }
    move_cooldown[AT_FSPECIAL] = 0
    if !free or state_cat == SC_HITSTUN {
    	    grabwall = -1
    }
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
	uspechit = 0
}


if !hitpause {


	
if state == PS_DASH_START {
	if state_timer == 1 {
		sound_play(asset_get("sfx_swipe_medium1"),false,noone,0.4,1.2 + random_func(1,3,true)/10 - timesound)
		sound_play(asset_get("sfx_spin"),false,noone,0.3,1.4 - timesound)
		sound_play(asset_get("sfx_land_light"),false,noone,0.8,1.3 - timesound)
	}
	
	if state_timer == 9 {
		sound_play(asset_get("sfx_land_light"),false,noone,0.8,1.5 - timesound)
	}
}

if state == PS_DASH {
	if state_timer % 24 == 0 {
		sound_play(asset_get("sfx_land_light"),false,noone,0.8,1.3 - timesound)
	}
	
	if state_timer % 24 == 12  {
		sound_play(asset_get("sfx_land_light"),false,noone,0.8,1.5 - timesound)
	}
}

if state == PS_DASH_STOP and state_timer == 1{
	sound_play(asset_get("sfx_swipe_medium1"),false,noone,0.4,1.2 + random_func(1,3,true)/10 - timesound)
}

if state == PS_DASH_TURN and state_timer == 1{
	sound_play(asset_get("sfx_swipe_medium2"),false,noone,0.4,1.2 + random_func(1,3,true)/10 - timesound)
}

if state == PS_FIRST_JUMP && state_timer == 1 {
	sound_play(asset_get("sfx_swipe_weak1"),false,noone,0.6,0.8 + random_func(1,3,true)/10 - timesound)
}


if state == PS_DOUBLE_JUMP && state_timer == 1 {
	sound_play(asset_get("sfx_swipe_weak2"),false,noone,0.6,0.8 + random_func(1,3,true)/10 - timesound)
	sound_play(asset_get("sfx_spin"),false,noone,0.3,0.8 - timesound)	
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD)  && state_timer == 1 {
	
	        ais2 = sprite_get("waveland")
            aii2 = 1
            aix2 = x
            aiy2 = y
            aisd2 = spr_dir*-1
            aid2 = 30
    if bhood {        
      sound_play(sound_get("wiss"),false,noone,0.6,1 + random_func(1,3,true)/10 - timesound)        
    }
    sound_play(sound_get("wissn"),false,noone,0.6,0.6 + random_func(1,3,true)/10 - timesound)   
  	sound_play(asset_get("sfx_swipe_weak1"),false,noone,0.4,1.5 + random_func(1,3,true)/10 - timesound)
	sound_play(asset_get("sfx_spin"),false,noone,0.4,1.6 - timesound)	
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD)  && state_timer == 10 {
	
	        ais1 = sprite_get("crouch")
            aii1 = 1
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir*-1
            aid1 = 30
            
	sound_play(asset_get("sfx_swipe_weak1"),false,noone,0.3,1.5 + random_func(1,3,true)/10 - timesound)
	sound_play(asset_get("sfx_spin"),false,noone,0.3,1.6 - timesound)	
}


if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD)  && state_timer == 15 {
		sound_play(asset_get("sfx_swipe_weak1"),false,noone,0.6,0.6 + random_func(1,3,true)/10 - timesound)
		spawn_base_dust(x, y, "dash_start", spr_dir*-1)
		spawn_base_dust(x - 10*spr_dir, y, "dash", spr_dir*-1)
}

if (state == PS_AIR_DODGE)  && state_timer == 1 {
	           if bhood {
	            sound_play(sound_get("wiss"),false,noone,0.6,0.9 + random_func(1,3,true)/10 - timesound)     
            	}
            	sound_play(sound_get("wissn"),false,noone,0.6,0.7 + random_func(1,3,true)/10 - timesound)   
            ais1 = sprite_get("dash2")
            aii1 = 1
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
	sound_play(asset_get("sfx_spin"),false,noone,0.6,1.6 - timesound)	
}


if (state == PS_AIR_DODGE)  && state_timer == 8 {
	            
            ais2 = sprite_get("jump")
            aii2 = 10
            aix2 = x
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30

}

if (state == PS_WAVELAND)  && state_timer == 1 {
	if bhood {
	   sound_play(sound_get("wiss"),false,noone,0.4,0.8 + random_func(1,3,true)/10 - timesound)     
	}
	sound_play(sound_get("wissn"),false,noone,0.6,0.9 + random_func(1,3,true)/10 - timesound)   
	sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,0.4,1.2 + random_func(1,3,true)/10 - timesound)
		sound_play(asset_get("sfx_swipe_weak1"),false,noone,0.4,0.7 + random_func(1,3,true)/10 - timesound)
}

if (state == PS_PARRY)  && state_timer == 1 {
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,0.7,1.4 - timesound)
}

}

if "superTrue" in self {
if superTrue == 1 {
	
	superTrue = 0
    hit_player_obj.canUseCounterTimer = 400
	
	move_cooldown[AT_DSPECIAL] = 0
	
	sound_play(asset_get("sfx_burnconsume"),false,noone,1.2,0.9)
	spawn_hit_fx(x,y - 40, 304)
	
	move_cooldown[AT_FTILT] = 60
	shock = 15
	
	set_attack(AT_DSPECIAL)
    window = 1
    window_timer = 0
    
   spawn_hit_fx(x,y,lighten)
   shake_camera(5,5)
   
  		x = hit_player_obj.x - 30*hit_player_obj.spr_dir
		y = hit_player_obj.y    
}

}

if move_cooldown[AT_FTILT] > 0 {
	shock = 15
	
}


#define spawn_base_dust(x, y, name, dir)
var dlen;
var dfx;
var dfg;
var dust_color = 0;

switch (name) {
    default:
    case "dash_start":
        dlen = 21;
        dfx = 3;
        dfg = 2626;
    break;
    case "dash":
        dlen = 16;
        dfx = 4;
        dfg = 2656;
    break;
    case "jump":
        dlen = 12;
        dfx = 11;
        dfg = 2646;
    break;
    case "doublejump":
    case "djump":
        dlen = 21;
        dfx = 2;
        dfg = 2624;
    break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg;
newdust.dust_color = dust_color;
newdust.spr_dir = dir;