if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if nbullet > 5 {
	nbullet = 5
}
if get_gameplay_time() = 1 {
set_attack (AT_EXTRA_2)
window = 0
window_timer = 0
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(sound_get("teleport1"));
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


attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)

if obamium > 1 {
	obx += (x - obx) / 4
}



if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
obamium = 120
sound_play(asset_get("sfx_ori_charged_flame_charge2")); 
sound_play(sound_get("Obamium"));
}

if obamium > 0 {
    if obamium != 1 {
        obamium -= 1
    }
    
 if obamium == 1 {
     sound_play(asset_get("sfx_coin_collect")); 
    spawn_hit_fx (x, y - 40, 115)
    obamium = 0
    obabo += 1
 }
}

if state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR and !hitpause{
    
    jettime = 0
    spamb = 0
}


if !free or state_cat == SC_HITSTUN or state == PS_WALL_JUMP {
    move_cooldown[AT_USPECIAL] = 0;
    
}


if !attacking {
	if nbullet < 5 {
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
		set_num_hitboxes(AT_NAIR,5);
		gun = 0
	}
	
	if nbullet >= 5 {
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair2"));
		set_num_hitboxes(AT_NAIR,9);
        if gun = 0{
        	sound_play(sound_get("GL"));
        	gun = 1
        }
	}
	
	if bbullet == 2 {
	    bbullet = 1
    sound_play(sound_get("GL"));
	}
	
	if bbullet == 1 {
	    set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair2"));
	} else {
	    set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	}
}	


////



if ostyle != 4 {
	
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 200);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 240);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.6);
} else {
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 320);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 290);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 16);	
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.6);	
}



if ostyle == 3 or ostyle == 4{
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.5;
walk_turn_time = 4;
initial_dash_time = 8;
initial_dash_speed = 8;
dash_speed = 6;
dash_turn_time = 4;
dash_turn_accel = 1.5;
dash_stop_time = 9;

jump_start_time = 4;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 13;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .80; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 11;
walljump_time = 24;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
wave_land_adj = 1.35;
} 





if ostyle == 1{

	
idle_anim_speed = .3;
crouch_anim_speed = .2;
walk_anim_speed = .4;
dash_anim_speed = .6;

walk_speed = 5;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 8;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 4;
dash_turn_accel = 1.5;
dash_stop_time = 9;

jump_start_time = 4;
jump_speed = 15;
short_hop_speed = 9;
djump_speed = 15;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .80; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 11;
walljump_time = 24;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
wave_land_adj = 1.35;
if !attacking {
gravity_speed = .8;
}
hitstun_grav = .5;
	
}

if  ostyle == 5{
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.5;
walk_turn_time = 4;
initial_dash_time = 8;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 4;
dash_turn_accel = 1.5;
dash_stop_time = 9;

jump_start_time = 4;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 3; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .80; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 11;
walljump_time = 24;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
wave_land_adj = 1;
} 


if ostyle == 2{
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .2;

walk_speed = 2;
walk_accel = 0.5;
walk_turn_time = 5;
initial_dash_time = 10;
initial_dash_speed = 3;
dash_speed = 3;
dash_turn_time = 6;
dash_turn_accel = 1.5;
dash_stop_time = 10;

jump_start_time = 4;
jump_speed = 8;
short_hop_speed = 6;
djump_speed = 8;
leave_ground_max = 3; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .80; //multiplier of air_accel while in pratfall
air_friction = .035;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 11;
walljump_time = 24;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .6;
wave_land_adj = 1;
} 



if ostyle != 5 {
	
	if get_gameplay_time() % 2 == 1 {
	spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - 20 - random_func(4, 80, true) , esp2 )
	}
	
	if otime > 0 && !hitpause && state_cat != SC_HITSTUN{
		otime -= 1
	}
	if otime == 0 {
	spawn_hit_fx (x, y - 40, 115);
	sound_play(asset_get("mfx_back"));	
	ostyle = 5
	}
}


if ostyle != 5 {
	if otime % 150 == 0 && !hitpause {
		take_damage (player, -1, -1)
	} 
}



if get_player_color(player) == 7 {
		outline_color = [29, 25, 38]
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
	
	if get_gameplay_time() % 60 == 0	 {
   	set_color_profile_slot(get_player_color(player),2, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 60 == 40{
	set_color_profile_slot(get_player_color(player),2, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 60 == 20{
	set_color_profile_slot(get_player_color(player),2, 160, 195, 250 );	
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