
// (former) damage modifiers for equalizer attacks
// (up tilt, up air)
if (get_player_damage( player) >= 200) {
/*
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 13);

set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 13);
*/
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 10);
}
else if (get_player_damage( player) >= 160) {
/*
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 12);

set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 12);
*/
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9);
}
else if (get_player_damage( player) >= 120) {
/*
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 11);

set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 11);
*/
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);
}
else if (get_player_damage( player) >= 80) {
/*
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 10);

set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 10);
*/
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
}
else if (get_player_damage( player) >= 40) {
/*
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 9);

set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 9);
*/
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6.5);
}
else {
/*
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);

set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 8);
*/

set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6);
}


// if you have no rockets in your clip, you can't fire rockets.
if (rockets_clip <= 0) {
	move_cooldown[AT_FSPECIAL] = 2;
	move_cooldown[AT_DSTRONG] = 2;
}

// if your clip is full, you can't reload.
if (rockets_clip >= 4) {
	move_cooldown[AT_NSPECIAL] = 2;
}

// if your buff banner rage isn't full, you can't deploy it.
if (buff_current != buff_max) {
	move_cooldown[AT_DSPECIAL] = 2;	
}

// things that happen while buff is active
if (buff_active) {
	
	
	// rage meter reset to 0
	buff_current = 0;
	
	// can't activate buff while it's active!
	move_cooldown[AT_DSPECIAL] = 2;	
	
	
	// starts the timer for the buff
	if (!buff_timer_started) {
		// flag raise sound
		sound_play(sound_get("buff_banner_flag"), false, noone, 0.5, 1);
		
		buff_cur_timer = buff_timer;
		buff_timer_started = true;	
	}
	else {
		
		// decrements buff banner meter until it hits 0
		if (buff_cur_timer > 0) {
			buff_cur_timer--;
			
		}
		else {
			// turns off buff when 0 is reached
			buff_timer_started = false;
			buff_active = false;
		}
		
	}
	
}

// many, many, many states that determine when the parachute or blastjumping should undeploy
// reset cooldown of upsecial if wall teched, wall jumped, or commited to landing
if (state == PS_WALL_TECH) || (state == PS_WALL_JUMP) || (state_cat == SC_GROUND_COMMITTED) {
	move_cooldown[AT_USPECIAL] = 1;	
	
	para_should_undeploy = true;
	
	
}
if (state_cat == SC_GROUND_NEUTRAL || state == PS_ATTACK_GROUND || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_DASH_START || state == PS_PRATLAND || state == PS_WALK_TURN) {
	if !((attack == AT_FSPECIAL || attack == AT_DSTRONG || attack == AT_USTRONG || attack == AT_BAIR) && state == PS_ATTACK_GROUND)  {
		blastjump_should_undeploy = true;	
	}
}
if (state_cat == SC_HITSTUN || state_cat == SC_AIR_COMMITTED) {
	if (attack != AT_USPECIAL) {
		if (state != PS_ATTACK_AIR) {
			para_should_undeploy = true;
		}
	}
}
if (state == PS_AIR_DODGE) {
	para_should_undeploy = true;
	blastjump_should_undeploy = true;
}


// fall speed decreased while parachute is active
if (para_active) {
	max_fall = 3.73/2;
}
else {
	max_fall = 10;
}

// general handler for parries
if (was_parried) {
	
	// if uspecial was parried, waits until after window 4 to undeploy parachute.
	// otherwise it just undeploys it instantly.
	if (attack == AT_USPECIAL && state == PS_ATTACK_AIR) {
		if (window > 4) {
			para_should_undeploy = true;
		}
	}
	else {
		para_should_undeploy = true;
	}
	
	// instantly stops blastjump state
	blastjump_should_undeploy = true;
	
	
	if (draintask = true) {
		// if buff banner is active, decrease timer.
		// if buff banner is inactive, decrease meter.
		if (buff_active) {
			if (buff_cur_timer > 0) {
				buff_cur_timer = round(buff_cur_timer / 2);
			}
		}
		else {
			if (buff_current > 0 && buff_current != buff_max) {
				buff_current = round(buff_current / 1.5);
			}
			
		}
	draintask = false;
	}
}
else {
	draintask = true;
}

// some more handlers to disable parachute
if (para_active) {

	// idk why this works but it does
	// if you input an attack and jump at the same time
	if (jump_pressed && attack_pressed)  {
		para_should_undeploy = true;
	}
	
	// disable parachute on jump, jump attempt, fastfall, fastfall attempt
	if (jump_pressed || jump_down || down_hard_pressed || fast_falling) {
		if (state != PS_ATTACK_AIR) {
			para_should_undeploy = true;
		}
	}
}

// disables the parachute
// starts the timer to display the undeploy animation
if (para_should_undeploy = true) {
	if (para_active) {
		//spawn_dust_fx( x, y, sprite_get("uspecial_undeploy"), 10 );
		sound_play(sound_get("para_close"), false, noone, 1, 1);
		para_active = false;
		//para_start_undeploy_anim = true;
		para_undeploy_anim_timer = 12;
		
	}
	para_should_undeploy = false;
}

if (rockets_clip < 0) {
	rockets_clip = 0;
}

// enables the strongs to be used in air while blast jump is active
// idk why this isn't initialized in the attacks themselves but whatever
set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);

