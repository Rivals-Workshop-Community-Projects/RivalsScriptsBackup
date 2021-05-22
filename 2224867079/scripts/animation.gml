//Intro
/*
if (state == PS_SPAWN) {
    if (introTimer < 45 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}
*/
switch(state)
{
    case PS_SPAWN:
        var length = 49; // num of anim frames
        var spd = 6; // in game frames per anim frame
        if (state_timer % spd == 0) introTimer++;
        sprite_index = sprite_get(introTimer<length&&introTimer>=0?"intro":"idle");
        if (introTimer < 0) image_index = 0;
        else if (introTimer < length) image_index = introTimer;
        break;
}
switch (state){
    case PS_IDLE:
    break;
    
    default: break;
}


//Platform Fast
if (state == PS_RESPAWN) {
	image_index = floor(image_number*state_timer/(image_number*5));
}

//Rotatey Fspecial

if (attack == AT_FSPECIAL) && window >= 4 {
		//down
		if((joy_dir < 350 && joy_dir > 200 && spr_dir == 1) || (joy_dir > 210 && joy_dir < 300 && spr_dir == -1) || down_stick_down)
		{
			spr_angle = -25 * spr_dir
		}
		//up 
		else if((joy_dir > 30 && joy_dir < 260 && spr_dir == 1) || (joy_dir < 150 && joy_dir > 40 && spr_dir == -1) || up_stick_down)
		{
			spr_angle = 25 * spr_dir
		}
		else
		{
			spr_angle = 0
		}
}


//Red Mode Stuff

if (state == PS_WALK_TURN && RedMode == true) {
	sprite_index = sprite_get( "red_walkturn" );
}

if (state == PS_CROUCH && RedMode == true) {
	sprite_index = sprite_get( "red_crouch" );
}


if (state == PS_IDLE && RedMode == false) {
	sprite_index = sprite_get( "idle" );
	image_index = floor(image_number*state_timer/(image_number*5));
}

if (state == PS_IDLE && RedMode == true) {
	sprite_index = sprite_get( "red_idle" );
	image_index = floor(image_number*state_timer/(image_number*5));
}

if (state == PS_RESPAWN && RedMode == true) {
	sprite_index = sprite_get( "red_idle" );
	image_index = floor(image_number*state_timer/(image_number*5));
}

if (state == PS_FIRST_JUMP && state_timer == 1) {
	afterImageTimer = 24;
}

if (state == PS_DOUBLE_JUMP && state_timer == 1) {
	afterImageTimer = 24;
}
/*

if (state == PS_CROUCH && RedMode == true) {
	sprite_index = sprite_get( "red_crouch" );
}

if (state == PS_WALK && RedMode == true) {
	sprite_index = sprite_get( "red_walk" );
	image_index = floor(image_number*state_timer/(image_number*5));
}
if (state == PS_DASH && RedMode == true) {
	sprite_index = sprite_get( "red_dash" );
	image_index = floor(image_number*state_timer/(image_number*3));
}

if (state == PS_DASH_START && RedMode == true) {
	sprite_index = sprite_get( "red_dashstart" );
}

if (state == PS_DASH_STOP && RedMode == true) {
	sprite_index = sprite_get( "red_dashstop" );
}

if (state == PS_DASH_TURN && RedMode == true) {
	sprite_index = sprite_get( "red_dashturn" );
}

if (state == PS_HITSTUN && RedMode == true) {
	sprite_index = sprite_get( "red_hurt" );
}

if (state == PS_HITSTUN_LAND && RedMode == true) {
	sprite_index = sprite_get( "red_hurt" );
}

if (state == PS_PARRY && RedMode == true) {
	sprite_index = sprite_get( "red_parry" );
}
if (state == PS_ROLL_BACKWARD && RedMode == true) {
	sprite_index = sprite_get( "red_roll_backward" );
}
if (state == PS_ROLL_FORWARD && RedMode == true) {
	sprite_index = sprite_get( "red_roll_forward" );
}

if (state == PS_FIRST_JUMP && RedMode == true) {
	sprite_index = sprite_get( "red_jump" );
}

if (state == PS_DOUBLE_JUMP && RedMode == true) {
	sprite_index = sprite_get( "red_doublejump" );
}

if (state == PS_PRATFALL && RedMode == true) {
	sprite_index = sprite_get( "red_pratfall" );
	image_index = floor(image_number*state_timer/(image_number*5));
}

if (state == PS_LAND && RedMode == true) {
	sprite_index = sprite_get( "red_land" );
}

if (state == PS_LANDING_LAG && RedMode == true) {
	sprite_index = sprite_get( "red_landinglag" );
}


if (state == PS_PRATLAND && RedMode == true) {
	sprite_index = sprite_get( "red_land" );
}

if (state == PS_TUMBLE && RedMode == true) {
	sprite_index = sprite_get( "red_hurt" );
}

if (state == PS_WALL_JUMP && RedMode == true) {
	sprite_index = sprite_get( "red_walljump" );
	image_index = floor(image_number*state_timer/(image_number*5));
}

if (state == PS_JUMPSQUAT && RedMode == true) {
	sprite_index = sprite_get( "red_jumpstart" );
}

if (state == PS_WAVELAND && RedMode == true) {
	sprite_index = sprite_get( "red_waveland" );
}

if (state == PS_TECH_GROUND && RedMode == true) {
	sprite_index = sprite_get( "red_tech" );
}
if (state == PS_IDLE_AIR && RedMode == true) {
	sprite_index = sprite_get( "red_jump" );
}

if (state == PS_AIR_DODGE && RedMode == true) {
	sprite_index = sprite_get( "red_airdodge" );
}
*/
//Kawaii Stuff
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2) {
	switch (get_player_color(player)) {
		case(10):
		sprite_index = sprite_get("kawaii_dspecial");
		break;
	}
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL) {
	switch (get_player_color(player)) {
		case(10):
		sprite_index = sprite_get("red_kawaii_dspecial");
		break;
	}
}

//if (attack == AT_FSTRONG_2){
//    if (window == 1 ) {
//		if (state_timer % 2 == 1){
//			image_index = 1;
//		} else {
//			image_index = 22;
//		}
//    }
//}