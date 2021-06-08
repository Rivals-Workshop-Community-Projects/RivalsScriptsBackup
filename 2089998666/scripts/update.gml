//update
user_event(14);

var balltorture = taunt_down;

if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) and (state_timer == 2) {
	sound_play( sound_get( "yoshi_jump" ) );
}

//Flutter Kick
if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_TUMBLE) && vsp > 3 && (jump_down || up_down) && (flutterTimer > 0) {
	set_attack(AT_EXTRA_1);
}

if (state == PS_ATTACK_AIR) and (attack == AT_EXTRA_1) {
	air_accel = .55;
} else {
	air_accel = .3;
	}

var naenae = up_down;
if !free {
	flutterTimer = 50;
	flutterAttack = 0;
}

if state == PS_WALL_JUMP {
	flutterTimer = 30;	
	if (state_timer == 1) && (attack == AT_USPECIAL) {
		spawn_hit_fx(x, y, eggBreak);
		sound_play(sound_get("ssbm_eggbreak"));
	}
}

//Ensure the egg charge variables never go beyond their usual values
if eggcharge > 10 {
	eggcharge = 10;
	}
if eggcharge2 > 20.7 {
	eggcharge2 = 20.7;
	}
if eggcharge2 < -.9 {
	eggcharge2 = -.9;
	}

if !(url == 2089998666) {
	set_state(PS_DEAD);
}

//Cookie Aid
if cookieTimer > 0 {
	cookieAid = 1;
	}	else {
	cookieAid = 0;
	}

if cookieTimer == 1 {
	sound_play(sound_get("smw2_pipe"));
}	var ligmas = special_down;
if (cookieAid) {

if bossmode = 1 {
    bsta += 0.3
}
    glowAnim++;
    cookieTimer--;
    
    //these stats won't be changed by the rune
    idle_anim_speed = .17;    
    walk_anim_speed = .2;
    dash_anim_speed = .5;
    walljump_vsp = 8;
    fast_fall = 13;
    gravity_speed = .55;
    knockback_adj = 1.08;
    wave_land_adj = 1.3;
    walk_speed = 6;
    walk_accel = .3;
    jump_speed = 12;
    short_hop_speed = 6.5;
    djump_speed = 9;
    air_max_speed = 5; 
	max_jump_hsp = 7; 
	air_friction = .03;
	hitstun_grav = .47;
    
    if (has_rune("M")) { //SL iroh stats
        dash_speed = 8;
        initial_dash_speed = 9;
        air_accel = .6;    
    } else { //default cookie buff stats
        dash_speed = 7;
        initial_dash_speed = 7.5;
        air_accel = .4;    
    }

}
    else { //these stats won't be changed
    idle_anim_speed = .12;    
    dash_anim_speed = .4;
    walk_anim_speed = .14;
    
    
    if (has_rune("M")) { //trummel stats
        walk_accel = 1;
        jump_speed = 11.5;
        short_hop_speed = 7;
        djump_speed = 8;
        air_max_speed = 7; 
        walljump_vsp = 11;
        fast_fall = 15; 
        gravity_speed = .5;
        knockback_adj = 1.2;
        wave_land_adj = 1.35;    
        walk_speed = 4.5;
        initial_dash_speed = 7.5;
        dash_speed = 7;
        max_jump_hsp = 7;
    } else { //default big yoshi stats
        walk_accel = 0.25;
        jump_speed = 12;
        short_hop_speed = 7.5;
        djump_speed = 10.5;
        air_max_speed = 4;
		max_jump_hsp = 6;
        walljump_vsp = 8;
        fast_fall = 16;
        gravity_speed = .6;
        knockback_adj = .9;
        wave_land_adj = 1.2;
        walk_speed = 3;
        initial_dash_speed = 6.75;
        dash_speed = 6.25;
		air_friction = .05;
		hitstun_grav = .52;
    }
}

if (move_cooldown[AT_DSPECIAL] == 1) {
	sound_play(sound_get("smw2_message_block"));
	spawn_hit_fx(x+30*spr_dir, y-60, cookieRestore);
}

if (has_rune("H")){

set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

}

if (has_rune("E")){

set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 8);

}

if (has_rune("I")){
    
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 104);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);    
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 180);


set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 200);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 180);

    
}

if (has_rune("J")){
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 1);
}




if (has_rune("K")){

set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 1.5);

set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 1.5);

set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 1.5);

set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1.5);
}

if (has_rune("D")){
	
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 3);
	
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -25);
}

if (has_rune("N")){

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 60);

set_hitbox_value(AT_JAB, 2, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 999);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 999);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 143);
}

if has_rune("L") {
	yosword = 1;
	}
