
if jumpfix > 0 && !hitpause{
	jumpfix --
	if jumpfix == 1{
		jump_start_time = 5;
	}
}
if (djumps == 0 && get_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING) == 0.8) or get_gameplay_time() == 80{

sound_stop(sound_get("Empower"))
sound_play(sound_get("Empower"),false,noone,0.5,0.8)
fx = spawn_hit_fx( x, y - 10, djumpfx2 )
fx.depth = depth - 2
///Fair
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.25);

set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .25);

set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .25);

//Bair
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 120);

//Dair
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, .3);

set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 100);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, .3);

set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, .3);
}

if djumps > 0 && get_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING) != 0.8{
spawn_hit_fx( x, y - 30, stylec )
fx = spawn_hit_fx( x, y - 30, styled )
fx.spr_dir *= 1.6
fx.image_yscale = 1.6
sound_play(sound_get("Empower"),false,noone,1,1)
sound_play(sound_get("Empower"),false,noone,0.6,0.6)
///Fair
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.8);

set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .7);

set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .7);

//Bair
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 140);

//Dair
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, .6);

set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 140);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 8);

set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 40);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, .6);
}
	

if move_cooldown[AT_DTHROW] > 0 {
	        if gunname == 4 && t21 != 0 gunname ++
	        if gunname == 5 && t22 != 0 gunname ++
	        if gunname == 6 && t23 != 0 gunname ++
	        if gunname == 7 && t24 != 0 gunname ++
	        
	        if gunname == 8 && t31 != 0 gunname ++
	        if gunname == 9 && t32 != 0 gunname ++
	        if gunname == 10 && t33 != 0 gunname ++
	        if gunname == 11 && t34 != 0 gunname ++
	        if gunname == 12 && t35 != 0 gunname ++
	        if gunname == 13 && t36 != 0 gunname ++
	        }
	        
	        if move_cooldown[AT_UTHROW] > 0 {
	        if gunname == 4 && t21 != 0 gunname --
	        if gunname == 5 && t22 != 0 gunname --
	        if gunname == 6 && t23 != 0 gunname --
	        if gunname == 7 && t24 != 0 gunname --
	        
	        if gunname == 8 && t31 != 0 gunname --
	        if gunname == 9 && t32 != 0 gunname --
	        if gunname == 10 && t33 != 0 gunname --
	        if gunname == 11 && t34 != 0 gunname --
	        if gunname == 12 && t35 != 0 gunname --
	        if gunname == 13 && t36 != 0 gunname --
}
	        
if !hitpause && state == PS_PRATFALL {
	if abs(hsp) > 4 {
		hsp /= 1.05
	}
}
if Donottaunt > 0 {
	Donottaunt -= 1
	if taunt_down && visible{
		set_state(PS_IDLE)
		Donottaunt = 0
	}
	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
		Donottaunt = 0
	}
}

