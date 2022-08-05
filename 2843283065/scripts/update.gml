// DRAGON BALL POSITIONS
for (var i=0; i<array_length_1d(dragon_ball_owners); i++)
{
	if (dragon_ball_owners[i] > 0)
	{
		dragon_ball_x[i] = player_x[(dragon_ball_owners[i])]
		dragon_ball_x[i] -= i * -12
		dragon_ball_x[i] -= 36
		dragon_ball_y[i] = player_y[(dragon_ball_owners[i])]
		dragon_ball_y[i] -= player_height[dragon_ball_owners[i]] + 15
	}
	else if (dragon_ball_owners[i] == -1)
	{
		if (flying_nimbus_dir == 1)
		{
			dragon_ball_x[i] = flying_nimbus_x
		}
		else
		{
			if (!use_old_nimbus)
			{
				dragon_ball_x[i] = flying_nimbus_x
			}
			else
			{
				dragon_ball_x[i] = flying_nimbus_x
			}
		}
		dragon_ball_y[i] = flying_nimbus_y
	}
	else if (dragon_ball_owners[i] == -2)
	{
		dragon_ball_x[i] = -1000
		dragon_ball_y[i] = -1000
	}
}

// DRAGON BALL QUEUE
dragon_balls_in_queue = false
dragon_ball_on_nimbus = false
queuing_dragon_balls = []
queue_index = 0
for (var i=0;i<array_length_1d(dragon_ball_owners);i++)
{
	if (dragon_ball_owners[i] == -1)
	{
		dragon_ball_on_nimbus = true
		dragon_ball_lifetime[i] = 600
		dragon_balls_in_queue = true
	}
	if (dragon_ball_owners[i] == -2)
	{
		dragon_balls_in_queue = true
		queuing_dragon_balls[queue_index] = i
		queue_index++
	}
	if (dragon_ball_owners[i] == 0)
	{
		dragon_ball_lifetime[i]--
		if (dragon_ball_lifetime[i] <= 0)
		{
			dragon_ball_owners[i] = -2
		}
	}
	else
	{
		dragon_ball_lifetime[i] = 600
	}
}
if (array_length_1d(queuing_dragon_balls) != 0 && randomize_dragon_balls)
{
	random_from_queue = queuing_dragon_balls[random_func(0, array_length_1d(queuing_dragon_balls), 1)]
}
else
{
	random_from_queue = 0
}

