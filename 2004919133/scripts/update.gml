//RUNES
if runesUpdated {
	if runeA { //trigger the attribute change
		divespeed = 12;
	} else { //reset the attribute change
		divespeed = 9;
	}
}

if runesUpdated {
	if runeB { //trigger the attribute change
		set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 14);
	} else { //reset the attribute change
		set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
	}
}

if runesUpdated {
	if runeE { //trigger the attribute change
		max_djumps = 4;
	} else { //reset the attribute change
		max_djumps = 1;
	}
}

if runesUpdated {
	if runeF { //trigger the attribute change
		crouchbox_spr = sprite_get("hatkid_rune_crouch_hurt");
	} else { //reset the attribute change
		crouchbox_spr = sprite_get("hatkid_crouch_hurt");
	}
}

if runesUpdated {
	if runeH { //trigger the attribute change
		set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
	} else { //reset the attribute change
		set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 7);
	}
}

if runesUpdated {
	if runeI { //trigger the attribute change
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0);
	} else { //reset the attribute change
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
	}
}

if runesUpdated {
	if runeJ { //trigger the attribute change
		initial_dash_speed = 10;
		dash_speed = 12;
	} else { //reset the attribute change
		initial_dash_speed = 6;
		dash_speed = 8;
	}
}

if (url != 2004919133){
	player = -1;
	spawn_hit_fx(x,y,0);
}

if runeM { //trigger the attribute change
	if (knockback_adj > .7){
		knockback_adj = hk_weight - pon_count/900;
	}
} else { //reset the attribute change
		hk_weight = 1.12;
	knockback_adj = hk_weight;
}

if runesUpdated {
	if runeN { //trigger the attribute change
		magnet_price = 25;
		mail_price = 36;
		beam_price = 50;
		bonk_price = 62;
		umbrella_price = 62;
		onehit_price = 50;
	} else { //reset the attribute change
		magnet_price = 50;
		mail_price = 75;
		beam_price = 100;
		bonk_price = 125;
		umbrella_price = 125;
		onehit_price = 100;
	}
}

if (runeD && (state == PS_HITSTUN || state_cat == SC_GROUND_NEUTRAL || state == PS_RESPAWN || free)){
    taunt_timer = 0;
}













//update.gml

pon_mod = pon_count mod 2;

if (error_cooldown > 0){
    error_cooldown -= 1;
}

if (click_cooldown > 0){
    click_cooldown -= 1;
}

if (horn_cooldown > 0){
    horn_cooldown -= 1;
}

if ((state == PS_DASH || state == PS_DASH_START) && taunt_pressed && horn_cooldown <= 0){
    sound_play( sound_get ( "sfx_scooter_beep" ) );
    horn_cooldown = 250;
}

if (shop_open == 1 && attack == AT_DSPECIAL && state != PS_ATTACK_GROUND){
    shop_open = 0;
}

if (selecting == 1 && attack == AT_DSPECIAL && state != PS_ATTACK_GROUND){
    selecting = 0;
}

if (!free){
    move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    if (ground_timer > 0 && attack == AT_FSPECIAL && state = PS_ATTACK_GROUND){
        ground_timer -= 1;
    }
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    move_cooldown[AT_FSPECIAL] = 0;
}
    
if (timer_decrease > 0 && timer_decreasing = true){
    timer_decrease -= 1;
}

if (uspecial_timer <= 0){
    uspecial_timer = uspecial_timer_max;
}

var alt_cur = get_player_color(player);

//hime alt
if (state == PS_SPAWN && get_player_color(player) > 0 && up_down && state_timer == 0 && alt_cur != 11 && alt_cur != 12 && alt_cur != 13 && alt_cur != 14 && alt_cur != 15) {
    sound_play (asset_get ("mfx_star"));
    set_color_profile_slot( get_player_color(player), 0, 117, 184, 229 ); //clothes
    set_color_profile_slot( get_player_color(player), 1, 242, 147, 153 ); //cape
    set_color_profile_slot( get_player_color(player), 2, 109, 140, 161 ); //hair
    set_color_profile_slot( get_player_color(player), 3, 238, 206, 193 ); //skin
    set_color_profile_slot( get_player_color(player), 4, 254, 254, 246 ); //pants
    set_color_profile_slot( get_player_color(player), 5, 255, 255, 255 ); //pons
    set_color_profile_slot( get_player_color(player), 6, 109, 140, 161 ); //zipper
    set_color_profile_slot( get_player_color(player), 7, 255, 255, 255 ); //umbrella
}

