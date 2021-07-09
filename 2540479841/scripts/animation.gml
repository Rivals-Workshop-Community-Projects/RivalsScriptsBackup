if (state == PS_DASH_START && state_timer == 1) {
	sound_play(sound_get("WarioRunStart"));
}
if (state == PS_DASH_STOP && state_timer == 1) {
	sound_play(sound_get("WarioRunStop"));
}
if (state == PS_DASH_TURN && state_timer == 1) {
	sound_play(sound_get("WarioRunTurn"));
}
if (state == PS_CROUCH && state_timer == 1) {
	sound_play(sound_get("WarioCrouch"));
}

if (state == PS_FIRST_JUMP && state_timer == 1){
	sound_play(jump_voice);
}
if (state == PS_DOUBLE_JUMP && state_timer == 1){
	sound_play(djump_voice);
}

//Respawn sprite
if (state = PS_RESPAWN){
    sprite_index = sprite_get("respawn");
    image_index = wario_game_timer;
}

if (attack == AT_USPECIAL_2 && window == 2 && window_timer >= 12 && window_timer <= 16){
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
		if (grabbed_player_obj != noone) {
		   force_depth = true;
		   depth = grabbed_player_obj.depth + 1;
		}
	}
}

if (attack == AT_USPECIAL) && (window == 6){
	sprite_index = sprite_get("jump");
	image_index = window_timer/20;
	hurtboxID.sprite_index = sprite_get("uspecial_jump_hurt");
	hurtboxID.image_index = window_timer/20;
}