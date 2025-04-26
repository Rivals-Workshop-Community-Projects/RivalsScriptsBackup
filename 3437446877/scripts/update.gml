switch(state) {
	case PS_DASH:
	case PS_DASH_TURN:
	if (state_timer % 16 == 1) {
		crackling_sound = sound_play(sound_get("crackling"))
	}
	break
	case PS_DASH_STOP:
	case PS_DASH_TURN:
	sound_stop(crackling_sound)
	break
	
}
if(!free|| state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_DEAD || state == PS_RESPAWN){
	move_cooldown[AT_NAIR] = 0;
	move_cooldown[AT_UAIR] = 0;
	move_cooldown[AT_BAIR] = 0;
	move_cooldown[AT_FAIR] = 0;
	move_cooldown[AT_DAIR] = 0;
}
if(attack == AT_DAIR && window == 1){
    move_cooldown[AT_DAIR] = 9999;
}
if(attack == AT_NSPECIAL && window == 1){
    move_cooldown[AT_NSPECIAL] = 85;
}
if(attack == AT_UAIR && window == 1){
    move_cooldown[AT_UAIR] = 9999;
}
if(attack == AT_FAIR && window == 1){
    move_cooldown[AT_FAIR] = 9999;
}
if(attack == AT_BAIR && window == 1){
    move_cooldown[AT_BAIR] = 9999;
}
if(attack == AT_DSPECIAL){
	if (window == 2 && window_timer % 8 == 1) {
		crackling_sound = sound_play(sound_get("short"))
	}
}
hurtboxID.sprite_index = sprite_get(
    (state == PS_DASH) ? "dash_hurt" : ((state == PS_IDLE || state_cat == SC_AIR_NEUTRAL) ? "hurtbox" : hurtboxID.sprite_index)
);