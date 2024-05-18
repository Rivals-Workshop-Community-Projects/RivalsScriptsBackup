//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
	can_fast_fall = false;
}

//NSpecial
if (attack == AT_NSPECIAL && window == 2){
	wft_nspcharge = wft_nspcharge+1;
	can_shield = true;
	can_wall_jump = true;
}

if (attack == AT_NSPECIAL && window == 2 && jump_pressed && !free){
	attack_end();
	state = PS_JUMPSQUAT;
	state_timer = 0;
}

if (attack == AT_NSPECIAL && window == 2 && jump_pressed && free && djumps == 0){
	sound_stop(sound_get("wft_nspecial"));
	attack_end();
	state = PS_IDLE_AIR;
	state_timer = 0;
	vsp = -4;
}

if (attack == AT_NSPECIAL && window == 2 && wft_nspcharge == 100){
	spawn_hit_fx(x, y-38, 262);
	sound_stop(sound_get("wft_nspecial"));
	sound_play(sound_get("wft_charged"));
	window = 6;
	window_timer = 0;
}

if (attack == AT_NSPECIAL && window == 2 && !free){
	if (left_hard_pressed){
		hsp = -8;
		set_state(PS_TECH_GROUND);
	}
	if (right_hard_pressed){
		hsp = 8;
		set_state(PS_TECH_GROUND);
	}
}

if (attack == AT_NSPECIAL && window == 2 && special_pressed || attack == AT_NSPECIAL && window == 1 && window_timer >= 7 && (wft_nspcharge == 100 or wft_dscharge == 1)){
	sound_stop(sound_get("wft_nspecial"));
	window = 3;
	window_timer = 0;
}

if (attack == AT_NSPECIAL && window == 4 && window_timer == 1 && wft_nspcharge == 100){
	take_damage(player, -1, -3);
}

if (attack == AT_NSPECIAL && window == 5 && window_timer == 1 && wft_dscharge != 1){
	wft_nspcharge = 0;
}

if (state == PS_ATTACK_AIR && attack == AT_NSPECIAL && wft_dscharge == 1){
	vsp = 0;
}

if (attack == AT_NSPECIAL && window == 5 && window_timer >= 3 && wft_dscharge == 1){
	wft_dscharge = 0;
}

if (attack == AT_NSPECIAL && window == 2 && !move_cooldown[AT_EXTRA_3]){
	spawn_hit_fx(x-6*spr_dir, y-20, 208);
	//spawn_base_dust(x, y, "land");
	move_cooldown[AT_EXTRA_3] = 15;
}

//FSpecial
if (attack == AT_FSPECIAL){
	can_move = false;
}

if (attack == AT_FSPECIAL && window == 1 && window_timer == 5){
	spawn_base_dust(x, y, "jump");
}

if (attack == AT_FSPECIAL && window == 2 && window_timer >= 32){	
	move_cooldown[AT_FSPECIAL] = 75;
}

if (attack == AT_FSPECIAL && window == 2 && !free){
	window = 3;
	window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 1){
	wft_meter_current = 0;
	wft_ballding = 0;
	wft_balldisallow = 0;
	set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
}

if (attack == AT_FSPECIAL && window == 2 && wft_ballding == 0){
	wft_meter_current = wft_meter_current+1;
}

if (attack == AT_FSPECIAL && window == 2 && wft_ballding == 1){
	wft_meter_current = wft_meter_current-1.75;
}

if (attack == AT_FSPECIAL && window == 2 && special_pressed){
	wft_balldisallow = 1;
	window = 4;
	window_timer = 0;
}

if (attack == AT_FSPECIAL && (window == 2 or window == 4)){
	set_attack_value(AT_FSPECIAL, AG_CATEGORY, 1);
}

if (attack == AT_FSPECIAL && window == 3){
	set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
}

//DSpecial
if (attack == AT_DSPECIAL && window == 1){
	clear_button_buffer(PC_SPECIAL_PRESSED);
}

if (attack == AT_DSPECIAL && window == 2 && special_pressed){
	sound_stop(sound_get("wft_dspecial"));
	window = 5;
	window_timer = 0;
}

if (attack == AT_DSPECIAL && window == 3 && special_pressed){
	sound_stop(sound_get("wft_dspecial"));
	window = 6;
	window_timer = 0;
	wft_dscharge = 1;
	take_damage(player, -1, -5);
}

