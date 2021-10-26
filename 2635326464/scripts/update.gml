muno_event_type = 1;
user_event(14);

//Intro stuff timer

if (get_gameplay_time() < 126){
	start_lakitu = 1;

	if (attack_down && has_charged_countdown == false){
		sound_play (sound_get("Coin"));
		has_charged_countdown = true;
		if (get_gameplay_time() <= 33) {
			charged_number = 3;
		}

		if (get_gameplay_time() > 33 && get_gameplay_time() < 64){
			charged_number = 2;
		}

		if (get_gameplay_time() >= 64){
			charged_number = 1;
		}
	}

	if (has_charged_countdown && !attack_down){
		has_charged_countdown = false;
		charged_number = 0;
	}
} 

if (start_lakitu == 1){
	if (get_gameplay_time() == 5 || get_gameplay_time() == 33 || get_gameplay_time() == 64){
		sound_play (sound_get("321"));
	}
	if (get_gameplay_time() == 95){
		sound_play (sound_get("go"));
	}
}

if (get_gameplay_time() == 126 && has_charged_countdown){
		has_charged_countdown = 0;

		if (charged_number == 2){
			state = PS_ATTACK_GROUND;
			attack = AT_NAIR;
			window = 4;
			window_timer = 0;
			hurtboxID.sprite_index = sprite_get("hurtbox")
		} else if (charged_number == 3){
			start_fail = create_hitbox(AT_JAB, 4, x, y-10);
			start_fail.can_hit_self = 1;
		}
}

//making sure the extra dashes don't mess anything
if (state == PS_DASH){
	hurtboxID.sprite_index = sprite_get("hurtbox")
}

//changing height

if (state == PS_DOUBLE_JUMP || state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD){
	char_height = 80;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_DOUBLE_JUMP && state != PS_AIR_DODGE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
	char_height = 52;
}

//Chain chomp vfx

with (hit_fx_obj){
	if (hit_fx == other.chain_gone){
		spr_dir = other.spr_dir;
	}
}

if (attack == AT_FAIR && prev_state == PS_ATTACK_AIR && state == PS_LANDING_LAG && state_timer == 0){
	spawn_hit_fx(chomp_x, chomp_y, chain_gone);
}

//Lakitu sfx 

	if (state == PS_RESPAWN && lakitu_sfx_allowed = 1){
		if (visible){
			sound_play (sound_get("Lakitu"));
			lakitu_sfx_allowed = 0;
		}
	}

//Idle sfx 

	if (state == PS_IDLE){
		idle_state_timer = state_timer;
		if (state_timer == 1){
			sound_play (sound_get("Idle"));
		}
	} else sound_stop (sound_get("Idle"));

//Dash sfx 

	if (state == PS_DASH_START && idle_state_timer > 10){
		if (state_timer == 1){
			sound_stop (sound_get("Dash"));
			sound_play (sound_get("Dash"));
			idle_state_timer = 0;
 		}
	}


//Turn sfx

	if (state == PS_DASH_TURN){
		if (state_timer == 6){
			sound_play (sound_get("LandSkid"));
		}
	}

//Shell sfx

	if (shell_spawned == 1){
		if (!instance_exists(green_shell)){
			sound_stop(sound_get("Shell"));
		}
	}

//Roll sfx

if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) {
	
	sound_stop(asset_get("sfx_roll"));
	if (state_timer == 1) {
		sound_play(sound_get("Boo"));
	}

} 

//Wavedash sfx

if (state == PS_WAVELAND) {
	if (state_timer == 1) {
		sound_stop(sound_get("Boo"));
		sound_play(sound_get("Hover"));
	}
} 

