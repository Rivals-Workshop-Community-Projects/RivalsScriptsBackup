if attack == AT_FSPECIAL_2 {

}

if qpu && get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) == 69 {

	var qpucancel = get_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
	if qpucancel > 0 && window_timer >= qpucancel {
		window += 1;
		window_timer = 0;
		mariospeed -= 2;     //NUMBER HERE: THIS CHANGES HOW MUCH SPEED MARIO LOSES WHEN SKIPPING A WINDOW IN QPU
	}

}

if attack == AT_USPECIAL {
	if window == 1 {
		strong_charge = 40; 	//NUMBER HERE: THIS CHANGES HOW LONG USPECIAL FLYING LASTS
		
	}
	if window == 2 {
		vsp = -2;			//NUMBER HERE: THIS IS THE BASE SPEED OF USPECIAL WHILE FLYING UP
		vsp -= (mariospeed)*0.04;	//NUMBER HERE: THIS IS HOW MUCH USPECIAL'S SPEED IS MULTIPLIED BY MARIOSPEED
		mariospeed -= 0.2;  		//NUMBER HERE: THIS CHANGES HOW MUCH SPEED MARIO LOSES DURING USPECIAL PER FRAME
		
		if window_timer == 1{
			voiceclip = "yahooquiet";
			playvoice = 1;
		}
		
		
		strong_charge--;
		if strong_charge <= 0 {
		window++;
		window_timer = 0;
		}
		if mariospeed <= 0 or shield_pressed{
		window = 5;
		window_timer = 0;
		}
		
	}
	if window == 3 and window_timer == 0 and !special_down{
		window = 5;
		window_timer = 0;
	}
	if window == 4 && window_timer == 1{
		var bbomb = instance_create(x +10 *spr_dir, y -50, "obj_article1"); //NUMBER HERE: THE +10 IS THE X OFFSET OF SPAWNING THE BOMB, AND THE -50 IS THE Y OFFSET.
		bbomb.type = 4;
		bbomb.level = 1;
		bbomb.spr_dir = spr_dir
		sound_play(sound_get("throw"));
	}
	if(window == 5){
		if (window_timer == 0){
			vsp =+ -9;
			hsp = 1*spr_dir;
		}
		if window_timer == 1 move_cooldown[AT_USPECIAL] = 9999;
	}
	
}

if attack == AT_DAIR {
	if window < 3 {
		hsp *= 0.5 		//NUMBER HERE: THIS IS HOW MUCH HSPEED IS MULTIPLIED AT THE START OF DAIR EVERY FRAME. SETTING IT ABOVE 1 WOULD MAKE IT ACCELERATE.
	}
	can_wall_jump = true;
	if window == 4 and window_timer == 0 and !hitpause{
		spawn_hit_fx(x, y, stomp_fx);
	}
}

if (attack == AT_NAIR && window == 5 && window_timer == 5) {
     move_cooldown[AT_NAIR] = 20; 			//NUMBER HERE: THIS IS NAIR'S COOLDOWN. YOU PROBABLY ALREADY KNOW THAT THOUGH.
} 

