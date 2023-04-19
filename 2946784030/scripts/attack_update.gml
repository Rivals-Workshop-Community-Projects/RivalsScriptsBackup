//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

/*Forward Strong - Shoulder Charge (OLD CODE)
if attack == AT_FSTRONG && window == 1 && window_timer == 1{
    wario_fstrong_player_obj = noone;
}
if attack == AT_FSTRONG && window == 2 && wario_fstrong_player_obj != noone{
    wario_fstrong_player_obj.x = x + 40*spr_dir;
    wario_fstrong_player_obj.y = y-8;
    wario_fstrong_player_obj.hitpause = true;
}*/

var fstrong_speed = 12 + (strong_charge*(1/15));
var hit_wall = place_meeting(x+spr_dir, y, asset_get("par_block"));

//Forward Strong - Shoulder Bash (NEW CODE)
if attack == AT_FSTRONG{
	
	can_move = false;
	can_fast_fall = false;
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, fstrong_speed);
	
	
	
	if get_player_color(player) == 23{
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_peter"));
	}
	
	if window > 1 && window < 4 && (has_hit == true || was_parried == true || (hit_wall == true && window_timer > 1)){
		if hit_wall == true{
			spawn_hit_fx(x+24*spr_dir, y-32, 304);
			sound_play(asset_get("sfx_blow_heavy2"));
			hitpause = true;
			hitstop = 8;
		}
		
		sound_stop(sound_get("SFX_FStrong_Dash"));
		destroy_hitboxes();
		attack_end();
		set_attack( AT_FSTRONG_2 );
	}
	
	if window == 1 || window > 3{
		set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
		set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
		
	}
	if window == 2 || window == 3{
		set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
		set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
	}
	
	if free == true{
		attack_end();
		destroy_hitboxes();
		window_timer = 0;
		hsp = hsp*0.8;
		set_attack( AT_EXTRA_1 );
	}
	
}

//Forward Strong Ledge Fall
if attack == AT_EXTRA_1 && window == 2 && window_timer > 5{
	can_move = false;
	can_jump = true;
	can_attack = true;
	can_fast_fall = false;
}

//Down Strong - Belly Flop

if attack == AT_DSTRONG{
	can_fast_fall = false;
	//can_move = false;
	
	if window == 1 && window_timer == 1{
		wario_fstrong_player_obj = noone;
	}
	if window == 4 && wario_fstrong_player_obj != noone{
		wario_fstrong_player_obj.x = x+8*spr_dir;
		wario_fstrong_player_obj.y = y+16;
		wario_fstrong_player_obj.hitpause = true;
		wario_fstrong_player_obj.state = PS_HITSTUN_LAND;
	}
}

//AERIALS

//Back air - Wind Up Punch

/*
if attack == AT_BAIR{
	if window == 1{
		bair_charge_loops = 0;
	}
	if window == 2{
		
		if window_timer == 1{
			bair_charge_loops = bair_charge_loops+1;
		}
		
		if (attack_down == true || left_strong_down == true && spr_dir == 1 || right_strong_down && spr_dir == -1 || left_stick_down == true && spr_dir == 1 || right_stick_down && spr_dir == -1 ) && bair_charge_loops < 3{
			set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 9);
		}
		else{
			set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
		}
		
	}
}
*/

//Down Air - Drill Dive
if attack == AT_DAIR && free == false && window == 2{
    set_attack( AT_DAIR_2 );
}
else{
    set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
    set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
}

//SPECIALS

//Up Special - Piledriver

if attack == AT_USPECIAL{
	
	can_move = false;
	
	if window == 1{
		set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
		if stick_horizontal == 1{
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 4);
		}
		if stick_horizontal == -1{
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -4);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, -4);
		}
		if stick_horizontal == 0{
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
		}
	}
}

if attack == AT_USPECIAL_2{
	can_fast_fall = false;
	
	if window == 3{max_fall = 18;}
	if window == 1 || window == 5{can_move = false;}
	
	move_cooldown[ AT_USPECIAL ] = 10;
}

//Up Special - Piledriver (Command Grab Code)

if (attack == AT_USPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}