//Jump Dash Thing

	if (state == PS_FIRST_JUMP){
 		air_speed = abs(hsp);
	} else if (state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR || state == PS_TUMBLE || state_cat == SC_AIR_COMMITTED || state_cat == SC_HITSTUN) {
		air_speed = 0;
	}

	if (sprite_index == land && air_speed > 8){
	
		if((spr_dir = 1 && (hsp > 0)) || (spr_dir = -1 && (hsp < 0))){
		set_state(PS_DASH);
		land_timer = default_land_timer;
		land_timer_start = 1;
		move_cooldown[AT_JAB] = default_land_timer;
		move_cooldown[AT_DATTACK] = default_land_timer;
		move_cooldown[AT_FTILT] = default_land_timer;
		move_cooldown[AT_UTILT] = default_land_timer;
		move_cooldown[AT_DTILT] = default_land_timer;
		move_cooldown[AT_NAIR] = default_land_timer;
		move_cooldown[AT_BAIR] = default_land_timer;
		move_cooldown[AT_FAIR] = default_land_timer;
		move_cooldown[AT_UAIR] = default_land_timer;
		move_cooldown[AT_DAIR] = default_land_timer;
		move_cooldown[AT_NSPECIAL] = default_land_timer;
		move_cooldown[AT_FSPECIAL] = default_land_timer;
		move_cooldown[AT_USPECIAL] = default_land_timer;
		//No dspecial here, so you can't bypass the banana cooldown
		}
	}


	if (land_timer_start = 1) {
		land_timer--;
		if (land_timer < 1){
			land_timer_start = 0;
		}		
	}

// Wall Jump flip and sfx

	if (state == PS_WALL_JUMP){
		if (state_timer == 1){
			sound_play (sound_get("AntiGravity"));
		}

		if (state_timer == 28){
			spr_dir = spr_dir * -1;
		}
	}

//Parry sfx

	if (state == PS_PARRY){
		if (state_timer == 1){
			sound_play (sound_get("Parry"));
		}
	}

//Ftilt color and Dspecial Slide

	if has_rune("H") {
		with (oPlayer){
			if (!bananed){
	 		bananed_timer_default = 60;
			bananed_timer = bananed_timer_default;
			}
		}
	}

with (oPlayer){



	if (self!= other){
		//inked
		if (state == PS_RESPAWN || debuff_timer = 0){
			painted = false;
			debuff_timer = debuff_timer_default;
		}

		if (painted){
			debuff_timer--;
			big_paint = false;
		}
	
		if (!painted){
			debuff_timer = debuff_timer_default;
			air_max_speed = default_air_max_speed;
			walk_speed = default_walk_speed;
			dash_speed = default_dash_speed;
			roll_forward_max = default_roll_forward_max; 
			roll_backward_max = default_roll_backward_max;
		}
	}


	//hmmm banana

	if (state == PS_RESPAWN || bananed_timer <= 0){
		bananed = false;
		bananed_timer = bananed_timer_default;
	}

	if (bananed){
		bananed_timer--;
		if (!free){
			set_state(PS_HITSTUN_LAND);
		} else set_state(PS_PRATFALL);
		
		if (bananed_timer == bananed_timer_default){
			ground_friction = 0;
		}
	
		if (abs(hsp) < 5 && hsp != 0 && !free){
			hsp = spr_dir*5
		}
	}
	if (!bananed){
		ground_friction = default_friction;
	}
}

//Respawn boost

	if (state == PS_RESPAWN && attack_down){
		has_tricked = 1;
	}

// Speed boost after Nair

	if (free && attack_down == false){
		has_tricked = 0;
	}

	if (has_tricked == 1){

		if (!free){
			has_tricked = 0;
			state = PS_ATTACK_GROUND;
			attack = AT_NAIR;
			window = 4;
			window_timer = 0;
			attack_end();
			hurtboxID.sprite_index = sprite_get("hurtbox");
		}

	}

//Fair thing

	if (!free){
		fair_uses = 0;
	}