//liz alt
if (state == PS_SPAWN && get_player_color(player) > 0 && down_down && state_timer == 0 && alt_cur != 11 && alt_cur != 12 && alt_cur != 13 && alt_cur != 14 && alt_cur != 15) {
    sound_play (asset_get ("mfx_star"));
    set_color_profile_slot( get_player_color(player), 0, 246, 104, 148 ); //clothes
    set_color_profile_slot( get_player_color(player), 1, 104, 246, 193 ); //cape
    set_color_profile_slot( get_player_color(player), 2, 246, 104, 148 ); //hair
    set_color_profile_slot( get_player_color(player), 3, 246, 188, 147 ); //skin
    set_color_profile_slot( get_player_color(player), 4, 0, 0, 0 ); //pants
    set_color_profile_slot( get_player_color(player), 5, 211, 245, 250 ); //pons
    set_color_profile_slot( get_player_color(player), 6, 48, 48, 109 ); //zipper
    set_color_profile_slot( get_player_color(player), 7, 211, 245, 250 ); //umbrella
}

//acid rainbows alt
if (state == PS_SPAWN && get_player_color(player) > 0 && right_down && state_timer == 0 && alt_cur != 11 && alt_cur != 12 && alt_cur != 13 && alt_cur != 14 && alt_cur != 15) {
    sound_play (asset_get ("mfx_star"));
    set_color_profile_slot( get_player_color(player), 0, 39, 117, 43 ); //clothes
    set_color_profile_slot( get_player_color(player), 1, 97, 68, 96 ); //cape
    set_color_profile_slot( get_player_color(player), 2, 182, 73, 218 ); //hair
    set_color_profile_slot( get_player_color(player), 3, 254, 208, 177 ); //skin
    set_color_profile_slot( get_player_color(player), 4, 0, 0, 0 ); //pants
    set_color_profile_slot( get_player_color(player), 5, 255, 38, 29 ); //pons
    set_color_profile_slot( get_player_color(player), 6, 26, 85, 43 ); //zipper
    set_color_profile_slot( get_player_color(player), 7, 67, 3, 0 ); //umbrella
}

//bluey alt
if (state == PS_SPAWN && get_player_color(player) > 0 && left_down && state_timer == 0 && alt_cur != 11 && alt_cur != 12 && alt_cur != 13 && alt_cur != 14 && alt_cur != 15) {
    sound_play (asset_get ("mfx_star"));
    set_color_profile_slot( get_player_color(player), 0, 10, 2, 77 ); //clothes
    set_color_profile_slot( get_player_color(player), 1, 0, 50, 237 ); //cape
    set_color_profile_slot( get_player_color(player), 2, 53, 24, 10 ); //hair
    set_color_profile_slot( get_player_color(player), 3, 255, 176, 89 ); //skin
    set_color_profile_slot( get_player_color(player), 4, 157, 157, 255 ); //pants
    set_color_profile_slot( get_player_color(player), 5, 79, 239, 255 ); //pons
    set_color_profile_slot( get_player_color(player), 6, 33, 33, 33 ); //zipper
    set_color_profile_slot( get_player_color(player), 7, 79, 239, 255 ); //umbrella
}

//old shop
if (state == PS_SPAWN && state_timer <= 100 && shop_type == "current" && taunt_down){
    sound_play (asset_get ("sfx_swipe_heavy1"));
    shop_type = "old";
}

//practice check
if (timer1 == timer2 && timer1 != 0){
    practice = true;
}
else{
    practice = false;
}

//practice pons
if (attack == AT_TAUNT && down_pressed && practice){
    pon_count = 999;
}

//dash smoke
if (state == PS_DASH_START && state_timer == 1){
	spawn_hit_fx( x, y - 14, 144 );
}

if (state == PS_DASH_STOP && state_timer == 4){
	spawn_hit_fx( x, y - 14, 144 );
}

if ((prev_state == PS_DASH || prev_state == PS_DASH_START || prev_state == PS_DASH_TURN) && state_timer == 1 && state != PS_DASH && state != PS_DASH_TURN && state != PS_DASH_STOP && (state != PS_ATTACK_GROUND && attack != AT_DATTACK && state != PS_ATTACK_AIR)){
	spawn_hit_fx( x, y - 14, 144 );
}

//dattack parry thing idk
if (attack == AT_DATTACK && state == PS_PRATFALL && state_timer == 20){
    set_state(PS_IDLE_AIR);
}

//taunt timer reset
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	taunt_time = 0;
	volume_slide = 1;
}

if (taunt_time == 0){
	volume_slide = 0;
	sound_stop(sound_get("dancin"));
}

//if (state == PS_WALK && state_timer == 2){
//	spawn_hit_fx( x, y - 14, 14 );
//}

//if (prev_state == PS_WALK && state_timer == 1){
//	spawn_hit_fx( x, y - 14, 14 );
//}

//rainbow alt
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 14, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 14, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();


//new runes
if (has_rune("A")){
	initial_dash_speed = 8;
	dash_speed = 9;
	
	leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
	max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
	
	max_djumps = 2;
	
	wave_land_adj = 1.5;
	
	air_accel = .35;
}

if (has_rune("B")){
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0);
	
	set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
}

