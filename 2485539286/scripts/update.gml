////

if !instance_exists(hit_player_obj){

hit_player_obj = self

}


if state == PS_PRATFALL {
    
    if hhh > 0 {	 
    } else {
      vsp -= 0.3
    }

}


if can_attack && special_pressed && !left_down && !right_down && !up_down && !down_down && 	move_cooldown [AT_NSPECIAL] > 0{
	 sound_play(asset_get("sfx_ell_overheat"),false,noone,.7)
	 sound_play(asset_get("sfx_ell_steam_release"),false,noone,.7)
	 set_state(PS_PRATFALL)
	 prat_land_time = 12;
	 move_cooldown [AT_EXTRA_3] = 0
	 
if hhh > 0 {	 
	 vsp = -9
} else {
	vsp = -9
}
	       	spawn_base_dust(x, y, "djump", spr_dir)
	       	spawn_base_dust(x, y, "land", spr_dir)
	 shake_camera(2,2)
}
init_shader();

if get_gameplay_time() <= 120 {

	if get_gameplay_time() == 2 {
	   sound_stop(asset_get("sfx_ell_overheat"))
       sound_stop(asset_get("sfx_ell_eject"))
	   sound_play(asset_get("sfx_ell_overheat"))
       sound_play(asset_get("sfx_ell_eject"))
       
	     create_hitbox(AT_TAUNT,5,x,y - 50)
	}
	
	if get_gameplay_time() == 95 {
		shake_camera(4,4)
	    spawn_hit_fx(x,y - 266,fxblow2)
	     sound_play(asset_get("sfx_ell_eject"))
	    sound_stop(asset_get("sfx_ell_steam_release"))
		sound_play(asset_get("sfx_ell_steam_release"))
	}
	
    if get_gameplay_time() < 30 && get_gameplay_time()% 8 == 0 {
	     spawn_base_dust(x - get_gameplay_time()*spr_dir*2 , y, "land" , spr_dir)
	}
	
	if get_gameplay_time() < 60 && get_gameplay_time()% 6 == 0 {
	     spawn_base_dust(x - get_gameplay_time()*spr_dir , y, "dash_start", spr_dir*-1)
	}	
	
}

if state == PS_RESPAWN  && visible{
	spawn_hit_fx(x + 60 - random_func(1,120,true), y - 10 + random_func(4,40,true),hpar2)
	spawn_hit_fx(x + 60 - random_func(2,120,true), y - 10 + random_func(5,40,true),hpar3)
	spawn_hit_fx(x + 60 - random_func(3,120,true), y - 10 + random_func(6,40,true),hpar1)
}

if !free{
	visible = true
}

 	if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
 		attacking = true 
 		
 	} else {
 			sound_stop(cur_sound)
 			sound_stop(cur_sound2)
 		attacking = false
 		nfloat = 0
 		nctimer = 0
 	}


if move_cooldown[AT_USTRONG] > 0 && get_gameplay_time() % 5== 0 {
	
	create_hitbox(AT_USTRONG,2,floor(thundervictim.x + 10 - random_func(1,20,true)), floor(thundervictim.y))
	
		   
	sound_play(asset_get("sfx_absa_new_whip"),false,noone,0.8);
	thundervictim.spr_dir *= -1
	             var hfx3 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx3.draw_angle = random_func(9,360,true)
}

if hhh > 0 && dash_speed == 7 {
	initial_dash_speed = 6;
	dash_speed = 6
	leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 4.5;
	air_max_speed = 4;
	jump_change = 2.5;
	air_accel = .25;
    jump_speed = 9;
    short_hop_speed = 6;
    djump_speed = 9;
    gravity_speed = .4;
    max_fall = 6; 
    fast_fall = 12;
    knockback_adj = 1.05;
}

if hhh == 0 && dash_speed != 7 {
	initial_dash_speed = 7;
	dash_speed = 7
	leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 6;
	air_max_speed = 5.5;
	jump_change = 4;
	air_accel = .3;
    jump_speed = 13;
    short_hop_speed = 9;
    djump_speed = 13;
    gravity_speed = .7;
    max_fall = 8; 
    fast_fall = 16;
    knockback_adj = 1.1;
}




if state == PS_WALL_TECH {
	move_cooldown [AT_NSPECIAL] = 0
}

if !free {
	move_cooldown [AT_NSPECIAL] = 0
}

if state == PS_WALL_JUMP { 
	
  	
}

if move_cooldown[AT_EXTRA_1] > 0 {
	hhh = 0
	
	
	if move_cooldown[AT_EXTRA_1] == 30 {
	sound_play(asset_get("sfx_absa_concentrate"),false,noone,0.8);
	
    }



    
    if move_cooldown[AT_EXTRA_1] == 2 {
    	sound_play(asset_get("sfx_absa_singlezap2"),false,noone,0.8);
    	
    }


	if move_cooldown[AT_EXTRA_1] < 290 {
		
	move_cooldown [AT_FSPECIAL] = 2
	move_cooldown [AT_DSPECIAL] = 2
	move_cooldown [AT_USPECIAL] = 2
	
	if move_cooldown[AT_EXTRA_1] > 270 {
	move_cooldown[AT_EXTRA_1] = 280
	}
	
	}
} 

if move_cooldown[AT_EXTRA_1] == 0 && hhh = 0 && (!attacking or (attacking && (attack == AT_NSPECIAL or attack == AT_TAUNT))){
	hhh = 3
}



