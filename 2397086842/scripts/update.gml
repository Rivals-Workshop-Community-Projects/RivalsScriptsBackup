///

if get_gameplay_time() < 92 {
	set_attack(AT_EXTRA_1)
	window = 1
	window_timer = 0
	draw_indicator = false
	if get_gameplay_time() == 1 { 
	sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1)
	}
		
}

if get_gameplay_time() == 92 {
	set_attack(AT_DATTACK)
	window = 2
	window_timer = 2
	hsp = 5*spr_dir
	sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1)
	sound_play(asset_get("sfx_spin"),false,noone,1)
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true 
} else {
	 attacking = false
}





if sagemode < 0 {
	spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - 20 - random_func(4, 80, true) , esp1 )
}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
    
if sagemode != 0 {
         sagefx1 += floor(((x-30*spr_dir)-sagefx1)/(4 + random_func(1,8,true)))
         sagefy1 += floor((y-26-sagefy1)/(4 + random_func(1,8,true)))
    if sagemode >= 2 or sagemode <= -2 {
         sagefx2 += floor(((x-30*spr_dir)-sagefx2)/(4 + random_func(2,8,true)))
         sagefy2 += floor((y-26-sagefy2)/(4 + random_func(2,8,true)))
    if sagemode >= 3 or sagemode <= -3 {
         sagefx3 += floor(((x-30*spr_dir)-sagefx3)/(4 + random_func(3,8,true)))
         sagefy3 += floor((y-26-sagefy3)/(4 + random_func(3,8,true)))
    if sagemode >= 4 or sagemode <= -4 {
         sagefx4 += floor(((x-30*spr_dir)-sagefx4)/(4 + random_func(4,8,true)))
         sagefy4 += floor((y-26-sagefy4)/(4 + random_func(4,8,true)))
    if sagemode >= 5 or sagemode <= -5 {
         sagefx5 += floor(((x-30*spr_dir)-sagefx5)/(4 + random_func(5,8,true)))
         sagefy5 += floor((y-26-sagefy5)/(4 + random_func(5,8,true)))
    }

}
}
}
}

}


if state == PS_AIR_DODGE {
	if state_timer < 12 {
		if state_timer > 1 {
		hsp = 7*spr_dir
		}
	if state_timer == 1 {	
		vsp/=2
	if left_down && !right_down {
		spr_dir = -1
	} 
	
	if !left_down && right_down {
		spr_dir = 1
	}
	}
		airvsp = vsp
		airhsp = hsp
	}
	
	
	if state_timer > 12 {
		vsp = airvsp
		hsp = airhsp
		airvsp += 0.4
		airhsp /= 1.01
		airvsp /= 1.01
	}
	
		if state_timer == 20 {
			state_timer = 99
			window_timer = 99
			set_state (PS_IDLE_AIR)
		}
}


if state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD {
	y -= 10
	set_state (PS_AIR_DODGE)
	state_time = 0
}

