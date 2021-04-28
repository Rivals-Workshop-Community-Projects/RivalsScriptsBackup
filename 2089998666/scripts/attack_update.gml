// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Flutter Kick
if (attack == AT_EXTRA_1) {
	can_wall_jump = true;
	can_attack = true;
	can_special = true;
	can_shield = true;
	//hsp = clamp(hsp, -(air_max_speed-1), air_max_speed-1);
	
	if 3 > vsp {
	flutterTimer--;
	}
	
	if vsp > -5 {
		if vsp > 3 {
			vsp -= .7;
		} 
		else {
			vsp -= .3;
		}
	}
	
	if window_timer == 7 && flutterTimer > 0 && (jump_down || up_down) {
	window_timer = 0;
	}
	
	if attack_pressed && !flutterAttack {
	vsp = clamp(vsp, -100, -6);
	flutterAttack = 1;
	
		if right_down {
		hsp = 5.5;
		}
		else if left_down {
		hsp = -5.5;
		}
	}
	
	if special_pressed && !up_down {
	vsp = clamp(vsp, -100, -4);
	}
	
	if has_rune("O") {
	soft_armor = 10;
	}
}

//Ground Pound (DAir)
if (attack == AT_DAIR) {
	can_fast_fall = false;
	
	if window == 4 {
		if window_timer == 39 {
		window_timer = 21;
		}
		if window_timer > 20 {
		can_jump = true;
		can_shield = true;
			if (up_down) {
			vsp -= 10;
			destroy_hitboxes();
			flutterTimer = 30;
				attack = AT_EXTRA_1;
				window = 1;
				window_timer = 0;
			}
		}
	}
	if window == 5 && window_timer == 0 {
		destroy_hitboxes();
		if !hitpause {
			spawn_hit_fx( x+40*spr_dir, y-2, beegsmokeR);
			spawn_hit_fx( x-40*spr_dir, y-2, beegsmokeL);
		}
	}
	
	if window == 6 {
		if (has_hit && window_timer == 14 || window_timer == 19) && !was_parried {
			set_state(PS_CROUCH);
			state_timer = 8;
		}
	}
	

}

//BAir momentum stuff
if (attack == AT_BAIR) {
	if window == 2 && window_timer == 3 {
		vsp = clamp(vsp, -100, 2);
	}
	if window == 3 && window_timer == 1 {
		vsp = clamp(vsp, -100, -2.5);
	}
}

//DStrong stuff
if (attack == AT_DSTRONG) {
	if window == 5 && window_timer == 6 && !hitpause {
		spawn_hit_fx( x+50*spr_dir, y-2, beegsmokeR);
		spawn_hit_fx( x-50*spr_dir, y-2, beegsmokeL);
	}
}

//Jab stuff
if (attack == AT_JAB) {
	if window == 7 {
		can_attack = true;
	}
}

//DAttack stuff
if (attack == AT_DATTACK) {
	if window == 4  {
		if window_timer == 3 && !hitpause {
			spawn_hit_fx( x-20*spr_dir, y-2, beegsmokeL);
		}
	}
	if (window == 4 && window_timer > 6 || window > 4) && !hitpause && has_hit && down_down && attack_pressed {
		set_attack(AT_DTILT);
	}
}

//DTilt stuff
if (attack == AT_DTILT) {
	if window == 4 {
		if (has_hit && window_timer == 4 || window_timer == 6) && !was_parried {
			set_state(PS_CROUCH);
			state_timer = 8;
		}
	}
}

//Cookie things
if cookieTimer > 0 {
	set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);
	set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .35);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
	set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);
	set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);
}	else {
	reset_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	reset_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	reset_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED);
	reset_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	reset_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION);
}

//USpecial stuff
if (attack == AT_USPECIAL) {
	can_fast_fall = false;
	if window < 3 {
		vsp = clamp(vsp, -100, 2);
	}
	
	if window == 2 {
		if special_down && 10 > eggcharge {
			eggcharge++;
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -14-(eggcharge*.35));
			set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7+(eggcharge*.5));
			set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6+(eggcharge*.4));
			
			if window_timer == 4 {
				window_timer = 0;
			}
		}
	}
	if window > 2 && 3 > vsp {
	hsp = clamp(hsp, -2, 2);
	}
	
	if window == 3 {
		soft_armor = 4;
		if window_timer == 1 {
			eggcharge = 0;
			reset_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED);
			reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
			reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
		}
	}
	if window == 4 {
		can_wall_jump = true;
		if !free {
			window = 5;
			window_timer = 0;
			vsp = -5;
		}
		if window_timer == 4 {
			window_timer = 0;
		}
		
		
	}

	if window == 5	{
		if window_timer == 0 && !hitpause {
		soft_armor = 0;
		destroy_hitboxes();
		spawn_hit_fx(x, y, eggBreak);
		sound_play(sound_get("ssbm_eggbreak"));
		move_cooldown[AT_USPECIAL] = 30;
		}
		if window_timer == 1 {
			set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
		}
	} else {
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
	}
}