if state == PS_LANDING_LAG && move_cooldown[AT_USPECIAL_GROUND] > 20 {
	move_cooldown[AT_USPECIAL_GROUND] = 20
}
if get_gameplay_time() % 2 == 0 && visible{
spawn_hit_fx( x + 20 - random_func(5, 40, true) - (6*spr_dir), y - 10 -  random_func(4, 60, true) , hpar1 )
}

if move_cooldown[AT_EXTRA_1] < 290 && (!attacking or (attacking && attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_FSPECIAL)) {
famix += floor(((x-30*spr_dir)-famix)/6)
famiy += floor((y-56-famiy)/6)
}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}



 	
 	
if state == PS_DASH_START{
	
if get_gameplay_time() % 2 == 0 {
spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar2)
}
if get_gameplay_time() % 2 == 1 {
spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar3)
}

if state_timer == 1 {
    	sound_play(asset_get("sfx_bird_sidespecial_start"),false,0,0.3,.85);;
}

}


if state == PS_DASH or ((state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) && state_timer < 20){
	
	if state_timer == 1 && state == PS_FIRST_JUMP {
    	sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,0.5);
    }

    if state_timer == 1 && state == PS_DOUBLE_JUMP {
    	sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,0.25);
    }
    
if get_gameplay_time() % 4 == 1 {
spawn_hit_fx( x + hsp + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar3)
}	
if get_gameplay_time() % 3 == 0 {
spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar2)
}
}


if state == PS_DASH_STOP or state == PS_DASH_TURN {
    
    if get_gameplay_time() % 2 == 0 {
spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar2)
}
if get_gameplay_time() % 2 == 1 {
spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar3)
}

    if state == PS_DASH_TURN && state_timer = 7 {
        sound_play(asset_get("sfx_bird_sidespecial_start"),false,0,0.3,.85);
    }
    
    if (state == PS_DASH_TURN or state == PS_DASH_STOP) && state_timer = 1 && move_cooldown [AT_EXTRA_3] = 0{
    sound_play(asset_get("sfx_swipe_heavy2"),false,noone,0.3,.85);
    move_cooldown [AT_EXTRA_3] = 20
    }
    
    hsp /= 1.05
    if (attack_pressed or up_stick_down or down_stick_down or left_stick_down or up_stick_down) {
        set_state(PS_IDLE)
    }
}

if state == PS_PARRY {


if state_timer < 14 && window_timer > 3 {
window_timer -= 0.5	
} 

	
}


if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer < 16 {
spawn_hit_fx( x + 20 - random_func(3, 40, true) , y - 10 -  random_func(4, 60, true) , hpar2)


spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar3)
}

if state_timer == 1 {
    	sound_play(asset_get("sfx_ori_bash_use"));
    	sound_play(asset_get("sfx_absa_dashdown"),false,noone,0.6)
}
	 
	 
	 if state_timer < 9{
	     hsp = -0.5 * spr_dir
	 }
	 
	 if state_timer >= 9 and state_timer < 12 {
	     hsp = -40 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 12 {
	     draw_indicator = false
	 }
	  
	 if state_timer > 12 {
	     hsp = 0
	     draw_indicator = true
	 }
	 
}


if state == PS_AIR_DODGE {


   
if state_timer < 10 {	
	spawn_hit_fx( x + 20 - random_func(3, 40, true) , y - 10 -  random_func(4, 60, true) , hpar2)


spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar3)
}


	if state_timer == 5 {
		sound_play(asset_get("sfx_absa_singlezap1"),false,noone,0.6);
		visible = false
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
		
		}else{
			x += (80 * cos(angle));
			y += (80 * sin(angle));
		}
	} else {
		visible = true
	}
	
	
}


if state == PS_WAVELAND {
	
	if state_timer < 4 {	
	spawn_hit_fx( x + 20 - random_func(3, 40, true) , y - 10 -  random_func(4, 60, true) , hpar2)


spawn_hit_fx( x + 20 - random_func(1, 40, true), y - 10 -  random_func(2, 60, true) , hpar3)
}

	spawn_hit_fx( x + 20 - random_func(3, 40, true) , y - 10 -  random_func(4, 60, true) , hpar2)


spawn_hit_fx( x + 20 - random_func(1, 40, true), y - 10 -  random_func(2, 60, true) , hpar3)


	visible = true
	if state_timer == 1 {
	  if left_down && !right_down {
	  	x -= 30
	  }	
	  
	   if !left_down && right_down {
	  	x += 30
	  }	
	  
	}
	
	if state_timer == 6 {
		
	}
	
}






///////////float


if nfloat > 0 && !hitpause && free{
	

if get_gameplay_time() % 5 == 1 {	
	if nfloat > 30 {
	spawn_hit_fx( x + hsp + 4 - random_func(1, 8, true) , y + 8 - random_func(2, 4, true) , gpar1)
} else {
	spawn_hit_fx( x + hsp + 4 - random_func(1, 8, true) , y + 8  - random_func(2, 4, true), gpar2)
}
}

if get_gameplay_time() % 4 == 1 {
spawn_hit_fx( x + hsp + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar3)
}	
if get_gameplay_time() % 3 == 0 {
spawn_hit_fx( x + 20 - random_func(1, 40, true), y - 10 -  random_func(2, 60, true) , hpar2)

}

	nfloat -= 1
	vsp = 0
}

if move_cooldown[AT_EXTRA_2] > 0 {
	move_cooldown[AT_FSPECIAL] = 2
	move_cooldown[AT_USPECIAL] = 2
	move_cooldown[AT_DSPECIAL] = 2
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