if attack == AT_DSPECIAL {
	
	if window == 1 && scuttle == 0 && !special_down && !hitpause {
		scuttle = 1;
		spawn_scuttle = true;
    }
	
	if !spawn_scuttle{
		move_cooldown[AT_DSPECIAL] = 16;
		if (window == 1 or window == 2) && window_timer == 1 {
		voiceclip = "yahooquiet";
		playvoice = 1;
		mariospeed += 1;  			//NUMBER HERE: THIS IS HOW MUCH MARIOSPEED GOES UP EVERY TIME YOU USE DSPECIAL.
		vsp = min(vsp,1)
		hsp = clamp(hsp,-1,1) 
		}
		if window == 1 && window_timer == get_window_value(AT_DSPECIAL,1,AG_WINDOW_LENGTH) {
			if !special_down or mariospeed >= 100{
				window = 3;
				window_timer = 0;
			}
		}
		if window == 2 && window_timer == get_window_value(AT_DSPECIAL,2,AG_WINDOW_LENGTH) {
			if !special_down or mariospeed >= 100{
				window = 3;
				window_timer = 0;
			}
		}
	}else{
		set_window_value(attack, 2, AG_WINDOW_TYPE, 0);
		set_window_value(attack, 2, AG_WINDOW_LENGTH, 8);
		set_window_value(attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		
		if window == 1 {
		window = 2
		window_timer = 0
		}
		if(window == 2 and window_timer == 1){
			sound_play(sound_get("haha"),false,noone,0.5);
		}
		if(window == 2 and window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
			create_hitbox(AT_DSPECIAL , 3 , x , y - 10 );
			spawn_hit_fx (x,y - 10, 305);
			sound_play(sound_get("throw"));
			spawn_scuttle = false;
		}
	}
}


if attack == AT_NSPECIAL {
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 50 - floor(mariospeed/3))
    if window == 1 {
        strong_charge = 0;
        indicator = 0;
	if attack == AT_NSPECIAL && state == PS_ATTACK_AIR {hsp *= 0.8};	//NUMBER HERE: THIS IS HOW MUCH HSPEED IS MULTIPLIED AT THE START OF NSPECIAL EVERY FRAME.
    }
    if window == 2 {
        strong_charge = min(strong_charge+1, get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH));
        
         //Egg
        if strong_charge >= get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)  {
            indicator = 2; //Bowser
        } else if strong_charge >= get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) * 0.3 { 		//NUMBER HERE: THIS IS HOW MUCH NSPECIAL NEEDS TO BE CHARGED TO SPAWN THE SHELL. 1 IS FULLY CHARGED.
            indicator = 1; //Shell
        }
        
        if !special_down {
            window = 3; window_timer = 0;
        }
    }
    
    if window == 3 && window_timer == 1 {
        var arttype = indicator + 1;
        
        kickproj = instance_create((get_hitbox_value(AT_NSPECIAL, arttype, HG_HITBOX_X)*spr_dir) + x,get_hitbox_value(AT_NSPECIAL, arttype, HG_HITBOX_Y) + y, "obj_article1")
        kickproj.type = arttype;
        kickproj.spr_dir = spr_dir
    } else if window == 3 && instance_exists(kickproj) {
        kickproj.x = x+16*spr_dir;																			//NUMBER HERE: THE +16 IS THE X OFFSET OF NSPECIAL'S PROJECTILE WHEN SPAWNED.
        kickproj.y = -35+y-sin((window_timer/get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH))*3)*40;		//NUMBER HERE: THE -35 IS THE Y OFFSET OF NSPECIAL'S PROJECTILE WHEN SPAWNED.
        if kickproj.dead kickproj = noone;
    }
     if window == 4 && window_timer == 1 && instance_exists(kickproj) {
            kickproj.level = 1;
            kickproj = noone;

        }
    
}



if attack == AT_FSTRONG {
	if strong_charge < 5  {
		set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("small_slap"));
	}
	else if strong_charge < 55  {
		set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("slap_hit"));
	} else {
		set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("bigslap_hit"));
	}
}


