statboost_time -= statboost_time > 0;

if state == PS_FIRST_JUMP && vsp <= 0 && did_crouchjump {
	air_accel = crouch_jump_accel;
	if state_timer == 1 sound_play(crouch_jump_sound)
} else {did_crouchjump = 0; air_accel = stand_jump_accel;}

if state == PS_JUMPSQUAT { if prev_state == PS_CROUCH {
jump_speed = crouch_jump_speed;
max_jump_hsp = crouch_jump_hsp;
did_crouchjump = 1;
} else {
jump_speed = stand_jump_speed;
max_jump_hsp = stand_jump_hsp;
}
}


//CLEAR GRABS
if !(attack == AT_DSPECIAL and (state = PS_ATTACK_GROUND or state = PS_ATTACK_AIR)) and (grabbedid != noone) {
	grabbedid.grabbed = 0
	grabbedid.visible = true
	grabbedid.state = PS_IDLE
	grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
	grabbedid = noone
}


if icon_shake > 0 icon_shake--;






/*
if glide_cooldown {
	move_cooldown[AT_FSPECIAL] = max(move_cooldown[AT_FSPECIAL], 2)
	if !free or state == PS_WALL_JUMP {
		glide_cooldown = 0;
	}
}

