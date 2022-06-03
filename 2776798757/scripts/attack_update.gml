//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USPECIAL) {
    if (window == 2) {
        if (placed < 9999) {
             instance_create(x - 20, y + 5,"obj_article_solid")
             sound_play(sound_get("lv1shot"));
             placed++;
        }
        if (placed > 9999) {
            window = 4;
        }
    }
}

if (attack == AT_NAIR){
	if (window == 5 && has_hit){
		iasa_script();
	}
}

if (attack == AT_USTRONG_2){
	if (window == 4 && has_hit){
		iasa_script();
	}
}

if attack == AT_UTILT {
	if((attack_down) && (1 = window ) && window_timer == 5){ 
	attack = AT_EXTRA_3;
	}
}

if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	
	if ((shield_pressed) and (3 > window )){ //SHIELD CANCEL
		window = 7;
		window_timer = 0;
	}
	if ((attack_pressed) and (3 > window )){ // CANCEL
		window = 7;
		window_timer = 0;
	}
	if ((jump_pressed) and (3 > window )){ // CANCEL
		window = 7;
		window_timer = 0;
	}
    if (window == 2){ //CHARGING
		if (special_down) {
			if (window_timer == 4){ //Loop
				window_timer = 0;
			}
			if (250 > bustercharge) { //Adding charge
			bustercharge += 2;
				if (bustercharge == 250){
					sound_play(asset_get("sfx_frog_fspecial_charge_full"));
					}
				
				if (bustercharge == 50){
					sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
					}				
			}
		}
		else { //Using move if special released
				if (bustercharge == 250) { //FULLCHARGE
						bustercharge = 0;
						window = 5;
						window_timer = 0;
				}
				else {
					if (bustercharge > 50){ //MEDCHARGE
						bustercharge = 0;
						window = 4;
						window_timer = 0;
					}
					else { //NOCHARGE
						bustercharge = 0;
						window = 3;
						window_timer = 0;
					}
				}
			}
		}
	if ((window == 3) ) and (window_timer == 6) { //Endlag
		window = 6;
		window_timer = 0;
		}
	if ((window == 4) or (window == 5) ) and (window_timer == 20) { //Endlag
		window = 6;
		window_timer = 0;
		}
}

//Forward Special - Special Weapons
if (attack == AT_FSPECIAL){
	if (window == 2 && window_timer == 1 && current_weapon == 0){ //Boomerang Cutter
		sound_play( asset_get( "sfx_shovel_swing_light1" ) );
			}
	if (window == 2 && window_timer == 1 && current_weapon == 1){ //Sonic Slicer
		sound_play( sound_get( "lv1shot" ) );
		move_cooldown[AT_FSPECIAL] = 50;
			}
	if (window == 2 && window_timer == 1 && current_weapon == 2){ //spinning blade
		sound_play( sound_get( "lv1shot" ) );
		move_cooldown[AT_FSPECIAL] = 50;
			}
	if (window == 2 && window_timer == 1 && current_weapon == 3){ //frost shield
		sound_play( sound_get( "lv1shot" ) );
		move_cooldown[AT_FSPECIAL] = 50;
			}
		}

//Down Special - Special Weapon Swap
if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	move_cooldown[AT_DSPECIAL] = 1;
		if (window == 2){
			current_weapon = (current_weapon+1)% 8;
				}
	can_fast_fall = false;
	destroy_hitboxes();
}

if (attack == AT_USPECIAL){
	move_cooldown[AT_USPECIAL] = 300;
}

if (attack == AT_UAIR){
	move_cooldown[AT_UAIR] = 10;
}

if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 120;
	move_cooldown[AT_FSPECIAL_2] = 120;
	move_cooldown[AT_DSPECIAL_2] = 120;
	move_cooldown[AT_NSPECIAL_2] = 120;
	move_cooldown[AT_FSTRONG_2] = 120;
	move_cooldown[AT_DSTRONG_2] = 120;
	move_cooldown[AT_USTRONG_2] = 120;
	move_cooldown[AT_EXTRA_1] = 120;
}

