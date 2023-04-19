if (state == PS_DASH_TURN  && state_timer == 1)   {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1)
}

if (state == PS_DASH && (state_timer % 10 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if (state == PS_WALL_JUMP  && state_timer == 1)   {
    sound_stop(asset_get("sfx_jumpair"))
    sound_play(asset_get("sfx_jumpair"),false,noone,0.6, 1)
}

//
// afterimage
if (afterImageTimer > 0)
{
    afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:5};
    afterImageTimer--;
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;

if(ewgf_timer > 0)
    ewgf_timer --;
else
    ewgf_input = -1

if(state != PS_ATTACK_AIR && attack != AT_USPECIAL)
    shoryu_obj = -1;

if (aura) lure_timer = 0;

if(lure_timer != 0)
{    lure_timer -= (has_rune("H") ? 2 : 1); lure_fade = 1; hud_offset = 24;}
else
{
    lure_fade -= 0.1;
}

if(lure_timer == 1)
{
    sound_play(sound_get("lightready2"));
    white_flash_timer = 8;
}
// Secret Alts
if (state == PS_SPAWN)
{
	if (state_timer == 68)
	{
		aura = ("temp_level" in self && temp_level == 1) || aura || auraMeter >= 67 || get_match_setting(SET_TURBO);
		gpu_set_alphatestfunc(aura);
		if (aura)
		{
			sound_play(asset_get("sfx_absa_uair"));
			shake_camera(8, 6);
	        spawn_hit_fx(x, y-42, 157);
		}
	}
	else if (state_timer < 68 && auraMeter != -1) auraMeter = taunt_down?auraMeter+1:-1;
	else if (state_timer == 1) auraMeter = 0;

	if(get_player_color(player) == 2)
	{
		if(shield_down && attack_down && jump_down)
		{
			set_color_profile_slot(2, 0, 209, 158, 255 ); //Skin
			set_color_profile_slot(2, 1, 255, 229, 120 ); //Fins
			set_color_profile_slot(2, 2, 0, 255, 204 ); //Marks
			set_color_profile_slot(2, 3, 0, 255, 204 ); //Light
			set_color_profile_slot(2, 4, 0, 255, 191 ); //Skin 2
			set_color_profile_slot(2, 5, 189, 128, 255 ); //water
			set_article_color_slot(3, 0, 255, 204 ); //Light
			set_article_color_slot(5, 189, 128, 255 ); //water
			init_shader();
		}
	}
	if(get_player_color(player) == 24)
	{
		switch(alt1_secret)
		{
			case 0:
			case 1: if(jump_pressed) { alt1_secret++; clear_button_buffer(PC_JUMP_PRESSED) }  break;
			case 2: if(right_pressed && spr_dir == 1 || left_pressed && spr_dir == -1) { alt1_secret++;}  break;
			case 3: if(attack_pressed) { alt1_secret++;} break;
			case 4: if(special_pressed) 
			{ 
				alt2_secret = 0;
				// Duckers
				set_color_profile_slot( 24, 0, 255, 251, 0 ); //Skin
				set_color_profile_slot( 24, 1, 255, 106, 0 ); //Fins
				set_color_profile_slot( 24, 2, 255, 140, 243 ); //Marks
				set_color_profile_slot( 24, 3, 0, 255, 255 ); //Light
				set_color_profile_slot( 24, 4, 255, 255, 255 ); //Skin 2
				set_color_profile_slot( 24, 5, 145, 0, 0 ); //water
				set_article_color_slot(3, 0, 255, 255 ); //Light
				set_article_color_slot(5, 145, 0, 0 ); //water
				set_victory_portrait(sprite_get("secretduckyportrait"));
				init_shader();
			}  break;
		}
		switch(alt2_secret)
		{
			case 0: if(down_down) alt2_secret ++; break;
			case 1: if(down_down && (left_pressed && spr_dir == 1 || right_pressed && spr_dir == -1)) alt2_secret ++; break;
			case 2: if(left_down && spr_dir == 1 || right_down && spr_dir == -1) alt2_secret ++; break;
			case 3: 
			if(special_pressed)
			{
				alt1_secret = 0;
				set_color_profile_slot( 24, 0, 162, 50, 13 ); //Skin
				set_color_profile_slot( 24, 1, 99, 89, 107 ); //Fins
				set_color_profile_slot( 24, 2, 99, 89, 107 ); //Marks
				set_color_profile_slot( 24, 3, 255, 213, 0 ); //Light
				set_color_profile_slot( 24, 4, 255, 207, 90 ); //Skin 2
				set_color_profile_slot( 24, 5, 255, 221, 0 ); //water
				set_article_color_slot(3, 255, 213, 0 ); //Light
				set_article_color_slot(5, 255, 221, 0 ); //water
				init_shader();
			}
		}
	}
}
else if (state == PS_LANDING_LAG && aura) set_state(PS_IDLE);

// hue
++hue;
hue%=255;

if(taunt_down && shield_down)
	set_victory_portrait(sprite_get("passivefishe"));
else if(alt1_secret != 4)
	set_victory_portrait(sprite_get("portrait"));
//lol


#region Runes
if(has_rune("D") && state_timer == 1 && shotoTurnBuffer == 0)
{
	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 15);
}

if(has_rune("O"))
{
	if(isShoto == -1)
	{
		isShoto = 0; 
		with(oPlayer)
		{
			if(player != other.player)
			{
				other.shotoTarget = id;
				other.isShoto ++;
			}
		}
	}
	if(isShoto == 1)
	{
		if(state == PS_IDLE || state == PS_ATTACK_GROUND && state_timer == 1 && !(right_down || left_down))
		{
			if(x < shotoTarget.x)
				spr_dir = 1;
			else
				spr_dir = -1;
		}
	}
		
	if(shotoDir != spr_dir && shotoTurnBuffer == 0)
		shotoTurnBuffer = 30;
	if(shotoTurnBuffer != 0)
	{ 	shotoTurnBuffer --;}
	if(shotoTurnBuffer == 0)
		shotoDir = spr_dir;
	
	if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
	{
		for(i = 1; i < get_num_hitboxes(attack)+1; i++)
			reset_hitbox_value(attack, i, HG_DAMAGE);

		reset_num_hitboxes(AT_NSPECIAL);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX);
	}

	if(inputTimer != 0)	inputTimer --; else {inputNSpec = 0; inputFSpec = 0; inputUSpec = 0;}

	var canShoto = ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && state_timer == 1 || can_special || (attack < 16) && has_hit)

	if(state_timer == 1) has_hit = false;
	//Turn if back is held past 8 frames.
	if(shotoDir == 1 && left_down || shotoDir == -1 && right_down ) shotoDirHeld++;
	else shotoDirHeld = 0;
	//MoveInputs
	switch(inputNSpec2)
	{
		case 0: if(((right_down || right_stick_down) && shotoDir == -1 || (left_pressed || left_stick_pressed) && shotoDir == 1) && !(down_down || down_stick_down)) { inputNSpec2 = 1; inputTimer = 20;}
		case 1: if((down_down || down_stick_down) && 
		((right_pressed || right_stick_pressed) && shotoDir == -1 || (left_pressed || left_stick_pressed) && shotoDir == 1)) { inputNSpec2++;} break;
		case 2: if((down_down || down_stick_down)) { inputNSpec2++; inputTimer = 20;} break;
		case 3: if((down_down || down_stick_down) && 
		((right_pressed || right_stick_pressed) && shotoDir == 1 || (left_pressed || left_stick_pressed) && shotoDir == -1)) { inputNSpec2++;} break;
		case 4: if(((right_down || right_stick_down) && shotoDir == 1 || (left_down || left_stick_down) && shotoDir == -1) && !(down_down || down_stick_down) && shotoMove == 0 && canShoto && attack_pressed) {inputNSpec2 = 0; shotoMove = 69; clear_button_buffer(PC_ATTACK_PRESSED)} break;
	}
	switch(inputNSpec)
	{
		case 0: if((down_down || down_stick_down) && !((right_pressed || right_stick_pressed) && shotoDir == 1 || (left_pressed || left_stick_pressed) && shotoDir == -1)) { inputNSpec = 1; inputTimer = 20;}
		case 1: if((down_down || down_stick_down) && 
		((right_pressed || right_stick_pressed) && shotoDir == 1 || (left_pressed || left_stick_pressed) && shotoDir == -1)) { inputNSpec++;} break;
		case 2: if(((right_down || right_stick_down) && shotoDir == 1 || (left_down || left_stick_down) && shotoDir == -1) && !(down_down || down_stick_down) && shotoMove == 0 && canShoto && attack_pressed) {inputNSpec = 0; shotoMove = AT_NSPECIAL; clear_button_buffer(PC_ATTACK_PRESSED)} break;
	}
	switch(inputFSpec)
	{
		case 0: if((down_down || down_stick_down)) { inputFSpec = 1; inputTimer = 20;}
		case 1: if((down_down || down_stick_down) && 
		((right_pressed || right_stick_pressed) && shotoDir == -1 || (left_pressed || left_stick_pressed) && shotoDir == 1)) { inputFSpec++;} break;
		case 2: if(((right_down || right_stick_down) && shotoDir == -1 || (left_down || left_stick_down) && shotoDir == 1) && !(down_down || down_stick_down) && shotoMove == 0 && canShoto && attack_pressed) { inputFSpec = 0; shotoMove = AT_FSPECIAL; clear_button_buffer(PC_ATTACK_PRESSED)} break;
	}
	switch(inputUSpec)
	{
		case 0: if(((right_down || right_stick_down) && shotoDir == 1 || (left_down || left_stick_down) && shotoDir == -1) && !(down_down || down_stick_down)) { inputUSpec = 1; inputTimer = 20;}
		case 1: if((down_down || down_stick_down) && !((right_down || right_stick_down) && shotoDir == 1 || (left_down || left_stick_down) && shotoDir == -1)) { inputUSpec++;} break;
		case 2: if((down_down || down_stick_down) && 
		((right_pressed || right_stick_pressed) && shotoDir == 1 || (left_pressed || left_stick_pressed) && shotoDir == -1)) { inputUSpec++;} break;
		case 3: if(((right_down || right_stick_down) && shotoDir == 1 || (left_down || left_stick_down) && shotoDir == -1) && shotoMove == 0 && canShoto && attack_pressed) { inputUSpec = 0; shotoMove = AT_USPECIAL; clear_button_buffer(PC_ATTACK_PRESSED)} break;
	}
	if(shotoMoveBuffer != 0)
	{	shotoMoveBuffer --; if(shotoMoveBuffer == 1) shotoMove = 0; }
	if(shotoMove != 0 && shotoMoveBuffer == 0)
		shotoMoveBuffer = 6;
	if(canShoto && !hitpause && shotoMove != 0 && shotoMoveBuffer > 0)
	{ 
		for(i = 1; i < get_num_hitboxes(attack)+1; i++)
		{
			reset_hitbox_value(attack, i, HG_DAMAGE);
			set_hitbox_value(attack, i, HG_DAMAGE, ceil(get_hitbox_value(attack, i,  HG_DAMAGE) * 1.5));
		}
		if(shotoMove == 69)
		{
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_projfire"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 21);
			shotoMove = AT_NSPECIAL;
		}
		attack_end(); set_attack(shotoMove); shotoMove = 0; spr_dir = shotoDir; if(shotoDirHeld < 7)shotoTurnBuffer = 5; 
	}
}

