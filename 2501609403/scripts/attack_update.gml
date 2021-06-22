// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USPECIAL){
    if (state_timer == 17){
    spawn_hit_fx((x), y, fx_uspecial)
    }
}

if attack == AT_USPECIAL {
    
    if left_down && hsp > -2 {
        hsp -= 0.2
    }
    
    if right_down && hsp < 2 {
        hsp += 0.2
    }
    
    if window == 1 {
        vsp /= 0
        hsp /= 1.5
    }
    if window == 3 && free {
        create_hitbox(AT_USPECIAL , 1 , x  , y   );	
    }
    
    if window == 4 && free {
        create_hitbox(AT_USPECIAL , 1 , x  , y   );	
        can_wall_jump = true
        vsp -= 0.3
        if window_timer == 16{
            window_timer = 0
        }
    }

    if window == 4 && !free {
        sound_play(asset_get("sfx_land_heavy"));
        hsp = 0
        window = 5
        window_timer = 0
    }
    
    
}

//Multihit Dtilt Teleport
if attack == AT_DTILT {
    if (window == 2 && window_timer >= 3){
        if (attack_pressed){
            dtilt_start = true;
        }
    }
    if dtilt_start == true{
        set_num_hitboxes(AT_DTILT, 2);
        set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);
        set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
        set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 10);
        if window == 3 && window_timer == get_window_value(AT_DTILT,3,AG_WINDOW_LENGTH) {
            dtilt_end = true;
        }
    }
}

/*
var _block = asset_get("par_block");
if attack == AT_DAIR{
    vsp += 80
    if !free{
        print_debug("awyuegqwia")
    }
}
*/


//Fstrong
if (attack == AT_FSTRONG){
	can_wall_jump = true;
	if (window == 3 && shield_pressed || window == 4 && shield_pressed){
		state = PS_PRATFALL
	} 
	if (attack == AT_FSTRONG){
    if (window == 4 && window_timer == 4) {
    	window_timer = 0
        attack_end()
    }
    if (window == 5){
    	set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 60); 
    }else{
    	reset_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME); 
    }
}
}


//OLD DSPECIAL
/*
if (attack == AT_DSPECIAL){
	can_fast_fall = false
	move_cooldown[AT_DSPECIAL] = 400;
	if (window == 1 && window_timer == 16){
		dspecialartR = instance_create(x-30, y-94, "obj_article1");
		dspecialartR.spr_dir = 1;
	}
	if (window == 1 && window_timer == 15){
		dspecialartL = instance_create(x+30, y-94, "obj_article2");
		dspecialartL.spr_dir = -1;
	}
	if (window == 2){
		//When u press right
		if (right_down){
			with (asset_get("obj_article1")){
				if (player_id == other.id && state == 1){
					state = 3;
					state_timer = 0;
				}
			}
			with (asset_get("obj_article2")){
				if (player_id == other.id && state == 1){
					state = 2;
					state_timer = 0;
				}
			}
		x = obj_article1.x + 70
		y = obj_article1.y + 94
		window = 3
		}
		//When u press left
		if (left_down){
			with (asset_get("obj_article2")){
				if (player_id == other.id && state == 1){
					state = 3;
					state_timer = 0;
				}
			}
			with (asset_get("obj_article1")){
				if (player_id == other.id && state == 1){
					state = 2;
					state_timer = 0;
				}
			}
		x = obj_article2.x - 70
		y = obj_article2.y + 94
		window = 3
		}
	}
	if (window == 3){
		visible = true
	}
}
*/
//New Dspecial :)
if (attack == AT_DSPECIAL){
	if (window == 2){
		super_armor = true;
	} else {
		super_armor = false;
	} if (window == 3){
		move_cooldown[AT_DSPECIAL] = 60;
	}
	if (counter == true){
		window = 4;
		window_timer = 0;
		counter = false;
	} if (window == 4 && window_timer == 1){
		window = 5;
		window_timer = 0;
		create_hitbox(AT_DSPECIAL,1,x-1*spr_dir,y-50)
	} if (window == 5 && window_timer == 12){
		window = 6;
	}
}


//Dair Grab
var _block = asset_get("par_block");
if (attack == AT_DAIR) {
    can_fast_fall = false
    if (place_meeting(x, y + 500, _block)){
    		next_dair_move = 0;
    	} else {
    		next_dair_move = 1;
    	}
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    if (window == 3){
    	move_cooldown[AT_DAIR] = 40;
    }
}

