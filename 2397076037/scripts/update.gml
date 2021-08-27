///


///if triggered {
///	  knockback_adj = 1.2;
///} else {
///	  knockback_adj = .9;
///}



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
	   sound_play(sound_get("rankd"),false,noone,1) 
	    prevrank = rank 
    } else {
    	 prevrank = rank 
    }
    
 rankm += 120
 rank -= 1
 



}
}

if rank < 6  {
   if rankm >= 240 {	
   	 rankm -= 120
     rank += 1
     switch rank {
     	case 1 :
     	sound_stop(sound_get("rankd")) 	
     	if rank > prevrank {
     	sound_play(sound_get("rankc"),false,noone,0.8) 	
     	prevrank = rank
     	}
     	break;
     	
     	case 2 :
     	if rank > prevrank {
     	sound_stop(sound_get("rankc")) 	
     	sound_play(sound_get("rankb"),false,noone,0.8) 
     	prevrank = rank
     	}
     	break;
     	
     	case 3 :
     	if rank > prevrank {
     	sound_stop(sound_get("rankb")) 	
     	sound_play(sound_get("ranka"),false,noone,0.8) 
     	prevrank = rank
     	}
     	break;
     
        case 4 :
        if rank > prevrank {
     	sound_stop(sound_get("ranka")) 	
     	sound_play(sound_get("ranks"),false,noone,0.8) 
     	prevrank = rank
        }
        
     	 if hitpause {
     		hitstop += 4
     		hit_player_obj.hitstop += 4
     	}
     	
         	spawn_hit_fx(x,y - 40,SC)
     	    spawn_hit_fx(x,y,lighten)
     		sound_play(sound_get("counterhit"),false,noone,0.8)
     		sound_play(sound_get("RI"),false,noone,0.6)
     	
     	break;
     	
     	case 5 :
     	if rank > prevrank {
     	sound_stop(sound_get("ranks")) 	
     	sound_play(sound_get("rankss"),false,noone,0.8) 
     	prevrank = rank
     	}
     	break;
     	
     
        case 6 :
        if rank > prevrank {
     	sound_stop(sound_get("rankss")) 	
     	sound_play(sound_get("ranksss"),false,noone,0.8) 
     	prevrank = rank
        }
     	break;
     		
     }
   }
   
} else {
   if rankm >= 240 {	
   	 rankm -= 2
   }
}




if DT < 6 and triggered == 0 and (can_attack or state == PS_DASH 
or state == PS_DASH_START or state == PS_DASH_TURN or state == PS_DASH_STOP)and !free {
	if left_strong_pressed or right_strong_pressed {
		set_attack(AT_FTILT)
	}
	if down_strong_pressed {
		set_attack(AT_DTILT)
	}
	if up_strong_pressed {
		set_attack(AT_UTILT)
	}
	
}
if DT >= 16 {
	DT = 16
}


if DT <= 0 {
	DT = 0
	 if triggered = 1{
        shake_camera(2,4)
        spawn_hit_fx(x-20*spr_dir,y - 60,305)
        sound_play(asset_get("sfx_ori_bash_hit"))
        sound_play(sound_get("SpaceCut"),false,noone,0.4)
        triggered = 0
    }
}

if triggered == 0 {
if DT < 2 {
	move_cooldown[AT_FSPECIAL] = 2
}

if DT < 4 {
	move_cooldown[AT_DSPECIAL] = 2
}

if DT < 6 {
	move_cooldown[AT_USTRONG] = 2
	move_cooldown[AT_DSTRONG] = 2
	move_cooldown[AT_FSTRONG] = 2	
}

if DT < 6 && triggered = 0{
	move_cooldown[AT_NSPECIAL] = 2
}
}

if triggered = 0 {
if weapon = 1 && DT < 4 {
	exheld = 0
}

if weapon = 0 && DT < 2 {
	exheld = 0
}
}

if !free or state == PS_WALL_JUMP or state_cat == SC_HITSTUN {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_DAIR] = 0
}

if state == PS_PRATLAND && state_timer == 1{
	sound_play(sound_get("gotparried"));
	exheld = -1
}

if state == PS_RESPAWN  && !hitpause {
	
	can_attack = false
	
	if deathnum = 0 && state_timer == 91{
	  sound_play(sound_get("2stock"))	
      deathnum += 1
    }
    
    if deathnum = 1 && state_timer == 90 {
      sound_play(sound_get("firstdeath"))  	
      deathnum += 1
    }
    
}

