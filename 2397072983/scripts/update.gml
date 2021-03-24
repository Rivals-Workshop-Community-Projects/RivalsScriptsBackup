///

if move_cooldown[AT_FSPECIAL_2] > 0 && state_cat == SC_HITSTUN{
   	move_cooldown[AT_FSPECIAL_2]  += 1
}

if !instance_exists(hit_player_obj){
hit_player_obj = self
}

if raged && raged != 3 {
	if hit_player_obj.state == PS_ATTACK_GROUND or hit_player_obj.state == PS_ATTACK_AIR {
		raged = 2
	} else {
		raged = 1
	}
}



if get_gameplay_time() == 1 {
		spawn_hit_fx(x,y-30,304)
  sound_play(sound_get("respawn"),false,noone,1.5)
  sound_play(sound_get("pdodge"),false,noone,1.5)
  
}

if !free && (get_gameplay_time() < 27 or shopx = 0){
	famix = x
	famiy = 0
	
	shopx = x
	shopy = y
	
	if get_gameplay_time() < 27{
	spawn_hit_fx(x + 450 - (get_gameplay_time()*20),y - 10 + random_func(2,20,true),idles)
	spawn_hit_fx(x - 450 + (get_gameplay_time()*20),y - 10 + random_func(2,20,true),idles)
	spawn_hit_fx(x + random_func(1,100,true)/(get_gameplay_time()/2),y - 10 + random_func(2,20,true),idles)
	spawn_hit_fx(x - random_func(1,100,true)/(get_gameplay_time()/2),y - 10 + random_func(3,20,true),idles)
	}

}

if charge > 5 {
	charge = 5
}
if charge < 0 {
	charge = 0
}

if style != 4 {
  switch(fami) {
  	
  	case 0:
  	if charge == 0 {
  		move_cooldown[AT_FSPECIAL] = 2
  	}
  	break;
  	
  	case 1:
  	if charge < 2 {
  		move_cooldown[AT_FSPECIAL] = 2
  	}
  	break;
  	
    case 2:
  	if charge < 2 {
  		move_cooldown[AT_FSPECIAL] = 2
  	}
  	break;	

    case 3:
  	if charge < 3 {
  		move_cooldown[AT_FSPECIAL] = 2
  	}
  	break;
  	
  }
}

if style == 4 && charge < 5 {
	move_cooldown[AT_FSPECIAL] = 2
}
move_cooldown [AT_DSPECIAL] = 2

if state_cat != SC_HITSTUN && down_down && special_pressed && !attacking && style != 4 {
	
	if fami < 3 {
		fami += 1
	} else {
		fami = 0
	}
	
	oldfamix = famix
	oldfamiy = famiy
	
   move_cooldown[AT_EXTRA_3] = 6	
   sound_play(sound_get("shopo"),false,noone,0.6)	
   spawn_hit_fx(famix,famiy - 50,108)	
   famix = x
   famiy = y + 10
   clear_button_buffer( PC_SPECIAL_PRESSED );
}
	       	
famix += floor(((x-30*spr_dir)-famix)/7)
famiy += floor((y-26-famiy)/7)

alt = get_player_color(player)

if state == PS_RESPAWN && state_timer == 90 {
	spawn_hit_fx(x,y-30,304)
  sound_play(sound_get("respawn"),false,noone,1.5)
}
if get_gameplay_time() <= 1 or style > 4 {
	
if alt <= 2 {
   style1 = 0
}

if alt > 2 && alt <= 5 {
   style1 = 1
}

if alt > 5 && alt <= 8 {
   style1 = 2
}

if alt > 8 && alt <= 11 {
   style1 = 3
}

style = style1
move_cooldown[AT_TAUNT_2] = 30
  switch(alt) {
   	    case 0 :
	    style2 = 1
	    break;
	    
	    case 1 :
	    style2 = 2
	    break;
	    
	    case 2 :
	    style2 = 3
	    break;
	    
	    case 3 :
	    style2 = 0
	    break;
	    
	    case 4 :
	    style2 = 2
	    break;
	    
	    case 5 :
	    style2 = 3
	    break;
	    
	    case 6 :
	    style2 = 0
	    break;
	    
	    case 7 :
	    style2 = 1
	    break;
	    
	    case 8 :
	    style2 = 3
	    break;
	    
	    case 9 :
	    style2 = 0
	    break;
	    
	    case 10 :
	    style2 = 1
	    break;
	    
	    case 11 :
	    style2 = 2
	    break;
	    
  }


}
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
	if move_cooldown[AT_NSPECIAL_2] >2 {
	move_cooldown[AT_NSPECIAL_2] = 2
	}
} else {
	shoping = 0
	attacking = false
}