//Dair grab 1
if (attack == AT_EXTRA_1 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)  || window == 3 && window_timer == 24) { grabbed_player_obj = noone;  }
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
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = +20 ;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			draw_indicator = false
		}
		if (window == 2) {
			super_armor = true;
		}
		if (window == 3) { 
			super_armor = false;
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = +20 ;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			draw_indicator = true
			move_cooldown[AT_DAIR] = 40;
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

//Dair grab 2

if (attack == AT_EXTRA_2 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)  || window == 2 && window_timer == 24) { grabbed_player_obj = noone;  }
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
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = -30 ;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			draw_indicator = false
		}
		if (window == 2) {
			super_armor = true;
		}
		if (window == 3) { 
			super_armor = false;
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = -30 ;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			draw_indicator = true
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

//Fspecial Grab
if (attack == AT_FSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}

if (attack == AT_FSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS) || window == 3 && window_timer == 2) { grabbed_player_obj = noone; }
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
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 110 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		
		if (window == 2) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 70 * spr_dir;
			var pull_to_y = -90;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 3) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 110 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + 110 * spr_dir;
			grabbed_player_obj.y = y + 0;
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

//Gattling
if (attack == AT_FTILT || attack == AT_JAB || attack == AT_DTILT && window != 3 || attack == AT_NAIR || attack == AT_FSTRONG
|| attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_USPECIAL || attack == AT_UTILT || attack == AT_FAIR || attack == AT_BAIR
|| attack == AT_BAIR || attack == AT_UAIR || attack == AT_DATTACK){
	if (proj_stored == true) {
		if (has_hit){
			if (special_down){
				destroy_hitboxes();
				attack_end();
				attack = AT_NSPECIAL
				CorrectHurtboxes();
				window = 1
				window_timer = 0
			}
		}
	}
}

