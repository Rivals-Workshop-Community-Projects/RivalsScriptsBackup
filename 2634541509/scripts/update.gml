if(hud_anim < 80){
	hud_anim++;
}else{
	hud_anim = 0;
}

fair_cooldown++;
set_victory_bg(sprite_get("win_bg"));

if(state == PS_RESPAWN){
	spr_dir = 1;
}

if(spr_dir == -1){
    word_pos = -144;
}else if(spr_dir == 1){
    word_pos = 30;
}

if(state == PS_DOUBLE_JUMP && state_timer == 0) {
	if (spr_dir == 1 && (left_down || (left_pressed && !right_down))) {
		spr_dir = -1;
	} else if (right_down || (right_pressed && !left_down)) {
		spr_dir = 1;
	}
}

if(attack == AT_FSTRONG && window == 3 && !hitpause){
	word_anim++;
}

if(attack == AT_FAIR && window == 2 && fair_cooldown >= 80 && state != PS_AIR_DODGE && free){
	instance_create(x + (spr_dir * 40), y - 34, "obj_article1")
	fair_cooldown = 0;
}

if(attack == AT_UTILT && attack_pressed && window_timer >= 12){
	if(window == (1)){
		window = 2;
		window_timer = 0;
	}else if(window == (2)){
		window = 3;
		window_timer = 0;
	}
}

if(car_amount == 1){
	if(car_timer > 300){
		car_timer = 0;
		sound_play(sound_get("explosion"));
		car_amount = 0;
	}
	car_timer++
}else{
	car_timer = 0;
}

if(attack == AT_NSPECIAL && window == 2){
	move_cooldown[AT_NSPECIAL] = 60;
}

if(attack == AT_FSPECIAL && window == 2 && jump_pressed && state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
	window = 3;
	window_timer = 0;
	car_amount = 1;
}else if(attack == AT_FSPECIAL && window == 2 && !jump_pressed && window_timer == 9 && state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
	window_timer = 0;
}

if(car_amount == 1){
	move_cooldown[AT_FSPECIAL] = 50;
}
if(attack == AT_FSPECIAL && window == 3 && window_timer == 2 && state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
	//mail generation
    mail_amount = random_func(special_x, 4, true) + 3;
}
if(spawn_mail == true && mail_timer < mail_amount){
	mail_timer++
	hboxe = create_hitbox(AT_USTRONG_2, 1, hboxx - 6, hboxy + 30);
	hboxe.hsp = (6 + random_func_2(special_x, 5, false)) * sprdirir;
	hboxe.vsp = (random_func_2(special_x, 7, false) * -1) - 4;
}else{
	spawn_mail = false;
	mail_timer = 0;
}

if(pipis_amount == 1){
	move_cooldown[AT_DSPECIAL] = 240;
}else if(get_player_color(player) == 14){
	move_cooldown[AT_DSPECIAL] = 0;
}

if(attack == AT_DSPECIAL && window == 2 && window_timer == 6 && state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
	instance_create(x + 10 * spr_dir, y - 12, "obj_article2")
}

if(free){
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -7);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -3);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get( "sfx_swipe_medium2" ));
}else{
	reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE);
	reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED);
	reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE);
	reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED);
	reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX);
	reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX);
}

if(taunt_pressed){
	if(down_pressed || down_down){
		attack = AT_EXTRA_3;
	}else if(!down_pressed || !down_down || !up_pressed || !up_down){
		attack = AT_TAUNT;
	}
}

if(attack == AT_EXTRA_3 && window == 2 && (attack_pressed || jump_pressed || shield_pressed || jump_pressed || left_pressed || right_pressed || taunt_pressed) && state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
	window = 3;
	window_timer = 0;
	sound_stop(sound_get("KEYGEN"));
}

if(attack == AT_EXTRA_3 && window == 1){
	sound_stop(sound_get("KEYGEN"));
}

if(attack == AT_EXTRA_3 && window == 2 && state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
	if(shading_timer < 305){
		shading_timer++;
	}else{
		shading_timer = 0;
	}
	if(shading_timer < 50){
		g_change += 5;
	}else if(shading_timer >= 50 && shading_timer < 101){
		r_change -= 5;
	}else if(shading_timer >= 101 && shading_timer < 152){
		b_change += 5;
	}else if(shading_timer >= 152 && shading_timer < 203){
		g_change -= 5;
	}else if(shading_timer >= 203 && shading_timer < 254){
		r_change += 5;
	}else if(shading_timer >= 254 && shading_timer < 305){
		b_change -= 5;
	}
	init_shader();
}else{
	shading_timer = 0;
	r_change = 255;
	g_change = 0;
	b_change = 0;
	init_shader();
}

if(up_pressed){
	jumpe = 0;
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
}else if(down_pressed || (jumpe == 0 && down_pressed)){
	jumpe = 1;
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -7);
}else{}