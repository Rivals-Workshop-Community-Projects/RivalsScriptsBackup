if (special_down or "ai_target" in self) && get_gameplay_time() < 100 {
	// legacy = true 
	if "ai_target" not in self {
	dmhit = 0
    ohalox = 0
    halox = 0
    ohalo = 0
    halo = 0
	}
}

if get_gameplay_time() < 5 {
	sound_stop(asset_get("sfx_ice_on_player"))
}


if state_cat == SC_HITSTUN && enhanceee == 1  {
 	var halodeact = spawn_hit_fx( x - (16 * spr_dir) , y - 50 , 302 )
    		halodeact.depth = depth + 2
    		halodeact.pause = 4

 enhanceee = -1
 dmhit = 0
 ohalo = 0
 halo = 0
}	

if enhanceee == -1 {
    dmhit = 0
    ohalo = 0
    halo = 0
} else {
	dmhit = 3
    ohalo = 3
    halo = 3
}




if iaido = true {
	clear_button_buffer(PC_JUMP_PRESSED)
	if djumps = 0 {
		djumps = -1
	}
}


if zvoice != 0 && voicecd <= 0 && (state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP or state == PS_PARRY 
or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_FORWARD  or state == PS_TECH_BACKWARD) && state_timer == 1 {
	 sound_stop(zvoice)
     if random_func(2,2,true) == 0 {
          zvoice = sound_play(sound_get("z1"),false,noone,.56,.95 + 0.05 + random_func(1,6,true)/100);
    }
    
    if random_func(2,2,true) == 1 {
         zvoice = sound_play(sound_get("z2"),false,noone,.6,.95 + 0.05 + random_func(1,6,true)/100);
    }
    if state == PS_PARRY  {
     sound_stop(zvoice)	
    	zvoice = sound_play(sound_get("z5"),false,noone,.7,1.1 + 0.05 + random_func(1,6,true)/100);
    	voicecd += 40
    }
}

with oPlayer {
	if state == PS_RESPAWN {
		with other {
			iaispr = 0
            iaiimg = 0
            iaido = 0
            ziaido = 0
            iaicancel = 0
            iaidir = 0
		}
		pendupcd = 0
		pendupdmg = 0
	}
	
	if "pendupdmgid" in self {
		if pendupdmgid == other.id {
			if pendupcd == 0 {
				if pendupdmg > 2 {
			   	pendupdmg -= 2
			   	pendupcd = 4
			   	other.pendmg ++
			   	if other.pendmg >= 2{
			   	   take_damage(player,-1,1)
			   	   other.pendmg = 0
				} 
			   	with other {
			   		hit1 = spawn_hit_fx( other.x + random_func(3, 10, true), other.y - 40 + random_func(1, 10, true), slash )
			   		hit1.depth = other.depth -1
			   		hit1.draw_angle = random_func(2,360,true)
			   		sound_play(sound_get("slice"),false,noone,.5,1 - random_func(1,10,true)/100);

			   		hit2 = spawn_hit_fx( other.x + random_func(3, 10, true), other.y - 40 + random_func(1, 10, true), 305 )
			   		hit2.depth = other.depth + 2
			   		hit2.pause = 2
			   		
			   		chaseblade = create_hitbox(AT_UAIR,4, round(x - 4*spr_dir - random_func(4, 40, true)*spr_dir),  round(y - 45 - random_func(2, 30, true)))
			   		chaseblade.ctarget = other
			        	
			   	}
			   }
			}
			else {
				pendupcd --
			}
		}
	} else {
		pendupcd = 0
		pendupdmg = 0
		pendupdmgid = 0
	}
}

