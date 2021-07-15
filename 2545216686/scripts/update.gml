//update.gml

//munophone
user_event(14);

//Motion Blur "Cheat Code"
phone_blurs = phone_cheats[cheat_blurs];
if (phone_blurs == 1){
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_noblur"));
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_noblur"));
	set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_noblur"));
	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_noblur"));
	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_noblur"));
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_noblur"));
	set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_noblur"));
} else {
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
	set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
	set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
}

//Infinite Flight Cheat Code
phone_flight = phone_cheats[cheat_flight];
if (phone_flight == 1){
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sfx_flight_cheat);
} else {
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sfx_flight);
}

//Infinite Dive Cheat Code
phone_dive = phone_cheats[cheat_dive];
if (phone_dive == 1){
	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
} else {
	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
}

//Changing the portrait for alts that change outline colors.
if (get_player_color( player ) == 7){
	set_victory_portrait( sprite_get( "portrait_ea" ));
	set_victory_sidebar( sprite_get( "result_small_ea" ));
} else if (get_player_color( player ) == 17){
	set_victory_portrait( sprite_get( "portrait_gold" ));
	set_victory_sidebar( sprite_get( "result_small_gold" ));
} else if (get_player_color( player ) != 7 && get_player_color( player ) != 17){
	set_victory_portrait( sprite_get( "portrait" ));
	set_victory_sidebar( sprite_get( "result_small" ));
}

////////////////////////////////////////////////////
//////////////buncha sfx related stuffs/////////////
////////////////////////////////////////////////////

if (state == PS_DASH_START){
	if (state_timer == 0){
		sound_play(sfx_dashstart)
		sound_stop(sfx_skid)
	}
}

if (state == PS_DASH_STOP){
	entereddashstop = true
	if (state_timer == 0){
		sound_play(sfx_skid)
	}
	if (state_timer == 5){
		hsp *= 0.75
	}
}

if (state == PS_DASH_TURN){
	if (state_timer == 0){
		//sound_stop(sfx_skid)
	}
	if (state_timer == 1 && entereddashstop == false){
		sound_play(sfx_skid)
	}
}

if (state != PS_DASH_STOP && state != PS_DASH_TURN){
	entereddashstop = false
}

if (state == PS_DOUBLE_JUMP){
	//set_attack(AT_USPECIAL);
}

if (state == PS_AIR_DODGE){
	sound_stop(sfx_jump)
	sound_stop(sfx_flight)
}

if (state == PS_WAVELAND){
	didwavedash = 12
	sound_stop(sfx_airdodge)
}

if (state == PS_WALL_JUMP){
	sound_stop(sfx_flight)
}

if (didwavedash != 0){
	didwavedash--;
	set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 6.5);
} else if (didwavedash == 0){
	set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 0);
}

if (state == PS_LANDING_LAG){
	sound_stop(sfx_spin)
}

////////////////////////////////////////////////////
//////////////////ok no more of that////////////////
////////////////////////////////////////////////////

if (!free){
	flightloop = 3
	aerialattack = 0
	diveloop = 0
	move_cooldown[AT_FSPECIAL] = 0;
}

move_cooldown[AT_DSPECIAL_2] = move_cooldown[AT_DSPECIAL]

if (move_cooldown[AT_NSPECIAL] == 1){
	spawn_hit_fx( x , y - 20, 302 );
}

if (instance_exists(obj_article1)){
	if (collision_rectangle( x - 40, y + 40, x + 40, y - 40, obj_article1, true, true ) && !collision_rectangle( x - 40, y + 40, x + 40, y - 40, oPlayer, true, true )){
		heyiamtouchingitplsdont = true
	} else {
		heyiamtouchingitplsdont = false
	}
}

if (get_player_color( player ) == 0){
	defaultcolor = true
} else {
	defaultcolor = false
}

if (!free && !collision_line(x + 10 * spr_dir, y - 16, x + 16 * spr_dir, y + 16, asset_get("par_block"), 0, 1) && !collision_line(x + 10 * spr_dir, y - 16, x + 16 * spr_dir, y + 16, asset_get("par_jumpthrough"), 0, 1)){
	at_ledge = true;
} else {
	at_ledge = false
}

if (move_cooldown[AT_DSPECIAL] == 1){
	tailsisrobotout = false
}