if state_cat == SC_HITSTUN {
	
	if move_cooldown[AT_NSPECIAL_2] >2 {
	move_cooldown[AT_NSPECIAL_2] = 2
	}
	
	if unte {
		unte = 1
	}
	if raged {
		raged = 1
	}
	sound_stop(sound_get("pdodge"))
	move_cooldown[AT_USPECIAL] = 0
}

if !free or state == PS_WALL_JUMP {
	move_cooldown[AT_USPECIAL] = 0
}

if move_cooldown[AT_EXTRA_1] == 19 && state_cat != SC_HITSTUN{
			shake_camera(2,4)
			charge += 1
			sound_play(sound_get("pdodge"))
		    spawn_hit_fx(x,y,idles)
		    if !free {
			x -= 40*spr_dir
		    }
		    if free {
			x += hsp * 5
			y += vsp * 5
			if attacking {
			x += hsp * 3
			y += vsp * 3	
			}
		    }
		   
}

if dplayer.state == PS_ATTACK_GROUND or dplayer.state == PS_ATTACK_AIR {
if (move_cooldown[AT_NSPECIAL_2] = 121 or move_cooldown[AT_NSPECIAL_2] % 10 > 0){
	    	
		  	with dplayer{
		    	hitpause = true
		    	hitstop = 10
		  		}
		  		
		    }
		 
if move_cooldown[AT_NSPECIAL_2] >= 1 and move_cooldown[AT_NSPECIAL_2] % 3 == 0 {
			with dplayer{
		    	hitpause = 0
		    	hitstop = 0
		  	}

}
}

if dplayer.state != PS_ATTACK_GROUND and dplayer.state != PS_ATTACK_AIR{
	move_cooldown[AT_NSPECIAL_2] = 1
	
}

if move_cooldown[AT_NSPECIAL_2] > 1 {
	invincible = true
	
	if get_gameplay_time() % 4 == 0 {
		spawn_hit_fx(x,y,idles)
	}
}



if(get_gameplay_time() == 1){

inx = x
iny = y
	
}

if state == PS_DASH or state == PS_DASH_START {
	if state_timer % 5 == 0 {
		sound_play(sound_get("fstep"),false,noone,0.5);
	}
}

if state == PS_AIR_DODGE or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_FORWARD  or state == PS_TECH_BACKWARD{

	if state_timer % 6 == 0 && state_timer < 15{
	   spawn_hit_fx(x,y,idles)
	}
	
	if !free and unte {
		if state_timer > 15 {
			window_timer -= 0.5
		}
	}
	
}


if state == PS_WALK {
	if state_timer % 20 == 0 {
		sound_play(sound_get("fstep"),false,noone,0.5);
	}
}


if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}


	nearbyhitbox = collision_circle( x, y, 50, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.hit_priority > 0{
		
		if nearbyhitbox.player_id != self && 
		(state == PS_AIR_DODGE or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_FORWARD  or state == PS_TECH_BACKWARD)
		and move_cooldown[AT_EXTRA_1] == 0{
			dplayer = nearbyhitbox.player_id
     if unte && !free {
     	move_cooldown[AT_NSPECIAL_2] = 123
     }
	    	hit_player_obj = nearbyhitbox.player_id
			move_cooldown[AT_EXTRA_1] = 20
		}
			
			 
	}
	
	
	
///MANTRA 


if (move_cooldown[AT_TAUNT_2] == 30 and style != 4) or move_cooldown[AT_TAUNT_2] == 800  {

  switch (style) {
        case 0 :
        
    if visible or state == PS_RESPAWN{
	set_color_profile_slot(alt,0, 64, 216, 255 );
    }
    init_shader();

           walk_speed = 2.5;
           walk_accel = 0.4;
           initial_dash_speed = 6.66;
           dash_speed = 6.66
           dash_turn_accel = .5;
           ground_friction = .5;
           
           leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
           max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
           air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state         
           air_accel = .25;
           
           jump_speed = 11;
           short_hop_speed = 8;
           djump_speed = 11;
           max_fall = 8.5; //maximum fall speed without fastfalling
           fast_fall = 12;
           
           gravity_speed = .6;
           hitstun_grav = .53;
           air_friction = .055;
           knockback_adj = 1.0;

          
           wave_land_adj = 1.2;
///Jab
   set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 8);    
   set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
   
   set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.6);
   set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
   set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.6);