if (attack == AT_FSPECIAL_2){
	move_cooldown[AT_FSPECIAL] = 120;
	move_cooldown[AT_FSPECIAL_2] = 120;
	move_cooldown[AT_DSPECIAL_2] = 120;
	move_cooldown[AT_NSPECIAL_2] = 120;
	move_cooldown[AT_FSTRONG_2] = 120;
	move_cooldown[AT_DSTRONG_2] = 120;
	move_cooldown[AT_USTRONG_2] = 120;
	move_cooldown[AT_EXTRA_1] = 120;
}

if (attack == AT_DSPECIAL_2){
	move_cooldown[AT_FSPECIAL] = 130;
	move_cooldown[AT_FSPECIAL_2] = 130;
	move_cooldown[AT_DSPECIAL_2] = 130;
	move_cooldown[AT_NSPECIAL_2] = 130;
	move_cooldown[AT_FSTRONG_2] = 130;
	move_cooldown[AT_DSTRONG_2] = 130;
	move_cooldown[AT_USTRONG_2] = 130;
	move_cooldown[AT_EXTRA_1] = 130;
}

if (attack == AT_NSPECIAL_2){
	move_cooldown[AT_FSPECIAL] = 140;
	move_cooldown[AT_FSPECIAL_2] = 140;
	move_cooldown[AT_DSPECIAL_2] = 140;
	move_cooldown[AT_NSPECIAL_2] = 140;
	move_cooldown[AT_FSTRONG_2] = 140;
	move_cooldown[AT_DSTRONG_2] = 140;
	move_cooldown[AT_USTRONG_2] = 140;
	move_cooldown[AT_EXTRA_1] = 140;
}

if (attack == AT_FSTRONG_2){
	move_cooldown[AT_FSPECIAL] = 120;
	move_cooldown[AT_FSPECIAL_2] = 120;
	move_cooldown[AT_DSPECIAL_2] = 120;
	move_cooldown[AT_NSPECIAL_2] = 120;
	move_cooldown[AT_FSTRONG_2] = 120;
	move_cooldown[AT_DSTRONG_2] = 120;
	move_cooldown[AT_USTRONG_2] = 120;
	move_cooldown[AT_EXTRA_1] = 120;
}

if (attack == AT_DSTRONG_2){
	move_cooldown[AT_FSPECIAL] = 150;
	move_cooldown[AT_FSPECIAL_2] = 150;
	move_cooldown[AT_DSPECIAL_2] = 150;
	move_cooldown[AT_NSPECIAL_2] = 150;
	move_cooldown[AT_FSTRONG_2] = 150;
	move_cooldown[AT_DSTRONG_2] = 150;
	move_cooldown[AT_USTRONG_2] = 150;
	move_cooldown[AT_EXTRA_1] = 150;
}

if (attack == AT_USTRONG_2){
	move_cooldown[AT_FSPECIAL] = 400;
	move_cooldown[AT_FSPECIAL_2] = 400;
	move_cooldown[AT_DSPECIAL_2] = 400;
	move_cooldown[AT_NSPECIAL_2] = 400;
	move_cooldown[AT_FSTRONG_2] = 400;
	move_cooldown[AT_DSTRONG_2] = 400;
	move_cooldown[AT_USTRONG_2] = 400;
	move_cooldown[AT_EXTRA_1] = 400;
}

if (attack == AT_EXTRA_1){
	move_cooldown[AT_FSPECIAL] = 555;
	move_cooldown[AT_FSPECIAL_2] = 555;
	move_cooldown[AT_DSPECIAL_2] = 555;
	move_cooldown[AT_NSPECIAL_2] = 555;
	move_cooldown[AT_FSTRONG_2] = 555;
	move_cooldown[AT_DSTRONG_2] = 555;
	move_cooldown[AT_USTRONG_2] = 555;
	move_cooldown[AT_EXTRA_1] = 555;
}

if (attack == AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 20;
}

if (attack == AT_DSTRONG){
	if (window == 2 && window_timer == 1) {
		sound_play(asset_get( "sfx_bird_nspecial" ));
		Loops = 8;
	}
}

if (attack == AT_DSTRONG){
	if (window == 5 && window_timer == 1) {
		sound_play(sound_get( "chargeshotlv1" ));
		Loops = 8;
	}
}

