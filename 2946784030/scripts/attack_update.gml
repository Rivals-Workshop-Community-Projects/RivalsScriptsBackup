//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

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
	
	if free == true && !super_form_active{
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
		wario_fstrong_player_obj.hitstop = 4;
		wario_fstrong_player_obj.state = PS_HITSTUN_LAND;
	}
}

//AERIALS

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
	if window == 1 || window == 7{can_move = false;}
	//if window >= 3 && window < 6{can_wall_jump = true;}
	
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
		
		var rnd_img_indx = round(image_index);
		
		if (rnd_img_indx == 11){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-52;
		}
		if (rnd_img_indx == 12){
		    grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-46;
		}
		
		if rnd_img_indx > 12 && rnd_img_indx < 20{
			grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y-64;
		}
		
		//Front and Back Facing
		if rnd_img_indx == 21
		|| rnd_img_indx == 25
		|| rnd_img_indx == 29{
			grabbed_player_obj.x = x;
		    grabbed_player_obj.y = y;
		}
		
		//Front Diagonal
		if rnd_img_indx == 22
		|| rnd_img_indx == 24
		|| rnd_img_indx == 30{
			grabbed_player_obj.x = x+(spr_dir*24);
		    grabbed_player_obj.y = y;
		}
		
		//Back Diagonal
		if rnd_img_indx == 26
		|| rnd_img_indx == 28{
			grabbed_player_obj.x = x-(spr_dir*24);
		    grabbed_player_obj.y = y;
		}
		
		//Forward
		if rnd_img_indx == 23
		|| rnd_img_indx == 31
		|| rnd_img_indx == 32{
			grabbed_player_obj.x = x+(spr_dir*32);
		    grabbed_player_obj.y = y;
		}
		
		if rnd_img_indx == 27{
			grabbed_player_obj.x = x-(spr_dir*32);
		    grabbed_player_obj.y = y;
		}
		
		//Backward
		
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
			wariobike_turn_time = 2*abs(hsp);
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
		wariobike_turn_time -= 1;
		if wariobike_turn_time <= 0 wariobike_turn_time = 0;
		
		if wariobike_turn_time != 0{
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
		//Weak Riding
		set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 3);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 301);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		
	}
	
	if abs(wariobike_hsp) >= 6 && abs(wariobike_hsp) <= 9{
		//Medium Riding
		set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
		set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		
	}
	
	if abs(wariobike_hsp) > 9{
		//Strong Riding
		set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 9);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 9);
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
		set_attack_value(49, AG_NUM_WINDOWS, 8);
		
		if window_timer == 41{
			if (right_down - left_down)*spr_dir == -1 spr_dir *= -1;
		}
		
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


//Runes

//Gatling
if has_rune("A"){
	if has_hit && attack == AT_DATTACK{
		can_ustrong = true;
	}
}

//Piledriver out of normal grab
if has_rune("B"){
	if attack == AT_NSPECIAL_2 && window == 1 && (special_pressed){
		if wario_voiced sound_play(sound_get("VFX_Uspecial"));
		set_attack( AT_USPECIAL_2 );
	}
}

//Infinidrill
if has_rune( "C" ) && attack_down == true{set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 9);}
else{set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);}

//Burying Spikes
if has_rune("D"){
	//set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, 15);
	set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 15);
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 15);
	set_hitbox_value(AT_DSPECIAL_2, 2, HG_EFFECT, 15);
}

//Shoulder Bash face plant
if has_rune("E"){
	if attack == AT_FSTRONG && window > 1 && window <= 3 && down_pressed{
		set_attack( AT_DATTACK );
		hsp = 12*spr_dir;
	}
}