///Ftilt
   set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
   
   set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 10);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
///Utilt
   set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
   set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 7);
   
   set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
   
   set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 9);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .5);
///Dtilt
   set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .2);
///Dattack
   set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
   set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 10);
   
   set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.4);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);
///Nair
   set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 8);
   set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
   
   set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.4);
///Dair
   set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
   set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 12);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
   
   set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 8);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .4);
///Bair           
   set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .6);
///Fair           
   set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 9);
   set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 9);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.6);
///Uair
   set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
   set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
   set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.7); 
   set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
   
   set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
   set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.75); 
   set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
///Fstrong
   set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
   set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 18);
   set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 11);
   
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
   set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);
   
   set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 11);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
   set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .7);


///Ustrong
   set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 8);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .7);
   
   set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
   
///Dstrong
   set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong1"));
   set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
   set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong1_hurt"));
   
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
   
   
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
   
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
   
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
   set_window_value(AT_DSTRONG, 4,  AG_WINDOW_HAS_WHIFFLAG, 1);
   
   
   set_num_hitboxes(AT_DSTRONG, 1);
   
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 120);
   set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 88);
   set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 80);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .7);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 306);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
   set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 2);
   set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0.6);

         break;
	    
	    case 1 :
	 if visible or state == PS_RESPAWN{ 
	set_color_profile_slot(alt,0, 88, 255, 66);
	}
    init_shader();
    
    

           walk_speed = 2;
           walk_accel = 0.3;
           initial_dash_speed = 6;
           dash_speed = 5.5
           dash_turn_accel = .5;
           ground_friction = .2;
           
           leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
           max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
           air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state         
           air_accel = .33;
           
           jump_speed = 10;
           short_hop_speed = 6.5;
           djump_speed = 10;
           max_fall = 7; //maximum fall speed without fastfalling
           fast_fall = 11;
           
           gravity_speed = .4;
           hitstun_grav = .53;
           air_friction = .055;
           knockback_adj = 1.2;

          
           wave_land_adj = 0.9;
///Jab
   set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 12);    
   set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
   
   set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.6);
   set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
   set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.6);
///Ftilt
   set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 13);
   set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 16);
   
   set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
///Utilt
   set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 12);
   
   set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
   
   set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .5);
///Dtilt
   set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
   
   set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .2);
///Dattack
   set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 15);
   set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 15);
   
   set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 5);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.4);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);
///Nair
   set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 10);
   set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 14);
   set_attack_value(AT_NAIR, AG_LANDING_LAG, 10);
   
   set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.4);
///Dair
   set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 16);
   set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
   
   set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 4);
   set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .2);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .2);
///Bair           
   set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 14);
   set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
   set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
   
   set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .6);
///Fair           
   set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
   set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 16);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
   
   set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.4);
///Uair
   set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 14);
   set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 12);
   set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);
   
   set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.5); 
   set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
   
   set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
   set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.5); 
   set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
///Fstrong
   set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 22);
   set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 22);
   set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 7);
   
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
   set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);
   
   set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 7);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
   set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .7);


///Ustrong
   set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
   set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 5);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .7);
   
   set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 5);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.7);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
   
