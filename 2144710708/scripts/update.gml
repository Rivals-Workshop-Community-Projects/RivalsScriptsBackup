// the dreaded... UPDATE AHHHH


// sleep kirby support
//Sleep Kirby Hat Offsets
if (free){
	//Air Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = 0; //
} else if (!free){
	//Grounded Hat Offsets
	sleep_kirby_hat_offset_x = -6; //
	sleep_kirby_hat_offset_y = -4; //
}

// intro animation

if (get_gameplay_time() == 2) {
	with(oPlayer) {
        if url == 2432114154 {
			other.nothanks = true;
        }
    }
}

if (nothanks == true) {
	
	if (get_gameplay_time() < 7) {
		set_attack(AT_NTHROW);

	}
	
	if (get_gameplay_time() < 127) {
		bababooey = bababooey - 1;
		can_move = false;
		hsp = 0;
		vsp = 0;
		move_cooldown[AT_DSPECIAL] = 2;
		move_cooldown[AT_NSPECIAL] = 2;
		move_cooldown[AT_FSPECIAL] = 2;
		move_cooldown[AT_USPECIAL] = 2;
	}
}


// munophone touch support
	muno_event_type = 1;
	user_event(14);
	
// practice mode check -- p2
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice = true;
}

// dialogue buddy support thing
if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Owen"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "hi",
	"can i kill you real quick",
	"coconut",
	":)",
	"i am about to commit a war crime",
	"steam is down for routine maintenence every tuseday",
	"mom of mia",
	"you have forfeited your life privileges",
	"i don't see any cringe around he-",
	"got milk?",
	"la creatura",
	"fuck",
	"in a moment i will commit an action that you won't consider very ethical of me",
	"kill",
	"im on xbox",
	"did you know that garry's mod works with the kinect",
	"u good?",
	"ASMR | **INSANE GUN SOUNDS** For SLEEP And Relaxation Whispers , Tapping . Soothing Triggers Etc..",
	"we engage in a mild amount of tomfoolery",
	"we do a little trolling",
	"did you know pomme's dacus allows her to powerslide like a true popstar",
	"can you parry boot in 100 ping",
	"your bingus is in another castle",
	"what is wrong with you",
	"hold on i have the perfect funny message for this situation",
	"ujiohiugyihlh;;'jhu'jh",
	"adapt deez nuts lmao",
	"chuck norris doesn't turn on the shower",
	"that is one of the worst takes i have ever seen",
	"*crys* why...",
	"cry about it",
	"adapt",
	"will you help me bring chaos to the world",
	"79 6f 75 20 6a 75 73 74 20 77 61 73 74 65 64 20 79 6f 75 72 20 74 69 6d 65",
	"the most optimal decision is to turn off pc and touch grass", // -gengis
	"do you like gus from half life",
	"we do quite a considerable amount of mental trickery and mockery of those who are unfortunate enough to fall victim to our clever little trap of social teasing",
	"i've fucking had it with you",
	"bruh",
	"you look like a sonic oc",
	"ddeath",
	"h",
	"have you seen my friend r",
	"my fps is too high",
	"hello, how are you? why are you looking at me like that?",
	"42 Cheesy Foods You Need To Eat In Your Lifetime | The Ultimate List",
	"zoo wee mama",
	"you washed man",
	"you, me, gas station. what are we getting for dinner? sushi of course.",
	"did you know eliana had an infinite for 6 months"
	]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "2310580951" && diag != "2310580951") //Change the url into a specific character's
    { // 64 mario
        diag = "hi sakk";
    }
	
    if(otherUrl == "2234517080" && diag != "2234517080") //Change the url into a specific character's
    { // rocky
        diag = "blaboa";
    }
	
    if(otherUrl == "2202646888" && diag != "2202646888") //Change the url into a specific character's
    { // eggdog
        diag = "so true";
    }
	
//  NRS/3-Part dialogue
    if(otherUrl == url) //Change the url into a specific character's
    { // owen
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "hi",
                "hi",
                "ok lets fight"]
            }
        }
    }
}

// afk timer thing
/*
if (state_timer > afk_timer) && (state == PS_IDLE) {
	is_afk = true;
}
else {
	is_afk = false;
}
*/


// special taunt for specific alts
if (get_player_color( player ) == 30) {
	set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 50);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("hecu_letsgo"));
}

