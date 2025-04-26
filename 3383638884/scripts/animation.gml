if(!entrance_done) //intro
{
	var game_time = get_gameplay_time();

	sprite_index = sprite_get("intro");
	if(game_time < 33)
		image_index = 0;
	else if(game_time < 38)
		image_index = 1;
	else if(game_time < 58)
		image_index = 2;
	else if(game_time < 62)
		image_index = 3;
	else if(game_time < 66)
		image_index = 4;
	else if(game_time < 71)
		image_index = 5;
	else if(game_time < 76)
		image_index = 6;
	else if(game_time < 81)
		image_index = 7;
	else if(game_time < 86)
		image_index = 5;
	else if(game_time < 91)
		image_index = 6;
	else if(game_time < 96)
		image_index = 7;
	else if(game_time < 100)
		image_index = 8;
	else if(game_time < 104)
		image_index = 9;
	else
		image_index = 10;

	if(game_time > 57 && game_time < 100)
	{
		charHeightOffset = 26;
		charHeightDestination = 26;
	}

	if(game_time == 57)
		sound_play(sound_get("scream_short"));

	/*
	var noise_intro = sprite_get("noise_intro");
	var pep_intro = sprite_get("peppino_intro");
	var peppino_sound = sound_get("scream_real_short");
	with(oPlayer)
	{
		if("url" in self)
		{
			if(url == 2990315396) //noise intro
			{
				if(game_time == 1)
					set_state(PS_SPAWN);
	
				sprite_index = noise_intro;	

				if(game_time < 40)
					image_index = floor((game_time/4)%4) - 2*(floor((game_time/4)%4) == 3);
				else if(game_time < 65)
					image_index = 3 + min(3, (floor((game_time-40)/3)));
				else
					image_index = 6 + min(5, (floor((game_time-65)/4)));
			}
			else if(url == 2904498757) //peppino intro
			{
				sprite_index = pep_intro;
				
				if(game_time < 33)
					image_index = floor((game_time/4)%4);
				else if(game_time < 58)
					image_index = 4 + (game_time > 38);
				else if(game_time < 66)
					image_index = 6 + (game_time > 60);
				else
					image_index = 8 + floor((game_time/4)%3);
					
				if(game_time == 57)
					sound_play(peppino_sound);
			}
		}
	}
	*/
	if(game_time >= 120)
		entrance_done = true;
}

if(has_supertaunt && sprite_index == sprite_get("idle"))
{
	sprite_index = sprite_get("s_taunt_idle");
	image_index = round(get_gameplay_time() / 6)%6;
}

attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);

//stuff idk
if(state == PS_WALL_JUMP)
{
	draw_x = spr_dir;

	if(state_timer == 0)
		walljump_jump_time = 1;
	else if(clinging)
	{
		walljump_jump_time = state_timer;
		image_index = min(floor((walljump_jump_time) / 5), 4);
	}
	else
	{
		image_index = max(5, min(9, floor((state_timer + 10 - walljump_jump_time)/3)));
		draw_x = -spr_dir * max(0, min(12, floor(((state_timer - walljump_jump_time)/30) * 12)));
		//if(state_timer == walljump_jump_time + 1)
		//	spawn_base_dust(x-1*spr_dir, y, "djump", spr_dir); <-- in woag's animation.gml
	}
}
if(uair_pratfall && state == PS_PRATFALL)
	sprite_index = sprite_get("uair_pratfall");
if(parried_spr && (state == PS_PARRY_START || state == PS_PARRY))
	sprite_index = sprite_get("parried");
if(attack = AT_NSPECIAL && attacking)
{
	if(was_parried)
		sprite_index = sprite_get("parry_taunt");
	else if(taunt_index == -1)
		sprite_index = sprite_get("peddito_taunt");
	else
		image_index = taunt_index;
}
if(hitpause && has_hit_player)
{
	switch(attack) {
		case 43:
			image_index = 12;
			break;
		case AT_DSPECIAL:
			image_index = 16;
			break;
		case AT_DSTRONG:
			image_index = 4;
			break;
		case AT_JAB:
			switch(window){
				case 1: case 2:
					image_index = 2;
					break;
				case 3: case 4:
					image_index = 8;
					break;
				case 5: case 6: case 7:
					image_index = 15;
					break;
			}
			break;
	}
}
if(attacking && attack == AT_USPECIAL && window == 2)
{
	if(walkAnim)
		image_index = 2 + (round(state_timer / 8)) % 4;
	if((uspec_charge + 11) % 12 < 3)
		sprite_index = sprite_get("uspecial_glow");
}
//hurt animations
if (sprite_index == sprite_get("downhurt"))
	image_index = image_index == 0;
if(state == PS_WRAPPED || state == PS_FROZEN)
	sprite_index = sprite_get("stun");
if(state == PS_CRYSTALIZED)
	sprite_index = sprite_get("crystalized");
if(state == PS_HITSTUN || state == PS_HITSTUN_LAND)
{
	//if you want to have Fake Peppino use the special stun sprite (stun.png in sprites) while in hitstun, set grabbed_by_player to anything greater than 0 on every frame you want it; 
	//some values have special properties, listed below:
	if(grabbed_by_player > 0)
	{
		sprite_index = sprite_get("stun");
		switch(grabbed_by_player){
			case 1:
				//Fake Peppino's grabdash
				draw_y = 10;
				draw_x = spr_dir * 3;
				break;
			case 2:
				//Fake Peppino's fstrong
				draw_y = 10;
				break;
			case 3:
				//Clairen's nspecial
				draw_y = -10;
				break;
			case 4:
				//Elliana's utilt
				draw_y = -10;
				draw_x = spr_dir * 6;
				break;
			case 5:
				//Peppino's fspecial
				draw_x = spr_dir * 2;
				break;
			case 6:
				//Noise's fstrong
				break;
			case 7:
				//Amaya's ftilt
				break;
			case 8:
				//Wes' nspecial
				break;
			case 9:
				//Ralsei's dstrong
				break;
			case 10:
				//Phoenix Wright's nspecial
				break;
		}
		if((grabbed_by_player != 9 && grabbed_by_player != 10) || !hitpause)
			grabbed_by_player = 0;
	}
	else if(bubbled || plasma_pause || (stuck && state == PS_HITSTUN_LAND) || (hitpause_shock && !free))
		sprite_index = sprite_get("stun");
}

//afterimage mode
switch(phone_cheats[CHEAT_AFTERIMAGE]){
	case 0:
		afterimage_mode = 1;
		if(attack == AT_GRABDASH && attacking && window > 2 && window < 6)
			afterimage_mode = 3;
		else if(attacking && attack == AT_UAIR && vsp < 0 && dash_timer == 0)
			afterimage_mode = 3;
		else if((attack == AT_NSPECIAL || attack == AT_SUPERTAUNT) && attacking)
			afterimage_mode = 0;
		else if(dash_timer > 0 && attack != AT_GRABDASH)
			afterimage_mode = 2;
		else if(attack == AT_DSPECIAL && window == 4 && attacking)
			afterimage_mode = 3;
		else if(attack == AT_DAIR && (window == 4 || window == 5) && attacking)
			afterimage_mode = 3;
		break;
	case 1:
		afterimage_mode = 2;
		break;
	case 2:
		afterimage_mode = 3;
		break;
	case 3:
		afterimage_mode = 1;
		break;
}