///Dstrong
   set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong4"));
   set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
   set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong4_hurt"));
   
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 15);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
   
   
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
   
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 20);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
   
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
   set_window_value(AT_DSTRONG, 4,  AG_WINDOW_HAS_WHIFFLAG, 1);
   
   
   set_num_hitboxes(AT_DSTRONG, 3);
   
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 40);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 96);
   set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 88);
   set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 25);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.1);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .1);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 302);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
   set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.6);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0.6);
   
   set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
   set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
   set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 96);
   set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 96);
   set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 88);
   set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 4);
   set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 25);
   set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 0);
   set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.1);
   set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .1);
   set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 305);
   set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
   set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.6);
   set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
   set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);
   set_hitbox_value(AT_DSTRONG, 2, HG_SDI_MULTIPLIER, 0.6);
   
   set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
   set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
   set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 152);
   set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 96);
   set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 88);
   set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 8);
   set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 60);
   set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);
   set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .7);
   set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 306);
   set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
   set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
   set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
   set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_SDI_MULTIPLIER, 0.6);
	    break;
	    
	    case 2 :
	  if visible or state == PS_RESPAWN{   
   	set_color_profile_slot(alt,0, 255, 92, 239); 
	  }
    init_shader();	       
	       if move_cooldown[AT_EXTRA_2] > 0 && !hitpause{
	       	create_hitbox(AT_EXTRA_1, 1, antarget.x, antarget.y - 40)
	       	move_cooldown[AT_EXTRA_2] = 0
	       }
		   walk_speed = 3;
           walk_accel = 0.5;
           initial_dash_speed = 7.5;
           dash_speed = 7.5
           dash_turn_accel = .6;
           ground_friction = .7;
           
           leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
           max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
           air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state         
           air_accel = .3;
           
           jump_speed = 13;
           short_hop_speed = 9.5;
           djump_speed = 13;
           max_fall = 9.5; //maximum fall speed without fastfalling
           fast_fall = 14;
           
           gravity_speed = .7;
           hitstun_grav = .50;
           air_friction = .05;
           knockback_adj = 1.4;
 

           wave_land_adj = 1.3;
           
///Jab
   set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);    
   set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
   
   set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .3);
   set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
   set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .3);
///Ftilt
   set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .3);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .3);
///Utilt
   set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
   set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 7);
   
   set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .3);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .3);
   
   set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .3);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .3);
///Dtilt
   set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
   set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .1);
///Dattack
   set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .3);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .3);
///Nair
   set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 8);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
   
   set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .3);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .3);
///Dair
   set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
   set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 7);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
      
   set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 7);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .2);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .2);
///Bair           
   set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
   set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
    
   set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .3);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .3);
///Fair           
   set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);
   set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 7);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
      
   set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .4);
///Uair
   set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
   set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .4); 
   set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
   
   set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
   set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .5); 
   set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
///Fstrong
   set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
   set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
   
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .6);
   
   set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 9);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .6);


///Ustrong
   set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
   
   set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 7);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .7);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .5);
   
   set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, .7);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .5);
   
///Dstrong
   set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong2"));
   set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
   set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));
   
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
   
   
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

   set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
   
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 18);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
   set_window_value(AT_DSTRONG, 4,  AG_WINDOW_HAS_WHIFFLAG, 1);
   
   
   set_num_hitboxes(AT_DSTRONG, 1);
   
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 96);
   set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 88);
   set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 80);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .6);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 306);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
   set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 2);
   set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0.6);
           
           
	    break;
	    
	    case 3 :
	 if visible or state == PS_RESPAWN{   
	set_color_profile_slot(alt,0, 242, 12, 12); 
	}
    init_shader();		
	    
    

           walk_speed = 2;
           walk_accel = 0.3;
           initial_dash_speed = 6;
           dash_speed = 6
           dash_turn_accel = .5;
           ground_friction = .35;
           
           leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
           max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
           air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state         
           air_accel = .25;
           
           jump_speed = 11;
           short_hop_speed = 8;
           djump_speed = 11;
           max_fall = 9; //maximum fall speed without fastfalling
           fast_fall = 16;
           
           gravity_speed = .6;
           hitstun_grav = .55;
           air_friction = .055;
           knockback_adj = 0.9;

          
           wave_land_adj = 1.0;
///Jab
   set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 8);    
   set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
   
   set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.6);
   set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 7);
   set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.6);
///Ftilt
   set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 14);
   
   set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 12);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .8);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .8);
///Utilt
   set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 10);
   
   set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 12);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .6);
   
   set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 12);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .6);
///Dtilt
   set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 8);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .8);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .8);
///Dattack
   set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 12);
   
   set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 11);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.9);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .9);
///Nair
   set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 12);
   set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 9);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .7);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.7);
///Dair
   set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 12);
   set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
   
   set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 12);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);
   set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .7);
///Bair           
   set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
   set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .7);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);
///Fair           
   set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 12);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.8);