if (attack == AT_USPECIAL_2 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
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
		
		if (image_index == 11){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-52;
		}
		if (image_index == 12){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-46;
		}
		
		if (image_index >= 13 && image_index < 21){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-64;
		}
		if (image_index == 21 || image_index == 25){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y;
		}
		if (image_index == 22 || image_index == 24){
		    grabbed_player_obj.x = x + (16*spr_dir);
		    grabbed_player_obj.y = y;
		}
		if (image_index == 23 || image_index == 29){
		    grabbed_player_obj.x = x + (32*spr_dir);
		    grabbed_player_obj.y = y;
		}
		if (image_index == 25 || image_index == 27){
		    grabbed_player_obj.x = x - (16*spr_dir);
		    grabbed_player_obj.y = y;
		}
		if (image_index == 26){
		    grabbed_player_obj.x = x - (32*spr_dir);
		    grabbed_player_obj.y = y;
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}


//Aerial Down Special - Ground Pound
if attack == AT_DSPECIAL_2{
    if window == 1{
        set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 7);
    }
    
    if window < 4 && !free{
    	set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 1);
    }
    
    if has_hit == true{
    	window = 4;
    	window_timer = 0;
    	
    	if wario_voiced{sound_play(sound_get("BUTT_SMASH"));}
    	
    	has_hit = false;
    	set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
    	if window == 4 && taunt_down == true{
    		sound_play(sound_get("SFX_Waft_Quarter"));
    		create_hitbox(AT_DSPECIAL_2, 2, x+(8*spr_dir), y+16);
    		create_hitbox(AT_DSPECIAL_2, 3, x-(8*spr_dir), y+16);
    	}
    }
    
    
    if (window != 5) && (window > 2) { can_move = false; }
}


//Neutral Special

if (attack == AT_NSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}

if (attack == AT_NSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	
	can_move = false;
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
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
		
		if (image_index <= 8){
		    grabbed_player_obj.x = x+48*spr_dir;
		    grabbed_player_obj.y = y-4;
		}
		
		//Forward Throw
		if (image_index == 9){
		    grabbed_player_obj.x = x+32*spr_dir;
		    grabbed_player_obj.y = y-36;
		    grabbed_player_obj.spr_dir = spr_dir;
		}
		if (image_index == 10) || (image_index == 12){
		    grabbed_player_obj.x = x-8*spr_dir;
		    grabbed_player_obj.y = y-42;
		}
		if (image_index == 11){
		    grabbed_player_obj.x = x-16*spr_dir;
		    grabbed_player_obj.y = y-38;
		}
		if (image_index == 13){
		    grabbed_player_obj.x = x+24*spr_dir;
		    grabbed_player_obj.y = y-36;
		}
		
		//Back Throw
		if (image_index == 19){
		    grabbed_player_obj.x = x+(36*spr_dir);
		    grabbed_player_obj.y = y;
		}
		if (image_index == 20) || (image_index == 26){
		    grabbed_player_obj.x = x+(18*spr_dir);
		    grabbed_player_obj.y = y;
		}
		if (image_index == 21) || (image_index == 25){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y;
		}
		if (image_index == 22) || (image_index == 24){
		    grabbed_player_obj.x = x-(18*spr_dir);
		    grabbed_player_obj.y = y;
		}
		if (image_index == 23){
		    grabbed_player_obj.x = x-(36*spr_dir);
		    grabbed_player_obj.y = y;
		}
		if (image_index == 27){
		    grabbed_player_obj.x = x+(36*spr_dir);
		    grabbed_player_obj.y = y;
		}
		
		//Down Throw
		if (image_index == 32){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-36;
		}
		if (image_index >= 33) && (image_index <= 42){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y+8;
		}
		
		//Up Throw
		if (image_index == 43){
		    grabbed_player_obj.x = x+8*spr_dir;
		    grabbed_player_obj.y = y-48;
		}
		if (image_index == 44){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-68;
		}
		if (image_index == 45){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-48;
		}
		if (image_index == 46){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-36;
		}
		if (image_index == 47){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-64;
		}
	}
}


//Activate Different Throws

if attack == AT_NSPECIAL{
	if window == 1 && window_timer == 1{
		set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_GOTO, 2);
		set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 20);
		wario_grab_timer = 0;
	}
}