// FLYING NIMBUS
if (true)
{
	if (flying_nimbus_y > get_stage_data(SD_Y_POS))
	{
		flying_nimbus_fallspeed += 0.125
	}
	flying_nimbus_y += flying_nimbus_fallspeed
	flying_nimbus_x += (0.5 - flying_nimbus_dir) * 2
	if (flying_nimbus_x < get_stage_data(SD_X_POS))
	{
		flying_nimbus_dir = 0
	}
	if (flying_nimbus_x > room_width - get_stage_data(SD_X_POS))
	{
		flying_nimbus_dir = 1
	}
	if (flying_nimbus_y > room_height + 50 && wish_made == false && !dragon_active && dragon_balls_in_queue)
	{
		flying_nimbus_dir = (flying_nimbus_x + random_func(6, 255, 1)) % 2
		flying_nimbus_y = -50
		flying_nimbus_fallspeed = 3
		if (flying_nimbus_dir == 1)
		{
			flying_nimbus_x = random_func_2(6, get_stage_data(SD_WIDTH), 1) + (get_stage_data(SD_X_POS) * 1.5)
		}
		else
		{
			flying_nimbus_x = random_func_2(6, get_stage_data(SD_WIDTH), 1) + (get_stage_data(SD_X_POS) * 1.5)
		}
		for (var i=0;i<array_length_1d(dragon_ball_owners);i++)
		{
			if (dragon_ball_owners[i] == -1)
			{
				dragon_ball_owners[i] = -2
				break;
			}
		}
		if (dragon_ball_taken)
		{
			if (!randomize_dragon_balls)
			{
				for (var i=0;i<array_length_1d(dragon_ball_owners);i++)
				{
					if (dragon_ball_owners[i] == -2 && !dragon_ball_on_nimbus)
					{
						dragon_ball_owners[i] = -1
						break;
					}
				}
			}
			else
			{
				if (dragon_ball_owners[random_from_queue] == -2 && !dragon_ball_on_nimbus)
				{
					dragon_ball_owners[random_from_queue] = -1
				}
			}
		}
	}
}
else if (flying_nimbus_dir == 1)
{
	flying_nimbus_x += 3
	if (flying_nimbus_x > room_width - get_stage_data( SD_X_POS ) + 500 && wish_made == false && !dragon_active && dragon_balls_in_queue)
	{
		flying_nimbus_dir = flying_nimbus_y % 2
		if (flying_nimbus_dir == 1)
		{
			flying_nimbus_x = -500
		}
		else
		{
			flying_nimbus_x = room_width + 500
		}
		flying_nimbus_y = 250 + random_func(6, get_stage_data(SD_Y_POS) - 250, 1)
		if (dragon_ball_taken)
		{
			if (!randomize_dragon_balls)
			{
				for (var i=0;i<array_length_1d(dragon_ball_owners);i++)
				{
					if (dragon_ball_owners[i] == -2 && !dragon_ball_on_nimbus)
					{
						dragon_ball_owners[i] = -1
						break;
					}
				}
			}
			else
			{
				if (dragon_ball_owners[random_from_queue] == -2 && !dragon_ball_on_nimbus)
				{
					dragon_ball_owners[random_from_queue] = -1
				}
			}
		}
	}
}
else
{
	flying_nimbus_x -= 3
	if (flying_nimbus_x < -500 + get_stage_data( SD_X_POS ) && wish_made == false && !dragon_active && dragon_balls_in_queue)
	{
		flying_nimbus_dir = flying_nimbus_y % 2
		if (flying_nimbus_dir == 1)
		{
			flying_nimbus_x = -500
		}
		else
		{
			flying_nimbus_x = room_width + 500
		}
		flying_nimbus_y = 250 + random_func(6, get_stage_data(SD_Y_POS) - 250, 1)
		if (dragon_ball_taken)
		{
			if (!randomize_dragon_balls)
			{
				for (var i=0;i<array_length_1d(dragon_ball_owners);i++)
				{
					if (dragon_ball_owners[i] == -2 && !dragon_ball_on_nimbus)
					{
						dragon_ball_owners[i] = -1
						break;
					}
				}
			}
			else
			{
				if (dragon_ball_owners[random_from_queue] == -2 && !dragon_ball_on_nimbus)
				{
					dragon_ball_owners[random_from_queue] = -1
				}
			}
		}
	}
}

if (wish_made)
{
	dragon_ball_owners = [-2,-2,-2,-2,-2,-2,-2]
}

// DEBUG PRINTS
//print("NIM_X: " + string(flying_nimbus_x))
//print("NIM_Y: " + string(flying_nimbus_y))
//print("X: " + string(dragon_ball_x))
//print("Y: " + string(dragon_ball_y))
//print("OWNERS: " + string(dragon_ball_owners))
//print("QUEUED: " + string(queuing_dragon_balls))
//print("RAND FROM QUEUE: " + string(random_from_queue))
//print("LIFETIMES: " + string(dragon_ball_lifetime))

//DRAMATIC FINISH
if (dramatic_finish)
{
	dramatic_finish_time++
	dragon_ball_owners = [-2,-2,-2,-2,-2,-2,-2]
}

dramatic_finish_checksum = 0
for (var i=0;i<array_length_1d(player_stocks);i++)
{
	if (is_player_on(i + 1))
	{
		player_stocks[i] = get_player_stocks(i + 1)
	}
	else
	{
		player_stocks[i] = 0
	}
	if (player_stocks[i] > 0)
	{
		dramatic_finish_checksum++
	}
}