if (get_player_color( player ) == 6) {
	if (window == 1) {
		set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 0)
	}
}


/*
// make dattack2 hitbox bigger if first dattack hitbox hit
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_DATTACK) {
		
		if (window == 1) {
			reset_hitbox_value(AT_UTHROW, 1, HG_WIDTH);
			reset_hitbox_value(AT_UTHROW, 1, HG_HEIGHT);
		}
		
		if (window == 2 && has_hit) {
			set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 100);
			set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 80);
		}	
		
	}
}
*/

// make uair2 hitbox bigger if first uair hitbox hits
/*
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_UAIR) {
		
		if (window == 1) {
			reset_hitbox_value(AT_UAIR, 2, HG_WIDTH);
			reset_hitbox_value(AT_UAIR, 2, HG_HEIGHT);
		}
		
		if (window == 6 && has_hit) {
			set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 90);
			set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 100);
		}	
		
	}
}
*/


// stops air dodge sound when wavelanding
// can't stop actual airdodge sound or else it'll stop everyone else's too
// i think if there are two owens, one airdodges the other wavelands, sound will still stop for both but oh well
if (state = PS_WAVELAND){
    sound_stop(fake_dodge_sound);
}

// trad fighter thing
if (superTrue == 1) {
	window = 0;
	window_timer = 0;
	if (free) {
	state=PS_ATTACK_AIR;
	}
	else {
	state=PS_ATTACK_GROUND;
	}

	attack=AT_DSPECIAL_2;
	set_attack(AT_DSPECIAL_2);
	
	superTrue = 0;
}

var is_shoe = false;

with (asset_get("pHitBox"))
{
    if (player_id == other)
    {
		if (attack == AT_DSPECIAL) {
			var is_shoe = true;
			var inst = self;
			
			
			if (hsp != 0) && (vsp != 0) {
				shoe_moving = true;
			}
			else {
				shoe_moving = false;
			}
		}
    }
}

// air strongs cheat
if (phone_cheats[cheat_air_strongs] != 0) {
	set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
}
else {
	reset_attack_value(AT_FSTRONG, AG_CATEGORY);
	reset_attack_value(AT_USTRONG, AG_CATEGORY);
	reset_attack_value(AT_DSTRONG, AG_CATEGORY);
}


// always active boot cheat 
if (phone_cheats[cheat_boot_active] != 0) {
	move_cooldown[AT_USPECIAL_GROUND] = 9999;
}
else {
	move_cooldown[AT_USPECIAL_GROUND] = 0;
}

// vibrate phone cheat
if (phone_cheats[cheat_vibrate] != 0) {
	
	funny_variable = phone_cheats[cheat_vibrate];
	
	hsp = hsp + (-funny_variable + random_func( 0, funny_variable*2, false ));
	vsp = vsp + (-funny_variable + random_func( 1, funny_variable*2, false ));
}

// no cooldowns phone cheat
if (phone_cheats[cheat_no_cooldowns] == 1) {
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.41);
}
else if (phone_cheats[cheat_no_cooldowns] == 0) {
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.4);
}

// floaty phone cheat
if (phone_cheats[cheat_floaty] == 1) {
	// generally absa stats
	gravity_speed = 0.3; 
	hitstun_grav = 0.45;
	air_accel = 0.4;
	jump_speed = 7.60;
	djump_speed = 6.60;
	short_hop_speed = 4.50;
	double_jump_time = 40;
}
else if (phone_cheats[cheat_floaty] == 0) {
	gravity_speed = prev_gravity_speed;
	hitstun_grav = prev_hitstun_grav;
	air_accel = prev_air_accel;
	jump_speed = prev_jump_speed;
	djump_speed = prev_djump_speed;
	short_hop_speed = prev_short_hop_speed;
	double_jump_time = prev_double_jump_time;
}