if (naenae and balltorture and ligmas and yosword = 0 and attack = AT_TAUNT and (get_player_damage( player ) == 69) ){
    bossmode = 1
	sound_play(sound_get("smw2_message_block"));
	sound_play(sound_get("DSw"));
	sound_play(asset_get("sfx_ice_on_player"));
	spawn_hit_fx(x , y - 60, 306);
	yosword = 1
	
	var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					set_player_stocks(player, 2);
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
	create_hitbox(AT_NSPECIAL , 20 , shortest_id.x , shortest_id.y - 600 );    
}



//////////BOSSMODE

if bossmode = 1 {

if fheal > 300 {
	fheal = 300
}

if fparry > 600 {
	fparry = 600
}

if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 {

bscore -= 160	
	
}
	if bdefeat = -1 && get_player_damage(player) > 300 && free {
		if state != PS_PRATFALL {
		set_state(PS_PRATFALL)
		}
		
		invincible = 1
		
	}
		
	if bdefeat = -1 && get_player_damage(player) > 300 && !free{
		set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_VSPEED, -9)
        set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_HSPEED, 0)
		bdefeat = 400
	sound_play(asset_get("sfx_abyss_rumble"));
	sound_play(asset_get("sfx_abyss_explosion"));
	set_state (PS_PRATFALL)

	}
	
	if bdefeat > 0 {
		if !free && state != PS_PRATLAND {
				set_state (PS_PRATLAND)
		}
	   bsta -= 1  
       spr_dir = 1 
       hsp = 0
       
	    if bdefeat = 300 or bdefeat = 280 or bdefeat = 260 or bdefeat = 240{
	    sound_play(asset_get("mfx_confirm"));	
	    } 
	    
	    if bdefeat = 120{
	    sound_play(asset_get("sfx_war_horn"));	
	    }
	    
		if get_gameplay_time() % 15 == 0 {
			sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
			spawn_hit_fx( floor(x + 50 - random_func(10, 100, true)) , floor (y - 5 - (random_func(11, 100, true) / 2))  , 304 )
		} 
		
		invincible = 1
		prat_land_time = 500;
		bdefeat -= 1

		
		if bdefeat == 300 {
			sound_play(asset_get("sfx_abyss_explosion"));
		}
		
		if  bdefeat < 300 {
			if get_gameplay_time() % 2 == 1 {
			spawn_hit_fx ( room_width/2 - 360 , room_height/2 - 200, bosswin)
			}
		}
		
		
		if bdefeat < 60 {
			if get_gameplay_time() % 2 == 1 {
			x += 10
			}
			
			
			
		if get_gameplay_time() % 2 == 0 {
			x -= 10
			sound_play(asset_get("sfx_ell_dspecial_explosion_3"));
			spawn_hit_fx( floor(x + 100 - random_func(12, 200, true)) , floor (y + 50 - (random_func(13, 200, true) / 2))  , 305 )
		} 
		}
	}
	
	if bdefeat = 0 {
		set_player_stocks(player, 0);
		set_player_damage(player, 0)	
		bdefeat = -2
		sound_play(asset_get("sfx_abyss_explosion"));
		sound_play(asset_get("sfx_war_horn"));
		end_match();
		create_hitbox(AT_FSPECIAL , 9 , x - 20 * spr_dir , y - 50 );
		spawn_hit_fx ( x , y - 40, 306)
		spawn_hit_fx ( x , y - 40, 305)
	}
	
	
	
	draw_indicator = false
}