if instance_exists(hit_player_obj) {
if hit_player_obj.state == PS_RESPAWN && hit_player_obj != self && hit_player_obj.state_timer == 1{
	if deathnum = 0 {
		sound_play(sound_get("firstkill"),false,noone,1.6)  	
	}
}

if hit_player_obj.state == PS_DEAD && deathnum > -1{
	if deathnum == 0 {
		sound_play(sound_get("3stock"),false,noone,1.6)  	
	}
	if deathnum == 1 {
		sound_play(sound_get("2stock"),false,noone,1.6)  	
	}
	if deathnum == 2 {
		sound_play(sound_get("1stock"),false,noone,2)  	
	}
	
	deathnum = -1
	
}

}

if get_gameplay_time() == 1 {
	set_attack(AT_TAUNT)
	window = 3
	window_timer = 0
}
	if exheld == 8 or exheld == 10 {
		outline_color = [255, 255, 255]
		sound_play(asset_get("sfx_charge_blade_ready"),false,noone,0.8);
		        init_shader();
	} 
	
	if exheld < 8{
		outline_color = [0, 0, 0]
		        init_shader();
	}
	
	if exheld > 10 or exheld == 9 {
		alt = get_player_color(player);
		Rline = get_color_profile_slot_r ( alt , 0 )
        Gline = get_color_profile_slot_g ( alt , 0 )
        Bline = get_color_profile_slot_b ( alt , 0 )
         
        if exheld % 4 < 2 { 
			outline_color = [Rline/3 ,Gline/3, Bline/3]
				        init_shader();	
        } else {
        	outline_color = [0, 0, 0]
		        init_shader();
        }
	}
	
if exheld >= 0 && !hitpause && (!attacking or (attacking && has_hit_player)) && attack_down && !attack_pressed 
&& attack != AT_EXTRA_1 && attack != AT_EXTRA_2 && state != PS_LANDING_LAG {
	exheld += 1
}

if exheld >= 6 && !attack_down && (state != PS_AIR_DODGE )
&& (state != PS_ROLL_BACKWARD )
&& (state != PS_ROLL_FORWARD )
&& (state != PS_TECH_BACKWARD)
&& (state != PS_TECH_FORWARD ){

move_cooldown[AT_DTILT] = 6
	

    if left_down && !right_down{
        spr_dir = -1
    }
    if !left_down && right_down{
        spr_dir = 1
    }
    
   if weapon = 1 {
   	attack_end();
	window = 0
	window_timer = 0
	exheld = 0
	set_attack(AT_EXTRA_2)
	if triggered == 0 {
	DT -= 4
	}

   }
   
    if weapon = 0 {
    attack_end();	
	set_attack(AT_EXTRA_1)
	window = 0
	window_timer = 0
	exheld = 0
	if triggered == 0 {
	DT -= 2
	}
	}
   
}
if !free & ground_type == 1 {
	iny = y
}


if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	
	if !attack_down && (state != PS_ROLL_FORWARD and state != PS_ROLL_BACKWARD and state !=PS_TECH_FORWARD and state != PS_TECH_BACKWARD
	and state != PS_AIR_DODGE and state != PS_PARRY and state != PS_PARRY_START) {
	exheld = -1	
	} 
	
	attacking = false
	specialing = 0
}

if state_cat == SC_HITSTUN {
	exheld = -1
}