//Ensure the egg charge variables don't linger outside the attacks they're used (like when you're hit off them)
if !(attack == AT_USPECIAL) {
	eggcharge = 0;
	}

//Taunt stuff
if (attack == AT_TAUNT) and (window == 1) and (window_timer == 1) {
	if (right_down || left_down) {
		set_attack(AT_TAUNT_2);	
	}
	sax = random_func(0, 2, false);
}
if (attack == AT_TAUNT_2) {
	if window == 3 && window_timer == 3 {
		sound_play(sound_get("sakktaunt"), false, noone, 1, .9+sax/8);
	}
	if window == 5 && window_timer == 3 {
		if taunt_down {
			window = 7;
			window_timer = 0;
		}
	}
	if window == 7 {
		if window_timer == 0 {
			sound_play( sound_get( "marioundergroundsax"), true, noone, 1.2, .95);
		}
		if taunt_down {
			suppress_stage_music( 0.3, 0.005 );
			if window_timer == 24 {
				window = 7;
				window_timer = 1;
			}
		}	else {
				window = 6;
				window_timer = 0;
				sound_stop( sound_get( "marioundergroundsax"));
		}
	}
} else {
	sound_stop( sound_get( "marioundergroundsax"));
}

if (attack == AT_EXTRA_2) {
	if window == 5 && window_timer == 8 && !was_parried { //as if you could get this move parried lmao
		set_state(PS_CROUCH);
		state_timer = 8;
	}
}

//NSpecial stuff
if (attack == AT_NSPECIAL) {
	if (has_hit_player && !hitpause && hit_player_obj.super_armor == 0 && yosword = 0){
		hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,0.5);
        hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,0.1);
        hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
        hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
		attack_end();
		destroy_hitboxes();
		vsp = 0;
		hsp = 0;
		
		if window == 4 && window_timer == 12 {
		set_attack(AT_NSPECIAL_2);
		move_cooldown[AT_NSPECIAL] = 50;
		}
    }
}
	
if (attack == AT_NSPECIAL_2) {
	can_fast_fall = false;
	if (2 > window && has_hit_player && !hitpause && hit_player_obj.super_armor == 0 && yosword = 0){
		hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,0.5);
        hit_player_obj.vsp = lerp(hit_player_obj.vsp,vsp,0.1);
        hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
        hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
		vsp = 0;
		hsp = 0;
	}
}


//FSpecial stuff
if (attack == AT_FSPECIAL) {
	if window == 1 && window_timer == 1 && cookieTimer > 0 {
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
	} else if cookieTimer == 0 {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y);
	}
	if window == 2 {
		if special_down {
			//loop
			if window_timer == 5 {
				window_timer = 2;
				sound_play(sound_get("smw2_co"));
			}
			
			if eggrising == 1 {
				eggcharge2 += .9;
				if down_down {
					eggcharge2 -= .9;
				}
			} 
			if eggrising == 0 {
				eggcharge2 -= .9;
				if down_down {
					eggcharge2 += .9;
				}
			}
			
			//Check if the egg arrow is going up or down
			if eggcharge2 == 20.7 {
				eggrising = 0;
			} else
			if eggcharge2 == -.9 {
				eggrising = 1;
			}
			
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -1-(eggcharge2*.65));
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 8-(eggcharge2*.35));
			
			set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_VSPEED, -1-(eggcharge2*.65));
            set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_HSPEED, 8-(eggcharge2*.35));	
		} 
	}
	
	
	if free && window == 3 && window_timer == 1 {
	vsp = clamp(vsp, -100, -5);
	}
	
	if window == 3 && window_timer == 7 {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
	}
	
	if window == 5 {	
		move_cooldown[AT_FSPECIAL] = 60;	
	}
} else {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
}