with (oPlayer)
{
	if ((player == 1 || player == 2 || player == 3 || player == 4) && !clone)
	{
		if (y < 10 && state == PS_HITSTUN && !other.dramatic_finish && other.enable_dramatic_finish && (other.dramatic_finish_checksum == 2 || get_match_setting(SET_PRACTICE)) && (get_player_stocks(player) == 1 || get_match_setting(SET_PRACTICE)) && other.wish_made)
		{
			print("DRAMATIC FINISH!")
			other.dramatic_finish = true
			other.dramatic_finished_player = player
			other.dramatic_finish_url = real(url)
			if (real(url) > 20)
			{
				other.dramatic_finish_player_sprite = get_char_info(player, INFO_PORTRAIT)
			}
		}
		if (other.dramatic_finish)
		{
			if (player == other.dramatic_finished_player && other.dramatic_finish_time > 520)
			{
				vsp = 0
				hsp = 0
				x = room_width / 2
				y = room_height + 1000
				set_state(PS_HITSTUN)
				if (get_match_setting(SET_PRACTICE))
				{
					other.dramatic_finish = false
					other.dramatic_finish_time = 0
				}
			}
			else
			{
				vsp = 0
				hsp = 0
				x = room_width / 2
				y = get_stage_data(SD_Y_POS)
				set_state(PS_IDLE_AIR)
			}
		}
		if (state == PS_DEAD || state == PS_RESPAWN)
		{
			for (var i=0;i<array_length_1d(other.dragon_ball_owners);i++)
			{
				if (other.dragon_ball_owners[i] == player && other.dragon_ball_owners[i] != -1)
				{
					other.dragon_ball_owners[i] = -2
				}
			}
		}
		other.player_x[player] = x
		other.player_y[player] = y
		other.player_height[player] = char_height

		if (other.wish == "faster_strongs" && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && other.wishing_player == player)
		{
			strong_charge = 60
		}
		if (other.wish == "five_more_jumps" && djumps >= max_djumps && other.extra_jumps > 0 && other.wishing_player == player)
		{
			other.extra_jumps--
			djumps--
		}
		if (player == other.wishing_player && other.wish == "five_more_jumps" && free && !other.aerial_strong_used && (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || (state == PS_ATTACK_AIR && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG)))
		{
			if (right_strong_down || (strong_down && right_down))
			{
				spr_dir = 1
				set_attack(AT_FSTRONG)
				other.aerial_strong_used = true
			}
			else if (left_strong_down || (strong_down && left_down))
			{
				spr_dir = -1
				set_attack(AT_FSTRONG)
				other.aerial_strong_used = true
			}
			else if (down_strong_down || (strong_down && down_down))
			{
				set_attack(AT_DSTRONG)
				other.aerial_strong_used = true
			}
			else if (up_strong_down || (strong_down && up_down))
			{
				set_attack(AT_USTRONG)
				other.aerial_strong_used = true
			}
		}
		if (player == other.wishing_player && other.wish == "five_more_jumps" && state == PS_ATTACK_AIR && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG))
		{
			vsp = 0
			hsp = 0
		}
		if (!free && other.wishing_player == player)
		{
			other.extra_jumps = 5
			other.aerial_strong_used = false
		}
		for (var i=0;i<array_length_1d(other.four_list) + 3;i++)
		{
			if (other.dragon_ball_owners[i] != -2)
			{
				if (point_distance( x, y - char_height / 2, other.dragon_ball_x[i], other.dragon_ball_y[i] ) < 75 && state != PS_HITSTUN && state != PS_DEAD && state != PS_RESPAWN)
				{
					if (other.dragon_ball_owners[i] == 0 || other.dragon_ball_owners[i] == -1)
					{
						if (other.dragon_ball_owners[i] == -1)
						{
							//other.dragon_ball_backlog--
							other.dragon_ball_taken = true
							other.flying_nimbus_y = room_height + 2500
						}
						other.dragon_ball_owners[i] = player
					}
				}
			}
		}
		if (has_hit_player && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG))
		{
			attempt_summon()
		}
		if (taunt_pressed && state == PS_ATTACK_GROUND && get_match_setting(SET_PRACTICE) && !other.dragon_summoning && !other.dragon_active && !other.wish_made)
		{
			other.dragon_ball_owners = [player, player, player, -1, player, player, player]
			other.flying_nimbus_dir = 0.5
			other.flying_nimbus_x = ease_linear( get_stage_data( SD_X_POS ), room_width - get_stage_data( SD_X_POS ), 1, 2 )
			other.flying_nimbus_y = 0
		}
		if (state != PS_HITSTUN && state != PS_TUMBLE)
		{
			lost_ball = false
		}
		if (state == PS_HITSTUN)
		{
			if (lost_ball == false && !other.dragon_active && !other.dragon_summoning)
			{
				lose_dragon_ball()
			}
			lost_ball = true
		}
	}
}

if (immortality_clock < 60)
{
	immortality_clock++
}
else
{
	if (wish == "immortality" && get_player_damage(wishing_player) > 0)
	{
		set_player_damage( wishing_player, get_player_damage(wishing_player) - 1 )
		immortality_clock -= 60
	}
}

if (wishing_time == 0)
{
	disappear_progress++
	if (disappear_progress == 80 && (wish != "" || beerus))
	{
		randval = random_func(0, 1, 1)
		if (beerus)
		{
			//sound_play( sound_get("farewell_beerus") )
		}
		else if (randval == 1)
		{
			//sound_play( sound_get("farewell_1") )
		}
		else
		{
			//sound_play( sound_get("farewell_2") )
		}
	}
	if (disappear_progress == 140)
	{
		disappear_sound()
	}
}