if attack == AT_FSPECIAL {
	
	if window == 1 && window_timer == 1 {
		set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2+floor(mariospeed*0.06));              //NUMBER HERE: *0.1 IS HOW MUCH MARIOSPEED ADDS TO THE DAMAGE, AND THE 2 IS THE BASE DAMAGE
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5+floor(mariospeed*0.01));			//NUMBER HERE: *0.1 IS HOW MUCH MARIOSPEED ADDS TO THE KNOCKBACK, AND THE 4 IS THE BASE KNOCKBACK
		
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, air_max_speed + 1 + (0.07 * mariospeed));	//NUMBER HERE: AIR_MAX_SPEED + 1 IS THE BASE VELOCITY TO APPLY AND (0.07 * MARIOSPEED) IS THE GROWTH PERCENTAGE 
		
		set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 2+floor(mariospeed*0.06));              //NUMBER HERE: *0.05 IS HOW MUCH MARIOSPEED ADDS TO THE DAMAGE, AND THE 2 IS THE BASE DAMAGE
		set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 5+floor(mariospeed*0.01));		//NUMBER HERE: *0.05 IS HOW MUCH MARIOSPEED ADDS TO THE KNOCKBACK, AND THE 4 IS THE BASE KNOCKBACK
	}
	if window == 1 && window_timer == get_window_value(AT_FSPECIAL,1,AG_WINDOW_LENGTH)  {
		voiceclip = "yahoo";
		playvoice = 1;
		//hsp += (8+mariospeed * 0.5)*spr_dir;  //NUMBER HERE: * 1 IS HOW MUCH MARIOSPEED ADDS TO THE BLJ, AND THE 3 IS THE BASE SPEED, OLD
	
		mariospeed /= 1.15;   //NUMBER HERE: THIS IS HOW MUCH SPEED BLJING DRAINS.
	}
	
	if window == 2{
		
		if window_timer == 2{
			if (mariospeed >= 70 - 10){ //NUMBER HERE: 70 IS THE MARIOSPEED TO DISPLAY THE STRETCH SPRITE AND 10 IS THE DRAIN VALUE FROM ABOVE 
				window = 4;
				window_timer = 0;
			}
		}
		
	}
	if window == 3 and window_timer == get_window_value(AT_FSPECIAL,3,AG_WINDOW_LENGTH){
		window = 29;		//CUSTOM ENDLAG WHEN NOT STRETCHING
	}
	
	if (window == 2 or window == 4) and hsp = 0 and free{	//BOUNCE TRIGGER
		window = 7;
		window_timer = 0;
	}

	if window == 7 and !hitpause and window_timer == 2{	//ENDLAG2, THIS ONE IS 5 FRAMES FASTER
		window = 6;
		window_timer = 0;
		hsp = spr_dir * -2;		//NUMBER HERE: -4 IS THE VELOCITY TO APPLY IN THE OPPOSITE DIRECTION
		vsp = -7; //NUMBER HERE:THE VELOCITY TO APPLY VERTICALLY
	}
}


if (attack == AT_FSPECIAL)
{
    if (window > 1)
    {
        fspecial_allowed = false;
        can_fast_fall = true;
    }
}

if (attack == AT_FSPECIAL_2)
{
    if (window > 1)
    {
        fspecial_2_allowed = false;
        can_fast_fall = true;
    }
}

if (attack == AT_TAUNT) {
    if (get_player_color(player) == 15) {
        //taunt with costume
        //if the window is 1, skip to window 4 (start of costume taunt)
        if (window == 1) { window = 4; }
        //if the window is 5, taunt is no longer down, and the window_timer is
        //greater than window 5's length (taunt plays at least once), go to window 6
        if (window == 5 && !taunt_down && window_timer >= 49) {
            window = 6;
            window_timer = 0;
        }
    } else {
        //taunt without costume
        //set state to idle when the second taunt starts
        if (window == 4) {
            set_state(PS_IDLE);
        }
    }
}



///additional sfx and code