if (attack == AT_DSPECIAL && window == 4){
	sound_stop(sound_get("wft_dspecial"));
}

if (attack == AT_DSPECIAL_2 && window == 1){
	move_cooldown[AT_DSPECIAL] = 300;
}

if (attack == AT_DSPECIAL_2 && (window == 2 or window == 3 or window == 4)){
	create_hitbox(AT_DSPECIAL_2, 1, x, y);
	invincible = 1;
}

if (attack == AT_DSPECIAL_2 && window == 5){
	destroy_hitboxes();
}

//USpecial
if (attack == AT_USPECIAL){
	can_fast_fall = false;
	can_wall_jump = true;
	move_cooldown[AT_USPECIAL] = 999999;
}

if (attack == AT_USPECIAL && window == 1){
	wft_uspcount = 0;
}

if (attack == AT_USPECIAL && window == 2 && window_timer >= 11){
	wft_uspcount = wft_uspcount+1;
}

if (attack == AT_USPECIAL && window == 2 && special_pressed){
	vsp = -6;
}

if (attack == AT_USPECIAL && window == 2 && window_timer >= 11 && wft_uspcount == 6){
	destroy_hitboxes();
	window = 3;
	window_timer = 0;
	wft_uspcount = 0;
}

//Strongs
if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG || attack == 49){
	can_move = false;
}

if (attack == AT_FSTRONG && window == 3 && wft_dscharge == 1 || attack == AT_USTRONG && window == 4 && wft_dscharge == 1 || attack == AT_DSTRONG && window == 4 && wft_dscharge == 1){
	wft_dscharge = 0;
	move_cooldown[AT_DSPECIAL] = 150;
}

if (attack == AT_FSTRONG && window == 2 && window_timer == 1){
	spawn_base_dust(x-18*spr_dir, y, "dash_start");
}

if (attack == AT_FSTRONG && window == 3 && window_timer == 1){
	//spawn_base_dust(x+26*spr_dir, y, "dash", -1);
}

if (attack == AT_DSTRONG && window == 2 && window_timer == 1){
	spawn_base_dust(x-32*spr_dir, y, "dash");
	//spawn_base_dust(x+28*spr_dir, y, "dash", -1);
}

if (attack == AT_USTRONG && window == 2 && window_timer == 1){
	spawn_base_dust(x, y, "land");
}

if (attack == AT_FSTRONG && window == 2 && window_timer == 1 && wft_dscharge == 1 || attack == AT_USTRONG && window == 2 && window_timer == 1 && wft_dscharge == 1 || attack == AT_DSTRONG && window == 2 && window_timer == 1 && wft_dscharge == 1 || attack == AT_NSPECIAL && window == 3 && window_timer == 1 && wft_dscharge == 1){
	sound_play(asset_get("sfx_owl3"));
}

//Tilts
if (attack == AT_FTILT && window == 2 && window_timer == 1){
	spawn_base_dust(x-6*spr_dir, y, "dash");
	//spawn_base_dust(x+42*spr_dir, y, "dash_start", -1);
}

if (attack == AT_DTILT && window == 2 && window_timer == 1){
	//spawn_base_dust(x+50*spr_dir, y, "dash_start", -1);
}

if (attack == AT_DTILT && window == 3 && window_timer == 13){
	attack_end();
	state = PS_CROUCH;
	//state_timer = 0;
}

if (attack == AT_UTILT && window == 2 && window_timer == 1){
	spawn_base_dust(x-28*spr_dir, y, "dash");
}

if (attack == AT_DATTACK && window == 2 && window_timer == 1){
	spawn_base_dust(x-18*spr_dir, y, "dash_start");
}

if (attack == 49 && window == 1){
	finalsmashtimer = 0;
}

if (attack == 49 && window == 4){
	finalsmashtimer = finalsmashtimer+1;
}

if (attack == 49 && window == 4 && finalsmashtimer == 150){
	window = 5;
	window_timer = 0;
}

if (has_rune("L") || wft_testrune == 1){
if (has_hit_player == true){
	can_attack = true;
	can_strong = true;
	can_ustrong = true;
	can_jump = true;
	hitstop = 0;
	hitpause = 0;
	}
}

if (attack == 49){
	invincible = 1;
}

//Taunt
if (attack == AT_TAUNT && get_match_setting(SET_PRACTICE) || taunt_pressed && get_match_setting(SET_PRACTICE)){
	wft_dscharge = 1;
	//wft_testrune = 1;
}

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