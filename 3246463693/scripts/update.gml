is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check - becomes true if the state is PS_ATTACK_GROUND or PS_ATTACK_AIR
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching
game_time = get_gameplay_time(); //get_gameplay_time() is a timer that counts up every frame of the match
hbox_view = get_match_setting(SET_HITBOX_VIS); //keeps track if hitbox view is on or off

if (!free || state == PS_WALL_JUMP || state == PS_RESPAWN || state == PS_SPAWN || state == PS_DEAD || state == PS_HITSTUN){
	move_cooldown[AT_USPECIAL] = 0;
}

if (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR || attack == AT_USTRONG && window == 4 || attack == AT_UAIR && window == 3) {
	char_height = 66;
}

if (attack == AT_USTRONG && window == 3 || attack == AT_UAIR && window == 2) {
	char_height = 100;
}

//Intro
if (introTimer2 < 5) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}


if (state == PS_CROUCH && right_down){
	wft_crouch = 1;
	hsp = 2;
}

if (state == PS_CROUCH && left_down){
	wft_crouch = 1;
	hsp = -2;
}

if (state == PS_CROUCH && hsp == 0){
	wft_crouch = 0;
	hsp = 0;
}

if (state != PS_CROUCH){
	wft_crouch = 0;
}

if (wft_dscharge == 1){
	outline_color = [ 173, 173, 19 ];
	init_shader();
}

if (wft_dscharge == 0 && get_player_color(player) != 31){
	outline_color = [ 0,0,0 ];
	init_shader();
}

if (wft_dscharge == 0 && get_player_color(player) == 31){
	outline_color = [ 35, 67, 49 ];
	init_shader();
}

if (state != PS_ATTACK_GROUND && attack != AT_NSPECIAL || state != PS_ATTACK_AIR && attack != AT_NSPECIAL || state == PS_PARRY || state == PS_AIR_DODGE || state == PS_JUMPSQUAT){
	sound_stop(sound_get("wft_nspecial"));
}

if (wft_nspcharge >= 0){
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 109);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("wft_low_charge"));
}

if (wft_nspcharge >= 25){
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 109);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("wft_low_charge"));
}

if (wft_nspcharge >= 50){
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 110);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("wft_low_charge"));
}

if (wft_nspcharge >= 75 || wft_dscharge == 1){
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj4"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj4"));
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 110);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("wft_full_charge"));
}

if (state == PS_IDLE || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_WALL_JUMP){
	sound_stop(sound_get("wft_nspecial"));
	sound_stop(sound_get("wft_uspecial"));
}

if (wft_dscharge == 0){

walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6;		// 5    -  9
ground_friction     = 0.3;		// 0.3  -  1

leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
air_friction        = 0.05;		// 0.02 -  0.07

jump_speed          = 11.25;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
djump_speed         = 10.75;		// 6    -  12       absa's is -1 because of her floaty djump

set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);

}

if (wft_dscharge == 1 && (!has_rune("B") or wft_testrune == 0)){

walk_speed = 4;
walk_accel = 0.5;
initial_dash_speed = 8;
dash_speed = 8;
ground_friction = 0.3;

leave_ground_max = 6;
max_jump_hsp = 6;
air_max_speed = 6;
air_friction = 0.03;

jump_speed = 11.45;
djump_speed = 10.95;

set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);

strong_charge = 60;
//wft_nspcharge = 100;

}

if (wft_dscharge == 1 && (has_rune("B") or wft_testrune == 1)){

walk_speed = 8;
walk_accel = 1;
initial_dash_speed = 12;
dash_speed = 12;
ground_friction = 0.1;

leave_ground_max = 7.5;
max_jump_hsp = 7.5;
air_max_speed = 7.5;
air_friction = 0.01;

jump_speed = 11.45;
djump_speed = 10.95;

set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);

strong_charge = 60;
//wft_nspcharge = 100;

}

if (wft_balldisallow == 1){
	move_cooldown[AT_FSPECIAL] = 100;
}