// hidden alts during countdown if you push a button if you're using the setaria alt
// (deprecated)
/*
if (hidden_alt_enabled) {
	if (get_player_color( player ) == 4) {
		if (get_gameplay_time() > 3 && get_gameplay_time() < 127 && hidden_alt_active == false) {
			if (taunt_down) { // trans rights
				set_color_profile_slot( 4, 0, 255, 255, 255 ); //body
				set_color_profile_slot( 4, 1, 91, 206, 250 ); //hair
				set_color_profile_slot( 4, 2, 245, 169, 184 ); //shirt
				set_color_profile_slot( 4, 3, 91, 206, 250 ); //shorts
				set_color_profile_slot( 4, 4, 245, 169, 184 ); //crowbar
				set_color_profile_slot( 4, 5, 91, 206, 250 ); //crowbar edges
				hidden_alt_active = true;
			}
			if (special_down) { // return of the cane king
				set_color_profile_slot( 4, 0, 255, 255, 191 ); //body
				set_color_profile_slot( 4, 1, 112, 92, 79 ); //hair
				set_color_profile_slot( 4, 2, 255, 255, 0 ); //shirt
				set_color_profile_slot( 4, 3, 79, 79, 79 ); //shorts
				set_color_profile_slot( 4, 4, 204, 204, 204 ); //crowbar
				set_color_profile_slot( 4, 5, 204, 204, 204 ); //crowbar edges
				hidden_alt_active = true;
			}
			if (attack_down) { // becker
				set_color_profile_slot( 4, 0, 191, 158, 141 ); //body
				set_color_profile_slot( 4, 1, 160, 102, 72 ); //hair
				set_color_profile_slot( 4, 2, 226, 226, 226 ); //shirt
				set_color_profile_slot( 4, 3, 84, 105, 168 ); //shorts
				set_color_profile_slot( 4, 4, 63, 127, 70 ); //crowbar
				set_color_profile_slot( 4, 5, 166, 166, 166 ); //crowbar edges
				hidden_alt_active = true;
			}
			if (shield_down) { // oc 2
				set_color_profile_slot( 4, 0, 255, 235, 214 ); //body
				set_color_profile_slot( 4, 1, 255, 204, 132 ); //hair
				set_color_profile_slot( 4, 2, 59, 51, 40 ); //shirt
				set_color_profile_slot( 4, 3, 34, 23, 17 ); //shorts
				set_color_profile_slot( 4, 4, 153, 185, 112 ); //crowbar
				set_color_profile_slot( 4, 5, 188, 71, 78 ); //crowbar edges
				hidden_alt_active = true;
			}
			if (up_down) { // clairen
				set_color_profile_slot(4, 0, 65, 54, 80); // body
				set_color_profile_slot(4, 1, 65, 54, 80); // hair
				set_color_profile_slot(4, 2, 170, 34, 74); // shirt
				set_color_profile_slot(4, 3, 79, 79, 79); // shorts
				set_color_profile_slot(4, 4, 255, 13, 106); // crowbar
				set_color_profile_slot(4, 5, 0, 255, 247); // crowbar edges
				hidden_alt_active = true;
			}
			if (left_down) { // fancy pants
				set_color_profile_slot(4, 0, 255, 255, 255); // body
				set_color_profile_slot(4, 1, 255, 255, 255); // hair
				set_color_profile_slot(4, 2, 79, 79, 79); // shirt
				set_color_profile_slot(4, 3, 255, 152, 0); // shorts
				set_color_profile_slot(4, 4, 255, 152, 0); // crowbar
				set_color_profile_slot(4, 5, 153, 91, 0); // crowbar edges
				hidden_alt_active = true;
			}
			if (right_down) { // sand cat
				set_color_profile_slot(4, 0, 255, 235, 198); // body
				set_color_profile_slot(4, 1, 237, 211, 167); // hair
				set_color_profile_slot(4, 2, 250, 249, 249); // shirt
				set_color_profile_slot(4, 3, 96, 75, 60); // shorts
				set_color_profile_slot(4, 4, 187, 224, 217); // crowbar
				set_color_profile_slot(4, 5, 30, 86, 163); // crowbar edges	
				hidden_alt_active = true;
			}
			if (down_down) { // slashe
				set_color_profile_slot(4, 0, 250, 236, 193); // body
				set_color_profile_slot(4, 1, 231, 240, 245); // hair
				set_color_profile_slot(4, 2, 155, 173, 199); // shirt
				set_color_profile_slot(4, 3, 155, 173, 199); // shorts
				set_color_profile_slot(4, 4, 192, 206, 216); // crowbar
				set_color_profile_slot(4, 5, 108, 99, 99); // crowbar edges
				hidden_alt_active = true;
			}
			if (jump_down) { // nekomata okayu by zerks
				set_color_profile_slot( 4, 0, 255, 246, 239 ); //body
				set_color_profile_slot( 4, 1, 218, 199, 229 ); //hair
				set_color_profile_slot( 4, 2, 129, 133, 137 ); //shirt
				set_color_profile_slot( 4, 3, 255, 255, 255 ); //shorts
				set_color_profile_slot( 4, 4, 76, 73, 79 ); //crowbar
				set_color_profile_slot( 4, 5, 232, 87, 235 ); //crowbar edges
				hidden_alt_active = true;
			}
			if (strong_down) { // bob
				set_color_profile_slot( 4, 0, 234, 124, 255 ); //body
				set_color_profile_slot( 4, 1, 216, 37, 255 ); //hair
				set_color_profile_slot( 4, 2, 255, 70, 120 ); //shirt
				set_color_profile_slot( 4, 3, 216, 37, 255 ); //shorts
				set_color_profile_slot( 4, 4, 255, 165, 25 ); //crowbar
				set_color_profile_slot( 4, 5, 250, 237, 237 ); //crowbar edges
				hidden_alt_active = true;
			}
		}
	}
}
*/

