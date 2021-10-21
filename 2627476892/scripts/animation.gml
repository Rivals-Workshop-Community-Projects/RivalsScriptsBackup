
// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN || state == PS_DASH_STOP) { 
hurtboxID.sprite_index = sprite_get("run_hurtbox"); 
}
if(state == PS_IDLE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_HITSTUN || state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_JUMPSQUAT || state == PS_DOUBLE_JUMP || state == PS_PARRY_START){
    hurtboxID.sprite_index = sprite_get("lancer_hurtbox"); 
}

if (state == PS_SPAWN) {
if (get_gameplay_time() < 53){
	hud_offset = 25;
		sprite_index = sprite_get("intro");
	}if (get_gameplay_time() == 51){
		sound_play(sound_get("snd_stockexplode"));
		shake_camera(2, 10);
		var explode = spawn_hit_fx(x, y - 38, explosion_effect);
        explode.depth = -10;
	}
}