if !hitpause {
	if get_gameplay_time() %2 == 0
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD{
	
			if state_timer == 1 && triggered = 0 {
						sound_play(sound_get("cnoise4"),false,noone,0.9);
			}
			
	if state_timer == 16 && !hitpause{
				sound_play(asset_get("sfx_absa_new_whip1"),false,noone,0.5);
	}
}



if state == PS_AIR_DODGE {
	
			if state_timer == 1 && triggered = 0 {
						sound_play(sound_get("cnoise4"),false,noone,0.9);
			}
			
	if state_timer == 14 {
		sound_play(asset_get("sfx_absa_new_whip1"),false,noone,0.5);
		
	}

	
	
}

if state == PS_WALK or state == PS_DASH{
	if state_timer % 10 = 0  && triggered = 0{
					sound_play(sound_get("cnoise4"),false,noone,0.4);
	}
	
}

	if state_timer == 1 and state == PS_CROUCH && triggered = 0  {
						sound_play(sound_get("cnoise3"),false,noone,0.6);
	}
	
if state == PS_WAVELAND {
			if state_timer == 1 && triggered = 0 {
						sound_play(sound_get("cnoise1"),false,noone,1.2);
							sound_play(sound_get("cnoise2"),false,noone,0.8);
			}
}

if state == PS_PARRY {
			if window_timer == 1 && window = 1{
				if triggered = 0 {
						sound_play(sound_get("cnoise3"),false,noone,0.9);
				}
						sound_play(asset_get("sfx_absa_new_whip1"),false,noone,0.5);
			}
}

if state == PS_WALL_JUMP {
			if state_timer == 1 && triggered = 0 {
						sound_play(sound_get("cnoise1"),false,noone,0.9);
			}
}


if state == PS_DASH_START{
	if state_timer == 1 && triggered = 0 {
					sound_play(sound_get("cnoise1"),false,noone,0.9);
	}
}

if state == PS_DASH_TURN or state == PS_WALK_TURN{
	if state_timer == 1 && triggered = 0 {
					sound_play(sound_get("cnoise2"),false,noone,0.6);
	}
}


///DT stuff

if triggered = 1 {
	
	
with (pHitBox) {

if player_id == other.id {

    if hit_effect_y != -1 {
     y_pos -= 14
     hit_effect_y = -1
    }

}
} 


walk_speed = 4;
walk_accel = 0.4;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 7.5
dash_turn_time = 8;
dash_turn_accel = .5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
wave_land_adj = 1.3;
	
walljump_hsp = 5;
walljump_vsp = 12;
walljump_time = 9;

	if get_gameplay_time() % 2 == 0 {
	spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - 60 - random_func(4, 80, true) , esp )
	}

if !hitpause {
triggertime += 1


if triggertime % 45 == 0 && triggertime > 1 {
	if triggertime % 45 == 0 {
	take_damage( player, -1 , -1)
	}
	DT -= 1
}
}
	
	land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_heavy");

if !attacking or (attacking && attack != AT_USPECIAL) {
	char_height = 100;
	//sprite_change_offset("uspecial", 136, 188);
}

if attacking && attack = AT_USTRONG {
	   draw_y = 0
} else {
   draw_y = -14; 
}
   
} else {

	
triggertime = 0
	
with (pHitBox) {

if player_id == other.id {

    if hit_effect_y == -1 {
     y_pos += 14
     hit_effect_y = 1
    }

}
} 


walk_speed = 3;
walk_accel = 0.4;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 5;
dash_speed = 5
dash_turn_time = 8;
dash_turn_accel = .5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 4.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .26;
wave_land_adj = 0.86;

walljump_hsp = 3;
walljump_vsp = 8;
walljump_time = 9;

land_sound = sound_get("cnoise3");
landing_lag_sound = sound_get("cnoise3");
if !attacking or (attacking && attack != AT_USPECIAL) {
   char_height = 80;
   //sprite_change_offset("uspecial", 136, 158);
}
   draw_y = 0;  
}




////Kirb ngoo

if swallowed { 
    swallowed = 0
        var ability_spr = sprite_get("kspecial");
        var ability_hurt = sprite_get("kspecial_hurt");
        var sound = sound_get("SpaceCut");
        var sound2 = sound_get("SpaceCutB")
        var sound3 = sound_get("korb");
        var cut = sprite_get("slashck")
        var myicon = sprite_get("kicon")
    with enemykirby { 
    	
newicon = myicon        
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr );
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2 );
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);



set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);





set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, sound2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX, sound2);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_SFX, sound2);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 11);




set_num_hitboxes(AT_EXTRA_3, 3);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X,  100);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, cut);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, sound);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X,  120);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, cut);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, sound);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 6);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X,  130);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, cut);
set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, sound);
set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, -1);


} 
}

if instance_exists(hit_player_obj) {
if get_player_color(player) == 7 && hit_player_obj.state_cat == SC_HITSTUN {
	if hitpause {
		 
		 if get_gameplay_time() % 5 == 0 {
		create_hitbox(AT_USPECIAL , 16 , floor(hit_player_obj.x + 20 - random_func(4, 40, true)) ,  floor(hit_player_obj.y - 40 + 20 - random_func(5, 40, true)));
				set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_HSPEED, 6 - random_func(4, 14, true) );
        set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_VSPEED, -3 - random_func(3, 6, true) );	
		 }
		 
	} 
		
}
}