//Fart Boosting
if has_rune("G") && !hitpause{
	
	if attack == AT_UAIR
	&& window == 2
	&& window_timer == 1
	&& attack_down{
		vsp = -7;
		sound_play(sound_get("SFX_Waft_Quarter"));
		create_hitbox(AT_DSPECIAL_2, 3, x, y+16);
	}
	
	if attack == AT_DATTACK
	&& (window == 2 && window_timer >= 10)
	&& attack_pressed{
		hsp += 8*spr_dir;
		window_timer = 1;
		sound_play(sound_get("SFX_Waft_Quarter"));
		create_hitbox(AT_DSPECIAL_2, 3, x-(24*spr_dir), y);
		create_hitbox(AT_DATTACK, 2, x, y);
	}
	
	if attack == AT_BAIR
	&& (window == 2 && window_timer == 2)
	&& attack_down{
		hsp -= 6*spr_dir;
		sound_play(sound_get("SFX_Waft_Quarter"));
		create_hitbox(AT_DSPECIAL_2, 2, x, y);
		create_hitbox(AT_BAIR, 2, x, y);
	}
	
	if attack == AT_JAB
	&& (window == 5 && window_timer == 5)
	&& attack_down{
		hsp += 5*spr_dir;
		sound_play(sound_get("SFX_Waft_Quarter"));
		create_hitbox(AT_DSPECIAL_2, 3, x-(24*spr_dir), y);
	}
	
}

//Bike Teleport
if has_rune("M"){
	if instance_exists(bike) && attack == AT_FSPECIAL_2{
		sound_play(asset_get("sfx_zetter_shine_charged"));
		spawn_hit_fx(x, y-32, HFX_MOL_EXPLODE_HIT);
		x = bike.x;
		y = bike.y;
		bike.should_die = true;
		move_cooldown[ AT_FSPECIAL ] = 0;
		set_attack( AT_FSPECIAL );
	}
	if instance_exists(bike) && attack == AT_NSPECIAL{
		if window == 2 && window_timer == 2 && !has_hit_player{
			sound_play(asset_get("sfx_zetter_shine_charged"));
			spawn_hit_fx(bike.x, bike.y-32, HFX_MOL_EXPLODE_HIT);
			bike.state = 1;
			bike.x = x;
			bike.y = y;
		}
	}
	
}

//Insta-Kill Up Air
if has_rune("L"){
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 12);
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 30);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 80);
	set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 30);
	set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 69);
	set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -64);
	set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 96);
	set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 96);
	set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 304);
	
	if attack == AT_UAIR && window == 2 && !hitpause{
		if window_timer == 2{
		spawn_hit_fx(x,y-60, HFX_SHO_HORN_HIT);
		sound_play(asset_get("sfx_war_horn"));
		}
		if has_hit_player && window_timer = 3{
			hit_player_obj.state = PS_HITSTUN;
			hit_player_obj.y=-9001;
			hit_player_obj.x=x;
		}
	}
}

//Untiered Runes

//Armored Charge
if has_rune("A"){
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_bull"));
	set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_bull"));
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 12);
	if attack == AT_FSTRONG && window > 1 && window <= 3 {super_armor = true;}
	else{super_armor = false;}
}

//Electric Wario God Fist
if has_rune("A"){
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.5);
	set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, 11);
}

//Belly Flop Super Jump
if has_rune("A"){
	var dstrong_rune_jump_spd = -(15+(strong_charge/3));
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED, dstrong_rune_jump_spd);
	
	if attack == AT_DSTRONG && window == 4 && down_down{
		fall_through = true;
	}
	
	if attack == AT_DSTRONG
	&& strong_charge >= 60
	&& window == 5
	&& window_timer == 1
	&& !hitpause{
		spawn_hit_fx(x,y-48,HFX_MOL_BOOM_FINISH);
		sound_play(asset_get("sfx_ell_uspecial_explode"));
		sound_play(asset_get("sfx_mol_norm_explode"));
	}
	
}

//Anti-Cheat Measures

if attack == AT_TAUNT && special_pressed && shield_pressed{
	user_event(1);
}


//Compatibility

//Chaos Emeralds

if super_form_active && attack == AT_DSTRONG && window >= 2{
	
	var super_form_dstrong = ease_linear(-20, 20, window_timer, 15);
	var super_form_dstrong2 = ease_linear(-20, 20, window_timer+6, 15);
	
	if window == 2 vsp = super_form_dstrong;
	if window == 3 vsp = super_form_dstrong2;
	if window > 3 vsp = 20;
}

if super_form_active && attack == AT_FSTRONG && free{
	var super_form_fstrong = ease_linear(16, 0, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));
	if window == 3 hsp = super_form_fstrong*spr_dir;
	if window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) set_state(PS_PRATFALL);
}