//Explosion

	if (start_explosion = 1){
		create_hitbox(AT_USTRONG, 2, bob_omb_x, bob_omb_y-9);
		sound_play (sound_get("BobOmbExplode"));
		spawn_hit_fx( bob_omb_x, bob_omb_y, bob_omb_explosion);
		start_explosion = 0;
	}

	var bomb_spr_dirr = bomb_spr_dir;

	with (hit_fx_obj) {
   		if (hit_fx == other.bob_omb_explosion){
			if (bomb_spr_dirr == 1){
     				spr_dir = 1;
  			}
		
			if (bomb_spr_dirr == -1){
     				spr_dir = -1;
  			}
		}
	} 

//Explosion 2

	if (start_blue_explosion = 1){
		create_hitbox(AT_FSTRONG_2, 2, blue_x, blue_y-9);
		sound_play (sound_get("BobOmbExplode"));
		spawn_hit_fx( blue_x, blue_y, blue_explosion);
		start_blue_explosion = 0;
	}

//Nspecial and Uspecial sounds

	if (state != PS_ATTACK_GROUND){
		sound_stop(sound_get("Drift1"));
		sound_stop(sound_get("Drift2"));
		sound_stop(sound_get("Drift3"));
		sound_stop(sound_get("DriftSteer"));
	}

	if (state != PS_ATTACK_AIR){
		sound_stop(sound_get("GliderWind"));
	}

	

// Air Taunt and walking taunt

	if (taunt_pressed){
		if (prev_state == PS_WALK || state == PS_DASH) {
			state = PS_ATTACK_GROUND;
			attack = AT_TAUNT;
			window = 1;
			window_timer = 0;
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_walk"));
			set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 3);
			set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
			air_taunt = 0;
		}

		if (state == PS_FIRST_JUMP || state == PS_IDLE_AIR){
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
			state = PS_ATTACK_AIR;
			attack = AT_TAUNT;
			air_taunt = 1;
		}
	}

// Locking double jump after uspecial

	if (djump_lock_start == 1){
		djump_lock_timer--;
		max_djumps = 0;
		
		if (djump_lock_timer > 0){
			has_airdodge = 0;	
		} else {
			djump_lock_start = 0;
			has_airdodge = 1;
		}

	} else {
		max_djumps = 1;
	}

	if (!free){
		djump_lock_timer = 0;
		djump_lock_start = 0;
	}

//Seeing winner for spiny shell to work

	if (stop_checking = false && get_match_setting(SET_STOCKS)){
		with (oPlayer){
			if (
			( (get_player_stocks(player) >= get_player_stocks(1)) || !(is_player_on(1)) ) &&
			( (get_player_stocks(player) >= get_player_stocks(2)) || !(is_player_on(2)) ) &&
			( (get_player_stocks(player) >= get_player_stocks(3)) || !(is_player_on(3)) ) &&
			( (get_player_stocks(player) >= get_player_stocks(4)) || !(is_player_on(4)) ) &&
			( get_player_stocks(player) > get_player_stocks(other.player) ) &&
			( get_player_team(player) != get_player_team(other.player) )
			) {
				winner = true;
				other.winner_exists = 1;
				other.winner_x = x;
				other.winner_y = y - char_height - 60;
			} else winner = false;
		}
		
		//disabling shell
		if (
		( (get_player_stocks(player) >= get_player_stocks(1)) || !(is_player_on(1)) || get_player_team(player) == get_player_team(1) ) &&
		( (get_player_stocks(player) >= get_player_stocks(2)) || !(is_player_on(2)) || get_player_team(player) == get_player_team(2) ) &&
		( (get_player_stocks(player) >= get_player_stocks(3)) || !(is_player_on(3)) || get_player_team(player) == get_player_team(3) ) &&
		( (get_player_stocks(player) >= get_player_stocks(4)) || !(is_player_on(4)) || get_player_team(player) == get_player_team(4) )
		){

			winner_exists = 0;
		}
	}

//stopping spiny shell