if (dragon_active)
{
	summon_progress++
	with (oPlayer)
	{
		if (player == other.wishing_player && (player == 1 || player == 2 || player == 3 || player == 4) && !clone)
		{
			other.wishing_player_x = x
			other.wishing_player_y = y
			if (!free)
			{
				invincible = true
				invince_time = 30
				if (url == 2184122215)
				{
					set_state(PS_IDLE)
				}
				else
				{
					set_state(PS_CROUCH)
				}
				hsp = 0
				if (up_down && get_match_setting(SET_STOCKS) != 0 && get_match_setting(SET_PRACTICE) == false)
				{
					other.wish_index = 1
				}
				else if (down_down)
				{
					other.wish_index = 2
				}
				else if (left_down)
				{
					other.wish_index = 3
				}
				else if (right_down)
				{
					other.wish_index = 4
				}
				if (other.wishing_time > 0)
				{
					other.wishing_time--
				}
				else
				{
					other.wishing_time = 0
					if (other.wish_index == 0)
					{
						other.wish_made = true
						other.dragon_active = false
						//other.no_wishes()
					}
					if (other.wish_index == 1)
					{
						set_player_stocks( player, get_player_stocks( player ) + 1 );
						other.wish_made = true
						other.wish = "extra_life"
						other.dragon_active = false
						other.play_one_up()
						//other.wish_made_sound()
						
					}
					if (other.wish_index == 2)
					{
						other.wish_made = true
						other.wish = "immortality"
						other.dragon_active = false
						//other.wish_made_sound()
					}
					if (other.wish_index == 3)
					{
						other.wish_made = true
						other.wish = "faster_strongs"
						other.dragon_active = false
						//other.wish_made_sound()
					}
					if (other.wish_index == 4)
					{
						other.wish_made = true
						other.wish = "five_more_jumps"
						other.dragon_active = false
						//other.wish_made_sound()
					}
				}
			}
			else
			{
				if (other.wishing_time > 0)
				{
					other.wishing_time -= 0.5
				}
				else
				{
					if (other.wish_index == 0)
					{
						other.wish_made = true
						other.dragon_active = false
						//other.no_wishes()
					}
				}
			}
		}
	}
}
else if (dragon_summoning)
{
	if (summon_progress == 0)
	{
		summon_sound()
	}
	summon_progress++
	if (summon_progress > 240)
	{
		with (oPlayer)
		{
			if ((player == 1 || player == 2 || player == 3 || player == 4) && !clone)
			{
				spawn_shenron()
			}
		}
	}
}

#define summon_shenron()
{
	if (other.wish_made == false && !other.dragon_active && !other.dragon_summoning)
	{
		other.wishing_url = url
		if (url == 2184122215)
		{
			other.beerus = true
			print("Lord Beerus?!")
		}
		else
		{
			other.beerus = false
		}
		other.wishing_time = 300
		other.wish = ""
		other.wish_index = 0
		other.wishing_player = player;
		other.dragon_summoning = true
		other.summon_speed = 0
		print("NOVA APPROACHING")
		other.summon_speed = 5
		other.summon_progress = 0
		other.disappear_progress = 0
		other.dragon_ball_owners = [-2, -2, -2, -2, -2, -2, -2]
		other.play_siren()
	}
}

#define spawn_shenron()
{
	other.dragon_summoning = false;
	other.dragon_active = true;
	print("NOVA SUMMONED")
	//other.state_your_wish()
}

#define state_your_wish()
{
	randval = random_func(0, 2, 1)
	if (beerus)
	{
		sound_play( sound_get("state_beerus") )
	}
	else if (randval == 1)
	{
		sound_play( sound_get("state_1") )
	}
	else if (randval == 2)
	{
		sound_play( sound_get("state_2") )
	}
	else
	{
		sound_play( sound_get("state_3") )
	}
}

#define no_wishes()
{
	randval = random_func(0, 1, 1)
	if (beerus)
	{
		
	}
	else if (randval == 1)
	{
		sound_play( sound_get("no_wish_1") )
	}
	else
	{
		sound_play( sound_get("no_wish_2") )
	}
}

#define wish_made_sound()
{
	randval = random_func(0, 2, 1)
	if (beerus)
	{
		sound_play( sound_get("made_beerus") )
	}
	else if (randval == 1)
	{
		sound_play( sound_get("made_1") )
	}
	else if (randval == 2)
	{
		sound_play( sound_get("made_2") )
	}
	else
	{
		sound_play( sound_get("made_3") )
	}
}

#define summon_sound()
{
	sound_play( sound_get("shenron_appear") )
}