//DSpecial stuff
if (attack == AT_DSPECIAL) {
	can_fast_fall = false;	
	if (window == 1) {
		can_shield = true;
		
		if down_pressed {
			window = 5;
			window_timer = 0;
		}
	}
	
	if free && vsp > 0 {
	vsp -= .5;
	hsp = clamp(hsp, -1.5, 1.5);
	}
	
	if window == 4 {
		if window_timer == 10 {
			if bossmode = 1 {
	yosword = 1
	spawn_hit_fx (x, y-40, 304)
	sound_play(asset_get("sfx_war_horn"));	
}
			cookieTimer = 480;
			cookieMeter -= 1;
			move_cooldown[AT_DSPECIAL] = 960;
			}
		if window_timer > 11 {
			can_attack = true;
			can_jump = true;
			can_move = true;
			can_shield = true;
		}
	}

	if window == 1 && window_timer == 3 && cookieMeter == 0 {
			sound_play(sound_get("smrpg_wrong"));
			window = 5;
			window_timer = 0;
		}
}

if has_rune("A") {
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 10);
	set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);	
	set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
}
	
if has_rune("C") {
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, -.05);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 14);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 8);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 150);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 150);
}

if has_rune("D") {
	set_num_hitboxes(AT_DSTRONG,3);
	set_num_hitboxes(AT_FTILT,3);
}

if has_rune("G") && move_cooldown[AT_DSPECIAL] > 0 && cookieTimer == 0 {
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 18);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 21);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 13);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 21);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 13);
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 16);
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
}

if (has_rune("J")){
	if (attack == AT_DSPECIAL) {
	if window == 1 {
		if window_timer == 1 {
		cookieTimer = 480;
		cookieMeter -= 1;
		move_cooldown[AT_DSPECIAL] = 960;
		}
	}
}
}
if (has_rune("F")){
	cookieMeter = 3;
}