if (hidden_alt_enabled) {
	if (get_player_color( player ) == 16) {
		if (get_gameplay_time() > 3 && get_gameplay_time() < 127 && hidden_alt_active == false) {
			if (taunt_down || taunt_pressed) {
				// nb
				set_color_profile_slot( 16, 0, 252, 252, 252 ); //body
				set_color_profile_slot( 16, 1, 156, 89, 209 ); //hair
				set_color_profile_slot( 16, 2, 156, 89, 209 ); //shirt
				set_color_profile_slot( 16, 3, 44, 44, 44 ); //shorts
				set_color_profile_slot( 16, 4, 252, 244, 52 ); //crowbar
				set_color_profile_slot( 16, 5, 44, 44, 44 ); //crowbar edges
				hidden_alt_active = true;
				init_shader();
			}
		}
	}
}

// Lethal League stage exclusive changes
if (ll_stage) {
	
	move_cooldown[AT_NSPECIAL] = 99999; 
	move_cooldown[AT_DSPECIAL] = 99999;
	
}

// preface: this is all to prevent the boot parryback bug where owen becomes invincible

// checks how long user has been in the parry state.
// if it has been too long, the idle state is entered.
// additional check added for floor tech since that happened once.
// potentially bad idea? we'll see.
if (state == PS_PARRY || state == PS_TECH_GROUND) {
	
	if (hitpause == false) {
		parry_failsafe_timer++;
	}
	
	if (parry_failsafe_timer >= 30) {
		//sound_play(sound_get("lol"));
		state = PS_IDLE;
		parry_failsafe_timer = 0;
	}
}
// reset the timer if the failsafe was not triggered
if (parry_failsafe_timer > 0) {
	if (state != PS_PARRY) {
		parry_failsafe_timer = 0;
	}
}

// helps tell nspecial ammo bar when to display
if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	nspecial_active = false;
}


/*

if (gimmick_activated == false) {
	if ((taunt_down || taunt_pressed) && (down_down || down_pressed)) {
		if (!free) {
			attack = AT_EXTRA_2;
			set_attack(AT_EXTRA_2);

		}
	}
}
*/

// code for the meter gimmick abyss rune
if (gimmick_activated == true) {

	// cant be less than 0
	if (hype < 0) {
		hype = 0;
	}

	// activate
	if (taunt_down && down_down) {

		if (hype >= hype_max) {
			sound_play(asset_get("sfx_holy_lightning"));
			hype_active = true;
		}

	}

	// when activated
	if (hype_active == true) {
		
		// changes outline color
		// set the character's outline color to whatever this is:
		outline_color = hype_color;
		
		// tell the shader to update the character's colors:
		init_shader();

		// more jumps
		max_djumps = 5;
		
		// decay while active
		hype = hype - (0.1 * hype_length_multiplier);
		
		// become heavier
		knockback_adj = 0.70; 
		
		// deactivate
		if (hype <= 0 || hype_disable_override == true) {
			sound_play(asset_get("sfx_bubblepop"));
			outline_color = [ 0, 0, 0 ];
			init_shader();
			hype_active = false;
			hype_disable_override = false;
			max_djumps = 2;
			djumps = 0;
			hype = 0;
			knockback_adj = prev_knockback_adj;
		}
	}
}

