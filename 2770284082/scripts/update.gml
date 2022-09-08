//
//sound_stop(cur_sound)


if get_gameplay_time() <= 120 && voiced == 1 {
sound_stop(sound_get("v_dowitdabear"))
	if taunt_down {
		sound_play(asset_get("sfx_gem_collect"));
		voiced = 0
	}
	
}

if voiced == 0 {
    sound_stop(cur_sound)
}

if state == PS_WALK or state == PS_DASH_TURN {
    state = PS_DASH
    sound_play(asset_get("sfx_dash_start"))
}

if state == PS_JUMPSQUAT or state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP{
    spr_dir = side
}
if side == 0 && get_gameplay_time() > 120 {
    side = spr_dir
}

if ((state == PS_AIR_DODGE or state == PS_WAVELAND or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD
or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) or (state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP
or state == PS_PARRY))&&state_timer < 15 {
    
    if wahoo == true && (state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP) {
        sound_play(sound_get("swingm2"),false,noone,0.7,1)	
        wahoo = false 
        hsp = 10*side
    }
    spawn_hit_fx(x - 20 + random_func(1,40,true), y + vsp - 50 + random_func(2,50,true),p1)
    spawn_hit_fx(x - 20 + random_func(3,40,true), y + vsp - 50 + random_func(4,50,true),p2)
    
    if state_timer == 1 {
        user_event(1)
    }
}


if damageminigate > 3 {
    take_damage(player,-1,-1)
    damageminigate -= 3
    spawn_hit_fx(x - 20 + random_func(1,40,true), y + vsp - 50 + random_func(2,50,true),p1)
    spawn_hit_fx(x - 20 + random_func(3,40,true), y + vsp - 50 + random_func(4,50,true),p2)
    spawn_hit_fx(x - 20 + random_func(3,40,true), y + vsp - 50 + random_func(4,50,true),p3)
}

if damageminigate < -6 {
    take_damage(player,-1,1)
    damageminigate += 6
}



with (asset_get("pHitBox")) {

  if(player_id == other.id) && type == 1 {
p1 = hit_fx_create( sprite_get( "spark1" ), 12);
sprite_change_offset("spark1", 5, 5);

p2 = hit_fx_create( sprite_get( "spark2" ), 8);
sprite_change_offset("spark2", 5, 5);

p3 = hit_fx_create( sprite_get( "spark3" ), 20);
sprite_change_offset("spark3", 30, 30);

      spawn_hit_fx(x - 30 + random_func(1,60,true), y + vsp - 40 + random_func(2,60,true),p1)
      spawn_hit_fx(x - 30 + random_func(3,60,true), y + vsp - 40 + random_func(4,60,true),p2)
      if hitbox_timer % 3 == 0 {
        //spawn_hit_fx(x - 20 + random_func(3,40,true), y + vsp - 20 + random_func(4,40,true),p3)  
      }
  }
}

/*
if move_cooldown[AT_NSPECIAL] < 43 && move_cooldown[AT_NSPECIAL] % 20 == 1 {
	sound_play(sound_get("hatoff1"),false, noone, .1, 1.4);
}

if move_cooldown[AT_NSPECIAL] == 1  {
	sound_play(sound_get("hatoff1"),false, noone, .1, 1.2);
}


if (move_cooldown[AT_NSPECIAL] < 40 && move_cooldown[AT_NSPECIAL] % 20 > 10) or (move_cooldown[AT_NSPECIAL] > 0 && move_cooldown[AT_NSPECIAL] < 20) {
	spawn_hit_fx(x - 30 + random_func(1,60,true), y + vsp - 80 + random_func(2,60,true),p1)
    spawn_hit_fx(x - 30 + random_func(3,60,true), y + vsp - 80 + random_func(4,60,true),p2)
}
*/

with (asset_get("oPlayer")) {
	
	//if hit_player_obj == other && state_cat == SC_HITSTUN && !hitpause {
	//	with other {
	//		spawn_hit_fx( other.x - (20) + random_func(3, 40, true) - other.hsp*3, other.y - 50 + random_func(4, 40, true) - other.vsp*3, p2 )
	//		spawn_hit_fx( other.x - (20) + random_func(4, 40, true) - other.hsp*2, other.y - 50 + random_func(5, 40, true) - other.vsp*2, p3 )
	//	}
	//}
  if "hatprotection" in self {
  	 if hatstate == other.player*other.player*3 && hatprotection > 0{
  	 	hatprotection --
  	 	if hatprotection == 1 {
  	 	hatstate = 0
  	 	fx = spawn_hit_fx(x,y-char_height-60,302)
  	 	fx.pause = 2
  	 	fx.depth = depth + 4
  	 	sound_play(asset_get("sfx_buzzsaw_hit"),false, noone, 1, 1.2);
  	   }
  	 } 
  	 
  }	else {
  	hatprotection = 0 
  }
  
  if "hatstate" in self {
  	 if hatstate = 0 or hatstate == other.player*other.player or hatstate = 2*other.player*other.player {
  		hatprotection = 0 
  	}
  	
    if hatprotection == 0 {
     if state == PS_DEAD or state == PS_RESPAWN {
  			hatstate = 0
  	}
  	
  	if hatstate == other.player*other.player  {	
  	}
  	
  	if hatstate = 2*other.player*other.player {
  		can_tech = false
  		with other {
  			spawn_hit_fx( other.x - (20) + random_func(5, 40, true) - other.hsp*5, other.y - 50 + random_func(6, 40, true) - other.vsp*5, p1 )
			spawn_hit_fx( other.x - (20) + random_func(8, 40, true) - other.hsp*4, other.y - 50 + random_func(7, 40, true) - other.vsp*4, p2 )
			spawn_hit_fx( other.x - (20) + random_func(4, 40, true) - other.hsp*2, other.y - 50 + random_func(5, 40, true) - other.vsp*2, p3 )
  		}
  		
  		
		
  		if !hitpause && visible && (!free or state_cat != SC_HITSTUN) {
  			hatprotection = 300
  			sound_play(asset_get("sfx_ori_energyhit_heavy"),false, noone, .8, 1.2);
  			invincible = false 
  			hitpause = false 
  			invince_time = 0
  			set_attack(PS_IDLE)
  			hatstate = other.player*other.player*3
  			with other {
  				move_cooldown[AT_EXTRA_1] = 30
  			    sound_play(sound_get("hatoff1"),false, noone, .5, 0.8);
  			    h3x = spawn_hit_fx(floor(hit_player_obj.x), floor(hit_player_obj.y - hit_player_obj.char_height-10), h3)
                h3x.depth = -6
  				create_hitbox(AT_DSPECIAL,11,other.x,other.y - 60)
  				create_hitbox(AT_NSPECIAL,3,floor(hit_player_obj.x), floor(hit_player_obj.y - hit_player_obj.char_height-10))
  			}
  			
  		}
  		
  		
  	}
  	
    }	
  }	
	
}

if move_cooldown[AT_EXTRA_1] > 0 {
	with (asset_get("pHitBox")) { 
		  if(player_id == other.id) && type == 1 {
		  	if effect == 0 {
		  		effect = 12 
		  		image_xscale += 0.15
		  		image_yscale += 0.15
		  		no_other_hit = 2
		  	}
		  }
	}
	
}