if instance_number(oPlayer) == 2 {
if move_cooldown[AT_NSPECIAL_2] == 0 && hitstop{
with oPlayer if (activated_kill_effect) {
  if hit_player_obj == other {
  	
  	
  	with other {
  		
  	if attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG {
  	killwho = hit_player_obj
  	if attack == AT_FSTRONG {
  		killattack = 1
  	}
  	if attack == AT_USTRONG {
  		killattack = 2
  	}
  	if attack == AT_DSTRONG {
  		killattack = 3
  	}
  	}
  		spawn_hit_fx(x,y,lighten)
  		farx = floor((x - hit_player_obj.x)/1.5)
  		fary = floor((y - hit_player_obj.y)/1.5)
  		move_cooldown[AT_NSPECIAL_2] = 130
  		  	sound_play(sound_get("bat2"))
  			sound_play(sound_get("finish"),false,noone,2)
  	}
  }
}
}

if killwho != 0 && move_cooldown[AT_NSPECIAL_2] < 80 && !hitpause {
	if killwho.state_cat != SC_HITSTUN {
		
		if killwho.visible = false {
			sound_play(sound_get("clap"),false,noone,1)	
			
			if get_gameplay_time() % 4 == 0 {
					sound_play(sound_get("DF"),false,noone,1)	
			}
			if get_gameplay_time() % 4 == 1 {
					sound_play(sound_get("DT"),false,noone,1.4)	
			}
			if get_gameplay_time() % 4 == 2 {
					sound_play(sound_get("KO"),false,noone,1.4)	
			}
			if get_gameplay_time() % 4 == 3 {
					sound_play(sound_get("RT"),false,noone,1)	
			}
		}
		killattack = -1
	}
	
	if killtimer == 1 {
		spawn_hit_fx (killwho.x,killwho.y - 30, 304)
		       sound_play(sound_get("b1"),false,noone,1)
               sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,1.2)
               sound_play(asset_get("sfx_absa_whip3"),false,noone,1.2)
	}
	killtimer += 1
	killwho.state_timer -= 1
	killwho.fall_through = true
	
	    if killtimer % 2 == 0 {
    	spawn_hit_fx(killwho.x - 40 + random_func(1,80,true),killwho.y - 70 + random_func(2,80,true), bfx2)
    	}
    	
    	if killtimer % 2 == 1 {
    	spawn_hit_fx(killwho.x - 40 + random_func(1,80,true),killwho.y - 70 + random_func(2,80,true), bfx3)
    	}
    	spawn_hit_fx(killwho.x,killwho.y - 30 ,bfx1)
    	
    	
	if killattack == 1 {
		killwho.vsp = -4
		killwho.hsp = -8*killwho.spr_dir

		if killtimer % 12 < 5 {
			killwho.y -= 26
		} 
		if killtimer % 12 >= 5{
			killwho.y += 22
		}
	
	}
	
	
	if killattack == 2{
		
		with killwho {
		if other.killtimer <= 2{
			hsp = -20*spr_dir
			vsp = -26
		} 
		
		if other.killtimer < 20 {
			vsp += 0.6
			hsp += 2*spr_dir
		}
		
				
		if other.killtimer >= 20 && other.killtimer < 38 {
			vsp += 1
			hsp -= 1*spr_dir
		}


		if other.killtimer >= 38  {
			vsp -= 1.2
			hsp -= 2*spr_dir
		}
		}
	}
	
	 if killattack == 3{
	 	
		with killwho {
		if  other.killtimer <= 2{
			if x < other.x {
						spr_dir = -1
			} else {
				spr_dir = 1
			}
			y = other.y - 10
			hsp = 20*spr_dir
			vsp = -8
		} 
		
		
		if  other.killtimer== 10{

			with other{
			spawn_hit_fx(killwho.x,killwho.y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			}
			hsp = -20*spr_dir
			vsp = -2
		} 
		
    	if  other.killtimer == 20{
			with other{
			spawn_hit_fx(killwho.x,killwho.y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			}
	    	hsp = 20*spr_dir
    		vsp = -4
    	}
    	
    	if  other.killtimer== 30{
			with other{
			spawn_hit_fx(killwho.x,killwho.y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			}
			hsp = -30*spr_dir
			vsp = -2
		} 
		
    	if  other.killtimer == 40{
			with other{
			spawn_hit_fx(killwho.x,killwho.y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			}
	    	hsp = 40*spr_dir
    		vsp = -4
    	}
    	
    	if  other.killtimer== 50{
			with other{
			spawn_hit_fx(killwho.x,killwho.y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			}
			hsp = -40*spr_dir
			vsp = -2
		} 
		
    	if  other.killtimer == 56{
    		shake_camera(4,10)
			with other{
			spawn_hit_fx(killwho.x,killwho.y,304)
			sound_play(asset_get("sfx_absa_singlezap2"))
			}
	    	hsp = 0
    		vsp = -30
    	}

    } 
		
		
	}
	
	
}


if killattack == -1 {
	killwho = 0
    killattack = 0
    killtimer = 0
}

if move_cooldown[AT_NSPECIAL_2] > 80 && !hitstop {
    
    if hit_player_obj.x > x {
    	farx -= 1
    } else {
    	farx += 1
    }
	hitstop = 1
	hit_player_obj.hitstop = 1
}

if !hitstop {
 move_cooldown[AT_NSPECIAL_2] = 0	
}
}

if get_player_color(player) == 12 {
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