// festive hat update
if (get_gameplay_time() > 130){
	if wearing_hat == 1 {
		if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
			wearing_hat = -1;
			
			switch (get_match_setting(SET_SEASON)) {
			  case 1: // valentines
				//set your valentines holiday alt
				var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("festivehat_va_toss"), 20));
				break;
			  case 2: // summer
				//set your summer holiday alt
				var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("festivehat_su_toss"), 20));
				break;
			  case 3: // halloween
				//set your halloween holiday alt
				var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("festivehat_ha_toss"), 20));
				break;
			  case 4: // christmas
				//set your christmas holiday alt
				var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("festivehat_ch_toss"), 20));
				break;
			}
			
			
			newfx.depth = depth-1;
		}
	} else if wearing_hat == -1 {
		if state == PS_RESPAWN or state == PS_SPAWN {
			wearing_hat = 1;
		}
	}
}

// reset cooldown of upsecial if wall teched, wall jumped, or commited to landing
if (state == PS_WALL_TECH) || (state == PS_WALL_JUMP) || (state_cat == SC_GROUND_COMMITTED) {
	move_cooldown[AT_USPECIAL] = 1;	
	move_cooldown[AT_FSPECIAL] = 1;	
}

// WORKSHOP COMPATIBILITY BEGINS HERE

// (LEGACY) Abyss Runes

// Rune C -  The beam of USPECIAL is bigger.
if (runeC == true) {
	//set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj_big"));
	//set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("uspecial_proj_big"));	
	
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
}

// Rune D - infinite ammo
if (runeD == true) {
	bomb_maxammo = 99;
	bomb_ammo = bomb_maxammo;
}

// Rune E - chargable fair that sends at angle 315
if (runeE == true) {
	
	// note: had to fix a bit of this when i reanimated fair lol

	// remove sfx in window 2
	set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 0);
	
	// add it to window 3
	set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 2);
	
	// make window 2 shorter to give more room for window 3
	set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);

	// for better timing of the fair visual and sfx
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
	
	// severe angle 
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 315);
	
	// chargable
	set_attack_value(AT_FAIR, AG_STRONG_CHARGE_WINDOW, 2);
	
	// custom charge code
	if (attack == AT_FAIR) {
		fairdamage = 8 + (8 * (strong_charge/60) * 0.6);
		fairscaling = .8 + ((strong_charge/60) * 0.35);
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, fairdamage);
		set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, fairscaling);
	}
	
	// make the active hitbox come out a frame slower
	set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
	
	// return of bonk 
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("owen_bonk"));
	
	// old bkb lol
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .8);
	
	// old hitpause scaling lol
	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .30);
}

// Rune F - rest taunt
if (runeF == true) {
	set_num_hitboxes(AT_TAUNT,1);
	set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
	set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 1);
	set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -20);
	set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 30);
	set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 30);
	set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 20);
	set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1.0);
	set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1.0);
	set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_CAMERA_SHAKE, 20);
	set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("homerun_bat"));
}

// Rune G - Makes NAIR big
if (runeG == true) {
	
	// bigger sprite
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_big"));
	
	// more range
	set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 128);
	set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 128);
	
	set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 144);
	set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 144);
	
	// more damage
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
	
	// more knockbask scaling on final hit
	set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .4);

}

// Rune H - Sandbert DAIR.
if (runeH == true) {
	set_attack_value(AT_DAIR, AG_CATEGORY, 1);
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair2"));
	set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
	set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

	set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
	set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

	set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

	set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

	set_num_hitboxes(AT_DAIR,1);

	set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -13);
	set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 75);
	set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
	set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 18);
	set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);		


}

// Rune I - FSPECIAL deals Clairen stun and is bigger
if (runeI == true) {
	set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 11);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
	
	set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
	
	// clairen stun color
	fspecial_color = $F7FF00; // blue/green/red hexidecimal format 

}

// Rune J - big radius
if (runeJ == true) {
	
	// bigg radius
	set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 200);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 200);
}

// Rune K - DSPECIAL multiplies damage.
if (runeK == true) {
	dspec_hudicon = sprite_get("oldboot_rune");
	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("oldboot_rune"));
}

// Rune L - USPECIAL beam
if (runeL == true) {
	//set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
	//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"))
	
	set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 404);
	set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
}

if (!runeL) {
	custom_window_timer = window_timer/get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);	
}
else if (runeL) {
	custom_window_timer = 1;
}