#define disappear_sound()
{
	sound_play( sound_get("shenron_disappear") )
}

#define lose_dragon_ball()
{
	for (var i=0;i<array_length_1d(other.dragon_ball_owners);i++)
	{
		if (other.dragon_ball_owners[i] == player)
		{
			other.dragon_ball_owners[i] = 0
			break;
		}
	}
}

#define summon_voice()
{
	if (wishing_url == 2606413637 && voice_info == 1)
	{
		sound_play( sound_get("goku_en_summon") )
		// Muno's Goku - English Voice
	}
	if (wishing_url == 2606413637 && voice_info == 2)
	{
		sound_play( sound_get("goku_jp_summon") )
		// Muno's Goku - Japanese Voice
	}
	if (wishing_url == 1956300176 || wishing_url == 1870393754 || wishing_url == 2070790536)
	{
		sound_play( sound_get("goku_en_summon") )
		// Hinata's Goku, santa's DBS Goku, and Will_DTN's DBS SSB Goku
	}
	if (wishing_url == 2444765261)
	{
		sound_play( sound_get("yamcha_summon") )
		// MDL4848-'s Goku
		// DEV NOTE: I know it's a weird choice in voice actor, but this particular Goku has a different voice actor from the rest, so I used the closest voice I could find.
	}
	if (wishing_url == 1921693985)
	{
		sound_play( sound_get("goku_gt_jp_summon") )
		// Beedrill's Kid Goku (Japanese SFX)
	}
	if (wishing_url == 2571702574)
	{
		sound_play( sound_get("goku_ui_summon") )
		// DLshadows' UI Goku
	}
	if (wishing_url == 2184122215)
	{
		sound_play( sound_get("beerus_summon") )
		// MDL4848-'s Beerus
	}
	if (wishing_url == 2656779051)
	{
		sound_play( sound_get("vegeta_ss_summon") )
		// DLshadows' Vegeta
	}
	if (wishing_url == 1891386838)
	{
		sound_play( sound_get("android_21_summon") )
		// God's Strongest Warrior's Majin Android 21
	}
	if (wishing_url == 2010815674 || wishing_url == 2599985357)
	{
		sound_play( sound_get("gohan_adult_summon") )
		// Wabbles' Gohan (Future), and MDL4848-'s Gohan
	}
	if (wishing_url == 2561615071)
	{
		sound_play( sound_get("nappa_summon") )
		// TheMH06's Nappa
	}
	if (wishing_url == 2790121377 || wishing_url == 2601866973 || wishing_url == 2614084903)
	{
		sound_play( sound_get("gogeta_ssgss_summon") )
		// LTSaim's Gogeta, Lockon's Gogeta, and DLshadows' Gogeta
	}
	if (wishing_url == 2824667862)
	{
		sound_play( sound_get("gogeta_ss4_summon") )
		// DLshadows' SSJ4Gogeta
	}
	if (wishing_url == 2498050066)
	{
		sound_play( sound_get("hit_summon") )
		// DLshadows' Hit
	}
	if (wishing_url == 2652404567 || wishing_url == 2228497953)
	{
		sound_play( sound_get("cell_summon") )
		// LTSaim's Perfect Cell, and Pivot's Perfect Cell
	}
	if (wishing_url == -1 && voice_info == 1)
	{
		sound_play( sound_get("frieza_en_summon") )
		// Smash_Bash & NinjaBash's Frieza - English Voice
	}
	if (wishing_url == -1 && voice_info == 2)
	{
		sound_play( sound_get("frieza_jp_summon") )
		// Smash_Bash & NinjaBash's Frieza - Japanese Voice
	}
}

#define attempt_summon()
{
	var count = 0
	for (var i=0;i<array_length_1d(other.dragon_ball_owners);i++)
	{
		if (other.dragon_ball_owners[i] == player)
		{
			count++
		}
	}
	if (count == 7)
	{
		summon_shenron()
		other.wishing_url = url
		if (url == 2606413637 || url == -1)
		{
			if (get_synced_var(player) == 1)
			{
				other.voice_info = 1
			}
			else if (get_synced_var(player) == 2)
			{
				other.voice_info = 2
			}
		}
		else
		{
			
		}
		//other.summon_voice()
	}
}

#define play_siren()
{
	sound_play( sound_get( "siren_loud" ) )
	sound_play( sound_get( "summon_start" ) )
}

#define play_one_up()
{
	sound_play( sound_get( "1up" ) )
}

#define play_flight()
{
	sound_play( sound_get( "fly" ) )
}