if (wft_balldisallow == 0){
	move_cooldown[AT_FSPECIAL] = 0;
	set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
}

if (wft_meter_current >= 20){
	wft_meter_current = wft_meter_max;
	wft_ballding = 1;
}

if (wft_meter_current <= 0){
	wft_meter_current = 0;
}

set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 4+(wft_meter_current/1.5));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -6+(wft_meter_current/2));

if (attack == 49){
	set_hitbox_value(49, 1, HG_PROJECTILE_VSPEED, random_func( 4, -4, true )+1);
	finalsmashrandom = random_func (1,7,true);
}

switch(finalsmashrandom){
case 1:
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_proj1"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("finalsmash_proj1"));
break;
case 2:
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_proj2"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("finalsmash_proj2"));
break;
case 3:
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_proj3"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("finalsmash_proj3"));
break;
case 4:
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_proj4"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("finalsmash_proj4"));
break;
case 5:
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_proj5"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("finalsmash_proj5"));
break;
case 6:
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_proj6"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("finalsmash_proj6"));
break;
case 7:
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_proj7"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("finalsmash_proj7"));
break;
}

if (get_synced_var(player)) {
	voice_toggle = 1;
} else { 
	voice_toggle = 0;
}

//VOICE STUFF
if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_TAUNT && window == 1 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_shoulders"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_DSPECIAL && window == 5 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_fail"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_NSPECIAL && window == 4 && window_timer == 1 && wft_nspcharge == 100 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_salute"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_JAB && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceweak1"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_JAB && window == 5 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceweak2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_JAB && window == 8 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voicemedium2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_FTILT && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voicemedium1"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_UTILT && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voicemedium1"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_DTILT && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voicemedium2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_DATTACK && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceweak2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_FSTRONG && window == 3 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceheavy2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_USTRONG && window == 3 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceheavy1"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_DSTRONG && window == 3 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceheavy2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_NAIR && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceweak1"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_NAIR && window == 3 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceweak2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_BAIR && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voicemedium1"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_UAIR && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voicemedium2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_DAIR && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceheavy2"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == AT_FAIR && window == 2 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_voiceheavy1"));
	move_cooldown[AT_EXTRA_2] = 7;
}

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && state != PS_AIR_DODGE && state != PS_PARRY && attack == 49 && window == 1 && window_timer == 1 && voice_toggle == 1 && !move_cooldown[AT_EXTRA_2]){
	sound_play(sound_get("wft_fsvoice"));
	move_cooldown[AT_EXTRA_2] = 7;
}

//RUNES STUFF
if (has_rune("A") || wft_testrune == 1){
	max_djumps = 3;
}

if (has_rune("B") || wft_testrune == 1){
	ground_friction = .1;
	dash_turn_accel = .5;
	air_friction = .1;
	dash_stop_percent = 0.5;
}

if (has_rune("C") || wft_testrune == 1){
	gravity_speed = 0.25;
}

if (has_rune("D") || wft_testrune == 1){
	walk_speed = 5;
	initial_dash_speed = 9;
	dash_speed = 8;
	leave_ground_max = 7;
	max_jump_hsp = 7;
	air_max_speed = 7;
}

if (has_rune("E") || wft_testrune == 1){
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)){
		super_armor = 1;
	}
}

if (has_rune("F") || wft_testrune == 1){
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
}

//Rune G in hitbox_update

if (has_rune("H") || wft_testrune == 1){
	if (attack == AT_DSPECIAL && window == 1 && window_timer >= 7){
		sound_stop(sound_get("wft_dspecial"));
		wft_dscharge = 1;
		take_damage(player, -1, -5);
		window = 6;
		window_timer = 0;
	}
}

if (has_rune("I") || wft_testrune == 1){ //PORTION LOCATED IN SET_ATTACK
	set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
}

if (has_rune("J") || wft_testrune == 1){
	wft_dscharge = 1;
}