if (has_rune("C")){
	runeO = true;
}

if (has_rune("D")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 85);
	set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 55);
}

if (has_rune("E")){
	ground_friction = 0.1;
	wave_friction = .01;
}



if (has_rune("G")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.15);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 7);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
}

if (has_rune("I")){
	set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -8.5);
	
	set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 9);
	set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -12.5);
}

if (has_rune("J")){
	set_attack_value(AT_FAIR, AG_CATEGORY, 1);
	//set_attack_value(AT_FAIR, AG_SPRITE, asset_get("bug_fair"));
	set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
	set_attack_value(AT_FAIR, AG_OFF_LEDGE, 0);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
	//set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, asset_get("bug_fair_hurt"));
	set_attack_value(AT_FAIR, 18, 6);


	set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 11);
	set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
	set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 7);
	
	
	set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 2);
	set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 0);
	
	
	set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 5);
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 13);
	set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 8);
	set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 0);
	
	
	var temp_attack = AT_FAIR;
	var temp_num = 1;
	
	set_num_hitboxes(temp_attack, 1);
	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 6);
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 11);
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 40);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .85);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	
	global.zethit[temp_attack,temp_num+25] = 2;
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(temp_attack, temp_num, HG_FINAL_BASE_KNOCKBACK, 6);
	
	
	set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
	//set_attack_value(AT_FSTRONG, AG_SPRITE, asset_get("gus_fstrong_spr"));
	set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
	set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	//set_attack_value(AT_FSTRONG, AG_AIR_SPRITE, asset_get("gus_fstrong_air_spr"));
	//set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, asset_get("gus_fstrong_hurt"));
	
	
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .7);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 7);
	
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 5);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);
	
	
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_HITPAUSE_FRAME, 0);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 0);
	
	
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 3);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 8);
	
	/*
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 3);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 9);
	*/
	
	
	
	var temp_attack = AT_FSTRONG;
	var temp_num = 1;
	
	set_num_hitboxes(temp_attack, 1);
	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 7);
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 11);
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.0);
	set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 4);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 1.1);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 306);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
	set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
}

if (has_rune("H")){ 
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_rune"));
	set_num_hitboxes(AT_FSTRONG, 1);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 32);
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("fstrong_rune_proj"));
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .2);
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 8);
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GRAVITY, .6);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
	set_hitbox_value(AT_FSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_VSPEED, -5);
}

if (has_rune("F")){
	set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
}

if (has_rune("K")){
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 8);

	divespeed = 11;
}



if (has_rune("L")){
	if (knockback_adj > .7){
		knockback_adj = hk_weight - pon_count/900;
	}
}

if (has_rune("M")){
	if (!changed_prices){
		magnet_price = round(magnet_price/2);
		mail_price = round(mail_price/2);
		beam_price = round(beam_price/2);
		bonk_price = round(bonk_price/2);
		umbrella_price = round(umbrella_price/2);
		onehit_price = round(onehit_price/2);
		changed_prices = true;
	}
}

if (has_rune("N")){
	set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 32);
}

if (has_rune("O")){

		
		set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
		set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	
			//this part is edited mollo code sorry giik oops
				if state == PS_ATTACK_AIR && state_timer == 0 {
					
					
						if up_strong_pressed set_attack(AT_USTRONG);
						if left_strong_pressed {set_attack(AT_FSTRONG); spr_dir = -1}
						if right_strong_pressed {set_attack(AT_FSTRONG); spr_dir = 1}
						if down_strong_pressed set_attack(AT_DSTRONG);
					
				}
}

















//kirby ability
if swallowed {
    swallowed = 0
    var ability_spr = sprite_get("nspecial_kirby")
    var ability_hurt = sprite_get("nspecial_kirby_hurt")
    var ability_proj = sprite_get("potion")
    with enemykirby {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 8);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("mfx_star"));
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 1);
        
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 9);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 0);
        
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX_FRAME, 5);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 2);
        
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED, -1);
        
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 4);
        
        set_window_value(AT_EXTRA_3, 8, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAME_START, 4);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 28);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -36);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, .8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .9);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 67);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .4);
    }
}

if enemykirby != undefined { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (get_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH) == 14  && attack == AT_EXTRA_3)) {
            if (!special_down && window == 4){
                window = 5;
                window_timer = 1;
            }
            if (window == 2 && window_timer == 1){
                set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 6);
            }
            if (window == 4 && window_timer == 1){
                set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 10);
            }
        }
    }
}

var myicon = sprite_get("poyo")
with enemykirby {
    newicon = myicon
}

//wireframe reset
//if (get_player_color(player) != 14){
//    set_color_profile_slot_range( 2, 10, 17, 19 );
//    init_shader();
//}

//if (get_player_color(player) == 14){
//    set_color_profile_slot_range( 2, 255, 255, 255 );
//    init_shader();
//}\