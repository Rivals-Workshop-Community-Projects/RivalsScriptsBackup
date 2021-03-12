//update
user_event(14);

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

//Blur
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
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 25) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

//if (introTimer2 == 0 && introTimer == 2) {
//    sound_play (sound_get("Log_Intro"));
//}


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