if (attack == AT_FTILT){
	//vertical boost
	if window == 1 && window_timer == get_window_value(AT_FTILT,1,AG_WINDOW_LENGTH)-2 && free {
		if vsp > -6 {
			vsp = -6;
               
		}
	}
	//wallgrab
	if !has_hit_player && !hitpause && (
		collision_rectangle(x + 10 * spr_dir,y-5,x + 150 * spr_dir,y-55,asset_get("par_block"),false,true) || 
		collision_rectangle(x + 10 * spr_dir,y-5,x + 150 * spr_dir,y-55,asset_get("par_jumpthrough"),false,true)) 
		&& !was_parried {
			
        if window == 2 {
            vsp = 0;
            hsp = 0;
            if window_timer >= 3 {
            	window = 5
            	window_timer = 0;
            }
        }
    }
    if window == 5{
    	hsp = 10 * spr_dir;
    	vsp = 0;
    	if window_timer > 3 can_jump = true;
    	can_fast_fall = false;
    	if window_timer == 1 {
    		sound_play(asset_get("sfx_blow_weak1"))
			sound_play(asset_get("sfx_plant_eat"))
    	}
    	move_cooldown[AT_FTILT] = 20; //no more wallgrab spamming vineboom
    }
    //grab
    if instance_exists(grabbed_player_obj){
	    if (window >= 5) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window == 4) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 30 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
}


if (is_laststock()) {
	if (get_player_damage( player ) >= 100) {
		if (attack == AT_TAUNT){
		    attack = AT_EXTRA_2;
		    move_cooldown[AT_NSPECIAL] = 9999999999;
		    move_cooldown[AT_USPECIAL] = 9999999999;
		    move_cooldown[AT_USPECIAL_GROUND] = 9999999999;
		    move_cooldown[AT_DSPECIAL] = 9999999999;
		    move_cooldown[AT_FSPECIAL] = 9999999999;
		    move_cooldown[AT_FSPECIAL_2] = 9999999999;
		    move_cooldown[AT_DSPECIAL_2] = 9999999999;
		    move_cooldown[AT_NSPECIAL_2] = 9999999999;
		    move_cooldown[AT_FSTRONG_2] = 9999999999;
		    move_cooldown[AT_DSTRONG_2] = 9999999999;
		    move_cooldown[AT_USTRONG_2] = 9999999999;
		    move_cooldown[AT_EXTRA_1] = 9999999999;
		    move_cooldown[AT_TAUNT] = 9999999999;
		}
	}
}

if (attack == AT_EXTRA_2){
	if (window == 5 && window_timer == 15) {
		sound_play(sound_get( "taunt" ));
	}
}

if (attack == AT_EXTRA_3){
	if (window == 1 && window_timer == 5) {
		sound_play(sound_get( "rock_upper" ));
	}
}

if (attack == AT_EXTRA_2) {
    if (window == 2 && has_hit_player == true && hitpause == false) {
        window = 4;
        window_timer = 0;
    }

    if (window == 3 && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) && has_hit_player == false) {
        iasa_script();
        set_state(PS_IDLE);
    }
}

if (attack == AT_DSTRONG_2) {
	if (window == 2 && window_timer == 1){
		instance_destroy( x, y, "obj_article1" );
	}
}

if has_rune("L") {
	if (240 > bustercharge) { //Adding charge
		bustercharge += 2;
	}
}