if attack == AT_NSPECIAL_2{
	
	can_move = false;
	
	if window == 1{
		
		if stick_horizontal == 1 && window_timer < 15{
			window_timer = 15;
			wario_grab_timer = 80;
			set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_GOTO, 2);
		}
		if stick_horizontal == -1 && window_timer < 15{
			window_timer = 16;
			set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_GOTO, 5);
			wario_grab_timer = 80;
			spr_dir = spr_dir * -1;
		}
		if down_pressed == true && window_timer < 15{
			window_timer = 16;
			set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_GOTO, 10);
			wario_grab_timer = 80;
		}
		if up_pressed == true && window_timer < 15{
			window_timer = 16;
			set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_GOTO, 14);
			wario_grab_timer = 80;
		}
		
		wario_grab_timer = wario_grab_timer+1;
		
		if wario_grab_timer >= 80{
			set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
		}
		else{
			set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 9);
		}
		
	}
	
	if window == 2{
		set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
	}
	
	if window == 5{
		set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 9);
	}
	if window == 10{
		set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 13);
	}
	if window == 14{
		set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 17);
	}
}


//Forward Special - Wario Bike

/*
if attack == AT_FSPECIAL{
	
	can_move = false;
	can_jump = false;
	
	if window == 1 && window_timer == 1{ //Frame 1 Stat Reset
		if (instance_exists(bike) && place_meeting(x, y, bike)){
		    bike.should_die = true;
		}
		
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
		
		if free == true{
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 5);
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -6);
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 5);
			wario_bike_speed = 5;
		}
		if free == false{
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 8);
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 3);
			wario_bike_speed = 8;
		}
		
	}
	
	if window == 3{//Riding Normally
		
		if stick_horizontal == 1{ wario_bike_speed = clamp(wario_bike_speed+0.5, 3, 12);}
		if stick_horizontal == 0{ wario_bike_speed = clamp(wario_bike_speed-0.1, 3, 12);}
		if hitpause = false{hsp = wario_bike_speed*spr_dir;}
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18-wario_bike_speed);
		
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, round(6+(wario_bike_speed*2.5)) );
		
		if free == true{window = 5;}
		
		if !hitpause{create_hitbox(AT_FSPECIAL, 3, x, y);}
		
	}
	
	if window == 3 && stick_horizontal == -1 && free == false && hitpause == false{ //Turning Around
		window = 4;
		window_timer = 0;
		spr_dir = spr_dir*-1;
		wario_bike_speed = 6;
		
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 6);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 3);
		
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
		sound_play(sound_get("SFX_WarioBike_Skid"));
		attack_end();
		destroy_hitboxes();
	}
	
	if window == 4 && free == true{ //Anti-Aerial Wario Bike Skid
		hsp = 0;
		x = x+16*spr_dir;
	}
	
	if window == 5 && hitpause = false{
		hsp = wario_bike_speed*spr_dir;
		if hsp*spr_dir >= 7{create_hitbox(AT_FSPECIAL, 3, x, y);}
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 18-wario_bike_speed);
	}
	
	if (window == 3 || window == 5) && jump_pressed == true{
		window = 6;
		window_timer = 0;
	}
	if window == 6 && window_timer < 15 && !hitpause && !free{
		create_hitbox(AT_FSPECIAL, 3, x, y);
	}
	if (window == 6 && window_timer == 15){
		bike = instance_create(x, y+2, "obj_article1");
		bike.hsp = hsp;
		bike.vsp = 1;
	}
	if window == 7{
		can_move = true;
	}
	
}
*/

//Search for bike

if attack == AT_FSPECIAL_2{
	can_move = false;
	if window > 3{
		can_move = true;
		can_wall_jump = true;
		iasa_script();
	}
}

//Pick Up Bike
if attack == AT_NSPECIAL && grabbed_bike == true{
	attack_end();
	destroy_hitboxes();
	grabbed_bike = false;
	has_rock = true;
	set_attack(AT_PICKUP);
	bike.should_die = true;
}


if attack == AT_NSPECIAL_2{
	grabbed_bike = false;
}