if bossmode = 1 && !hitpause && bdefeat = -1{
	
	can_shield = 1 
  	
with (oPlayer) {
if (id != other.id) {
	
	if move_cooldown[AT_JAB] % 10 == 0 && move_cooldown[AT_JAB] > 10  {

  		spawn_hit_fx (x, y - 40, 302)
    }
    
if !hitpause && move_cooldown[AT_TAUNT] == 1 {
  		spawn_hit_fx (x, y - 40, 305)
  		sound_play(asset_get("sfx_shop_buy"));	
  	}
  	
  	if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && move_cooldown[AT_TAUNT] = 0 {
      	if shield_pressed {
		if !free {
			set_state (PS_PARRY)
			state_timer = 2
		}
		if free {
			set_state (PS_AIR_DODGE)
			state_timer = 0
		}
		
	}
    }
    
    
    if state == PS_PARRY or state == PS_AIR_DODGE {
      if move_cooldown[AT_TAUNT] != 0 && move_cooldown[AT_TAUNT] < 10 {
      	move_cooldown[AT_TAUNT] = 10
      } 	
      
      if move_cooldown[AT_TAUNT] == 0{
    	if state_timer == 1 {
    	 sound_play(asset_get("sfx_kragg_rock_pillar"));
    	 sound_play(asset_get("sfx_spin"));
   	     sound_play(asset_get("sfx_bird_downspecial"));  	 
    	}
    	if state_timer == 1 {
    	move_cooldown[AT_JAB] = 78;	
    	spawn_hit_fx (x, y - 40, 304)	
    	}
    	if state_timer == 22 {
    	move_cooldown[AT_TAUNT] = 200
    	}
  	}
    }
}
}	
    
    if get_player_damage(player) > 160 and get_player_damage(player) <= 300 && state != PS_PRATFALL && state != PS_PRATLAND {
    	
    	if state == PS_AIR_DODGE or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD{
    		if  state_timer == 6  {
    		spawn_hit_fx (x, y - 40, 306)
    		sound_play(asset_get("sfx_holy_lightning"));
    		}
    		if state_timer = 8 {
    		x = hit_player_obj.x
    		y = hit_player_obj.y
    	spawn_hit_fx (x, y - 40, 302)
    		}
    	}
    	if fphase = 0 {
    		sound_play(asset_get("sfx_war_horn"));
    		spawn_hit_fx (x, y - 40, 306)
    		spawn_hit_fx (x, y - 40, 305)	
    		fphase = 1
       }
    		if get_gameplay_time() % 4 == 0 {
			spawn_hit_fx (x - 16 + random_func(6, 32, true) , y -  random_func(13, 70, true), tauntpar2)
	        }
	
    }


	if get_player_damage(player) > 120 and get_player_damage(player) <= 300 {
	
		if get_gameplay_time() % 200 = (random_func(13, 200, true)) or get_gameplay_time() % 120 = 0 {
			sound_play(asset_get("sfx_bird_sidespecial"));
			sound_play(asset_get("sfx_bird_downspecial"));
	    	create_hitbox(AT_FSPECIAL , 10 , hit_player_obj.x , hit_player_obj.y - 500 );	
	    	spawn_hit_fx(hit_player_obj.x , room_height/2 - 200, warning3);
			spawn_hit_fx(hit_player_obj.x  , room_height/2 - 100, warning2);
			spawn_hit_fx(hit_player_obj.x  , room_height/2 , warning);
		} 
		
		
	}
	prat_land_time = 120;
	
	
	if bsta >= 100 {
		bsta = 100
	}
	
	if bsta < 100 && !free && state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_ROLL_BACKWARD 
	&& state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR{
		bsta += 0.1
	}
	
	if state == PS_CROUCH {
		bsta += 0.2
	}
	
	
	if state == PS_PRATLAND && bsta < 100{
		spawn_hit_fx ( x - 100 , y - 30, 305)
		spawn_hit_fx ( x + 100, y - 30, 305)	
		create_hitbox(AT_FSPECIAL , 11 , x + 100 , y - 30 );	
		create_hitbox(AT_FSPECIAL , 11 , x - 100 , y - 30 );
		bsta = 100
	}
	
	if state_cat == SC_HITSTUN {
		bsta -= 0.15
	}
	
	if (state == PS_JUMPSQUAT  or state == PS_AIR_DODGE) && state_timer == 1{
		bsta -= 5
	if state == PS_AIR_DODGE {
		bsta -= 5
	}	
	}
	
	if state == PS_PARRY {
		if state_timer = 1 {
		bsta -= 10
		}
		if state_timer = 16 {
		spawn_hit_fx ( x, y - 40, 306)
		spawn_hit_fx ( x, y - 40, 304)	
		spawn_hit_fx ( x, y - 40, 305)	
			sound_play(asset_get("sfx_war_horn"));
			sound_play(asset_get("sfx_ell_dspecial_explosion_3"));
			create_hitbox(AT_EXTRA_1, 5 , x, y  );
		}
	}
	
	if (state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD)  && state_timer == 1 {
		bsta -= 10
	}
	
	
	if state == PS_DASH or state == PS_DASH_START {
		bsta -= 0.3
	}
	
	if state == PS_PARRY {
		super_armor = true
	}
	
	if bsta <= 0 && state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_ROLL_BACKWARD 
	&& state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR {

		if state != (PS_PRATFALL) {
		sound_play(sound_get("smw2_pipe"));	
		sound_play(asset_get("sfx_blow_medium3"));
		spawn_hit_fx ( x , y - 40, 304)	
		set_state (PS_PRATFALL)
		}
		
	}
	
	if ( x > room_width/2 + 600) {
		hsp = -10
		x -= 10
		vsp = -15
		sound_play(sound_get("smw2_boing"));
		sound_play(asset_get("sfx_blow_medium3"));
		spawn_hit_fx ( x , y - 40, 304)	
	} 
	
	if x < room_width/2 - 600 {
		hsp = 10
		x += 10
		vsp = -15
		sound_play(sound_get("smw2_boing"));	
		spawn_hit_fx ( x , y - 40, 304)	
	}

    if ((y >= room_height - vsp)){
    sound_play(sound_get("smw2_boing"));
bsta -= 10
      set_state (PS_IDLE_AIR)
      window = 4
      vsp = -20
    if x > room_width/2 {
    	hsp = 8
    } else {
    	hsp = -8
    }
      spawn_hit_fx ( x , y - 40, 304)	
    }
    
    if ((y <= room_height/2 - 400)){
     vsp /= 2
    }
    
	knockback_adj = (1.01 - ((get_player_damage(player)) / 300))
}