// Rune M - The gimmick
if (runeM == true) {
	gimmick_activated = true;
}

// Rune N - parry stun :D
// (this did not help)
if (runeN == true) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
}

// Rune O - funny uair and bair
if (runeO == true) {
	
	
	set_hitbox_value(AT_UAIR, 1, HG_EXTRA_HITPAUSE, 15);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 3);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
	
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 1.2);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_war_horn"));
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 110);
	
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 196);
}

// new codec
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 10; // replace
    trummelcodecsprite1 = sprite_get("codec_owen");
    trummelcodecsprite2 = sprite_get("codec_owen");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2; // Trummel
    trummelcodecexpression[page] = 0; // no effect

    trummelcodecline[page,1] = "when did fancy pants";
    trummelcodecline[page,2] = "become a furry";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1; // Alto
    trummelcodecexpression[page] = 0; // default 

    trummelcodecline[page,1] = "Dunno. I guess he wanted";
    trummelcodecline[page,2] = "to be a part of that";
    trummelcodecline[page,3] = "'Bird Guy' craze.";
    trummelcodecline[page,4] = "";
    page++; 
	
    //Page 2
    trummelcodecspeaker[page] = 3; // Owen
    trummelcodecexpression[page] = 0; // default

    trummelcodecline[page,1] = "bruh";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
    //Page 3
    trummelcodecspeaker[page] = 3; // Owen
    trummelcodecexpression[page] = 0; // default

    trummelcodecline[page,1] = "i liked the old codec";
    trummelcodecline[page,2] = "better";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
    //Page 4
    trummelcodecspeaker[page] = 0; // Muno
    trummelcodecexpression[page] = 0; // Default

    trummelcodecline[page,1] = "Apparently the developer";
    trummelcodecline[page,2] = "redid this one because";
    trummelcodecline[page,3] = "they didn't like the";
    trummelcodecline[page,4] = "punchline.";
    page++; 
	
    //Page 5
    trummelcodecspeaker[page] = 1; // Alto
    trummelcodecexpression[page] = 0; // default

    trummelcodecline[page,1] = "Owen's actually been";
    trummelcodecline[page,2] = "changed since the last";
    trummelcodecline[page,3] = "time we saw him.";
    trummelcodecline[page,4] = "";
    page++; 
	
    //Page 6
    trummelcodecspeaker[page] = 3; // Owen
    trummelcodecexpression[page] = 0; // default

    trummelcodecline[page,1] = "actually im-";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
    //Page 7
    trummelcodecspeaker[page] = 1; // Alto
    trummelcodecexpression[page] = 4; // angry

    trummelcodecline[page,1] = "He got this annoying";
    trummelcodecline[page,2] = "gimmick where the boot";
    trummelcodecline[page,3] = "copies what it gets hit";
    trummelcodecline[page,4] = "by.";
    page++;
	
    //Page 8
    trummelcodecspeaker[page] = 1; // Alto
    trummelcodecexpression[page] = 1; // idk

    trummelcodecline[page,1] = "It's not all bad, though.";
    trummelcodecline[page,2] = "If we hit it, it switches";
    trummelcodecline[page,3] = "owners!";
    trummelcodecline[page,4] = "";
    page++; 
	
    //Page 9
    trummelcodecspeaker[page] = 1; // Alto
    trummelcodecexpression[page] = 0; // default

    trummelcodecline[page,1] = "Owen is really fast in";
    trummelcodecline[page,2] = "the air and has great";
    trummelcodecline[page,3] = "aerials to boot.";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 10
    trummelcodecspeaker[page] = 1; // Alto
    trummelcodecexpression[page] = 4; // angry

    trummelcodecline[page,1] = "Whatever you do, don't";
    trummelcodecline[page,2] = "get hit offstage by FAIR.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
}