if ohalox != halox {
	huddraw = 40
	if halox == 8 {
		if zvoice != 0 {
			sound_stop(zvoice)
            voicecd = 150 
            zvoice = sound_play(sound_get("finalle"),false,noone,.9,1.15);
		}
   	  sound_play(sound_get("ADfinish"),false,noone,1,0.4);
   	  //sound_stop(sound_get("RI"));
   	  //sound_play(sound_get("RI"),false,noone,1,1);
   	  
   	   spawn_hit_fx( x + (40 * spr_dir) , y - 50 , shit7 )
   		spawn_hit_fx( x - (40 * spr_dir) , y - 50 , shit7 )
   		spawn_hit_fx( x + (120 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x - (120 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x + (160 * spr_dir) , y - 70 , shit8 )
   		spawn_hit_fx( x - (160 * spr_dir) , y - 90 , shit8 )		
   		spawn_hit_fx( x  , y - 30 , shit5 )
   	  fullfx = spawn_hit_fx(x,y - 40, SC)
   	  fullfx.depth = depth + 2 
   }
	ohalox = halox
}

if ohalo != halo or enhanceee == 0{
	if zvoice != 0 && voicecd < 60 && (!attacking or ( attacking && (attack != AT_USPECIAL or  (attack == AT_USPECIAL && has_hit_player)))) and state != PS_RESPAWN and state != PS_DEAD{
        voicecd = 60
        zrandom += random_func(2,2,true) + 1
        sound_stop(zvoice)
        if zrandom % 4 == 0 {
              zvoice = sound_play(sound_get("SP1"),false,noone,.95,.95 + 0.05 + random_func(1,6,true)/100);
        }
        if zrandom % 4 == 1 {
             zvoice = sound_play(sound_get("SP2"),false,noone,.96,.95 + 0.05 + random_func(1,6,true)/100);
        }
        if zrandom % 4 == 2{
            zvoice = sound_play(sound_get("taunt"),false,noone,.96,.95 + 0.05 + random_func(1,6,true)/100);
        }
        if zrandom % 4 == 3{
            zvoice = sound_play(sound_get("tauntU"),false,noone,1,1 + random_func(1,5,true)/100);
        }
    }
	huddraw = 40
	ohalo = halo
	enhanceee = -1
}

if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
	attacking = true 
	iaihsp = hsp
    iaivsp = vsp
} else {
	attacking = false 
	if iaido == true {
		if state == PS_AIR_DODGE {
			has_airdodge = true
			hsp = iaihsp 
			vsp = iaivsp 
		}
		move_cooldown[AT_EXTRA_2] = 0
		set_attack(AT_EXTRA_2)
		window = 1
		window_timer = 1
		iaido = false
	    spr_dir = iaidir
	}
	
	zcountered = 0
    if zvoice > 0 voicecd -= 0.5
    
}

   	if !hitpause { 
   		finisher = 0
        finisherinc = 0
   	}
   	
if !hitpause && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

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


if state == PS_RESPAWN && state_timer == 90 {
	if halox < 8 {
	  halox ++ 
    }
    if zvoice != 0  {  
     voicecd = 60
        zrandom += random_func(2,2,true) + 1
        sound_stop(zvoice)
        if zrandom % 4 == 0 {
              zvoice = sound_play(sound_get("SP1"),false,noone,.95,.95 + 0.05 + random_func(1,6,true)/100);
        }
        if zrandom % 4 == 1 {
             zvoice = sound_play(sound_get("SP2"),false,noone,.96,.95 + 0.05 + random_func(1,6,true)/100);
        }
        if zrandom % 4 == 2{
            zvoice = sound_play(sound_get("taunt"),false,noone,.96,.95 + 0.05 + random_func(1,6,true)/100);
        }
        if zrandom % 4 == 3{
            zvoice = sound_play(sound_get("tauntU"),false,noone,1,1 + random_func(1,5,true)/100);
        }
    }
}

if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 {
zbayo = 0 
// if halox < 8 {
// 	halox ++ 
// }
      if zvoice != 0  {  
        voicecd = 60
        zrandom += random_func(2,2,true) + 1
        sound_stop(zvoice)
        if zrandom % 4 == 0 {
              zvoice = sound_play(sound_get("SP1"),false,noone,.95,.95 + 0.05 + random_func(1,6,true)/100);
        }
        
        if zrandom % 4 == 1 {
             zvoice = sound_play(sound_get("SP2"),false,noone,.96,.95 + 0.05 + random_func(1,6,true)/100);
        }
        
        if zrandom % 4 == 2{
            zvoice = sound_play(sound_get("taunt"),false,noone,.96,.95 + 0.05 + random_func(1,6,true)/100);
        }
        
        if zrandom % 4 == 3{
            zvoice = sound_play(sound_get("tauntU"),false,noone,1,1 + random_func(1,5,true)/100);
        }
      }
 if get_player_color(player) == 7{
     sound_play(sound_get("bruh"));
 }
 
}

if hit_player_obj.state == PS_DEAD {
 if get_player_color(player) == 7{
     sound_play(sound_get("bruh"));
 }
}



if(get_gameplay_time() == 1){
inx = x
iny = y
}


if (!free) {
move_cooldown[AT_USPECIAL] = 0
}

if zbayo == -1 && state_timer % 3 = 0 && !hitstop{
	 create_hitbox(AT_DSPECIAL , 1 , round( x + (-110 * spr_dir)) ,  round( y - 110) ); 
}

if zbayo > 0 {
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 1);
	
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
	

	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 65);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 65);

set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 151);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 171);

set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 205);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 200);

set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0);

	if get_gameplay_time() % 2 == 0 {
	create_hitbox(AT_DSPECIAL , 1 , round(x + ( -80  - random_func(3, 50, true)) * spr_dir)  ,round( y - 125 + random_func(4, 50, true)))
	}
} else {
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 8);
	
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 55);
    
    set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 55);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);

    set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
    set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);

}



