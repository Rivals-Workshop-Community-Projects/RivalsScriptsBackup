//VARIABLES RESET
smoke_counter = 0;

if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){dust_pos3 = -69; Fcancel=0;}

//Variable Resets
if state == PS_WALL_JUMP || state == PS_HITSTUN || state == PS_RESPAWN || !free{
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED,-5);
}

//LEVITATE EFFECT
anim_timer++;
if anim_timer > 60{
	anim_timer = 0;
	pick*=-1;
}

//--------------------------------------------INTRO ANIMATION-----------------------------------------------
if (timer_intro_2 < 3) {
    timer_intro_2++;
} else {
    timer_intro_2 = 0;
    timer_intro++;
}


//Create mailbox for intro
if(timer_intro==11)&&(intro_done==0)&& !was_reloaded{
	instance_create( x, y-5, "obj_article1");			//PRUEBA
	intro_done=1;
}


//animation

sprite_change_offset("idle", 21, 60 +floor( sin(anim_timer/10)*4)); 
sprite_change_offset("walk", 20, 60 +floor( sin(anim_timer/10)*4)); 
sprite_change_offset("walkturn", 20, 60 +floor( sin(anim_timer/10)*4)); 
sprite_change_offset("dashstart", 64, 60 +floor( sin(anim_timer/10)*6)); 
sprite_change_offset("dashturn", 21, 60 +floor( sin(anim_timer/10)*6)); 
sprite_change_offset("dash", 21, 60 +floor( sin(anim_timer/10)*6)); 
sprite_change_offset("dashstop", 20, 60 +floor( sin(anim_timer/10)*6)); 


sprite_change_offset("smoke0", 4,4);
sprite_change_offset("smoke1", 8,8); 
sprite_change_offset("smoke2", 7,6); 
sprite_change_offset("smoke3", 6,6); 

if state == PS_CROUCH || ((state== PS_ATTACK_AIR || state == PS_ATTACK_GROUND )&& (attack ==AT_DTILT )) {
	crouch_offset = 22;
} else {
	crouch_offset = 0;
}

if state == PS_WALL_JUMP && state_timer == 1{
	sound_stop(sound_get("Heat Wave"));
}

if (state == PS_DOUBLE_JUMP || state == PS_FIRST_JUMP || state == PS_AIR_DODGE||prev_state==PS_PARRY_START) && state_timer == 1 {
	sound_stop(sound_get("Heat Wave"));
	Fcancel=0;
}


//AERIAL STRONGS  -- mollo
if state == PS_ATTACK_AIR && state_timer == 0  {
	if up_strong_pressed set_attack(AT_USTRONG);
	if left_strong_pressed {set_attack(AT_FSTRONG); spr_dir = -1}
	if right_strong_pressed {set_attack(AT_FSTRONG); spr_dir = 1}
	if down_strong_pressed set_attack(AT_DSTRONG);
}