//Kirby
if (swallowed)
{
    sound_play(sound_get("item_box"), true, noone, 1, 1);
    swallowed = 0;
    kart_swallowed = true;
}

with oPlayer 
{
    if (url == "1868756032")
    {
        if (attack == AT_NSPECIAL && window == 1 && window_timer == 1)
        {
             other.abilitygiven = (1 + floor(get_gameplay_time()/4) mod 15);
            kart_ability_counter = 0;
        }

        if (other.kart_swallowed)
        {
            if ("kart_ability_counter" not in self) kart_ability_counter = 0;
            
            kart_ability_counter++
            
            if (current_ability == 0) with (other)
            {
               kart_swallowed = 0;
               sound_stop(sound_get("item_box"));
            }
            else if (special_pressed || (kart_ability_counter > 240)) with (other) 
            {
                kart_swallowed = 0;
                sound_stop(sound_get("item_box"));
                sound_play(sound_get("starman_get"));
            }
            else
            {
                current_ability = (1 + floor(get_gameplay_time()/4) mod 15);
                var k = 30;
                move_cooldown[AT_NSPECIAL] = k;
                //ALL indexes Kirby uses as attack idexes for builtin abilities
                move_cooldown[AT_USPECIAL_GROUND] = k;
                move_cooldown[AT_USPECIAL_2] = k;
                move_cooldown[AT_FSTRONG_2] = k;
                move_cooldown[AT_DSTRONG_2] = k;
                move_cooldown[AT_DSPECIAL_AIR] = k;
                move_cooldown[AT_TAUNT_2] = k;
                move_cooldown[AT_EXTRA_1] = k;
                move_cooldown[AT_FSPECIAL_2] = k;
                move_cooldown[AT_NSPECIAL_AIR] = k;
                move_cooldown[AT_NSPECIAL_2] = k;
                move_cooldown[AT_EXTRA_2] = k;
                move_cooldown[AT_USTRONG_2] = k;
                move_cooldown[AT_DSPECIAL_2] = k;
                move_cooldown[AT_FSPECIAL_AIR] = k;
                move_cooldown[AT_UTHROW] = k;
                move_cooldown[AT_DTHROW] = k;
                move_cooldown[AT_NTHROW] = k;
            }
            
        }
    }
}

//Rivals of fighters

if superTrue == 1 {
	superTrue = 0;
	if (!free){
		state = PS_ATTACK_GROUND;
	} else state = PS_ATTACK_AIR;
	attack = 49;
	window_timer = 0;
	window = 1;
}

//Final_smash

if has_rune("N") {
	if (get_gameplay_time() mod 4620 = 0){
		state = PS_ATTACK_GROUND;
		attack = 49;
		window = 1;
		window_timer = 0;
	}
}


if (starman_start == 1){

	if (starman_timer == 0){
		music_set_volume(0);
		sound_play (sound_get("starman"));
		starting_health = get_player_damage(player);
		default_walk_speed = walk_speed;
		default_dash_speed = dash_speed;
	}

	//speed boost and no hurtbox
	if (starman_timer == 1){
		walk_speed = default_walk_speed*1.3;
		dash_speed = default_dash_speed*1.3;
	}

	starman_timer++;

	//can't get hurt, only healed
	if (get_player_damage(player) > starting_health){
		set_player_damage(player, starting_health);
	}

	//the actual hitbox
	if (starman_timer mod 5 = 0 && starman_timer != 600){
		attack_end();
		star_hitbox = create_hitbox( 49, 1, x, y );
	}

	//taste the rainbow
	rainbow_color = 1 ? make_color_hsv(10*get_gameplay_time() % 256 + 1, 200, 200) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 3),
	get_color_profile_slot_g(get_player_color(player), 3),
	get_color_profile_slot_b(get_player_color(player), 3),
	);

	set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));
	set_character_color_slot(1, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));
	set_character_color_slot(2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));
	set_character_color_slot(3, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));
	set_character_color_slot(4, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));
	set_character_color_slot(5, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));
	set_character_color_slot(6, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));
	set_character_color_slot(7, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));

	if(starman_timer >= 600){
		hurtboxID.sprite_index = sprite_get("hurtbox");
		music_set_volume(1);
		walk_speed = default_walk_speed;
		dash_speed = default_dash_speed;
		sound_stop (sound_get("starman"));
		starman_start = 0;
		starman_timer = 0;
	} else 	hurtboxID.sprite_index = sprite_get("nothing");
}

