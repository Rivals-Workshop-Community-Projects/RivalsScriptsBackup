user_event(14);

rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));

if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 18) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if (state == PS_RESPAWN && fakedie = true)
{
    set_player_damage(player, savedamage + 20);
    fakedie = false;
}


if attack == AT_NSPECIAL && window == 3 && window_timer == 1{
	reverse = !reverse;
	for (var i = 0; i < AT_NSPECIAL; i++){
    if get_num_hitboxes(i){
        for (var j = 1; j <= get_num_hitboxes(i); j++){
            if (get_hitbox_value(i, j, HG_HITBOX_TYPE) == 1) && get_hitbox_value(i, j, HG_KNOCKBACK_SCALING) > 0{
                set_hitbox_value(i, j, HG_ANGLE, get_hitbox_value(i, j, HG_ANGLE) + 180);
            } else {
            	reset_hitbox_value(i, j, HG_ANGLE);
            }
        }
    }
}
} 

/*
if (attack == AT_FSPECIAL && window == 2 && window_timer == 1){
	usedfspecial = !usedfspecial;
}
*/

if (attack == AT_FSPECIAL && window == 3 && window_timer == 1){
	move_cooldown[AT_FSPECIAL] = 30;
}

if (attack == AT_DAIR && window == 6 && window_timer == 1){
	move_cooldown[AT_DAIR] = 30;
}

//==========================================
var found_creature = false;
with (obj_article1) if (player_id == other)
{
    //found my creature ID
    found_creature = true;
    break; //can stop looking
}

if (attack == AT_FSPECIAL && window == 1 && window_timer == 1 && found_creature) {
    usedfspecial = true;
} else if !(found_creature) {
    usedfspecial = false;
}
//==========================================

if state == PS_HITSTUN {
	    sound_stop( sound_get( "hacking" ));    
    sound_stop( sound_get( "monkemode" ));    
}

//Slapping reset
if (!(state == PS_ATTACK_GROUND) && state_timer > 5 && slaps > 0){
	slaps = 0;
	move_cooldown[AT_JAB] = 20;
}

//Moving down paper work timer
if (paperwork > 0){ paperwork--; }

max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

if (state == PS_WALL_JUMP && state_timer == 18){ spr_dir = -1 * spr_dir; }

/*

if ((y > get_stage_data(SD_Y_POS) + 10 && y < get_stage_data(SD_Y_POS) + 110) && vsp >= 0 && ((attack == AT_EXTRA_1 && state == PS_ATTACK_AIR) || (state != PS_ATTACK_AIR && state != PS_AIR_DODGE && state != PS_HITSTUN && state != PS_TUMBLE && state != PS_PRATFALL && state != PS_PARRY_START))){
if (x > get_stage_data(SD_X_POS) - 90 && x < get_stage_data(SD_X_POS) && (spr_dir == 1 || (attack == AT_EXTRA_1 && state == PS_ATTACK_AIR))){
		if (ledge_timer == 0 && has_grabbed_ledge == false){
		sound_play(asset_get("sfx_land"));
		set_state(PS_IDLE);
		set_attack(AT_EXTRA_1);
		window = 1;
		spr_dir = 1;
		ledge_timer = 9;
		has_grabbed_ledge = true;
		djumps = 0;
		has_airdodge = true;
		invincible = true;
		invince_time = 10;
		ledgeautodrop_timer = 10;
		//vsp = 0;
		//hsp = 0;
	}
}


if (x < -(get_stage_data(SD_X_POS) - 110 - room_width) && x > -(get_stage_data(SD_X_POS) - room_width) && (spr_dir == -1 || (attack == AT_EXTRA_1 && state == PS_ATTACK_AIR))){
		if (ledge_timer == 0 && has_grabbed_ledge == false){
		sound_play(asset_get("sfx_land"));
		set_state(PS_IDLE);
		set_attack(AT_EXTRA_1);
		window = 1;
		ledge_timer = 9;
		spr_dir = -1;
		has_grabbed_ledge = true;
		djumps = 0;
		has_airdodge = true;
		invincible = true;
		invince_time = 10;
		ledgeautodrop_timer = 10;
		//vsp = 0;
		//hsp = 0;
		}
	}
}

if (x > get_stage_data(SD_X_POS) - 110 && x < get_stage_data(SD_X_POS)){
	if (attack == AT_EXTRA_1 && has_grabbed_ledge == true){
	x = get_stage_data(SD_X_POS) - 10;
	y = get_stage_data(SD_Y_POS) + 50;
	ledgeautodrop_timer--;
	spr_dir = 1;
		if (window == 2){
		window = 2;
		window_timer = 0;
	}
}
	
if ((attack == AT_EXTRA_1 && (left_pressed || down_pressed || jump_pressed) && window == 2) || ledgeautodrop_timer == 0 && has_grabbed_ledge){
	has_grabbed_ledge = false;
	window_timer = 10;
	}
}

if (x < -(get_stage_data(SD_X_POS) - 110 - room_width) && x > -(get_stage_data(SD_X_POS) - room_width) ){
	if (attack == AT_EXTRA_1 && has_grabbed_ledge == true){
	x = -(get_stage_data(SD_X_POS) - room_width) - 10;
	y = get_stage_data(SD_Y_POS) + 50;
	spr_dir = -1;
	ledgeautodrop_timer--;
		if (window == 2){
		window = 2;
		window_timer = 0;
	}
}
	
if ((attack == AT_EXTRA_1 && (right_pressed || down_pressed || jump_pressed) && window == 2) || ledgeautodrop_timer == 0 && has_grabbed_ledge){
	has_grabbed_ledge = false;
	window_timer = 10;
	}
}

if (attack != AT_EXTRA_1){ has_grabbed_ledge = false; }

if (ledge_timer > 0 && has_grabbed_ledge == false){ ledge_timer--; }



if (attack == AT_EXTRA_1 && state == PS_ATTACK_AIR && window == 1 && window_timer == 2){ spawn_hit_fx(x+10 * spr_dir, y-50, 19); } 

*/