// Kirby Ability
if swallowed { //Kirby ability script starts here


	swallowed = 0;
	//Define any assets kirby might need to grab from YOUR CHARACTER
	var ability_spr = sprite_get("kirby_owen");
	var ability_hurt = sprite_get("kirby_owen_hurtbox");
	var ability_icon = sprite_get("ability_icon_owen"); //Optional
	var ability_sound1 = sound_get("smg1_fire1");
	var ability_projectile = sprite_get("nspecial_proj");
	var ability_sound2 = asset_get("sfx_blow_weak2");
	
	with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		 
		// pull out (note: this should never be frame 4)
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);

		// also firing
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_sound1);

		// firing
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, -1);

		// ammo is removed from the ammo bar during this window
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 3);

		// put away
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 4);

		set_num_hitboxes(AT_EXTRA_3, 1);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
		//set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 16);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -16);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 0);
		
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 13);
		
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_CAMERA_SHAKE, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_projectile);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_projectile);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_FORCE_FLINCH, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sound2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
		//set_hitbox_value(AT_EXTRA_3, 1, HG_EXTENDED_PARRY_STUN, 1);
		//set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 9);
		newicon = ability_icon //Optional, replaces the kirby ability icon
	} //Kirby ability script ends here
}

// kirby stuff p2
if enemykirby != undefined { //if kirby is in a match & swallowed
	with oPlayer { //Run through all players
		if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
			
			
			
			//hold to keep firing nspecial
			if (attack == AT_EXTRA_3){
				if (window == 4){
					if (special_down){
						window = 2;
						window_timer = 0;
					}
				}
			}
			
			
			
		}
	}
}

//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
    with (amber_herObj) //Access Amber's player object and set the values
    {
        //Set the window values for Amber's hugging. DO NOT change Amber's sprites
        //in the attack_values
		
	    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
	    
	    //Enter
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect")); 
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Loop
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 10);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Exit
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
        //etc....

        //Important. Puts Amber in startup hug state (2).
        //Editing this variable not recommended
        amberHugState = 2; 
    }
    //Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
    oPlayerHugAmberState = 2;
    
    //Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}

// air taunting
// sadly conflicts with air grabbing (buddy) 

if taunt_pressed and free and state_cat == SC_AIR_NEUTRAL {
	
	if (!tf_stage) {
		if (runeM) { // rune check necessary for not conflicting with meter activation
			if (!down_down) {
				attack = AT_TAUNT;
				set_attack(AT_TAUNT);
				window = 1;
				window_timer = 0;
			}
		}
		else if (!runeM) {
			attack = AT_TAUNT;
			set_attack(AT_TAUNT);
			window = 1;
			window_timer = 0;
		}
	}
}


// messy way to reset prat land time after using rest (abyss rune)
if (runeF == true) {
	if (state_cat == SC_GROUND_NEUTRAL) {
		prat_land_time = 15;
	}
}


if !("hue" in self) hue = 0
if get_player_color(player) = 12 { // rainbow alt (hair, crowbar edges, pants)
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue3=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue3,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue5=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue5,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue7=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue7,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
}
else if get_player_color(player) = 8 { // sakk alt (crowbar, crowbar edges)
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(255, 121, 255);
	hue6=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue6,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(8,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue7=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue7,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(8,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
}
init_shader();

// throws and grabs support
// note: gone. reduced to atoms.


// btt course stuff
if get_btt_data { //Get data for Break The Targets
	course_name = "Owen Course";
	//Set the spawn properties
	respawn_point = [[27,36],[0,0],1];
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid",true, 0, 0, 0, 0, 0, 0 );  
	room_add(1,[
	    [ //Each Cell
	        [0,0], //Cell Coordinates
	        [

				// up air
				[10, 27+0, 36-8, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				
				// dair pit
				[10, 27+10, 36+6, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				[10, 27+16, 36+4, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				[10, 27+22, 36+2, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				
				// gun 1
				[10, 27+44+2, 36+0-2, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				
				// gun 2
				[10, 27+58, 36-12, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				[10, 27+58, 36-4, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				
				// fspecial + dspecial
				[10, 27+113, 36-16, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				
				// uspecial only
				[10, 27+130, 36-21, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				
				// upsecial recommended
				[10, 27+130, 36-13, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				
		        //Solid Ground
		    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
				
               	[1, 50, 50, 0, 10, [sprite_get("btt_backdrop"), 0, 0, 1, 0, 0, 0, 0], [0]]
		    	//Plats
		    	//[1, 46, 49, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	//[1, 64, 71, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]]
	            ]
	        ],
	    //Blastzones
	    [ //Each Cell
	        [0,1], //Cell Coordinates
	        [
	            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [
	        [1,1],
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [ //Each Cell
	        [-1,1], //Cell Coordinates
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ]
	    ]);
}

// break the targets code - p2
#define room_add(_room_id,room_data) //Adds a new room to the scene
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}