///Uair
   set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 10);
   set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
   set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.7); 
   set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .7);
   
   set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 10);
   set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.8); 
   set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .8);
///Fstrong
   set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 20);
   set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
   set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 15);
   
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
   set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);
   
   set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 15);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
   set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .7);


///Ustrong
   set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
   set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1);
   
   set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 10);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1);
   
///Dstrong
   set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong3"));
   set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
   set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong3_hurt"));
   
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 15);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
   
   
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
   
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4*7);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 7);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
   
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);
   set_window_value(AT_DSTRONG, 4,  AG_WINDOW_HAS_WHIFFLAG, 1);
   
   
   set_num_hitboxes(AT_DSTRONG, 3);
   
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 96);
   set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 88);
   set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 9);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.1);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .1);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 302);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
   set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.2);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0.6);
   
   set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 8);
   set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
   set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
   set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 130);
   set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 96);
   set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 4);
   set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
   set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 9);
   set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.1);
   set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .1);
   set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 305);
   set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
   set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.2);
   set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
   set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);
   set_hitbox_value(AT_DSTRONG, 2, HG_SDI_MULTIPLIER, 0.6);
   
   set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 16);
   set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
   set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 140);
   set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 110);
   set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 8);
   set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
   set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
   set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .7);
   set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 306);
   set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
   set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
   set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
   set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 0);
   set_hitbox_value(AT_DSTRONG, 3, HG_SDI_MULTIPLIER, 0.6);
   
 
	    break;
	    
	    case 4 :
	if visible {  	  
	if get_gameplay_time() % 8 == 0	 {
   	set_color_profile_slot(alt,0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 8 == 4{
	set_color_profile_slot(alt,0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 8 == 2 or  get_gameplay_time() % 4 == 6{
	set_color_profile_slot(alt,0, 160, 195, 250 );	
	}
	}
    init_shader();	 
    
    if get_gameplay_time() % 60 == 0 {
    	take_damage(player,-1,1)
    }
    	   if move_cooldown[AT_EXTRA_2] > 0 && !hitpause{
	       	create_hitbox(AT_EXTRA_1, 1, antarget.x, antarget.y - 40)
	       	move_cooldown[AT_EXTRA_2] = 0
	       }
    		   walk_speed = 3.5;
           walk_accel = 0.5;
           initial_dash_speed = 8;
           dash_speed = 8
           dash_turn_accel = .6;
           ground_friction = .6;
           
           leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
           max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
           air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state         
           air_accel = .3;
           
           jump_speed = 13.5;
           short_hop_speed = 9.5;
           djump_speed = 13.5;
           max_fall = 9.5; //maximum fall speed without fastfalling
           fast_fall = 16;
           
           gravity_speed = .7;
           hitstun_grav = .50;
           air_friction = .05;
           knockback_adj = 1.0;
 

           wave_land_adj = 1.3;
           
    ///Jab
   set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 8);    
   set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
   
   set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.6);
   set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
   set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.6);
///Ftilt
   set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
   
   set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 10);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
///Utilt
   set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
   set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 7);
   
   set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
   
   set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 9);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .5);
///Dtilt
   set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
   
   set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .2);
///Dattack
   set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
   set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 10);
   
   set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.4);
   set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);
///Nair
   set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 8);
   set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
   
   set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
   set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.4);
///Dair
   set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
   set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 12);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
   
   set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 8);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
   set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .4);
   set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .4);
///Bair           
   set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
   set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
   set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .6);
   set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .6);
///Fair           
   set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 9);
   set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 9);
   set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
   set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.6);
///Uair
   set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
   set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
   set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
   
   set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
   set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.7); 
   set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
   set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
   
   set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
   set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.75); 
   set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
   set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
///Fstrong
   set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
   set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 16);
   set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
   
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .9);
   set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .9);
   
   set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 9);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
   set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, .9);
   set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 6);
   set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .9);


///Ustrong
   set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
   set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
   
   set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 7);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .9);
   set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .9);
   
   set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, .9);
   set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
   set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .9);
   
///Dstrong
   set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong2"));
   set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
   set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));
   
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
   set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
   
   
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
   set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

   set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
   set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
   
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 18);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
   set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
   set_window_value(AT_DSTRONG, 4,  AG_WINDOW_HAS_WHIFFLAG, 1);
   
   
   set_num_hitboxes(AT_DSTRONG, 1);
   
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
   set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
   set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 96);
   set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 88);
   set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
   set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 80);
   set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
   set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
   set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .6);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 306);
   set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
   set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
   set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
   set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 2);
   set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0.6);   
   
	    break;
	    
	}
}	


