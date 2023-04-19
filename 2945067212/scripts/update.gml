if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP) {
	groundswitch = 0


	
if (state == PS_DASH_TURN  && state_timer == 1)   {
    sound_stop(sound_get("dashturn"))
    sound_play(sound_get("dashturn"),false,noone,0.6, 1)
}
}
if (state == PS_FIRST_JUMP && (state_timer % 10 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if (state == PS_DASH && (state_timer % 10 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if (state == PS_WALK && (state_timer % 20 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if ((state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) && state_timer == 1)  {
    sound_stop(sound_get("hahaa"))
    sound_play(sound_get("hahaa"),false,noone,0.4, 1 + random_func(1,10,true)/100)
}

if (state == PS_FIRST_JUMP && state_timer == 1)  {
    sound_stop(sound_get("ha"))
    sound_play(sound_get("ha"),false,noone,0.5,1 + random_func(1,10,true)/100)
}
//if (state == PS_DOUBLE_JUMP and state_timer > 10) {
//	if (jump_pressed){
//	set_attack(AT_FSPECIAL);
//}
//

if attack != AT_FSPECIAL_AIR && (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND) {
	ghostnum = 0;
}
if ( state == PS_HITSTUN || state == PS_SPAWN || state == PS_RESPAWN){//
   sound_stop(sound_get("missilecharge"));
}
if ( state == PS_SPAWN || state == PS_RESPAWN){//state == PS_HITSTUN ||
   fspec_charged = false;
}

if (get_player_stocks( player ) == 0) {
sound_stop(sound_get("missilecharge"));
}
if(fspec_charged = true){
	
        var outline = (sin((get_gameplay_time() - 100) * 0.03) * -100) + 150
    outline_color = [ outline * 0.5, outline * 0.8, outline * 1];
    init_shader();
} else {
	outline_color = [ 0, 0, 0,];
  init_shader();
}


if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 14) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.