if !hitpause {
if attack == AT_FAIR {
	if window_timer == 1 && window == 1 {
		sound_play(sound_get("wah"),false,noone,0.5);
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
}
if attack == AT_FSTRONG {
	if window_timer == 1 && window == 1 {
		sound_play(asset_get("sfx_swipe_heavy1"))
	}
	
	if has_hit_player && mariospeed > 70 {
		invincible = true
		if window == 3 or window == 4 {
			
		if window_timer == 1 {

			spawn_hit_fx (hit_player_obj.x - 40*spr_dir, hit_player_obj.y - 30, fs2 )
				create_hitbox(AT_FSTRONG , 2 , hit_player_obj.x , hit_player_obj.y - 50 );
		}
		
		
		if window_timer == 5 {

			spawn_hit_fx (hit_player_obj.x - 40*spr_dir, hit_player_obj.y - 30, fs3 )
				create_hitbox(AT_FSTRONG , 2 , hit_player_obj.x , hit_player_obj.y - 50 );
		}
		
		if window_timer == 12 {

			spawn_hit_fx (hit_player_obj.x - 40*spr_dir, hit_player_obj.y - 30, fs4 )
				create_hitbox(AT_FSTRONG , 3 , hit_player_obj.x , hit_player_obj.y - 50 );
		}
		
		}
	}
}
if attack == AT_DSTRONG {
	if window_timer == 1 && window == 1 {
		sound_play(sound_get("wa"),false,noone,0.5);
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
	
	if mariospeed > 70 {
	

		if window == 2 && window_timer == 9 {
			sound_play(sound_get("flicker"));
			sound_play(sound_get("flicker"));
			sound_play(asset_get("sfx_blink_dash"));
			spawn_hit_fx (x, y - 30, 304 )
			create_hitbox(AT_DSTRONG , 5 , x + 30*spr_dir , y - 36 );
			create_hitbox(AT_DSTRONG , 6 , x - 30*spr_dir , y - 36 );
		}
	}
}
if attack == AT_USTRONG {
	if window_timer == 1 && window == 1 {
		sound_play(sound_get("hoo"),false,noone,0.5);
		sound_play(asset_get("sfx_coin_collect"))
	}
	
	if window == 1 {
		if mariospeed > 70 {
			set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong2"));
			set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 140);
            set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 210);
            set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 140);
            set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 210);
            set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 140);
            set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 200);
            set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 140);
            set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 190);
            set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 140);
            set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 190);
            set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 140);
            set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 190);
		} else {
			set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
			set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 80);
            set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 110);
            set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 80);
            set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 110);
            set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 80);
            set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 100);
            set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 80);
            set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 90);
            set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 80);
            set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 90);
            set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 80);
            set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 90);
		}
		
		
	}
}
if attack == AT_TAUNT {
	if window_timer == 1 && window == 1 {
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
	if window_timer == 1 && window == 2 {
		sound_play(asset_get("sfx_coin_collect"))
		spawn_hit_fx(x+30*spr_dir,y - 80, 109 )
	}
	
	if window_timer == 20 && window == 2 {
		sound_play(asset_get("mfx_back"))
	}
	
	if window_timer == 1 && window == 3 {
		sound_play(asset_get("sfx_swipe_weak2"))
	}
	
	if window_timer == 1 && (window == 5 or window == 6)  {
		sound_play(asset_get("sfx_troupple_rumble"))
	}
}

if attack == AT_BAIR {
	if window_timer == 1 && window == 1 {
		sound_play(sound_get("wa"),false,noone,0.5);
		sound_play(asset_get("sfx_swipe_medium2"))
	}
}

if attack == AT_UTILT {
	if window_timer == 1 && window == 1 {
		sound_play(sound_get("woo"),false,noone,0.5);
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
}

if attack == AT_UAIR {
	if window_timer == 1 && window == 1 {
		sound_play(sound_get("woo"),false,noone,0.5);
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
}

if attack == AT_DTILT {
	if window_timer == 1 && window == 1 {
		sound_play(sound_get("yah"),false,noone,0.5);
		sound_play(asset_get("sfx_swipe_heavy1"))
	}
	if has_hit && window < 5 {
		window = 5
		window_timer = 0
	}
}

if attack == AT_FTILT {
	if window_timer == 1 && window == 1 {
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
}

if attack == AT_DATTACK {
	if has_hit{
		can_jump = true
	}
	if window_timer == 1 && window == 3 {
		sound_play(sound_get("woo"),false,noone,0.5);
		sound_play(asset_get("sfx_spin"))
	}
}

if attack == AT_DAIR {
	if has_hit_player or (y > room_height/2 + 300){
    	can_shield = true
    }
}



}