if has_rune("M") {
	if (attack == AT_FSPECIAL){
		move_cooldown[AT_FSPECIAL] = 40;
		move_cooldown[AT_FSPECIAL_2] = 40;
		move_cooldown[AT_DSPECIAL_2] = 40;
		move_cooldown[AT_NSPECIAL_2] = 40;
		move_cooldown[AT_FSTRONG_2] = 40;
		move_cooldown[AT_DSTRONG_2] = 40;
		move_cooldown[AT_USTRONG_2] = 40;
		move_cooldown[AT_EXTRA_1] = 40;
	}

	if (attack == AT_FSPECIAL_2){
		move_cooldown[AT_FSPECIAL] = 20;
		move_cooldown[AT_FSPECIAL_2] = 20;
		move_cooldown[AT_DSPECIAL_2] = 20;
		move_cooldown[AT_NSPECIAL_2] = 20;
		move_cooldown[AT_FSTRONG_2] = 20;
		move_cooldown[AT_DSTRONG_2] = 20;
		move_cooldown[AT_USTRONG_2] = 20;
		move_cooldown[AT_EXTRA_1] = 20;
	}

	if (attack == AT_DSPECIAL_2){
		move_cooldown[AT_FSPECIAL] = 60;
		move_cooldown[AT_FSPECIAL_2] = 60;
		move_cooldown[AT_DSPECIAL_2] = 60;
		move_cooldown[AT_NSPECIAL_2] = 60;
		move_cooldown[AT_FSTRONG_2] = 60;
		move_cooldown[AT_DSTRONG_2] = 60;
		move_cooldown[AT_USTRONG_2] = 60;
		move_cooldown[AT_EXTRA_1] = 60;
	}

	if (attack == AT_NSPECIAL_2){
		move_cooldown[AT_FSPECIAL] = 50;
		move_cooldown[AT_FSPECIAL_2] = 50;
		move_cooldown[AT_DSPECIAL_2] = 50;
		move_cooldown[AT_NSPECIAL_2] = 50;
		move_cooldown[AT_FSTRONG_2] = 50;
		move_cooldown[AT_DSTRONG_2] = 50;
		move_cooldown[AT_USTRONG_2] = 50;
		move_cooldown[AT_EXTRA_1] = 50;
	}

	if (attack == AT_FSTRONG_2){
		move_cooldown[AT_FSPECIAL] = 10;
		move_cooldown[AT_FSPECIAL_2] = 10;
		move_cooldown[AT_DSPECIAL_2] = 10;
		move_cooldown[AT_NSPECIAL_2] = 10;
		move_cooldown[AT_FSTRONG_2] = 10;
		move_cooldown[AT_DSTRONG_2] = 10;
		move_cooldown[AT_USTRONG_2] = 10;
		move_cooldown[AT_EXTRA_1] = 10;
	}

	if (attack == AT_DSTRONG_2){
		move_cooldown[AT_FSPECIAL] = 100;
		move_cooldown[AT_FSPECIAL_2] = 100;
		move_cooldown[AT_DSPECIAL_2] = 100;
		move_cooldown[AT_NSPECIAL_2] = 100;
		move_cooldown[AT_FSTRONG_2] = 100;
		move_cooldown[AT_DSTRONG_2] = 100;
		move_cooldown[AT_USTRONG_2] = 100;
		move_cooldown[AT_EXTRA_1] = 100;
	}

	if (attack == AT_USTRONG_2){
		move_cooldown[AT_FSPECIAL] = 0;
		move_cooldown[AT_FSPECIAL_2] = 0;
		move_cooldown[AT_DSPECIAL_2] = 0;
		move_cooldown[AT_NSPECIAL_2] = 0;
		move_cooldown[AT_FSTRONG_2] = 0;
		move_cooldown[AT_DSTRONG_2] = 0;
		move_cooldown[AT_USTRONG_2] = 0;
		move_cooldown[AT_EXTRA_1] = 0;
	}

	if (attack == AT_EXTRA_1){
		move_cooldown[AT_FSPECIAL] = 70;
		move_cooldown[AT_FSPECIAL_2] = 70;
		move_cooldown[AT_DSPECIAL_2] = 70;
		move_cooldown[AT_NSPECIAL_2] = 70;
		move_cooldown[AT_FSTRONG_2] = 70;
		move_cooldown[AT_DSTRONG_2] = 70;
		move_cooldown[AT_USTRONG_2] = 70;
		move_cooldown[AT_EXTRA_1] = 70;
	}
}

if has_rune("M") {
	set_hitbox_value( AT_NSPECIAL, 1, HG_DAMAGE, 4 + has_rune("G") * 2 );
	set_hitbox_value( AT_NSPECIAL, 2, HG_DAMAGE, 12 + has_rune("G") * 2 );
	set_hitbox_value( AT_NSPECIAL, 3, HG_DAMAGE, 24 + has_rune("G") * 2 );
}

if has_rune("I") {
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 20);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 24);
	set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 25);
}