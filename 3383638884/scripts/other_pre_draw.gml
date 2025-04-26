var game_time = get_gameplay_time();
if(game_time < 120) //intro, if it stops working for characters on lower slots decomment the intro thing in update and draw the sprites from here
{
	with(other_player_id)
	{
		var noise_intro = sprite_get("noise_intro");
		var pep_intro = sprite_get("peppino_intro");
		var peppino_sound = sound_get("scream_real_short");
	}
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

	if(game_time >= 120)
		entrance_done = true;
}

//special animation when grabbed by specific characters
switch (url) {
	case 12:
		//Clairen
		if(attack == AT_NSPECIAL && has_hit && state_timer < 40 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && other_player_id.hitpause)
			other_player_id.grabbed_by_player = 1;
		break;
	case 14:
		//Elliana
		if(attack == AT_UTILT && has_hit && window < 4 && state == PS_ATTACK_GROUND && other_player_id.state == PS_HITSTUN)
			other_player_id.grabbed_by_player = 2;
		break;
}
if(url == 3383638884)
{//Fake Peppino
	if(instance_exists(grabp) == 1)
	{
		if(grabp == other_player_id)
			other_player_id.grabbed_by_player = 1;
	}
}
else if(url == 2904498757)
{//Peppino
	if(attack == AT_FTHROW && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && has_hit)
	{
		for(var n = 0; n < array_length(grabbed); ++n )
		{
			if(grabbed[n].pid == other_player_id)
			{
				other_player_id.grabbed_by_player = 5;
				exit;
			}
		}
	}
}
else if(url == 2990315396)
{//the Noise
	if(grabbed_player_obj == other_player_id && state_timer < 33)
		other_player_id.grabbed_by_player = 4;
}
else if(url == 2593144115)
{//Amaya
	if(grabbed_player_obj == other_player_id)
		other_player_id.grabbed_by_player = 5;
}
else if(url == 3026000709)
{//Wes
	if(nspecial_target == other_player_id)
		other_player_id.grabbed_by_player = 6;
}
else if(url == 2249417003)
{//Ralsei (run)
	if(has_hit && state == PS_ATTACK_GROUND && attack == AT_DSTRONG)
		other_player_id.grabbed_by_player = 7;
}
else if(url == 2859393381)
{//Phoenix Wright
	if(attack == 31 || has_hit && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == 19 || attack == 41 || attack == 33 || attack == 49))
		other_player_id.grabbed_by_player = 8;
}
else if(url == 1868756032)
{	//Kirby update
	if (current_ability == 16 && attack == AT_EXTRA_3 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
	{
		can_fast_fall = false;
		switch(window) {
			case 1:
				hsp = 9 * spr_dir * (window_timer / 25);
				break;
			case 2:
				if(window_timer == 9)
					window_timer = 1;
				if(window_timer < 3)
					draw_sprite_ext(sprite_index, image_index, x - (hsp * 3), y - (vsp * 4), spr_dir, 1, 0, $FFFFFF, 0.8);
				else if(window_timer < 6)
					draw_sprite_ext(sprite_index, image_index, x - (hsp * 5), y - (vsp * 5), spr_dir, 1, 0, $FFFFFF, 0.6);
				else
				{
					draw_sprite_ext(sprite_index, image_index, x - (hsp * 8), y - (vsp * 7), spr_dir, 1, 0, $FFFFFF, 0.3);
					draw_sprite_ext(sprite_index, image_index, x - (hsp * 2), y - (vsp * 3), spr_dir, 1, 0, $FFFFFF, 0.9);
				}
				if(special_pressed)
				{
					window = 3;
					window_timer = 0;
				}
				else
				{
					if(djumps < max_djumps && jump_pressed)
					{
						djumps++;
						set_state(PS_JUMPSQUAT);
					}
					else if(shield_pressed && (!free || has_airdodge))
					{
						if(!free)
							set_state(PS_PARRY_START);
						else
							set_state(PS_AIR_DODGE);
					}
					else if(attack_pressed && state_timer > 26)
					{
						if(free)
							set_attack(AT_NAIR);
						else
							set_attack(AT_DATTACK);
					}
				}
				break;
			case 3:
				hsp = 0;
				vsp = 0;
				if(window_timer < 20 && (right_down ^ left_down))
				{	
					if(right_down)
						spr_dir = 1;
					else
						spr_dir = -1;
				}
				super_armor = true;
				break;
			case 4:
				vsp = 8;
				super_armor = false;
				if(random_func( 0, 1, false) < 0.334)
					gpu_set_fog(1, $0000FF, 0, 1);
				else if(random_func( 1, 1, false) < 0.5)
					gpu_set_fog(1, $00FF00, 0, 1);
				else
					gpu_set_fog(1, $FF0000, 0, 1);
				draw_sprite_ext(sprite_index, image_index, x - (hsp * (2 + random_func( 3, 5, false ))), y - (free * vsp * random_func( 4, 6, false )), spr_dir, 1, 0, $FFFFFF, 0.7);
				gpu_set_fog(0, c_white, 0, 0);
				break;
			case 5:
				hsp = 0;
				vsp = 0;
				if(window_timer > 13)
					vsp = -9;
				break;
		}
	}
}