if(get_gameplay_time() % 20 == 0) goalpha = -goalpha;
if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && state_timer == 1)
{				
	if(get_player_damage(player) >= 100 && lure_timer == 0 && has_rune("M"))
	{
		if(attack_pressed && special_pressed)
		{
			attack = 49;
			lure_timer = 120;
		}
	}
	//Explosion Size
	if(has_rune("A"))
	{
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 240);
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 240);
	}
	//USpecial
	if(has_rune("C"))
		set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 270);
	//Clairen
	if(has_rune("G"))
	{
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_NSPECIAL_2, 2, HG_EFFECT, 11);
	}
	//RyuTatsu
	if(has_rune("I"))
	{
		for(i = 1; i < get_num_hitboxes(AT_FSPECIAL)+1; i++)
		{
			set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT, 150);
			set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE_FLIPPER, 0);
			set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE, 90);
			set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 8);
			set_hitbox_value(AT_FSPECIAL, i, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_FSPECIAL, i, HG_KNOCKBACK_SCALING, 1);
			set_hitbox_value(AT_FSPECIAL, i, HG_BASE_HITPAUSE, 12);
			set_hitbox_value(AT_FSPECIAL, i, HG_HITPAUSE_SCALING, 1);
			set_hitbox_value(AT_FSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
			set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_GROUP, 1);
		}
	}
	//DMG ADJ
	if(has_rune("K"))
	{
		for(i = 1; i < get_num_hitboxes(attack)+1; i++)
		{
			reset_hitbox_value(attack, i, HG_DAMAGE);
			set_hitbox_value(attack, i, HG_DAMAGE, ceil(get_hitbox_value(attack, i,  HG_DAMAGE) * 1.2));
		}
	}
}
if(has_rune("N") && hit_player_obj != -4)
{
	if(hit_player_obj.activated_kill_effect)
	{
		fishe = 3;
		sound_play(sound_get("C-boom"));
		hit_player_obj = -4;
	}
}
if(fishe >= 0)
	fishe /= 1.1;
#endregion

/*/Taunt SFX
if(taunt_down && window == 1 && window_timer == 1)
{
	if (attack == AT_NSPECIAL) { if(get_player_color(player) == 24) sound_play(sound_get("nspecial")); else sound_play(sound_get("hado")); }
	if (attack == AT_FSPECIAL) { if(get_player_color(player) == 24) sound_play(sound_get("fspecial")); else sound_play(sound_get("tatsu")); }
	if (attack == AT_USPECIAL) { if(get_player_color(player) == 24) sound_play(sound_get("uspecial")); else sound_play(sound_get("shoru")); }
	if (attack == AT_EXTRA_1) sound_play(sound_get("dorya"));
}