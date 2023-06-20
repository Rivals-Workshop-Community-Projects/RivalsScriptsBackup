if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_DEAD && state != PS_RESPAWN {
	set_attack(AT_TAUNT)
}
spr_dir = 1;
can_fast_fall = false;
//soft_armor = 9999;

if (get_gameplay_time() == 5){
	y = y-24;
	initX = x;
	initY = y;
}

if (state == PS_RESPAWN){
	initX = x;
	initY = y;
}

if (get_player_color( player ) == 20) {
    hue_offset += hue_speed;
	hue_offset = hue_offset mod 255; //keeps hue_offset within the 0-255 range

	color_rgb = make_color_rgb(225, 50, 50); //input rgb values here, uses rgb to create a gamemaker colour variable
	//color_rgb2 = make_color_rgb(191, 194, 194);
	color_rgb3 = make_color_rgb(255, 204, 204);
	hue = (color_get_hue(color_rgb) + hue_offset) mod 255;//finds the hue and shifts it
	color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
	//color_hsv2 = make_color_hsv(hue, color_get_saturation(color_rgb2), color_get_value(color_rgb2));
	color_hsv3 = make_color_hsv(hue, color_get_saturation(color_rgb3), color_get_value(color_rgb3));
	//set_color_profile_slot(20, 0, color_get_red(color_hsv2), color_get_green(color_hsv2), color_get_blue(color_hsv2)); //uses that variable to set the slot's new colours
	set_color_profile_slot(20, 0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(20, 1, 325-color_get_red(color_hsv), 325-color_get_green(color_hsv), 325-color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	//set_color_profile_slot(20, 6, 455-color_get_red(color_hsv3), 455-color_get_green(color_hsv3), 455-color_get_blue(color_hsv3));
	init_shader();
}

if (down_down && abs(vsp) <= 1 && !hitpause && beyTimer && get_gameplay_time() > 120 && state != PS_DEAD && state != PS_RESPAWN){
	ground_friction = 0.15;
	super_armor = true;
	set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, 0);
	if (!has_rune("O") || (has_rune("O")&& beyTimer > 11)){
		if (!has_rune("K") || (has_rune("K") && get_player_damage(player) != 0)){
			if (!has_rune("H"))
				beyTimer -= 10;
			else
				beyTimer --;
		}
	}
	if (defSound)
		sound_play(asset_get("mfx_star"), false, noone, 0.75, 1.5);
	defSound = false;
}
else if (beyTimer && get_gameplay_time() > 120 && state != PS_DEAD && state != PS_RESPAWN && !hitpause){
	ground_friction = 0.01;
	super_armor = false;
	set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, 1);
	if (!has_rune("O") || (has_rune("O")&& beyTimer > 1)){
		if (!has_rune("K") || (has_rune("K") && get_player_damage(player) != 0))
		beyTimer --;
	}
	defSound = true;
}
if (!has_rune("B"))
	pastVSP = clamp(vsp, -9, 9);
else
	pastVSP = vsp;
	
if (!has_rune("B"))
	pastHSP = clamp(hsp, -30, 30);
else
	pastHSP = hsp;
	
clangRandom = random_func(0, 10, false)/50;

if (beyTimer > 7200){
	set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
	set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 9);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 15);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
    knockback_adj = 0.25;
}
else if (beyTimer <= 7200 && beyTimer > 3600){
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 5);
	set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 12);
	knockback_adj = 0.3;
}
else if (beyTimer <= 3600 && beyTimer > 1800){
	set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 8);
	set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 8);
	if (!has_rune("E"))
		hsp = hsp + (1 - random_func(1, 2, false))/10;
	set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 9);
	knockback_adj = 0.4;
}
else if (beyTimer <= 1800 && beyTimer > 0){
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 9);
	set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
	if (!has_rune("E"))
		hsp = hsp + (1 - random_func(1, 2, false))/5;
	set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
	knockback_adj = 0.6;
}
else if ((window == 1 && window_timer > 0) || window > 1){
	set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
	ground_friction = 0.5;
	super_armor = false;
	knockback_adj = 0.9;

	deathTimer++;
	
	if (deathTimer > 10)
		set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 18);
		
	if (deathTimer < 2){
		window = 2;
	}
}
if (has_rune("I")){
	set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 20);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1.2);
}

if (beyTimer < 0)
	beyTimer = 0;
	
if (has_rune("D"))
	soft_armor = 6;

if (attack_pressed && has_rune("M")){
	hsp = -hsp;
	sound_play(asset_get("sfx_ori_ustrong_charge"), false, noone, 0.75, 1.5);
	clear_button_buffer( PC_ATTACK_PRESSED );
}

if (deathTimer == 1 && !hitpause)
	sound_play(asset_get("sfx_spin"), false, noone, 0.8, 0.8);
if (deathTimer == 25 && !hitpause)
	sound_play(asset_get("sfx_spin"), false, noone, 0.6, 0.6);
if (deathTimer == 49 && !hitpause)
	sound_play(asset_get("sfx_spin"), false, noone, 0.4, 0.4);


if (get_player_color(player) == 22){
	set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("C-boom"));
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt-peter"));
}
if (get_player_color(player) == 23){
	set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("bb-yamchaHit"));
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt-yamcha"));
}
	
if (get_player_color(player) == 22 || get_player_color(player) == 23){
	set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 21);
	
	if (deathTimer == 80 && !hitpause){
		sound_play(sound_get("C-boom"), false, noone, 0.5, 1);
		shake_camera( 6, 20 );
	}
}

if (deathTimer >= 480)
	create_deathbox(x,y, 4, 4, player, false, 0, 5, 2);
	
if (get_gameplay_time() < 120){
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
}
else
	air_max_speed = 2;