// handler for when blastjumping
if (blastjumping) {
	
	// RJ fstrong hitpause and visual 
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 157);
	// reduced scaling
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9); // i want to make this 1 so bad
	set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
	
	// stats changes while blast jumping
	air_accel = .4;
	leave_ground_max = 7.5;
	max_jump_hsp = 7.5;
	air_max_speed = 7.5;
	
	// 20% less max fall speed 
	if (!para_active) {
		max_fall = 8;
	}
	
	// visual dust
	if (blastjump_sound_deployed == false) {
		blastjump_dust_timer = 10;
		sound_play( blastjump_sound, true, noone, 0.8, 1 );
		blastjump_sound_deployed = true;
	}
	

	
	
}
// handler for when blastjump needs to be disabled
if (blastjump_should_undeploy) {
	
	
	if (blastjumping) {
		
		// revert the RJ fstrong hitpause and visual
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
		
		set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
		
		// revert stats
		air_accel = .3;
		leave_ground_max = 5;
		max_jump_hsp = 5;
		air_max_speed = 5;
		max_fall = 10;
		
		// stops playing the blastjump sound and removes visual
		sound_stop(blastjump_sound);
		blastjump_sound_deployed = false;
		
		// disables variable
		blastjumping = false;
		
	}
	// function self destruct
	blastjump_should_undeploy = false;
}

// while in the air...
if (state_cat == SC_AIR_COMMITTED || state_cat == SC_AIR_NEUTRAL) {
	
	// makes you unable to reload
	// this is necessary. trust me.
	move_cooldown[AT_NSPECIAL] = 2;	
}

// buff banner damage in teams
if(get_match_setting(SET_TEAMS)){
	if (buff_active) {
		with(oPlayer){
			if(get_player_team(player) == get_player_team(other.player) && self != other){
				if(instance_exists(hit_player_obj) && !inflicted_buff && has_hit_player && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){

					with hit_player_obj {
						take_damage( player, player, 3 );
					}
					
					inflicted_buff = true;
				}
				
				if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
					inflicted_buff = false;
				}
				
			}
		}
	}
}

// red gets red horn. blue gets blue horn. green gets red horn? yellow gets blue horn??
if (get_player_color(player) % 2 != 0) {
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("buff_banner_horn_blue"));
	
}

// basically, if you're close enough to a wall, the dstrong hitbox gets bigger
if (place_meeting(x+(10*spr_dir), y, asset_get("par_block"))) || (place_meeting(x+(10*-spr_dir), y, asset_get("par_block"))){
	set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 44);
	
}
else {
	set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 32);
}

// all this uncommented code basically emulates wrastor air strongs.
/*
// wrastor starts falling 10 frames after the hitbox comes out
if (state == PS_ATTACK_AIR) {
	
	if (airstrongs_credits > 0) {
		if (strong_charge > 0) {

			if (attack == AT_USTRONG) {
				
				if ( !(window == 4 && window_timer > 7) || (window < 4) ) {
					vsp = 0;
					hsp = 0;
					
					if (window == 1) {
						airstrongs_credits--;
					}
				}
			}

			if (attack == AT_FSTRONG) {
				if ( !(window == 5 && window_timer > 7) || (window < 5) ) {
					vsp = 0;
					hsp = 0;
					
					if (window == 2) {
						airstrongs_credits--;
					}
				}
			}
			
		}
	}
	else {
		if (strong_charge > 0) {
			
			if (attack == AT_USTRONG) {
				if (window == 1) {
					//window = 2;
					//window_timer = 0;
					
					strong_charge = 59;
					//blastjump_should_undeploy = true;
				}

				
				if ( !(window == 4 && window_timer > 7) || (window < 4) ) {
					vsp = 0;
					hsp = 0;
				}

			}
			
			if (attack == AT_FSTRONG) {
				if (window == 2) {
					//window = 3;
					//window_timer = 0;
					strong_charge = 59;
					//blastjump_should_undeploy = true;
					
				}
				
				if ( !(window == 5 && window_timer > 7) || (window < 5) ) {
					vsp = 0;
					hsp = 0;
				}
			}
			
		}
		
	}
}

if (airstrongs_credits <= 0) {
	set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
	set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 0);
}
else {
	set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
	set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
}

if (!free) {
	airstrongs_credits = 59;	
}

*/

// the idea of not being able to charge strongs in the air was chosen instead.
if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (free || blastjumping) {
		set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
		set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 0);
	}
	else {
		set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
		set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	}
}

// push taunt before the match begins to swap DSPECIAL and DSTRONG
if (get_gameplay_time() < 127) {
	if (css_dspec != 1) {
		if (taunt_pressed) {
			sound_play(asset_get("mfx_star"), false, noone, 1, 1);
			css_dspec = 1;
			dspec_swap_task_timer = 1;
		}
	}
}

// dialogue buddy support
if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Soldier"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "The last thing out your mouth will be Sir! And it will be loud!",
	"I am going to strangle you with your own frilly taining bra!",
	"If you know what's good for ya, you will run!",
	"I am going to claw my way down your throat and tear out your very soul!",
	"Do not look at me, I did not ask you a question!",
	"You are a maggot hatched from a mutant maggot egg!",
	]
	
//  Regular dialogue
    if(otherUrl == "2113500915" && diag != "2113500915") //Change the url into a specific character's
    { // engineer
        diag = "Go back to Calgary, ya cow-herdin' Canadian!";
    }
	
    if(otherUrl == "2192126112" && diag != "2192126112") //Change the url into a specific character's
    { // demopan
		// this doesn't work for some reason :(
        diag = "Scotland is not a real country; you are an Englishman with a dress.";
    }

//  NRS/3-Part dialogue
    if(otherUrl == url) //Change the url into a specific character's
    { // soldier
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
				"I joined this team just to kill maggots like you."
				"Get a haircut, hippie.",
                "You're a disgrace to the uniform."]
            }
        }
    }
}
/*
//This code changes the player's jacket on alt 16 to the same color as their HUD.
var _col = get_player_hud_color( player );
if (get_player_color(player) == 16) {
	
	set_color_profile_slot(16, 0, color_get_red( _col ), color_get_green( _col ), color_get_blue( _col ) );
}
*/