if style == 2 or style == 4 {
		   if move_cooldown[AT_EXTRA_2] > 0 && !hitpause{
	       	create_hitbox(AT_EXTRA_1, 1, antarget.x, antarget.y - 40)
	       	move_cooldown[AT_EXTRA_2] = 0
	       }
	       
	       if style == 4 {
	       	
	       	if !gun {
	       	move_cooldown [AT_FSPECIAL] = 2
	       	}
	       	
	       		if get_gameplay_time() % 4 == 1 {
	spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - 20 - random_func(4, 80, true) , esp2 )
	}
	
	       		if visible {  	  
                	if get_gameplay_time() % 8 == 0	 {
                   	set_color_profile_slot(alt,0, 255, 196, 244); 
                	} 
                	
                	if get_gameplay_time() % 8 == 4{
                	set_color_profile_slot(alt,0, 0, 191, 255 );	
                	}
                	
                    if get_gameplay_time() % 8 == 2 or  get_gameplay_time() % 4 == 6{
                	set_color_profile_slot(alt,0, 160, 195, 250 );	
                	}
                	
                	}
                    init_shader();	 
                    
                    if get_gameplay_time() % 60 == 0 {
                    	take_damage(player,-1,1)
          }
	      }
}

if hit_player_obj.state == PS_RESPAWN && hit_player_obj != self && hit_player_obj.state_timer == 1{
	LA += 250
}

with (asset_get("oPlayer")){
if "shopx" in self{
	if x < other.shopx + 40 and x > other.shopx - 40 and y < other.shopy + 60 and  y > other.shopy - 60 {
	if attacking && attack = AT_TAUNT && window_timer == 1 && window == 1 {
		move_cooldown[AT_DSPECIAL] = 0
		set_attack(AT_DSPECIAL)
		sound_play(sound_get("shopo"),false,noone,1)
		shoping = 1
	}
	nearshop = true
   } else {
   	nearshop = false
   }
}
}

if move_cooldown[AT_USPECIAL_GROUND] != 0 && visible && attacking && attack == AT_TAUNT{
	    move_cooldown[AT_DSPECIAL] = 0
		set_attack(AT_DSPECIAL)
		window = 1
		window_timer = 1
		sound_play(sound_get("shopo"),false,noone,1)
		shoping = 1
		move_cooldown[AT_USPECIAL_GROUND] = 180
}

if move_cooldown[AT_USPECIAL_GROUND] != 0 {
   vsp = 0
   hsp = 0
   invincible = true
}

if state == PS_IDLE_AIR or (attacking && attack != AT_TAUNT && attack != AT_DSPECIAL) {
	move_cooldown[AT_USPECIAL_GROUND] = 0
}

if move_cooldown[AT_TAUNT_2] == 320 {
	sound_play(sound_get("tend"),false,noone, 1)	
	move_cooldown[AT_TAUNT_2] = 229
}

if move_cooldown[AT_TAUNT_2] > 200 && move_cooldown[AT_TAUNT_2] < 320 {
	
			if move_cooldown[AT_TAUNT_2] % 6 == 0 {
	spawn_hit_fx(x - 40 + random_func(1,80,true),y - 35 - 40 + random_func(2,80,true),tsw)
			}
    shake_camera(2,2)	
}

if move_cooldown[AT_TAUNT_2] == 200 {
	

		    
	        state_timer = 99
  		    invincible = 0
		    window_timer = 99
	sound_play(sound_get("strongexp"),false,noone,1)
	sound_play(sound_get("death"),false,noone,1)	
	sound_play(sound_get("tstrong"),false,noone,1)
	style = style1
	spawn_hit_fx(x,y-40,305)
	spawn_hit_fx(x,y-40,304)
	spawn_hit_fx(x,y-40,306)
	create_hitbox(AT_EXTRA_1, 3, x, y - 40 )
	take_damage(player,-1,10)
	charge = 0

}
if move_cooldown[AT_TAUNT_2] == 199 {
	hitstop = 60
	move_cooldown[AT_TAUNT_2] = 31
}