//Throw Bike Things
if attack == AT_PICKUP{
	//Throw Things
	if window == 4 && window_timer == 4{ //Neutral Throw
		bike = instance_create(x+8*spr_dir, y-36, "obj_article1");
		bike.vsp = -6;
		bike.hsp = 3*spr_dir;
		bike.image_index = 5;
		bike.state = 2;
	}
	
	if window == 7 && window_timer == 4{ //Forward Throw
		bike = instance_create(x+8*spr_dir, y, "obj_article1");
		bike.vsp = -5;
		bike.hsp = 12*spr_dir;
		bike.image_index = 5;
		bike.state = 2;
		bike.bike_hit_thing = false;
	}
	
	if window == 10 && window_timer == 4{ //Up Throw
		bike = instance_create(x, y-40, "obj_article1");
		bike.vsp = -14;
		bike.hsp = 0;
		bike.image_index = 5;
		bike.state = 2;
		bike.bike_hit_thing = false;
	}
	if window == 13 && window_timer == 4{ //Up Throw
		bike = instance_create(x, y, "obj_article1");
		bike.vsp = 8;
		bike.hsp = 0;
		bike.image_index = 5;
		bike.state = 2;
		bike.bike_hit_thing = false;
	}
	
	//Set Window Stuff
	if window == 1{
		set_attack_value(AT_PICKUP, AG_NUM_WINDOWS, 2);
	}
	if window == 3{ //Neutral Throw
		set_attack_value(AT_PICKUP, AG_NUM_WINDOWS, 5);
		has_rock = false;
	}
	if window == 6{ //Forward Throw
		set_attack_value(AT_PICKUP, AG_NUM_WINDOWS, 8);
		has_rock = false;
	}
	if window == 9{ //Up Throw
		set_attack_value(AT_PICKUP, AG_NUM_WINDOWS, 11);
		has_rock = false;
	}
	if window == 12{ //Down Throw
		set_attack_value(AT_PICKUP, AG_NUM_WINDOWS, 14);
		has_rock = false;
	}
	
}

//Looping Taunt
if attack == AT_TAUNT_2 && window == 2{
	if taunt_down == true{
		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_GOTO, 2);
	}
	if taunt_down == false{
		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_GOTO, 4);
	}
}

//Runes

//Infinidrill
if has_rune( "A" ) && attack_down == true{set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 9);}
else{set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);}

//Coyote Time
if has_rune( "A" ){
	set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
	set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
	if attack == AT_DATTACK && free == true{
		can_jump = true;
	}
}

//Armored Charge
if has_rune("A"){
	if attack == AT_FSTRONG && window < 2{super_armor = true;}
	else{super_armor = false;}
}


//AYO NEW BIKE CODE???

var wariobike_hsp = ((wariobike_throttle/10)+3)*spr_dir;
var wariobike_length = 12-(wariobike_throttle*(1/15));

var stick_h_dir = (right_down-left_down)*spr_dir;

