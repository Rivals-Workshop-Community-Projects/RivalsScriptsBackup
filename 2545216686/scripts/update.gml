//update.gml

// Intro stuff
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
// this increments introTimer every few frames, depending on the number entered

if (introTimer < 17) {
    //draw_indicator = false;
	if (!was_reloaded){
		hud_offset = 400;
	}
} else {
    //draw_indicator = true;
}
// this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

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

if (state == PS_SPAWN){
	if (state_timer == 1){
		sound_play(sfx_flight, false, noone, 0.75, 1);
	}
	if (image_index == 13){
		intro_anim_timer++;
		if (intro_anim_timer == 1){
			//spawn_base_dust( x - (10 * spr_dir), y, "dash_start", spr_dir)
			spawn_base_dust( x - (0 * spr_dir), y, "land", spr_dir)
			sound_play(sfx_land);
		}
	} else {
		intro_anim_timer = 0;
	}
} else {
	intro_anim_timer = 0;
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

//Sleep Kirby Hat Offsets
if (free){
	//Air Hat Offsets
	sleep_kirby_hat_offset_x = -2; //
	sleep_kirby_hat_offset_y = -2; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
} else if (!free){
	//Grounded Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = -2; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
}


if (move_cooldown[AT_DSPECIAL] == 1){
	tailsisrobotout = false
}

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;