if (state == PS_WALL_JUMP) {move_cooldown[AT_USPECIAL] = 0}





if state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR {set_attack_value(AT_USPECIAL, AG_CATEGORY, 2)}




if get_gameplay_time() <= 120 && zvoice == 0 {
	if taunt_down {
		sound_play(asset_get("sfx_gem_collect"),false,noone,1,1.2);
		if get_player_color(player) != 3 {
		 zvoice = sound_play(sound_get("intro"));
		} else {
		 zvoice = sound_play(sound_get("introG7"));	
		}
	}
	
}


if get_gameplay_time() == 300 {
        if zvoice == 0 {
            set_victory_theme(sound_get("MONG"));
        } else {
			set_victory_theme(sound_get("VictoryTheme1"));
		}

}


if (state_cat == SC_HITSTUN) {
		iaicancel = false 
		iaido = false 
    with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
}

if (state == PS_AIR_DODGE  && state_timer == 1 ) {
	spawn_hit_fx( x - (10 * spr_dir) , y - 50 , shit1 )
}

if (state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) && (state_timer > 5 && state_timer < 15 && state_timer % 3 = 0) {
	create_hitbox(AT_DSPECIAL , 1 ,  round(x + (-110 * spr_dir)) ,  round(y - 105) ); 
}


if (state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD)  && (state_timer == 7 or state_timer == 13) {
	create_hitbox(AT_DSPECIAL , 1 ,  round(x + (-110 * spr_dir)) ,  round(y - 105) ); 
}


if (state == PS_AIR_DODGE  && state_timer == 2) {
	create_hitbox(AT_DSPECIAL , 1 ,  round(x + (-110 * spr_dir)) ,  round(y - 110) ); 
}

if get_gameplay_time() <= 120 {
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 31) {
    draw_indicator = false;
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
}


if free or halox < 8{
	move_cooldown[AT_DSPECIAL] = 5
}

if get_player_color(player) == 3 {
    	outline_color = [30, 0, 0]
        init_shader();

      if ((get_gameplay_time() % 73 = random_func(5, 30, true)) && state == PS_IDLE) { 
        set_attack (AT_TAUNT);
      	window = 16;
      	window_timer = 95;
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

if get_player_color(player) == 6{
	outline_color = [80, 30, 108]
        init_shader();
}

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

if slashdraw > 0 {
	slashdraw -= 1
}

if instance_number(oPlayer) == 2 {
if finisher > 0 {
	galx += shsp/90*finisher
    galy += svsp/150*finisher
}

if finishercd == 0 {
with oPlayer if (activated_kill_effect) {
  if hit_player_obj == other {
  	with other {
  		galx = x
        galy = y
        if svsp < 3 && svsp > 0 {
        svsp = 3
        }
      
        if svsp > -3 && svsp < 0 {
        svsp = -3
        }
        
        if shsp < 6 && shsp > 0 {
        shsp = 6
        }
      
        if shsp > -6 && shsp < 0 {
        shsp = -6
        }
        
  	    finisher = 60 
  	    finishercd = 120 
  	    finisherinc = 0
  	}
  }
}
}


if finisher = 60 {
	if hitpause  {
		hitstop = 35
		hit_player_obj.hitstop = 35
	}
	spawn_hit_fx(x,y,lighten)
    sound_stop(sound_get("tstrong"))
    sound_play(sound_get("tstrong"),false,noone,1)
}

if finisher = 40 {
    sound_play(sound_get("tstrong"),false,noone,0.6)
}

if finisher = 20 {
    sound_play(sound_get("tstrong"),false,noone,0.4)
}

 if finisher > 0{
	finisher -= 1
	if finisherinc < 30 {
	finisherinc += 1
	}
}
}


if "superTrue" in self {
if superTrue == 1 {
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
	 superTrue = 0
	 hit_player_obj.canUseCounterTimer = 60

	hit_player_obj.hitpause = 1
	if hit_player_obj.state_cat == SC_HITSTUN {
	   hit_player_obj.hitstop = 30
	}
	hit_player_obj.old_hsp = hit_player_obj.hsp
	hit_player_obj.old_vsp = hit_player_obj.vsp

set_attack(AT_UTILT) 
window = 1
window_timer = 0
move_cooldown[AT_UAIR] = 20
    sound_play(sound_get("SpaceCut"),false,noone,1.2,1)
    sound_play(asset_get("sfx_bird_nspecial"),false,noone,1.2,1)
    spawn_hit_fx(x,y - 40,SC)
}    
}

if state == PS_PARRY{
	free = false 
	if state_timer > 2 && state_timer < 15 && !invincible{
		window_timer -= 0.4
	} else {
		if state_timer == 15 {
			window_timer = floor(window_timer) + 1
		}
			window_timer += .5
	}
}


	