if attack == AT_FSPECIAL{
	
	can_move = false;
	//can_jump = true;
	
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, wariobike_length);
	
	if window > 1
	&& window < 10
	&& window != 9
	//&& ((sign(hsp)*spr_dir) != 1)
	&& place_meeting(x+(sign(spr_dir)*32), y, asset_get("par_block")){
		window_timer = 0;
		window = 10;
		//set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 11);
	}
	
	switch (window){
		
		case 1: //Startup
		
		hsp = 0;
		if free && window_timer == 12{vsp = -8;}
		else{vsp = 0;}
		
		//Restore Bike
		if (instance_exists(bike) && place_meeting(x, y, bike)){
		    bike.should_die = true;
		}
		
		//Variable Resets
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 11);
		if free{wariobike_throttle = 35;}
		else{wariobike_throttle = 45;}
		
		break;
		
		case 2: //Riding on ground
		
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
		
		if !hitpause{
			hsp = wariobike_hsp;
			create_hitbox(AT_FSPECIAL, 3, x, y);
		}
		if free{window = 7;}
		
		//Speed Handler
		if stick_h_dir == 1 && !free{
			wariobike_throttle = clamp(wariobike_throttle+3, 0, 90);
		}
		if stick_h_dir == 0 && !free{
			wariobike_throttle = clamp(wariobike_throttle-1, 0, 90);
		}
		
		//Turn Around
		if stick_h_dir == -1 && !free{
			destroy_hitboxes();
			attack_end();
			sound_play(sound_get("SFX_WarioBike_Skid"));
			spr_dir = spr_dir*-1;
			window_timer = 0;
			window = 3;
		}
		
		//Jump Off
		if jump_pressed || special_pressed || attack_pressed{
			window_timer = 0;
			window = 8;
		}
		
		break;
		
		case 3: //Turn around
		
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
		if hsp != 0{
			window_timer = 1;
		}
		if window_timer == get_window_value(AT_FSPECIAL,3,AG_WINDOW_LENGTH)-1{
			sound_play(sound_get("SFX_WarioBike_Accel"));
			wariobike_throttle = 45;
		}
		if free{
			x+=32*spr_dir;
		}
		
		break;
		
		case 4: 
		
		break;
		
		case 5: 
		
		break;
		
		case 6:
		
		break;
		
		case 7: //Riding in air
		
		if !hitpause{
			hsp = wariobike_hsp;
			if hsp*spr_dir >= 5{create_hitbox(AT_FSPECIAL, 3, x, y);}
		}
		if !free{window = 2;}
		
		//Jump Off
		if jump_pressed || special_pressed || attack_pressed{
			window_timer = 0;
			window = 8;
		}
		
		break;
		
		case 8: //Jump Off Start?
		
		if !hitpause{hsp = wariobike_hsp;}
		
		if window_timer == 15{
			sound_play(sound_get("SFX_Jump_1"));
			bike = instance_create(x, y+2, "obj_article1");
			bike.hsp = hsp;
			bike.vsp = 1;
		}
		
		break;
		
		case 9: //Jump Off End
		
		can_move = true;
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
		
		break;
		
		case 10:
		
		break;
		
		case 11:
		
		if window_timer == 1{
			bike = instance_create(x, y+2, "obj_article1");
			bike.hsp = 0;
			bike.vsp = 0;
		}
		
		break;
		
	}
	
}

//Variable Bike Hitbox

if attack == AT_FSPECIAL{
	
	if abs(wariobike_hsp) < 6{
		
		set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 3);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.3);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 301);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		
	}
	
	if abs(wariobike_hsp) >= 6 && abs(wariobike_hsp) <= 9{
		
		set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
		set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		
	}
	
	if abs(wariobike_hsp) > 9{
		
		set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 9);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		
	}
	
}


//Final Smash Code

if attack == 49{
	
	can_move = false;
	can_fast_fall = false;
	fall_through = true;
	soft_armor = 9999;
	
	if grabbed_player_obj != noone && window > 2{
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.state = PS_HITSTUN;
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.x = x+42*spr_dir;
		grabbed_player_obj.y = y;
	}
	
	if window <= 2{ with oPlayer{
		if other != self{
			hitpause = true;
			hitstop = 2;
			old_vsp = vsp;
			old_hsp = hsp;
		}
	}}
	
	switch (window){
		
		case 1: //Startup
		
		wallop_loops = 0;
		grabbed_player_obj = noone;
		set_window_value(49, 4, AG_WINDOW_TYPE, 9);
		set_attack_value(49, AG_NUM_WINDOWS, 2);
		
		break;
		
		case 2: //Dash
		
		break;
		
		case 3: //Hit
		set_attack_value(49, AG_NUM_WINDOWS, 7);
		break;
		
		case 4: //Wallop
		
		if window_timer == 24{
			wallop_loops += 1;
		}
		if wallop_loops >= 6{
			set_window_value(49, 4, AG_WINDOW_TYPE, 1);
		}
		
		break;
		
		case 5: //Piledriver
		
		can_move=true;
		if wallop_loops >= 6{
			if wario_voiced{sound_play(sound_get("VFX_FinalSmash_2"));}
			wallop_loops = 0;
			vsp = -12;
		}
		
		vsp += .75;
		
		break;
		
		case 7:
		grabbed_player_obj = noone;
		fall_through = false;
		break;
		
	}
}