if bursted != 0 && down_down {
	 clear_button_buffer( PC_SPECIAL_PRESSED );
	move_cooldown[AT_DSPECIAL] = 5
	move_cooldown[AT_NSPECIAL] = 5
}


      
if state == PS_RESPAWN && !hitstop  {
      if state_timer == 90 {
      shake_camera(5,5)
      sound_stop(sound_get("exp1"))
      sound_play(sound_get("exp1"),false,noone,1,1)
      spawn_hit_fx(x ,y - 40, exp1)
      }
}
  
      
if "in_adventure" in self {
	
   if get_gameplay_time() == 2 {
   	 x = 2477
   	 y = 10455
   }	
   
   has_walljump_actual = true
   
   if move_cooldown[AT_JAB] > 0 {
		hitpause = 0
		hitstop = 0
	}
	
	
   if state == PS_WALL_JUMP {

        move_cooldown[AT_FSPECIAL_2] = 10
        if get_gameplay_time() % 3 == 0 {
        	sound_play(sound_get("bike1"),false,noone,1,0.9)
     	sound_play(sound_get("slice"))
     	spawn_hit_fx(x,y - 10, 14)
     	shake_camera(2,2)
        }
     	spr_dir *= -1
     	move_cooldown[AT_FSPECIAL] = 0
      	 set_attack(AT_FSPECIAL)
      	 window = 6
      	 window_timer = 6
      	 vsp = -8
      	 hsp = 4*spr_dir
      	 
   }
   
         if attack == 18 && window == 5 && window_timer == 5 && !hitpause{
      	old_hsp = hsp
      	old_vsp = vsp
      	move_cooldown[AT_FSPECIAL] = 0
      	 set_attack(AT_FSPECIAL)
      	 window = 6
      	 window_timer = 1
      	 hsp = old_hsp
      	 vsp = old_vsp
      }
      
   if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
   	  
   	  
   	  soft_armor = 999
   	  
   	  if !free && down_down {
   	  	  hsp -= 0.5*spr_dir 
   	  	  move_cooldown[AT_USPECIAL_GROUND] = 5
   	  	  if state_timer %5 == 0 {
   	  	  	sound_stop(sound_get("bike1"))
   	  	  	sound_play(sound_get("bike1"),false,noone,1,0.8)
   	  	  }
   	  }
   	  
   	  if !free && down_hard_pressed {
   	  	  y += 8
   	  }
   	  
   	  if right_down && hsp < 10 && move_cooldown[AT_DTILT] < 10 {
   	  	hsp += 0.3
   	  }
   	  
   	  if left_down && hsp > -10 && move_cooldown[AT_DTILT] < 10 {
   	  	hsp -= 0.3
   	  }
   	  
   	  
   	  lmtime = 450
   	

      
      move_cooldown[AT_UTILT] = 0
      
      if attack == AT_BAIR && window == 3 && window_timer == 11 {
      	 sound_play(asset_get("sfx_ell_eject"),false,noone,1,.85)
      	 spawn_hit_fx(x,y - 20, 302)
      	 y -= 10 
      	move_cooldown[AT_FSPECIAL] = 0
      	 set_attack(AT_FSPECIAL)
      	 window = 3
      	 window_timer = 1
      }
      

      if attack == AT_FSPECIAL or attack == AT_BAIR or attack == AT_USPECIAL {
      	move_cooldown[AT_NSPECIAL_2] = 999
      }
      
      if attack == AT_FSPECIAL && shield_down && move_cooldown[AT_DTILT] == 0{
      	   
      	   vsp += 0.22
      	   
      	   if window == 6 && window_timer == 10 {
      	   	 window = 3
      	     window_timer = 0
      	   }
      	   
      	   if !free && abs(hsp) > 6 {
      	   	hsp = -8*spr_dir
      	   } else {
      	   y -= 3
      	   window = 6
      	   window_timer = 1
      	   hsp -= 10*spr_dir
      	   vsp -= 8
      	   }
      	   
      	   switch random_func(1,6,true) {
      	   	   case 0 :
      	   	     sound_play(sound_get("SGF"));
      	   	     sgg = spawn_hit_fx( x, y, shotgun2 )
      	   	     sgg.depth = 0
      	   	     create_hitbox(AT_FSTRONG,1,x + 110*spr_dir,y -40)
      	   	     create_hitbox(AT_FSTRONG,2,x + 70*spr_dir,y -40)
      	   	     create_hitbox(AT_EXTRA_3 , 1 , x - 25 * spr_dir, y - 20 );	
                 create_hitbox(AT_EXTRA_3 , 2 , x - 25 * spr_dir, y - 20 );	
      	   	   break ;
      	   	   
      	   	   case 1 :
      	   	   
      	   	    sound_play(sound_get("gun3s"));
                sgg = spawn_hit_fx( x + (55 * spr_dir) , y - 36, 305 )
                sgg.depth = 0
                create_hitbox(AT_EXTRA_1 , 8 , x + (22 * spr_dir) , y - 36 );
                create_hitbox(AT_EXTRA_2, 1 , x - (30 * spr_dir), y - 20 );
      	   	   break ;
      	   	   
      	   	   case 2 :
      	   	    sound_play(sound_get("exp2"));
      	   	    sound_play(asset_get("sfx_ell_overheat"));
      	   	     sgg = spawn_hit_fx( x + (20 * spr_dir) , y - 30, 302 )
      	   	     sgg.depth = 0
                 create_hitbox(AT_EXTRA_1 , 21 , x - 30 * spr_dir, y - 20 );	
				 create_hitbox(AT_EXTRA_1 , 22 , x - 30 * spr_dir, y - 20 );
				 create_hitbox(AT_EXTRA_1 , 23 , x - 30 * spr_dir, y - 20 );
				 create_hitbox(AT_EXTRA_1 , 24 , x - 30 * spr_dir, y - 20 );
				 create_hitbox(AT_EXTRA_2, 1 , x - (30 * spr_dir), y - 20 );
      	   	   break ;
      	   	   
      	   	   case 3 :
      	   	      sound_play(sound_get("exp1"));
      	   	      sgg = spawn_hit_fx( x + (20 * spr_dir) , y - 30, 303 )
      	   	      sgg.depth = 0
			      create_hitbox(AT_EXTRA_2, 2 , x + (50 * spr_dir), y - 30 );	
			      create_hitbox(AT_EXTRA_2, 1 , x - (30 * spr_dir), y - 20 );	
			      move_cooldown[AT_FTILT] = 20
      	   	   break ;
      	   	   
      	   	   case 4 :
      	   	    sound_play(sound_get("gun3s"));
                sgg = spawn_hit_fx( x + (55 * spr_dir) , y - 56, 305 )
                sgg.depth = 0
                create_hitbox(AT_EXTRA_1 , 8 , x + (22 * spr_dir) , y - 46 );
                create_hitbox(AT_EXTRA_2, 1 , x - (30 * spr_dir), y - 20 );
      	   	   break ;
      	   	   
      	   	   case 5 :
      	   	     sound_play(sound_get("SGF"));
      	   	     sgg = spawn_hit_fx( x, y, shotgun2 )
      	   	     sgg.depth = 0
      	   	     create_hitbox(AT_FSTRONG,1,x + 110*spr_dir,y -40)
      	   	     create_hitbox(AT_FSTRONG,2,x + 70*spr_dir,y -40)
      	   	     create_hitbox(AT_EXTRA_3 , 1 , x - 25 * spr_dir, y - 20 );	
                 create_hitbox(AT_EXTRA_3 , 2 , x - 25 * spr_dir, y - 20 );	
      	   	   break ;
     	   	 
      	   }
      	   
      	   move_cooldown[AT_DTILT] = 20
      	   
      }
      
      if move_cooldown[AT_DTILT] == 10 {
      	      	 create_hitbox(AT_EXTRA_3 , 1 , x - 25 * spr_dir, y - 20 );	
                 create_hitbox(AT_EXTRA_3 , 2 , x - 25 * spr_dir, y - 20 );	
                 create_hitbox(AT_EXTRA_2, 1 , x - (30 * spr_dir), y - 20 );
      }
      
      if move_cooldown[AT_FTILT] > 0 && move_cooldown[AT_FTILT] % 4 == 0 {
      	
      	set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_HSPEED, -3 - (random_func(1,  3, true)) );
        set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_VSPEED, -4.5 - (random_func(2,  3, true)) );
        
        set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_VSPEED, 1 - (random_func(2, 10, true)/3) );
        
      	   	      sound_play (sound_get("exp1"),false,noone,1,1.2);
      	   	      spawn_hit_fx( x + (20 * spr_dir) , y - 30, 303 )
			      create_hitbox(AT_EXTRA_2, 2 , x + (50 * spr_dir), y - 30 );	
			      create_hitbox(AT_EXTRA_2, 1 , x - (30 * spr_dir), y - 20 );	
      }
   
   } else {
   	
   	 if move_cooldown[AT_NSPECIAL_2] > 30 && attack != AT_TAUNT { //&& get_gameplay_time() > 160 {
   	 	sound_play(asset_get("sfx_ell_eject"));
   	 	sound_play(asset_get("sfx_ell_overheat"));
   	 	shake_camera(6,6)
   	 	set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_HSPEED, 3);
        set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_VSPEED, -8);
        set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GRAVITY, 0.3);
   	 	create_hitbox(AT_BAIR,2,x,y - 50)
   	 	move_cooldown[AT_NSPECIAL_2] = 30
   	 }
   	 
   }



}