//Runes

if has_rune("I") {
	if (state_cat != SC_HITSTUN){
		if (x < 10){
			x = room_width - 11;
		}

		if (x > (room_width - 10)){
			x = 11;
		}
	}
}

if (has_rune("J")) {
	if (
		( (get_player_stocks(player) < get_player_stocks(1)) || !(is_player_on(1))  || player == 1) &&
		( (get_player_stocks(player) < get_player_stocks(2)) || !(is_player_on(2))  || player == 2) &&
		( (get_player_stocks(player) < get_player_stocks(3)) || !(is_player_on(3))  || player == 3) &&
		( (get_player_stocks(player) < get_player_stocks(4)) || !(is_player_on(4))  || player == 4)
	){
		walk_speed = default_walk_speed * 1.3;
		walk_accel = default_walk_accel * 1.3;
		dash_speed = default_dash_speed * 1.3;	
		if (window == 1 && window_timer == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
			for(var i = 1; i <= get_num_hitboxes(attack); i++) {
				reset_hitbox_value(attack, i, HG_DAMAGE);
				reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
				set_hitbox_value(attack, i, HG_DAMAGE, get_hitbox_value(attack, i, HG_DAMAGE) * 1.2);
				set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, get_hitbox_value(attack, i, HG_BASE_KNOCKBACK) * 1.2);
			}
		}
	} else {
		walk_speed = default_walk_speed;
		walk_accel = default_walk_accel;
		dash_speed = default_dash_speed;
		if (window == 1 && window_timer == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
			for(var i = 1; i <= get_num_hitboxes(attack); i++) {
				reset_hitbox_value(attack, i, HG_DAMAGE);
				reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
			}	
		}
	}
}


/////////////////////////////////Dialogue buddy/////////////////////////////////////////////

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Mario Kart"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "*beep beep*",
    "*honk*",
    "*beeeeeeeeeeeeeeeeep*",
    "*beeeeep beep beep beeeeeeeep*",
    "*honk honk*"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "" && diag != "") //Change the url into a specific character's
    {
        diag = "Testing. I hope you like this mod :)";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
//  NRS/3-Part dialogue
    if(otherUrl == 225005500) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "...!",
                "!!!",
                "[A friendly rivalry has been established yet again]"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 1;
                    break;
            }
        }
    }

    if(otherUrl == 1898782296) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "...?",
                "...!",
                "[It seems he wants your kart]"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 1;
                    break;
            }
        }
    }

    if(otherUrl == 2311391224) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = otherPlayer; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Shy Guy will never drive a kart!",
                "...",
                "*spitting cereal*"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 1;
                    break;
            }
        }
    }

    if(otherUrl == 2283018206) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = otherPlayer; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Look who it is! Want to spare?",
                "[revving engine]",
                "If I win, you'll introduce me to that Funky fella!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 1;
                    break;
            }
        }
    }

    if(otherUrl == 2501310527) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "*beep beep*",
                "!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 1;
                    break;
            }
        }
    }

    if(otherUrl == 2545216686 || otherUrl == 1925704707) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = otherPlayer; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Woah, a living car! I wonder how it works.*",
                "*beep*"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
            }
        }
    }

    if(otherUrl == 2043442259) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "*skreeeeeech*",
                "*!*",
		"[It seems you know each other?]"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 1;
                    break;
            }
        }
    }
}