////////// YOSHI SWORD ???
if !hitpause && yosword == 1 {
	
		
	if get_player_damage(player) > 160 and get_player_damage(player) <= 300 and bossmode = 1{

			if window < 3 {
			super_armor = true
		   }
	}
	
	
	if get_player_damage(player) > 160 && get_gameplay_time() % 40 = 0 {
		sound_play(asset_get("sfx_bird_sidespecial"));
			create_hitbox(AT_FSPECIAL , 10 , floor(x + 50 - random_func(10, 100, true))  , hit_player_obj.y - 500 );
			spawn_hit_fx(floor(x + 50 - random_func(10, 100, true)) , room_height/2 - 200, warning3);
			spawn_hit_fx(floor(x + 50 - random_func(10, 100, true)) , room_height/2 - 100, warning2);
			spawn_hit_fx(floor(x + 50 - random_func(10, 100, true)) , room_height/2 , warning);
	}
	
	
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 10);
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dairs"));
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nairs"));
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 10);
	set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 10);
	
   if attack == AT_JAB{
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 110);   	
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -37);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 100);        
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -27);

        
        
   if window == 1 && window_timer == 1{
   	bsta -= 7
		sound_play(asset_get("sfx_ice_shieldup"));
      	spawn_hit_fx(x , y - 60, 302);
   }
   
   if window == 4 && window_timer == 1{
   	bsta -= 7
		sound_play(asset_get("sfx_ice_shieldup"));
   }
   
   
   if window = 2 && window_timer = 1 {
   		create_hitbox(AT_EXTRA_1 , 1 , x  , y  );
   }
   if window = 5 && window_timer = 1 {
   		create_hitbox(AT_EXTRA_1 , 2 , x  , y  );
   }
   
   }
   
   
    if attack == AT_FTILT{
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 100);        
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -67);


   if window == 1 && window_timer == 1{
   	bsta -= 15
		sound_play(asset_get("sfx_ice_on_player"));
   }
   if window == 2 && window_timer == 3{
   	  spawn_hit_fx(x + (90 * spr_dir) , y - 10, 303);
   	  create_hitbox(AT_EXTRA_1 , 2 , x , y  );

   }
   
   }
   
    if attack == AT_DTILT{
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 0);   	
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -37);

   if window == 1 && window_timer == 1{
   	bsta -= 4
		sound_play(asset_get("sfx_ice_on_player"));
   }
   if window == 2 && window_timer % 3 = 0{
   	bsta -= 1
   	sound_play(asset_get("sfx_ice_shieldup"))
   	  spawn_hit_fx(x , y - 10, 303);
   	  	create_hitbox(AT_EXTRA_1 , 4 , x  , y  );
   }
   
   }
   
    if attack == AT_UTILT{

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, -10);   	
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -110);
   if window == 2 && window_timer == 1{
   	    	bsta -= 15
		sound_play(asset_get("sfx_ice_on_player"));
   }
   
   if window ==2 && window_timer = 5 {
   	create_hitbox(AT_EXTRA_1 , 3 , x  , y  );
   }
   }
   
   if attack == AT_NSPECIAL{
   	set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 110);   	
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -40);
   	set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 110);   	
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -40);
   if window == 1 && window_timer == 1{
   	bsta -= 20
   	    spawn_hit_fx(x , y - 40, 306);
		sound_play(asset_get("sfx_ice_on_player"));
		sound_play(asset_get("sfx_bird_downspecial"));
   }
   
    if window == 2 && window_timer == 1{
   	    spawn_hit_fx(x , y - 40, 303);
   }
   
   if ((window == 2 and window_timer > 7) or window = 3) {
   	if state_timer % 2 = 0 {
   			create_hitbox(AT_EXTRA_1 , 3 , x  , y  );
   	}
    	   	create_hitbox(AT_EXTRA_1 , 4 , x  , y  );
    	}
    if (window == 2 or window == 3) && window_timer % 3 = 0{
   	sound_play(asset_get("sfx_ice_shieldup"))
   }
   
   }
   
   if attack == AT_USPECIAL {
   	set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 0);   	
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -37);

   if window == 1 && window_timer == 1 {
   	bsta -= 20
   	sound_play(asset_get("sfx_spin"));
   }	
   
   if window > 1 && window_timer % 3 = 0 {
	sound_play(asset_get("sfx_ice_shieldup"));
	create_hitbox(AT_EXTRA_1 , 4 , x  , y  );
   }
   	
   }
   
   
    if attack == AT_FSPECIAL{
    	   if window == 1 && window_timer == 1{
    	   	bsta -= 20
   	    spawn_hit_fx(x - (30 * spr_dir) , y - 40, 306);
		sound_play(asset_get("sfx_ice_on_player"));
		sound_play(asset_get("sfx_bird_downspecial"));
   }
   
   
   
   if window == 3 && window_timer == 5 {
    set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
   	window_timer = 7
   	create_hitbox(AT_FSPECIAL , 9 , x - 20 * spr_dir , y - 50 );
   	sound_play(asset_get("sfx_ice_shieldup"))
   	sound_play(asset_get("sfx_swipe_heavy2"))
   	yosword = 3
   }
    	
    }
    
       if attack == AT_NAIR {
       	
 set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 50);   	
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -30);
 set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 10);   	
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 8);

       	if window == 1 && window_timer == 5 {
       		bsta -= 10
       			sound_play(asset_get("sfx_ice_on_player"));
       	}
       	
       	if window == 2 && window_timer == 1 {
       	  create_hitbox(AT_EXTRA_1 , 1 , x  , y  );
       	  create_hitbox(AT_EXTRA_1 , 3 , x  , y  );
       	}
       	
       	
       }
       	
       	
   if attack == AT_DAIR {
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 0);   	
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -37);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 60);   	
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 60);   	
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -37);
   	if window == 1 {

   		if window_timer % 2 == 0 {
   			   		bsta -= 3
   	sound_play(asset_get("sfx_ice_shieldup"));
	create_hitbox(AT_EXTRA_1 , 4 , x  , y  );
   	}
   	
   	if window_timer == 5 {
   	create_hitbox(AT_EXTRA_1 , 1 , x  , y  );
   	} 
   	
   	}
   	
   	if window == 2 && window_timer == 1 {
   		sound_play(asset_get("sfx_ice_on_player"));
		sound_play(asset_get("sfx_bird_downspecial"));
   	}
   	
   	if window == 3 && (window_timer % 3 == 0 or window_timer <= 1) {
   		
   			create_hitbox(AT_EXTRA_1 , 2 , x  , y  );
   	}
   	
   }
   
   
  
   
   
    if  attack == AT_FSTRONG {
    	set_attack (AT_FTILT)
    }
    
    if attack == AT_FAIR or attack == AT_UAIR {
    	set_attack (AT_NAIR)
    } 
    
    if attack == AT_BAIR{
    spr_dir *= -1
    	set_attack (AT_DAIR)
    } 
    
    if attack == AT_USTRONG {
    	set_attack (AT_UTILT)
    }
     
      if attack == AT_DATTACK or attack == AT_DSTRONG {
    	set_attack (AT_DTILT)
    }
	
}



 