if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if gunname >= 0 && gunname <= 3 && infernal2 < 100 {
	move_cooldown[AT_NSPECIAL] = 2
}


if gunname >= 4 && gunname <= 7 && infernal2 < 200 {
	move_cooldown[AT_NSPECIAL] = 2
}


if gunname >= 8 && infernal2 < 300 {
	move_cooldown[AT_NSPECIAL] = 2
}

if triggered > 1 && !hitpause{
	triggered -= 1
	
	if triggered % 60 == 0 {
		take_damage(player,-1,-1)
	}
}

if triggered = 1 {
	sound_play(asset_get("sfx_ori_grenade_aim"),false, noone, 0.6);

triggered = 0
}

if gainlockout > 0 {
	gainlockout -= 1
}


		
		
 	if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
 		attacking = true 
 	} else {
 		attacking = false
 	}

set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 6 * spr_dir);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, -6 * spr_dir);

if gunname == 0 {

}


if droptime > 0 {
	droptime -= 1

}





///FEATURING 

if get_player_color(player) == 7 {

if get_gameplay_time() == 15 {
	sound_play(sound_get("isa2"),false,noone,0.66);
}


if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && !hitstop {
	
 if get_player_color(player) == 7{
     sound_stop(sound_get("isa1"));
	 sound_stop(sound_get("isa2"));
	 sound_stop(sound_get("isa3"));
	 sound_stop(sound_get("isa4"));
	 sound_stop(sound_get("isa5"));
     if get_gameplay_time() % 7 == 6 {
	 sound_play(sound_get("isa6"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 5 {
	 sound_play(sound_get("isa5"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 4 {
	 sound_play(sound_get("isa3"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 3 {
	 sound_play(sound_get("isa2"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 2 {
	 sound_play(sound_get("isa2"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 1 {
	 sound_play(sound_get("isa1"),false,noone,0.66);
	}
	
}
     
 }
 

if attack == AT_TAUNT && (window == 1 or window == 4) && window_timer == 1 {
	 sound_stop(sound_get("isa1"));
	 sound_stop(sound_get("isa2"));
	 sound_stop(sound_get("isa3"));
	 sound_stop(sound_get("isa4"));
	 sound_stop(sound_get("isa5"));
    if get_gameplay_time() % 7 == 6 {
	 sound_play(sound_get("isa6"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 5 {
	 sound_play(sound_get("isa5"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 4 {
	 sound_play(sound_get("isa3"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 3 {
	 sound_play(sound_get("isa2"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 2 {
	 sound_play(sound_get("isa2"),false,noone,0.66);
	}
	
	if get_gameplay_time() % 7 == 1 {
	 sound_play(sound_get("isa1"),false,noone,0.66);
	}
	
}
}

if get_gameplay_time() <= 120 && hunter == 0 and taunt_pressed && get_player_color(player) == 1{
	hunter = 1
	casing = 1
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	sound_play(sound_get("Dintro"));
	set_victory_theme(sound_get("Dwin"));

}



if get_gameplay_time() <= 120 && Vrank == 0 and taunt_pressed && get_player_color(player) != 1{
	Vrank = 1
	casing = 1
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
    sound_play(sound_get("rankc"),false,noone,0.66) 	
}


 if get_player_color(player) == 1 && hunter == 1 {
 	
 	if prevstyle != style {
 		prevstyle = style
 		spawn_hit_fx( x, y - 30, stylec )
 		
 		if style == 1 {
 			sound_play(sound_get("DSw"));
 		}
 		if style == 2 {
 			sound_play(sound_get("DGu"));
 		}
 		if style == 3 {
 			sound_play(sound_get("DTr"));
 		}
 		if style == 4 {
 			sound_play(sound_get("DRo"));
 		}
 		
 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
 		
 	} 
 	
 	if state == PS_WAVELAND && state_timer == 6 {
 		style = 1
 	}
 	
 	if state == PS_PARRY or state == PS_TECH_GROUND or state == PS_WALL_TECH {
 		style = 4
 	}
 	
 	if state == PS_AIR_DODGE or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD 
 	or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD or state == PS_DOUBLE_JUMP{
 		style = 3
 	}
 	
 	
 	if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR && !hitpause {
 		if attack == AT_DSPECIAL&& window == 3 && window_timer == 6{
 				sound_play(sound_get("DN"));
 		}
 		
 		if attack == AT_TAUNT && window == 1 && window_timer == 1{
 				sound_play(sound_get("DT1"));
 		}
 		
 		if attack == AT_TAUNT && window == 7 && window_timer == 1{
 				sound_play(sound_get("DT2"));
 		}
 		
 		if attack == AT_DATTACK{
 			if window == 2 && window_timer == 1{
 				sound_play(sound_get("DDa1"));
 			}
 			
 			if window == 4 && window_timer == 1 && grind <= 1{
 				sound_play(sound_get("DDa2"));
 			}
 		}
 		if attack == AT_NSPECIAL {
 			style = 4
 		}
 		
 		if attack == AT_DSPECIAL  or attack == AT_FTILT or attack == AT_FSTRONG
 		or attack == AT_NAIR or (attack == AT_JAB && window == 7) or attack == AT_USTRONG or attack == AT_UAIR 
 		or attack == AT_EXTRA_1 or attack == AT_EXTRA_2 or attack == AT_DTILT or (attack == AT_DAIR && window < 5 && window_timer > 2){
 			style = 2
 		}
 		
 		if attack == AT_DSTRONG or (attack == AT_DAIR && window > 5) or attack == AT_BAIR or attack == AT_FAIR 
 		or attack == AT_UTILT or (attack == AT_JAB && window == 1) or attack == AT_DATTACK or (attack == AT_USPECIAL && window_timer > 2){
 			style = 1
 		} 
 		
 		if attack == AT_FSPECIAL {
 			style = 3
 		}
 		
 		
 	}


 
 	
}
 
 	
 	


///

if state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR {
  drops = 0
	
}

if state_cat == SC_HITSTUN && faces != 0 {
	spr_dir = faces
}

if state == PS_IDLE{
	faces = 0
}

if get_gameplay_time() <= 40 && intro != 1 {
	draw_indicator = false 
	set_attack (AT_TAUNT)
	window = 20
	window_timer = 0
}

if (!free) {
	move_cooldown[AT_USPECIAL] = 0 
	move_cooldown[AT_UAIR] = 0 
	move_cooldown[AT_BAIR] = 0 
	
};
if (state == PS_WALL_JUMP) {
	move_cooldown[AT_USPECIAL] = 0
};

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	 
	 if state_timer < 9{
	     hsp = -0.5 * spr_dir
	 }
	 
	 if state_timer >= 9 and state_timer < 12 {
	     hsp = -30 * spr_dir
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
	
	if state_timer < 1{ 
	oldx = x
	oldy = y
	}
	 if state_timer < 7 and state_timer > 1{
	     x = oldx
	 }
	 
	  if state_timer < 7  and state_timer > 1{
	     y = oldy
	 }
	 
	  if state_timer >= 6 and state_timer < 15 {
	     draw_indicator = false
	 }
	 
	 if state_timer > 15 {
	     draw_indicator = true
	 }
	
}


if state == PS_DOUBLE_JUMP {
	if state_timer == 1{
		spawn_hit_fx( x, y, djumpfx )

	}
}

/// INFERNAL ENERGY


if infernal2 > 301{
	 if get_player_color(player) == 1 && hunter == 1 {
	 	sound_stop(sound_get("Dmax"))	
	 	sound_play(sound_get("Dmax"));
	 }	
	sound_stop(sound_get("RI"));
	sound_play(sound_get("RI"),false,noone,0.75,1.2);
	sound_stop(sound_get("exp1"));
	sound_play(sound_get("exp1"),false,noone,0.5,1.5);
	fx = spawn_hit_fx( x, y - 10, djumpfx )
    fx.depth = depth - 2
    fx = spawn_hit_fx( x, y - 30, styled )
    fx.spr_dir *= 1.6
    fx.image_yscale = 1.6
	infernal2 = 300
}




if infernal2 < 100 {
     move_cooldown[AT_NSPECIAL] = 2
}

if infernal2 >= 100 && infernal2 < 198 {
	if get_gameplay_time() % 3 == 0 && !hitpause {
		spawn_hit_fx( x - ((20 - random_func(11, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , smoke3 )
	}
}

if infernal2 >= 198 && infernal2 < 300 {
	if get_gameplay_time() % 3 == 0 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , smoke1 )
	}

		
	if get_gameplay_time() % 3 == 1 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , smoke2 )
	}

}

if infernal2 >= 300 {
	 if get_gameplay_time() % 3 == 0 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(1, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , smoke1 )
	}

	if get_gameplay_time() % 3 == 1 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , smoke2 )
	}
	
	if get_gameplay_time() % 5 == 1 && !hitpause {
		spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , smoke3 )
	}
	
}


if gunname >= 1 && gunname <= 3 && infernal2 >= 100 {
		 if get_gameplay_time() % 2 == 0 && !hitpause {
 spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , ustrongs2 )
	 }
}

if gunname >= 4 && gunname <= 7 && infernal2 >= 200 {
			 if get_gameplay_time() % 2 == 0 && !hitpause {
 spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , ustrongs2 )
	 }
}

if gunname >= 8 && infernal2 >= 300 {
			 if get_gameplay_time() % 2 == 0 && !hitpause {
 spawn_hit_fx( x - ((25 - random_func(11, 50, true)) * spr_dir) , y - 6 - random_func(12, 66, true) , ustrongs2 )
	 }
}




if get_player_color(player) == 8 {
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




//////////
/// setstock 

if rankm >= 0 && !hitpause {

	inactive -= 1
	
    if inactive < 0 {
	rankm -= 1
	}
	
	
	if inactive < -120 {
		rankm -= 1
	}
	

	
}



if rank > 0  {
if rankm <= 0 {
	if rank == 1 {
		if hunter == 1 or Vrank = 1  {
	   sound_play(sound_get("rankd"),false,noone,1) 
	    prevrank = rank 
		}
    } else {
    	 prevrank = rank 
    }
    
 rankm += 120
 rank -= 1
 
}
}

if rank < 6  {
   if get_gameplay_time() == 110 spawn_hit_fx(x - 30,y - 60,swordhit )
   if rankm >= 240 {
   	move_cooldown[AT_FSTRONG_2] = 10
   	spawn_hit_fx(x - 30,y - 60,swordhit )
   	 rankm -= 120
     rank += 1
     
if hunter == 1 or Vrank = 1 {
     switch rank {
     	case 1 :
     	sound_stop(sound_get("rankd")) 	
     	if rank > prevrank {
     	sound_play(sound_get("rankc"),false,noone,0.66) 	
     	prevrank = rank
     	}
     	break;
     	
     	case 2 :
     	if rank > prevrank {
     	sound_stop(sound_get("rankc")) 	
     	sound_play(sound_get("rankb"),false,noone,0.66)  
     	prevrank = rank
     	}
     	break;
     	
     	case 3 :
     	if rank > prevrank {
     	sound_stop(sound_get("rankb")) 	
     	sound_play(sound_get("ranka"),false,noone,0.66) 
     	prevrank = rank
     	}
     	break;
     
        case 4 :
        if rank > prevrank {
     	sound_stop(sound_get("ranka")) 	
     	sound_play(sound_get("ranks"),false,noone,0.66) 
     	prevrank = rank
        }
        
     	 if hitpause {
     		hitstop += 4
     		hit_player_obj.hitstop += 4
     	}
     	
     	    spawn_hit_fx(x,y,lighten)
     		sound_play(sound_get("RI"),false,noone,0.66,1.5) 
     	break;
     	
     	case 5 :
     	if rank > prevrank {
     	sound_stop(sound_get("ranks")) 	
     	sound_play(sound_get("rankss"),false,noone,0.66) 
     	prevrank = rank
     	}
     	break;
     	
     
        case 6 :
        if rank > prevrank {
     	sound_stop(sound_get("rankss")) 	
     	sound_play(sound_get("ranksss"),false,noone,0.66) 
     	prevrank = rank
        }
     	break;
     		
     }
   }
   
}
   
} else {
   if rankm >= 240 {	
   	 rankm -= 2
   }
}

with oPlayer {
	
	if "grenadehit" in self {
		if grenadehit > 0 {
			if grenadehit > 50 {
			x -= 2*spr_dir 
			}else if grenadehit > 40{
			x -= 1*spr_dir 	
			}else if grenadehit <= 30{
			x += 1*spr_dir 	
			}
			grenadehit -= 1
		}
	}
	
}
