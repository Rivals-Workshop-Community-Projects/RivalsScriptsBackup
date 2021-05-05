//update
user_event(14);

//Stat Changes
if (RedMode == true){
dash_speed = 9;
initial_dash_time = 5;
initial_dash_speed = 9.5;
jump_speed = 12;
jump_start_time = 5;
air_friction = .02;
air_accel = .3;
djump_speed = 11;
dash_turn_time = 8;
}

if (RedMode == false){
dash_speed = 8;
initial_dash_time = 8;
initial_dash_speed = 8.5;
jump_speed = 13;
jump_start_time = 4;
air_friction = .01;
air_accel = .4;
djump_speed = 12;
dash_turn_time = 10;
}

/*
if(dotheeffect == false){
	print_debug("not cringe")
}

if(dotheeffect == true){
	print_debug("cringe")
}
*/
init_shader();

if (teleported == true){
	hsp = (ease_quadOut( -1, 0, 0, 30 ) * spr_dir) + dsp_target.hsp
	teleported = false
	gravity_speed = .5;

}

if (teleported == false){
	gravity_speed = .65;

}

//Reset double Uspecial
if has_uspecialed{
	if !free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN has_uspecialed = false;
}

//Afterimage
if (afterImageTimer > 0)
{
    afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:10};
    afterImageTimer--;
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;

//After image attacks
if (attack == AT_DATTACK && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 20;
}
if (attack == AT_UTILT && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 24;
}
if (attack == AT_DAIR && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 24;
}
if (attack == AT_NAIR && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 24;
}
if (attack == AT_FSPECIAL_2 && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 24;
}
if (attack == AT_USPECIAL && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 24;
}
if (attack == AT_USPECIAL_2 && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 24;
}
if (attack == AT_UAIR && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 0;
}
if (attack == AT_FAIR && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 0;
}
if (attack == AT_BAIR && window==1&&window_timer==1&&!hitpause){
	afterImageTimer = 0;
}
/*
//Afterimage OLD
(asset_get("oPlayer")){
	//Move back all other frames
	for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha,
	];
}
*/
//Red Mode
//Gives Red Meter Over time if in blue mode, Decreases it if in Red Mode
//if(Red_Mode && get_gameplay_time() % 18 == 0) {
//    Red_Gauge--;
//} else if(!Red_mode && get_gameplay_time() % 60 == 0) {
//    Red_Gauge++;
//} 

//if(meter == 0 && RedMode == true) {
//	RedMode = false;
//}

// Makes sure you cannot have negative Red Meter
//if (Red_Gauge < 0) {
//	Red_Gauge = 0;
//}

// When Red hits 100%, it should make Log Red
//if (Red_Gauge >= 99 && Red_Gauge < 100){
	// then make the character outline red
//	outline_color = [ 255, 0, 0 ];
	// tell the shader to update the character's colors
//	init_shader();

//Intro
if (introTimer2 < 1) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 45) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if (introTimer < liteModeTime)
	if(taunt_pressed && !lite) lite = true;

if (introTimer2 == 0 && introTimer == 2) {
    sound_play (sound_get("Log_Intro"));
}


//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.	

if(RedMode = true) {
	knockback_adj = 1.2;
}

if(!RedMode) {
	knockback_adj = 1.0;
}

if(state == PS_IDLE || PS_IDLE_AIR) {
	multihit = 0
}

//Testing
if (attack == AT_TAUNT) {
draw_indicator = false;
 }
 
if (attack == AT_TAUNT_2) {
draw_indicator = true;
 }
 
if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

//Recharge Mechanic
if(recharged == 0){
    recoverytick = recoverytick + 1;
    if(recoverytick > 6){
        recoverytimer = recoverytimer + 1;
        recoverytick = 0;
    }
    if(recoverytimer > 27){
        recharged = 1;
        recoverytimer = 0;
        recoverytick = 0;
    }
}

//Fspecial Cooldown resets when you touch the floor
if(!free){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_FSPECIAL_2] = 0;
}

if(state == SC_GROUND_NEUTRAL || SC_AIR_NEUTRAL ){
	dotheeffect = true
}

//Trail Effects
if(state == PS_AIR_DODGE){
	if(state_timer % 3 == 0){
		if(RedMode == false){
			spawn_hit_fx((x - 40 * spr_dir), y - 80, fx_star_trail);
		}
		if(RedMode == true){
			spawn_hit_fx((x - 40 * spr_dir), y - 80, fx_red_star_trail);
		}
    }
}if(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD){
	if(state_timer % 3 == 0){
		if(RedMode == false){
    		spawn_hit_fx((x - 30 * spr_dir), y - 80, fx_star_trail);
		}
		if(RedMode == true){
    		spawn_hit_fx((x - 30 * spr_dir), y - 80, fx_red_star_trail);
		}
	}
}

if(blood_timer != 0)
{
	blood_timer--;
	
	if(blood_timer == 0)
	{
		if(attack == AT_USPECIAL_2){
			var bloodfx = spawn_hit_fx(hit_player_obj.x - (0*hit_player_obj.spr_dir),hit_player_obj.y-50,redupb2);
	}
	    bloodfx.depth = depth - 999;
	}
}

//Galaxy stuff is stolen from monarch lol
//Galaxy
if(has_hit_player && (attack == AT_USPECIAL_2 && window == 2))
{
	has_hit_player = false;
	if(hit_player_obj.activated_kill_effect){
		black_screen = true;
		blood_timer = 2;
		
		hit_player_obj.hitstop +=8;
		hitstop+=8;
	}
}

if(hitpause == false) black_screen = false;

/*
// roll vfx
for (var i = 0; i < 6; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0) rollArray[i].rollAlpha--;

// jump strong timer
if (jsTimer > 0) jsTimer--;
if (state_timer == 0 && (state == PS_JUMPSQUAT || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP)) jsTimer = jsMax;

// jump vfx
if (jsTimer > 0) jsArray[jsTimer-1]={jsSprite:sprite_index,jsImage:image_index,jsX:x,jsY:y,jsDir:spr_dir,jsAlpha:10};
for (var i = 0; i < 10; ++i) if (jsArray[i] != -1 && jsArray[i].jsAlpha > 0) jsArray[i].jsAlpha--;
*/