//Random Projectile time!!
if attack == AT_NSPECIAL {
    //Randomizes the item you get
    if (window == 2 && window_timer == 1){
    	if (proj_stored == false){
        	jackpot_number = random_func( 0, 9, true );
        	nspecial_number = random_func( 0, 6, true );
    	}
    }
    //Change Angle Thrown at 
    if (window == 2 && window_timer == 2){
        if jackpot == true {
            jackpot_item = random_func( 0, 2, true );
            jackpot_shading = true;
            sound_play(sound_get("jackpot"))
        }
    }
    if (window == 2 && window_timer >= 3){
        //Change Thrown angle to be closer to you
        if (down_down){
            //Normal Items
            switch (nspecial_number){
                //100 Ton Weight
                case(0):
                    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4);
                    break;
                //Mini Bugingi
                case(1):
                    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, .8);
                    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 4);
                    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -7);
                    break;
                //Wrench
                case(2):
                    set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 5);
                    set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -6);
                    break;
                //Dumbell
                case(3):
                    set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 4);
                    set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -12);
                    break;
                //Rage Ball
                case(4):
                	set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 5.5);
                	break;
                //Bomb
                case(5):
                    set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 5);
                    set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -6);
                    break;
                //Dspecial Ball
                case(7):
                    set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 5);
                    set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, -6);
                    break;
            }
            //Jackpot Items
            switch (jackpot_item){
                //Jack Weight
                case(0):
                    set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_HSPEED, 4);
                    set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_VSPEED, -4);
                    break;
            }
        }
        //Change Thrown angle to be far away or close depending on the direction ur facing (Holding Right)
        if (right_down){
            //Normal Items
            switch (nspecial_number){
                //100 Ton Weight
                case(0):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
                        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4);
                    }
                    //Facing Right (Throw Far)
                    else if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 9);
                        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
                    }
                break;
                //Mini Bugingi
                case(1):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, .8);
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 4);
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -7);
                    }
                    //Facing Right (Throw Far)
                    else if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, .4);
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 9);
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);
                    }
                break;
                //Wrench
                case(2):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 5);
                        set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -6);
                    }
                    //Facing Right (Throw Far)
                    if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 13);
                        set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -4);
                    }
                break;
                //Dumbell
                case(3):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 4);
                        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -12);
                    }
                    //Facing Right (Throw Far)
                    if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 11);
                        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -6);
                    }
                break;
                //Rage Ball
                case(4):
                	//Facing Left (Throw Close)
                	if (spr_dir == -1){
                		set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 5.5);
                	}
                	//Facing Right (Throw Far)
                	if (spr_dir == 1){
                		set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 8.5);
                	}
                	break;
                //Bomb
                case(5):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                    	set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 5);
                    	set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -6);
                    }
                    //Facing Right (Throw Far)
                    if (spr_dir == 1){
                    	set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 12);
                    	set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -5);
                    }
                //Dspecial Ball
                case(7):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 5);
                        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, -6);
                    }
                    //Facing Right (Throw Far)
                    if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 13);
                        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, -4);
                    }
                break;
        	}
            //Jackpot Items
            switch (jackpot_item){
                //100 Ton Weight
                case(0):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_HSPEED, 4);
                        set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_VSPEED, -4);
                    }
                    //Facing Right (Throw Far)
                    else if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_HSPEED, 9);
                        set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_VSPEED, -6);
                    }
                break;
            }
        }
        //Change Thrown angle to be far away or close depending on the direction ur facing (Holding Left)
        else if (left_down){
            switch (nspecial_number){
                //100 Ton Weight
                case(0):
                    //Facing Right (Throw Close)
                    if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
                        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4);
                    }
                    //Facing Left (Throw Far)
                    else if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 9);
                        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
                    }
                break;
                //Mini Bugingi
                case(1):
                    //Facing Right (Throw Close)
                    if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, .8);
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 4);
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -7);
                    }
                    //Facing Left (Throw Far)
                    else if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, .4);
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 9);
                        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);
                    }
                break;
                //Wrench
                case(2):
                    //Facing Right (Throw Close)
                    if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 5);
                        set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -6);
                    }
                    //Facing Left (Throw Far)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 13);
                        set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -4);
                    }
                break;
                //Dumbell
                case(3):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 11);
                        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -6);
                    }
                    //Facing Right (Throw Far)
                    if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 4);
                        set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -12);
                    }
                break;
                //Rage Ball
                case(4):
                	//Facing Left (Throw Close)
                	if (spr_dir == -1){
                		set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 8.5);
                	}
                	//Facing Right (Throw Far)
                	if (spr_dir == 1){
                		set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 5.5);
                	}
                	break;
                //Bomb
                case(5):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                    	set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 12);
                    	set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -5);
                    }
                    //Facing Right (Throw Far)
                    if (spr_dir == 1){
						set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 5);
                    	set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -6);
                    }
                break;
                //Dspecial Ball
                case(7):
                    //Facing Right (Throw Close)
                    if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 5);
                        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, -6);
                    }
                    //Facing Left (Throw Far)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 13);
                        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, -4);
                    }
                break;
            }
            //Jackpot Items
            switch (jackpot_item){
                //100 Ton Weight
                case(0):
                    //Facing Left (Throw Close)
                    if (spr_dir == -1){
                        set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_HSPEED, 9);
                        set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_VSPEED, -6);
                    }
                    //Facing Right (Throw Far)
                    else if (spr_dir == 1){
                        set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_HSPEED, 4);
                        set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_VSPEED, -4);
                    }
                break;
            }
        }
        //if you're doing none of these things
        else if (!down_down && !left_down && !right_down){
            reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED);
			reset_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_VSPEED);
            
        }
    }
    if (window == 2 && window_timer >= 8){
		if (shield_down){
        	window = 5;
        	window_timer = 0;
        	proj_stored = true;
        	store_timer = 8;
        	store_timer2 = 2;
        	move_cooldown[AT_NSPECIAL] = 60;
        }
    }
    if (window == 3 && window_timer == 1){
    	proj_stored = false;
        //Normal Items
        if (jackpot == false)
            switch (nspecial_number){
                //100 Ton Weight
                case(0):
                    create_hitbox(AT_NSPECIAL,1,x-1*spr_dir,y-50)
                    break;
                //Mini Bugingi
                case(1):
                    create_hitbox(AT_NSPECIAL,3,x-1*spr_dir,y-50)
                    break;
                //Wrench
                case(2):
                    create_hitbox(AT_NSPECIAL,5,x+5*spr_dir,y-45)
                    break;
                //Dumbell
                case(3):
                    create_hitbox(AT_NSPECIAL,6,x+5*spr_dir,y-45)
                    break;
                //Rage Ball
                case(4):
                    create_hitbox(AT_NSPECIAL,7,x+5*spr_dir,y-45)
                    break;
                //Bomb
                case(5):
                    create_hitbox(AT_NSPECIAL,8,x+5*spr_dir,y-45)
                    break;
                //Ball??
                case(7):
                    create_hitbox(AT_NSPECIAL,10,x+5*spr_dir,y-45)
                    break;
            }
        if (jackpot == true){
            switch (jackpot_item){
                //Golden 100 Ton Weight
                case(0):
                    create_hitbox(AT_NSPECIAL,20,x-1*spr_dir,y-50)
                    break;
                //BEEEG bugingi
                case(1):
                    create_hitbox(AT_NSPECIAL,22,x-1*spr_dir,y-50)
                    break;
            }
        }
    }
    if (window == 4 && window_timer == 1){
        move_cooldown[AT_NSPECIAL] = 40;
    }
}

//BY LUKARU!!
#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}
