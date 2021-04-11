if (practiceinit && !stupidbossbool && object_index != oTestPlayer && get_gameplay_time() > 120) // Tutorial
{
	if (muteaplha == 0)
	{
		tutalpha = clamp(tutalpha+(tuton?0.1:-0.1), 0, 1);
		if (tutalpha == 0)
		{
			if (tuttimer <= 0)
			{
				if (tutstate == 1 && tutstatebuffer == 2 || tutstate == 2 && tutstatebuffer == 1)
					aura = false;
				else
					tutmenu = 0;
				tutstate = tutstatebuffer;
				tuton = true;
				as_charging = false;
			}
			else
			{
				--tuttimer;
			}
		}
		switch (tutstate)
		{
		case 0:
			if (taunt_pressed)
			{
				tuton = false;
				tutstatebuffer = 3;
			}
			break;
		case 1:
			tutorialPerish();
			if (shield_pressed)
			{
				clear_button_buffer(PC_SHIELD_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 0;
			}
			else if (special_pressed)
			{
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 3;
			}
			else if (attack_pressed)
			{
				clear_button_buffer(PC_ATTACK_PRESSED);
				sound_play(asset_get("mfx_confirm"));
				tuton = false;
				tutstatebuffer = 2;
				techdone[tutmenu] = false;
				tutpart = 0;
			}
			else if (!practice && tuton)
			{
				tuton = false;
				tutstatebuffer = 0;
				sound_play(asset_get("mfx_tut_fail"));
			}
			else
			{
				menuNav(nooftechs);
			}
			break;
		case 2:
			if (tuton)
			{
				if (techdone[tutmenu])
				{
					tuton = false;
					tutstatebuffer = 1;
					sound_play(asset_get("mfx_player_found"));
					tuttimer = 60;
				}
				else if (taunt_pressed)
				{
					tuton = false;
					tutstatebuffer = 1;
					sound_play(asset_get("mfx_back"));
				}
				else if (!practice && tuton)
				{
					tuton = false;
					tutstatebuffer = 0;
					sound_play(asset_get("mfx_tut_fail"));
				}
			}
			switch (tutmenu)
			{
			case 0:
				tutstring = "Use DSPEC to create a clone and then fire and uncharged NSPEC at the clone at close range.";
				tutstring2 = "This will move the clone a certain distance from where you fired NSPEC. The clone's lifetime will be reset too.";
				break;
			case 1:
				tutstring = "With Fakie USPEC, turn around by holding the opposite direction.";
				tutstring2 = "You turn the frame before you transform. This works even if you hit the opponent with USPEC.";
				if (!free) aura = true;
				break;
			case 2:
				tutstring = "Use Fakie USPEC and hold Special.";
				tutstring2 = "You will recover similar to Absa.";
				if (!free) aura = true;
				break;
			case 3:
				tutstring = "Hit the opponent with NSPEC charging hitbox and then jump.";
				tutstring2 = "This is a few frames faster than normal NSPEC Jump Cancel.";
				break;
			case 4:
				tutstring = "Perform NSPEC B reverse while you have speed.";
				tutstring2 = "This will reverse your direction AND horizontal speed.";
				break;
			case 5:
				tutstring = "Lightly tap Special with fakie.";
				tutstring2 = "This will let you use a non-fakie NSPEC.";
				aura = true;
				break;
			case 6:
				tutstring = "Drop through the platform while charging NSPEC by pressing Down.";
				tutstring2 = "";
				if (attack != AT_NSPECIAL || !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
				{
					x = 480;
					y = 400;
					hsp = 0;
					vsp = 0;
				}
				break;
			case 7:
				tutstring = "FSPEC and then press Up or Down to angle it.";
				tutstring2 = "Try to hit the opponent with FSPEC by angling up.";
				with  (oPlayer)
				{
					if (player == other.player)
					{
						if (!((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL))
						{
							if (!free)
							{
								if (y == 496)
								{
									x = 520;
								}
								else if (y == 400)
								{
									x = 520;
									y = 496;
								}
								hsp = 0;
								vsp = 0;
							}
						}
					}
					else
					{
						x = 780;
						y = 350;
					}
				}
				break;
			case 8:
				if (tutpart == 0)
					tutstring = "Cancel Fakie FSPEC with a walljump before the end of the move.";
				else
					tutstring = "Cancel Fakie USPEC with a walljump before the end of the move.";
				tutstring2 = "This will let you keep Fakie while recovering.";
				if (aura && state == PS_WALL_JUMP && (attack == AT_FSPECIAL || attack == AT_USPECIAL) && (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND))
				{
					if (tutpart == 0 && attack == AT_FSPECIAL)
					{
						tutpart = 1;
						sound_play(asset_get("mfx_player_found"));
					}
					else if (tutpart == 1 && attack == AT_USPECIAL)
						techdone[8] = true;
				}
				if (!free)
				{
					aura = true;
				}
				break;
			case 9:
				if (tutpart == 0)
				{
					tutstring = "Use USPEC to teleport onto the platform.";
					tutstring2 = "Tap Special to teleport onto the platform.";
				}
				else if (tutpart == 1)
				{
					tutstring = "Use USPEC to teleport through the platform.";
					tutstring2 = "Hold Special to teleport through the platform.";
				}

				if (!((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL))
				{
					hsp = 0;
					vsp = 0;
					x = 450;
					y = 350;
					if (state == PS_PRATFALL)
						set_state(PS_IDLE_AIR);
				}
				else if (!free)
				{
					if (tutpart == 0 && !freemd)
					{
						tutpart = 1;
						sound_play(asset_get("mfx_player_found"));
					}
					else if (tutpart == 1 && freemd)
						techdone[9] = true;
				}
				break;
			case 10:
				tutstring = "Fastfall then Doublejump. If you touch the ground while you are Doublejumping, you'll do a Hyperjump.";
				tutstring2 = "Hyperjumps will let you keep your Doublejump and you can reach really high up.";
				break;
			case 11:
				tutstring = "Doublejump then immediately USPEC to the ground to do a USPEC cancelled Hyperjump.";
				tutstring2 = "This will give you a few frames of invincibility as a reward. You can only execute it when Special isn't held down.";
				break;
			case 12:
				tutstring = "The thrid hit of the JAB combo can be charged like a strong attack, only on hit.";
				tutstring2 = "If you release Attack after the sound effect, you will dash forward and may activate Time Break.";
				break;
			case 13:
				tutstring = "While charging JAB 3, cancel into DSPEC by pressing Down.";
				tutstring2 = "";
				break;
			case 14:
				tutstring = "Cancel DATTACK into DSPEC by pressing Down Special on hit.";
				tutstring2 = "";
				break;
			case 15:
				tutstring = "Cancel FTILT into DSPEC by pressing Down Special during endlag.";
				tutstring2 = "";
				break;
			case 16:
				tutstring = "Hitfall the first hit of UAIR then land the sweetspot of USTRONG, or into FSTRONG.";
				tutstring2 = "This is a useful finisher for any combo. FTILT works well into UAIR.";
				break;
			case 17:
				if (tutpart == 0)
				{
					tutstring = "Doublejump and hit with NAIR, FAIR, or BAIR at the same time. Hold Jump while you hit the opponent.";
					tutstring2 = "You will rise with the doublejump.";
				}
				else if (tutpart == 1)
				{
					tutstring = "Doublejump and hit with NAIR, FAIR, or BAIR at the same time. Release Jump immediately.";
					tutstring2 = "You will won't rise at all and can extend combos.";
				}
				break;
			case 18:
				tutstring = "Attempt a Hyperjump (doublejump fastfall) high in the air then input an aerial (preferably BAIR).";
				tutstring2 = "You will drop faster than normal fastfalling. This is a mix between Hyperjumping and Booplexing.";
				break;
			default:
				tutstring = "";
				tutstring2 = "";
				techdone[tutmenu] = true;
				break;
			}
			break;
		case 3:
			tutorialPerish();
			if (shield_pressed)
			{
				clear_button_buffer(PC_SHIELD_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 0;
			}
			else if (special_pressed)
			{
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 0;
			}
			else if (attack_pressed)
			{
				clear_button_buffer(PC_ATTACK_PRESSED);
				switch (tutmenu)
				{
					case 0:
						tutstatebuffer = 4;
						sound_play(asset_get("mfx_confirm"));
						tuton = false;
						break;
					case 1:
						if (practice && practicemode)
						{
							tutstatebuffer = 1;
							sound_play(asset_get("mfx_confirm"));
							tuton = false;
						}
						else
						{
							sound_play(asset_get("mfx_tut_fail"));
						}
						break;
					case 2:
						tutstatebuffer = 5;
						sound_play(asset_get("mfx_confirm"));
						tuton = false;
						break;
					case 3:
						tutstatebuffer = 7;
						sound_play(asset_get("mfx_confirm"));
						tuton = false;
						break;
					default:
						break;
				}
			}
			else
			{
				menuNav(noofmainmenu);
			}
			break;
		case 4:
			tutorialPerish();
			if (shield_pressed)
			{
				clear_button_buffer(PC_SHIELD_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 0;
			}
			else if (special_pressed)
			{
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 3;
			}
			else if (left_down)
			{
				holdtimer += 1;
				if (holdtimer % 6 == 1 && (holdtimer > 30 || holdtimer == 1))
				{
					sound_play(asset_get("mfx_option"));
					switch (tutmenu)
					{
						case 9:
							fspeccool = max(fspeccool-1, 0);
							break;
						case 10:
							clone_lifetime = max(clone_lifetime-1, 0);
							break;
						case 11:
							aurapt[6] = max(aurapt[6]-1, 0);
							break;
						case 15:
							if ("alts" in self)
							{
								altnum = max(altnum-1, 0);
								ChangeColours(true);
							}
							break;
					}
				}
			}
			else if (right_down)
			{
				holdtimer += 1;
				if (holdtimer % 6 == 1 && (holdtimer > 30 || holdtimer == 1))
				{
					sound_play(asset_get("mfx_option"));
					switch (tutmenu)
					{
						case 9:
							fspeccool++;
							break;
						case 10:
							clone_lifetime++;
							break;
						case 11:
							aurapt[6]++;
							break;
						case 15:
							if ("alts" in self)
							{
								altnum = min(altnum+1, array_length_1d(alts)-2);
								ChangeColours(true);
							}
							break;
					}
				}
			}
			else if (attack_pressed)
			{
				clear_button_buffer(PC_ATTACK_PRESSED);
				sound_play(asset_get("mfx_option"));
				switch (tutmenu)
				{
					case 0:
						aura = !aura;
						break;
					case 1:
						aurainf = !aurainf;
						break;
					case 2:
						runeN = !runeN;
						break;
					case 3:
						old_dspec = !old_dspec;
						break;
					case 4:
						if (o_copyplayer == noone)
						{
							zoroarkMode();
							practiceinit = false;
						}
						break;
					case 5:
						end_match(tempplayer);
						break;
					case 6:
						with (oPlayer)
						{
							player = other.tempplayer;
						}
						practiceinit = false;
						break;
					case 7:
						parryaura = !parryaura;
						break;
					case 8:
						fspeccoolhud = !fspeccoolhud;
						break;
					case 12:
						aurapt[0] = x+400*spr_dir;
						aurapt[1] = y-100;
						aurapt[2] = x+400*spr_dir;
						aurapt[3] = y-100;
						aurapt[4] = aurapt[6];
						aurapt[5] = 1;
						tuton = false;
						tutstatebuffer = 0;
						tutstate = 0;
						break;
					case 13:
						infamous_dir = spr_dir;
						spr_dir = 1;
						set_attack(AT_NTHROW);
						attack = AT_NTHROW;
						sound_play(sound_get("meme"), true);
						tuton = false;
						tutstatebuffer = 0;
						tutstate = 0;
						break;
					case 14:
						set_attack(AT_EXTRA_2);
						attack = AT_EXTRA_2;
						tuton = false;
						tutstatebuffer = 0;
						tutstate = 0;
						break;
					case 16:
						mutebg = !mutebg;
						break;
					case 17:
						practiceinit = false;
						sound_play(asset_get("mfx_star"));
						break;
					case 18:
						spawnbuddy(1);
						tuton = false;
						tutstatebuffer = 0;
						tutstate = 0;
						break;
					case 19:
						spawnbuddy(2);
						tuton = false;
						tutstatebuffer = 0;
						tutstate = 0;
						break;
					case 20:
						set_attack(49);
						tuton = false;
						tutstatebuffer = 0;
						tutstate = 0;
						break;
					default:
						break;
				}
			}
			else
			{
				menuNav(noofitems);
			}
			break;
		case 5:
			tutorialPerish();
			switch (tutmenu)
			{
				case 0:
					noofsubV = 29;
					break;
				case 1:
					noofsubV = 3;
					break;
				case 2:
					noofsubV = 21;
					break;
				case 3:
					noofsubV = 16;
					break;
				case 4:
					noofsubV = 5;
					break;
				case 5:
					noofsubV = 15;
					break;
				case 6:
					noofsubV = 32;
					break;
				case 7:
					noofsubV = 29;
					break;
				case 8:
					noofsubV = 23; // ctrl+f here
					break;
			}
			if (shield_pressed)
			{
				clear_button_buffer(PC_SHIELD_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 0;
			}
			else if (special_pressed)
			{
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 3;
				tutpart = 0;
			}
			else if (attack_pressed||right_pressed)
			{
				clear_button_buffer(PC_ATTACK_PRESSED);
				sound_play(asset_get("mfx_confirm"));
				tutstate = 6;
				tutpart = tutmenu;
				tutmenu = 0;
			}
			else
			{
				menuNav(noofV);
			}
			break;
		case 6:
			tutorialPerish();
			if (shield_pressed)
			{
				clear_button_buffer(PC_SHIELD_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 0;
			}
			else if (special_pressed||left_pressed)
			{
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_back"));
				tutstate = 5;
				tutmenu = tutpart;
				tutpart = 0;
			}
			else
			{
				menuNav(noofsubV);
			}
			break;
		case 7:
			tutorialPerish();
			tutmenu = -1;
			if (shield_pressed)
			{
				clear_button_buffer(PC_SHIELD_PRESSED);
				sound_play(asset_get("mfx_back"));
				tuton = false;
				tutstatebuffer = 0;
			}
			else if (special_pressed)
			{
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_back"));
				tutstatebuffer = 3;
				tutpart = 0;
				tuton = false;
			}
			break;
		default:
			break;
		}
	}
}
else if (beast_deity) // Bossfight
{
	if (run_timer)
	{
		++speedrun_timer;
	}
	draw_indicator = false;
	if (state_cat == SC_HITSTUN && state_timer > 60)
		if (free)
			set_state(PS_IDLE_AIR);
		else
			set_state(PS_IDLE);
	if (get_gameplay_time() < 120)
	{
		set_player_damage( tempplayer, 0 );
		beast_state = 0;
		if (hp < max_hp)
			hp += 10;
		if (textbox_y > 0)
			textbox_y -= 1;
	}
	else
	{
		++beast_state_timer;
		textbox_y = 0;
		hp = clamp(max_hp-get_player_damage( tempplayer ), 0, max_hp);
		isasking = false;
		timebreak = false;
		thevoid = false;
		run_timer = false;
		counterid = ai_target;
		if (ai_target && instance_exists(ai_target))
		{
			if (ai_target.select == 12)
			{
				ai_target.move_cooldown[AT_DSPECIAL] = 2;
			}
			switch (beast_state)
			{
			default:
				break;
			case 0: // full hp
			aifree = false;
			if (hp < 700)
			{
				set_player_damage( tempplayer, 1 );
				coutline = -1;
				beast_state = 1;
			}
			else
			{
				coutindexmax = 60;
				if (coutindex < coutindexmax)
					spr_dir = x < ai_target.x ? 1 : -1;
				switch(coutindex)
				{
				case 0:
					tempcout[0] = "YES! Finally!"
					tempcout[1] = "My portal worked!"
					tempcout[2] = "";
					tempcout[3] = "";
					tempcout[4] = "";
					break;
				case 1:
				    tempcout[0] = (ishomestage?"You're finally here at":"I'm finally here in");
				    tempcout[1] = (ishomestage?"the Shrine of Light!":"Rivals of Aether!");
				    tempcout[2] = "";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 2:
				    tempcout[0] = "Oh hoiiiii!";
				    tempcout[1] = "I'm Hikaru!";
				    tempcout[2] = "I'm from another game,";
				    tempcout[3] = "but I doubt you've heard of";
				    tempcout[4] = "it yet.";
				    break;
				case 3:
				    tempcout[0] = "What's your name?";
				    tempcout[1] = "...";
				    tempcout[2] = "";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 4:
				    tempcout[0] = "...";
				    tempcout[1] = "";
				    tempcout[2] = "";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 5:
				    tempcout[0] = "Not much of a talker, eh?";
				    tempcout[1] = "";
				    tempcout[2] = "";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 6:
				    tempcout[0] = "Oh I know!";
				    tempcout[1] = "You can reply to me by";
				    tempcout[2] = "looking left or right, and";
				    tempcout[3] = "then attacking!";
				    tempcout[4] = "";
				    break;
				case 7:
				    tempcout[0] = "Let's try this out!";
				    tempcout[1] = "But don't hit me.";
				    tempcout[2] = "";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 8:
					isasking = true;
				    tempcout[0] = "Do you like foxes?";
				    tempcout[1] = "";
				    tempcout[2] = "Yes                             No";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 9:
					if (isleftchoice)
					{
						tempcout[0] = "That's great!";
						tempcout[1] = "";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "What?";
						tempcout[1] = "...why?";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
					}
				    break;
				case 10:
				    tempcout[0] = "I'm a fox, if you didn't";
				    tempcout[1] = "already know.";
				    tempcout[2] = "";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 11:
				    tempcout[0] = "Is that why you said you";
				    tempcout[1] = (isleftchoice?"liked":"didn't like") + " foxes?";
				    tempcout[2] = "Hahaha" + (isleftchoice?"!":"...");
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 12:
				    tempcout[0] = "Well, it doesn't matter.";
				    tempcout[1] = "";
				    tempcout[2] = "";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 13:
				    tempcout[0] = "I heard that Aether has a lot";
				    tempcout[1] = "of battles.";
				    tempcout[2] = "That's why I've wanted to";
				    tempcout[3] = "visit Aether for a long";
				    tempcout[4] = "time.";
				    break;
				case 14:
					isasking = true;
				    tempcout[0] = "Do you battle often?";
				    tempcout[1] = "";
				    tempcout[2] = "Yes                             No";
				    tempcout[3] = "";
				    tempcout[4] = "";
				    break;
				case 15:
					nice = true;
					if (isleftchoice)
					{
						isasking = true;
						tempcout[0] = "Do you wanna spar with me?";
						tempcout[1] = "";
						tempcout[2] = "Yes                             No";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						wasleftchoice = false;
						isleftchoice = false;
						tempcout[0] = "Huh.";
						tempcout[1] = "What DO you do in Aether";
						tempcout[2] = "then?";
						tempcout[3] = "It's a mystery I guess...";
						tempcout[4] = "";
					}
				    break;
				case 16:
					if (wasleftchoice && isleftchoice)
					{
						coutindex = 1;
						beast_state = 1;
					}
					else
					{
						tempcout[0] = "Hmmm...";
						tempcout[1] = "Did you know I can";
						tempcout[2] = "read your mind?";
						tempcout[3] = "Hahaha!";
						tempcout[4] = "";
					}
				    break;
				case 17:
					tempcout[0] = "Let me test it out on you!";
					tempcout[1] = "...";
					tempcout[2] = "";
					tempcout[3] = "";
					tempcout[4] = "";
				    break;
				case 18:
				{
					var stringg = "";
					if (ai_target.select == clamp(ai_target.select, 2, 15)) // base cast
					switch (ai_target.select)
					{
						case 2:
							stringg = "Scarlet Flame";
							break;
						case 3:
							stringg = "Scalding Paws";
							break;
						case 4:
							stringg = "Raging Tempest";
							break;
						case 5:
							stringg = "Seismic Pressure";
							break;
						case 6:
							stringg = "Deception Inferno";
							break;
						case 7:
							stringg = "Forest Fire";
							break;
						case 8:
							stringg = "Circuit Breaker";
							break;
						case 9:
							stringg = "Absolute Zero";
							break;
						case 10:
							stringg = "Will o' the Wisp";
							break;
						case 11:
							stringg = "Toxic Downpour";
							break;
						case 12:
							stringg = "Plasma Claws";
							break;
						case 13:
							stringg = "Deforestation Menace";
							break;
						case 14:
							stringg = "Annihilator of Mechs";
							break;
						case 15:
							stringg = "Rust Bucket Rattler";
							break;
						default:
							stringg = "Null Maiden";
							break;
					}
					else if (ai_target.url == "1928599994")
						stringg = "True Deity Inari";
					else if (ai_target.url == "1865940669")
						stringg = "Sandbert Clone";
					else if (ai_target.url == "1866016173")
						stringg = "Panda Bamboozler";
					else if ("Hikaru_Title" in ai_target)
						stringg = ai_target.Hikaru_Title;
					if (stringg != "")
					{
						tempcout[0] = "'" + stringg + "'";
						tempcout[1] = "...";
						tempcout[2] = "What could that mean?";
						tempcout[3] = "";
						tempcout[4] = "";
						wasleftchoice = false;
						isleftchoice = true;
					}
					else
					{
						tempcout[0] = "I can't seem to read";
						tempcout[1] = "your mind...";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
						wasleftchoice = false;
						isleftchoice = false;
					}
				    break;
				}
				case 19:
					if (isleftchoice)
					{
						isasking = true;
						tempcout[0] = "Hahah are you impressed?";
						tempcout[1] = "";
						tempcout[2] = "Yes                             No";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "Let's try something else";
						tempcout[1] = "";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
					}
				    break;
				case 20:
				{
					tempcout[0] = "I can do more cool stuff" + (isleftchoice?"!":".");
					tempcout[1] = "";
					tempcout[2] = "";
					tempcout[3] = "";
					tempcout[4] = "";
				}
				break;
				case 21:
					tempcout[0] = "Here I go!";
					tempcout[1] = "";
					tempcout[2] = "";
					tempcout[3] = "";
					tempcout[4] = "";
				    break;
				case 22:
					isasking = true;
					tempcout[0] = "Do you wanna see it again?";
					tempcout[1] = "";
					tempcout[2] = "Yes                             No";
					tempcout[3] = "";
					tempcout[4] = "";
				    break;
				case 23:
					if (isleftchoice)
					{
						coutindex = 21;
						attack = AT_TAUNT;
					}
					else
					{
						tempcout[0] = "I learnt transformation";
						tempcout[1] = "from a little black fox";
						tempcout[2] = "from another game.";
						tempcout[3] = "I think it's name was 'Zorak'?";
						tempcout[4] = "";
					}
				    break;
				case 24:
					tempcout[0] = "Anyways, I'll ask more";
					tempcout[1] = "questions!";
					tempcout[2] = "Hehehe!";
					tempcout[3] = "";
					tempcout[4] = "";
				    break;
				case 25:
					isasking = true;
					tempcout[0] = "How do you identify yourself?";
					tempcout[1] = "";
					tempcout[2] = "Male/Female        Non-binary";
					tempcout[3] = "";
					tempcout[4] = "";
				    break;
				case 26:
					if (isleftchoice)
					{
						isasking = true;
						tempcout[0] = "What is your gender?";
						tempcout[1] = "";
						tempcout[2] = "Male                      Female";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						genderplayer = -1;
						++coutindex;
					}
				    break;
				case 27:
					if (genderplayer != -1) //spaghetti code
					{
						genderplayer = (isleftchoice?1:2);
						tempcout[0] = "You are a cute " + (genderplayer==1?"boy":"girl") + "!";
						tempcout[1] = "";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "That's soooooo cool!";
						tempcout[1] = "";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
					}
				    break;
				case 28:
					isasking = true;
					tempcout[0] = "Hmmm...";
					tempcout[1] = "Are you good at math?";
					tempcout[2] = "";
					tempcout[3] = "Yes                             No";
					tempcout[4] = "";
					break;
				case 29:
					if (isleftchoice)
					{
						tempcout[0] = "Feeling confident, huh?";
						tempcout[1] = "I wanna see how good you";
						tempcout[2] = "really are.";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "You can't be THAT bad!";
						tempcout[1] = "Let's see how great you are!";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					break;
				case 30:
					isasking = true;
					tempcout[0] = "What is 1 + 1?";
					tempcout[1] = "";
					tempcout[2] = "100                              2";
					tempcout[3] = "";
					tempcout[4] = "";
					break;
				case 31:
					if (isleftchoice)
					{
						tempcout[0] = "Wha-";
						tempcout[1] = "You're doing it on purpose";
						tempcout[2] = "aren't you?";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "See? It's easy!";
						tempcout[1] = "Anyone can do math!";
						switch (genderplayer)
						{
						case 1:
							tempcout[1] = "Any boy can do math!";
							break;
						case 2:
							tempcout[1] = "Any girl can do math!";
							break;
						default:
							break;
						}
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					break;
				case 32:
					isasking = true;
					tempcout[0] = "621 divided by 9?";
					tempcout[1] = "";
					tempcout[2] = "Nice                          Nice";
					tempcout[3] = "";
					tempcout[4] = "";
					break;
				case 33:
					tempcout[0] = "Hahahaha you got it!";
					tempcout[1] = "Nice!";
					tempcout[2] = "";
					tempcout[3] = "";
					tempcout[4] = "";
					break;
				case 34:
					isasking = true;
					tempcout[0] = "Differentiate x.";
					tempcout[1] = "";
					tempcout[2] = "1?                            Huh?";
					tempcout[3] = "";
					tempcout[4] = "";
					break;
				case 35:
					if (isleftchoice)
					{
						tempcout[0] = "You got it right!";
						tempcout[1] = "Wasn't that hard, was it?";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "Oh sorry! My bad!";
						tempcout[1] = "It might be too difficult";
						tempcout[2] = "for you!";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					break;
				case 36:
					isasking = true;
					tempcout[0] = "Umm do you have many";
					tempcout[1] = "friends?";
					tempcout[2] = "";
					tempcout[3] = "Yes                             No";
					tempcout[4] = "";
				    break;
				case 37:
					if (isleftchoice)
					{
						tempcout[0] = "That's great!";
						tempcout[1] = "You think you have space";
						tempcout[2] = "for one more?  >w<";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "Oh no!";
						tempcout[1] = "Don't worry!";
						tempcout[2] = "I can be your friend!";
						tempcout[3] = ">w<";
						tempcout[4] = "";
					}
					break;
				case 38:
					tempcout[0] = "I'm a pretty good listener!";
					tempcout[1] = "You could talk about your";
					tempcout[2] = "day and I'd love to hear";
					tempcout[3] = "all about it!";
					tempcout[4] = "";
				    break;
				case 39:
					tempcout[0] = "Though...";
					tempcout[1] = "You don't seem to talk much,";
					tempcout[2] = "huh?";
					tempcout[3] = "";
					tempcout[4] = "";
				    break;
				case 40:
					tempcout[0] = "Maybe I should get to know";
					tempcout[1] = "you a little better!";
					tempcout[2] = "";
					tempcout[3] = "";
					tempcout[4] = "";
					break;
				case 41:
					isasking = true;
					tempcout[0] = "Are you... an indoors or";
					tempcout[1] = "outdoors person?";
					tempcout[2] = "";
					tempcout[3] = "Indoors                Outdoors";
					tempcout[4] = "";
				    break;
				case 42:
					if (isleftchoice)
					{
						tempcout[0] = "Whoa!";
						tempcout[1] = "I guess you like to stay";
						tempcout[2] = "home where it's safe, huh?";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "Wow!";
						tempcout[1] = "A close friend of mine";
						tempcout[2] = "loves the outdoors!";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					break;
				case 43:
					if (isleftchoice)
					{
						tempcout[0] = "A close friend of mine is";
						tempcout[1] = "a game developer!";
						tempcout[2] = (genderplayer == 2?"She":"He") + " NEVER leaves " + (genderplayer == 2?"her":"his") + " house!";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = (genderplayer == 2?"She":"He") + " likes inline skating!";
						tempcout[1] = "I think " + (genderplayer == 2?"she":"he") + " is well known";
						tempcout[2] = "for the trick";
						tempcout[3] = "'Fakie Acid Toe'!";
						tempcout[4] = "";
					}
					break;
				case 44:
					tempcout[0] = "I think the both of you will";
					tempcout[1] = "make great friends too!";
					tempcout[2] = (genderplayer == 2?"She":"He") + " is SUPER nice to everyone!";
					tempcout[3] = "";
					tempcout[4] = "";
					break;
				case 45:
					isasking = true;
					tempcout[0] = "Hmm... what would you like to";
					tempcout[1] = "know about me?";
					tempcout[2] = "";
					tempcout[3] = "Attacks                     Lore";
					tempcout[4] = "";
				    break;
				case 46:
					if (isleftchoice)
					{
						if (wasleftchoice)
						{
							tempcout[0] = "I have this 'Fakie' mechanic...";
							tempcout[1] = "It's pretty hard to explain,";
							tempcout[2] = "but I'll try my best to";
							tempcout[3] = "explain!";
							tempcout[4] = "";
						}
						else
						{
							tempcout[0] = "Remember the friend I";
							tempcout[1] = "mentioned a moment ago?";
							tempcout[2] = "My 'Fakie' mechanic was";
							tempcout[3] = "inspired by " + (genderplayer == 2?"her":"him") + "!";
							tempcout[4] = "";
						}
					}
					else
					{
						tempcout[0] = "I " + (ishomestage?"come":"came") + " from a huge Kitsune";
						tempcout[1] = "kingdom " + (ishomestage?"not far from":"from a different");
						tempcout[2] = (ishomestage?"here":"dimention") + "! When I was young,";
						tempcout[3] = "I was the most deceptive";
						tempcout[4] = "Kitsune among my friends!";
					}
					break;
				case 47:
					if (isleftchoice)
					{
						tempcout[0] = "Whenever I counter any";
						tempcout[1] = "attack, I get a buff for";
						tempcout[2] = "my Special and Strong";
						tempcout[3] = "attacks.";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "I think it's because my";
						tempcout[1] = (genderplayer == 2?"grandmother":"grandfather") + " is the " + (genderplayer == 2?"Queen":"King") + "!";
						tempcout[2] = "Because of this, I ended up";
						tempcout[3] = "being the heir to the throne.";
						tempcout[4] = "";
					}
					break;
				case 48:
					if (isleftchoice)
					{
						tempcout[0] = "My Strong attacks can hit";
						tempcout[1] = "harder and stun enemies,";
						tempcout[2] = "while my Special attacks gain";
						tempcout[3] = "a unique property!";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "But... I... don't like";
						tempcout[1] = "r e s p o n s i b i l i t i e s";
						tempcout[2] = "so... I ran away.";
						tempcout[3] = "";
						tempcout[4] = "";
					}
					break;
				case 49:
					if (isleftchoice)
					{
						tempcout[0] = "My chargable Void Ball gets";
						tempcout[1] = "fully charged and looks like";
						tempcout[2] = "the enemy that activated my";
						tempcout[3] = "Fakie!";
						tempcout[4] = "";
					}
					else
					{
						tempcout[0] = "At that point, I had learnt";
						tempcout[1] = "some of the many Kitsune";
						tempcout[2] = "powers, since I was a";
						tempcout[3] = "Celestial / Light Kitsune.";
						tempcout[4] = "";
					}
					break;
				case 50:
					if (isleftchoice)
					{
						tempcout[0] = "My Blink can let me teleport";
						tempcout[1] = "faster than normal to the";
						tempcout[2] = "ground, or can let me";
						tempcout[3] = "teleport directly to my";
						tempcout[4] = "target and attack them!";
					}
					else
					{
						tempcout[0] = "I learnt only the basics.";
						tempcout[1] = "I had travelled to many";
						tempcout[2] = "different video game";
						tempcout[3] = "universes to learn how to";
						tempcout[4] = "fight!";
					}
					break;
				case 51:
					if (isleftchoice)
					{
						tempcout[0] = "My DSpecial can let me";
						tempcout[1] = "cancel into any attack.";
						tempcout[2] = "Oh!";
						tempcout[3] = "I completely forgot to tell";
						tempcout[4] = "you about my Clones!";
					}
					else
					{
						tempcout[0] = "I learnt Time control from a";
						tempcout[1] = "blue hedgehog with a genie!";
						tempcout[2] = "As for Transform Illusions,";
						tempcout[3] = "I think I learnt it from a";
						tempcout[4] = "region called Klaos? Or Klalos?";
					}
					break;
				case 52:
					if (isleftchoice)
					{
						tempcout[0] = "When I use my DSpecial, I can";
						tempcout[1] = "create a copy of myself and";
						tempcout[2] = "place it on the ground!";
						tempcout[3] = "If anyone attacks it, I get";
						tempcout[4] = "to use Fakie moves too!";
					}
					else
					{
						tempcout[0] = "Most of my other powers I";
						tempcout[1] = "learnt" + (ishomestage?"":" here") + " in Aether around";
						tempcout[2] = "a decade ago! I think I learnt";
						tempcout[3] = "the Void from Astra with her";
						tempcout[4] = "tarot cards.";
					}
					break;
				case 53:
					if (isleftchoice)
					{
						tempcout[0] = "I wrote a about my abilities";
						tempcout[1] = "on this page called 'Steam'.";
						tempcout[2] = "The place that opened the";
						tempcout[3] = "portal for " + (ishomestage?"you":"me") + " to get here.";
						tempcout[4] = "I bet you'll learn more there!";
					}
					else
					{
						tempcout[0] = "I remember a ghost";
						tempcout[1] = "named Jaunted who showed";
						tempcout[2] = "me how to use tarot cards";
						tempcout[3] = "WITHOUT the card itself!";
						tempcout[4] = "Now I'm great at Void balls!";
					}
					break;
				case 54:
					if (isleftchoice)
					{
						coutindex = 55;
					}
					else
					{
						tempcout[0] = "Ooh! My good friend Olympia";
						tempcout[1] = "gave me Crystal training!";
						tempcout[2] = "Too bad I can't get the hang";
						tempcout[3] = "of it... Instead, I can copy";
						tempcout[4] = "the Kragg pillars!";
					}
					break;
				case 55:
					tempcout[0] = "Hmmm...";
					tempcout[1] = "I think we should spar often";
					tempcout[2] = "against others!";
					tempcout[3] = "We would make an awesome";
					tempcout[4] = "team, you and I!";
					break;
				case 56:
					tempcout[0] = "Just imagine...";
					switch (genderplayer)
					{
					case 1:
						tempcout[1] = "A guy and a girl fighting";
						break;
					case 2:
						tempcout[1] = "Two cute girls fighting";
						break;
					default:
						tempcout[1] = "The two of us fighting";
						break;
					}
					tempcout[2] = "side by side!";
					tempcout[3] = "That'd be SUPER awesome!";
					tempcout[4] = "";
					break;
				case 57:
					tempcout[0] = "Alright, it's really nice";
					tempcout[1] = "getting to know you!";
					tempcout[2] = "I've got to explore";
					tempcout[3] = "Aether!";
					tempcout[4] = "";
				    break;
				case 58:
					tempcout[0] = "I want to learn more";
					tempcout[1] = "fighting styles so that";
					tempcout[2] = "I can keep up with my";
					tempcout[3] = "friends' skills!";
					tempcout[4] = "";
				    break;
				case 59:
					isasking = true;
					tempcout[0] = "Do you have any skills to";
					tempcout[1] = "show me before I leave?";
					tempcout[2] = "";
					tempcout[3] = "Yes                             No";
					tempcout[4] = "";
				    break;
				case 60:
					if (isleftchoice)
					{
						coutindex = 1;
						beast_state = 1;
					}
					else
					{
						tempcout[0] = "Alright then!";
						tempcout[1] = "See you soon!";
						tempcout[2] = "";
						tempcout[3] = "";
						tempcout[4] = "";
						invincible = true;
					}
				    break;
				}
			}
				break;
			case 1: // fire
				if (hp < 600)
				{
					set_player_damage( tempplayer, 100 );
					coutline = -1;
					beast_state = 2;
				}
				else
				{
					coutindexmax = nice?2:1;
					switch(coutindex)
					{
					    case 0:
							tempcout[0] = "Hey!";
							tempcout[1] = "Why'd you hit me?";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 1:
							if (nice)
							{
								tempcout[0] = "Alright. Lets spar.";
								tempcout[1] = "Prepare yourself.";
								tempcout[2] = "Have a taste of fire!";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							else
							{
								tempcout[0] = "Perish in fire.";
								tempcout[1] = "";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 2:
							tempcout[0] = "Foxfires should be";
							tempcout[1] = "enough to beat you.";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					}
					if (nice && coutindex == 0 && get_player_damage(player))
					{
						set_player_damage( tempplayer, 1 );
						invincible = true;
					}
					if ((!nice || coutindex) && !practice)
					{
						run_timer = true;
						aifree = true;
						if (get_gameplay_time() / 30 % 6 == 5)
						{
							sound_play(asset_get("sfx_forsburn_consume"));
						}
						else if (get_gameplay_time() / 30 % 6 == 0)
						{
							sound_play(asset_get("sfx_zetter_fireball_fire"));
						}
						if (!(get_gameplay_time() / 60 % 3))
						{
							if (!(get_gameplay_time() % 3))
							{
								set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 5 + random_func(0, 10, false));
								create_hitbox(AT_EXTRA_3, 1, floor(x + hsp + (30 * spr_dir)), floor(y + vsp) - 40 );
							}
							aifree = ai_recovering;
						}
					}
				}
				break;
			case 2: // water
				if (hp < 500)
				{
					set_player_damage( tempplayer, 200 );
					coutline = -1;
					beast_state = 3;
				}
				else
				{
					coutindexmax = nice?2:0;
					switch(coutindex)
					{
					    case 0:
							if (nice)
							{
								tempcout[0] = "Looks like fire doesn't work,";
								tempcout[1] = "huh?";
								tempcout[2] = "Let's try some water then!";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							else
							{
								tempcout[0] = "Have some bubbles!";
								tempcout[1] = "";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 1:
							tempcout[0] = "Let's go!";
							tempcout[1] = "Rain Dance!";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 2:
							tempcout[0] = "I learnt this at the water";
							tempcout[1] = "temple when I was just a";
							tempcout[2] = "young kit.";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					}
					if (nice && coutindex <= 1 && get_player_damage(player))
					{
						set_player_damage( tempplayer, 100 );
						invincible = true;
					}
					if (!practice)
					{
						aifree = (!nice || coutindex == 2 || ai_recovering);
						if (nice && coutindex == 1 && attack != AT_TAUNT && attack != AT_DTHROW && !free)
						{
							set_attack(AT_TAUNT);
							attack = AT_TAUNT;
						}
						if (!nice || coutindex == 2)
						{
							run_timer = true;
							if (raincloud == -1 || !(get_gameplay_time() % 60))
							{
								raincloud = random_func(0, room_width, true);
								if (!free)
								{
									set_attack(AT_DATTACK);
									attack = AT_DATTACK;
								}
							}
							if (!(get_gameplay_time() % 6))
							{
								create_hitbox(AT_EXTRA_3, 2, floor(raincloud + random_func(0, 20, true)), floor(0));
								create_hitbox(AT_EXTRA_3, 2, floor(room_width - (raincloud + random_func(1, 20, true))), floor(0));
							}
						}
					}
				}
				break;
			case 3: // earth
				if (hp < 400)
				{
					set_player_damage( tempplayer, 300 );
					coutline = -1;
					beast_state = 4;
				}
				else
				{
					coutindexmax = nice?3:0;
					switch(coutindex)
					{
					    case 0:
							if (nice)
							{
								tempcout[0] = "You're stronger than I";
								tempcout[1] = "thought.";
								tempcout[2] = "But are you able to withstand";
								tempcout[3] = "the power of Earth?";
								tempcout[4] = "";
							}
							else
							{
								tempcout[0] = "Rocks will beat you!";
								tempcout[1] = "";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 1:
							tempcout[0] = "You'll never escape my";
							tempcout[1] = "might!";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 2:
							tempcout[0] = "I copied these moves from";
							tempcout[1] = "a feisty little mouse";
							tempcout[2] = "around a decade ago.";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 3:
							tempcout[0] = "I heard she's in Aether";
							tempcout[1] = "now";
							tempcout[2] = "I hope I can see her soon!";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					}
					if (nice && coutindex == 0 && get_player_damage(tempplayer))
					{
						set_player_damage( tempplayer, 200 );
						invincible = true;
					}
					if (!practice)
					{
						aifree = (!nice || coutindex != 0 || ai_recovering);
						if (nice && coutindex == 1 && attack != AT_FSTRONG && !free)
						{
							set_attack(AT_FSTRONG);
							attack = AT_FSTRONG;
						}
						if ((!nice || coutindex))
						{
							run_timer = true;
							rockx = ai_target.x;
							if (!(get_gameplay_time() % 120))
							{
								if (!free)
								{
									set_attack(AT_FSTRONG);
									attack = AT_FSTRONG;
								}
								create_hitbox(AT_EXTRA_3, 3, floor(rockx + random_func(0, 50, true) - 25), floor(room_height));
							}
						}
					}
				}
				break;
			case 4: // air
				if (hp < 300)
				{
					set_player_damage( tempplayer, 400 );
					coutline = -1;
					beast_state = 5;
				}
				else
				{
					coutindexmax = nice?1:0;
					switch(coutindex)
					{
					    case 0:
							if (nice)
							{
								tempcout[0] = "If I can't blow you away";
								tempcout[1] = "with Earth, I'll just blow";
								tempcout[2] = "you away with...";
								tempcout[3] = "WIND!!!";
								tempcout[4] = "(Hehehe)";
							}
							else
							{
								tempcout[0] = "The wind is howling.";
								tempcout[1] = "";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 1:
							tempcout[0] = "Let's go!";
							tempcout[1] = "You won't survive this!";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					}
					if (nice && coutindex == 0 && get_player_damage(tempplayer))
					{
						set_player_damage( tempplayer, 300 );
						invincible = true;
					}
					if (!practice)
					{
						aifree = (!nice || coutindex != 0 || ai_recovering);
						if ((!nice || coutindex))
						{
							run_timer = true;
							if (get_gameplay_time() / 30 % 6 == 5)
							{
								sound_play(asset_get("sfx_forsburn_consume"));
								if (!free)
								{
									set_attack(AT_FTILT);
									attack = AT_FTILT;
								}
							}
							else if (get_gameplay_time() / 30 % 6 == 0)
							{
								sound_play(asset_get("sfx_bird_sidespecial"));
							}
							if (!(get_gameplay_time() / 60 % 3))
							{
								ai_target.hsp += 0.8 * spr_dir;
							}
						}

					}
				}
				break;
			case 5: // time
				if (hp < 200)
				{
					set_player_damage( tempplayer, 500 );
					coutline = -1;
					beast_state = 6;
					if ("yeetimebreak" in ai_target)
					{
						ai_target.yeetimebreak = false;
					}
				}
				else
				{
					coutindexmax = nice?4:0;
					switch(coutindex)
					{
					    case 0:
							if (nice)
							{
								tempcout[0] = "If the 4 basic elements";
								tempcout[1] = "can't stop you, I'll just";
								tempcout[2] = "use my hidden abilities!";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							else
							{
								tempcout[0] = "TIME BR-";
								tempcout[1] = "Wha?";
								tempcout[2] = "How'd you-";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 1:
							tempcout[0] = "TIME BREAK!";
							tempcout[1] = "";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 2:
							tempcout[0] = "It took me forever to learn";
							tempcout[1] = "this one!";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 3:
							tempcout[0] = "Actually...";
							tempcout[1] = "This would be too";
							tempcout[2] = "overpowered.";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 4:
							tempcout[0] = "Hmmm...";
							tempcout[1] = "I'll give YOU the ability";
							tempcout[2] = "to slow down time";
							tempcout[3] = "temporarily!";
							tempcout[4] = "";
							break;
					}
					if (nice && coutindex == 0 && get_player_damage(tempplayer))
					{
						set_player_damage( tempplayer, 400 );
						invincible = true;
					}
					if (!practice)
					{
						aifree = (!nice || coutindex != 0 || ai_recovering);
						if ((!nice || coutindex))
						{
							run_timer = true;
							if (nice && coutindex <= 3)
							{
								timebreak = true;
								aifree = ai_recovering;
							}
							if ((!nice || coutindex >= 4) && "yeetimebreak" in ai_target)
							{
								ai_target.yeetimebreak = true;
								aifree = true;
							}
							if ("yeetimebreak" in ai_target && ai_target.yeetimebreak)
							{
								var stage_x = get_stage_data( SD_X_POS );
								if (stage_x)
								{
									if (x < stage_x)
										x = stage_x;
									else if (x > room_width - stage_x)
										x = room_width - stage_x;
								}
								hsp /= 1.1;
								if (vsp > 0)
									vsp /= 1.3;
								else
									vsp /= 1.1;
								if (state != PS_RESPAWN && state != PS_DEAD)
									set_state(PS_HITSTUN);
							}
						}
					}
				}
				break;
			case 6: // void
				if (hp < 100)
				{
					set_player_damage( tempplayer, 600 );
					coutline = -1;
					beast_state = 7;
				}
				else
				{
					coutindexmax = nice?3:0;
					switch(coutindex)
					{
					    case 0:
							if (nice)
							{
								tempcout[0] = "Hehehe";
								tempcout[1] = "...";
								tempcout[2] = "Time is too strong, huh?";
								tempcout[3] = "But there is something that";
								tempcout[4] = "matches its power.";
							}
							else
							{
								tempcout[0] = "You'll pay for that.";
								tempcout[1] = "";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 1:
							tempcout[0] = "THE VOID!";
							tempcout[1] = "";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 2:
							tempcout[0] = "A little purple fox taught";
							tempcout[1] = "this to me with her cards.";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 3:
							tempcout[0] = "A ghost partnered with a";
							tempcout[1] = "black and white fennek fox";
							tempcout[2] = "gave me the ability to";
							tempcout[3] = "use it without cards.";
							tempcout[4] = "";
							break;
					}
					if (nice && coutindex == 0 && get_player_damage(tempplayer))
					{
						set_player_damage( tempplayer, 500 );
						invincible = true;
					}
					if (!practice)
					{
						aifree = (!nice || coutindex != 0 || ai_recovering);
						if ((!nice || coutindex))
						{
							run_timer = true;
							thevoid = true;
							if (!(get_gameplay_time() % 120))
							{
								set_attack(AT_NSPECIAL);
								attack = AT_NSPECIAL;
							}
						}

					}
				}
				break;
			case 7: // celestial
				if (hp <= 0)
				{
					set_player_damage( tempplayer, 700 );
					coutline = -1;
					beast_state = 8;
					sound_play(sound_get("boss_down"));
					if ("yeetimebreak" in ai_target)
					{
						ai_target.yeetimebreak = false;
					}
				}
				else
				{
					coutindexmax = nice?2:0;
					switch(coutindex)
					{
					    case 0:
							if (nice)
							{
								tempcout[0] = "Enough playing around.";
								tempcout[1] = "I have to go all out";
								tempcout[2] = "on you.";
								tempcout[3] = "I learnt this from";
								tempcout[4] = "the Tree of Life.";
							}
							else
							{
								tempcout[0] = "Stay down.";
								tempcout[1] = "Final warning.";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 1:
							tempcout[0] = "I won't lose!";
							tempcout[1] = "";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					    case 2:
							tempcout[0] = "Hehehe";
							tempcout[1] = "";
							tempcout[2] = "";
							tempcout[3] = "";
							tempcout[4] = "";
							break;
					}
					if (nice && coutindex == 0 && get_player_damage(tempplayer))
					{
						set_player_damage( tempplayer, 600 );
						invincible = true;
					}
					if (!practice)
					{
						aifree = (!nice || coutindex != 0 || ai_recovering);
						if (!practice && (!nice || coutindex))
						{
							run_timer = true;
							if (!nice || hp > 50)
							{
								if (get_gameplay_time() / 30 % 6 == 5)
								{
									sound_play(asset_get("sfx_forsburn_consume"));
								}
								else if (get_gameplay_time() / 30 % 6 == 0)
								{
									sound_play(asset_get("sfx_zetter_fireball_fire"));
								}
								if (!(get_gameplay_time() / 60 % 3))
								{
									if (!(get_gameplay_time() % 3))
									{
										set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, random_func(0, 10, false) + 10);
										create_hitbox(AT_EXTRA_3, 1, floor(x + hsp + (30 * spr_dir)), floor(y + vsp) - 40 );
									}
									aifree = ai_recovering;
								}
							}
							else
							{
								if ("yeetimebreak" in ai_target)
								{
									ai_target.yeetimebreak = true;
									aifree = true;
								}
								if ("yeetimebreak" in ai_target && ai_target.yeetimebreak)
								{
									var stage_x = get_stage_data( SD_X_POS );
									if (stage_x)
									{
										if (x < stage_x)
											x = stage_x;
										else if (x > room_width - stage_x)
											x = room_width - stage_x;
									}
									hsp /= 1.1;
									if (vsp > 0)
										vsp /= 1.3;
									else
										vsp /= 1.1;
									if (state != PS_RESPAWN && state != PS_DEAD)
										set_state(PS_HITSTUN);
								}
							}
							if (raincloud == -1 || !(get_gameplay_time() % 60))
								raincloud = random_func(0, room_width, true);
							if (!(get_gameplay_time() % 6))
							{
								create_hitbox(AT_EXTRA_3, 2, floor(raincloud + random_func(0, 20, true)), floor(0));
								//create_hitbox(AT_EXTRA_3, 2, floor(room_width - (raincloud + random_func(1, 20, true))), floor(0));
							}
							rockx = ai_target.x;
							if (!(get_gameplay_time() % 180))
							{
								create_hitbox(AT_EXTRA_3, 3, floor(rockx + random_func(0, 50, true) - 25), floor(room_height));
							}
						}
					}
				}
				break;
			case 8: // die
				{
					coutindexmax = 3;
					aifree = ai_recovering;
					switch(coutindex)
					{
					    case 0:
							if (nice)
							{
								tempcout[0] = "Ahahahha";
								tempcout[1] = "You're really strong...";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							else
							{
								tempcout[0] = "Ouch!";
								tempcout[1] = "You hit me really hard!";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 1:
							if (nice)
							{
								tempcout[0] = "I'm exhausted...";
								tempcout[1] = "...";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							else
							{
								tempcout[0] = "Why'd you hit me suddenly,";
								tempcout[1] = "though?";
								tempcout[2] = "That was pretty mean!";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							break;
					    case 2:
							if (nice)
							{
								tempcout[0] = "I definitely need to return";
								tempcout[1] = "here to spar more!";
								tempcout[2] = "I'd be able to learn all these";
								tempcout[3] = "cool techiques!";
								tempcout[4] = "";
								break;
							}
							else
							{
								coutindex = 3;
							}
					    case 3:
							if (nice)
							{
								tempcout[0] = "Good job, friend!";
								tempcout[1] = "";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							else
							{
								tempcout[0] = "You could've asked to spar!";
								tempcout[1] = "";
								tempcout[2] = "";
								tempcout[3] = "";
								tempcout[4] = "";
							}
							aifree = false;
							break;
					}
					if (get_player_damage(tempplayer))
						set_player_damage( tempplayer, 700 );
					invincible = true;
					if (!free && attack != AT_TAUNT_2)
					{
						set_attack(AT_TAUNT_2);
						attack = AT_TAUNT_2;
						transformtime = 120;
					}
				}
				break;
			}
		}
        switch(coutline) // I looked at Muno's code pls don't kill me
		{
		case 2:
		case 3:
		case 4:
			if (isasking)
			{
				cout[coutline] = tempcout[coutline];
				++coutline;
				talktime = 0;
				break;
			}
		case 0:
		case 1:
		{
			var textspeeed = 3;
			var b_skip = false;
			if (!beast_state && "ai_target" in self && instance_exists(ai_target) && ai_target && (ai_target.attack_pressed || ai_target.special_pressed))
			{
				cout[coutline] = tempcout[coutline];
				sound_play(asset_get("mfx_input_key"));
				b_skip = true;
				with (ai_target)
				{
					clear_button_buffer( PC_ATTACK_PRESSED );
					clear_button_buffer( PC_SPECIAL_PRESSED );
				}
			}
			else
			{
				cout[coutline] = string_copy(tempcout[coutline], 0, floor(talktime / textspeeed));
				if (!floor(talktime % textspeeed) && cout[coutline] != "" && string_char_at(cout[coutline], string_length(cout[coutline])) != " ")
					sound_play(sound_get("voicea"));
			}
			if (b_skip || (talktime / textspeeed) > string_length(tempcout[coutline]))
			{
				++coutline;
				talktime = 0;
			}
		}
			break;
		case -1: // reset?
			talktime = 100;
			coutindex = -1;
			coutindexmax = 0;
			break;
		default:
			break;
        }
        ++talktime;
		if (isasking)
		{
			if (talktime >= 100 && "ai_target" in self && (ai_target.attack_down || ai_target.special_down))
			{
				wasleftchoice = isleftchoice;
				isleftchoice = ai_target.spr_dir == -1 ? true : false;
			    ++coutindex;
			    coutline = 0;
			    talktime = 0;
			    cout[0] = "";
			    cout[1] = "";
			    cout[2] = "";
			    cout[3] = "";
			    cout[4] = "";
				sound_play(asset_get("mfx_forward"));
				with (ai_target)
				{
					clear_button_buffer( PC_ATTACK_PRESSED );
					clear_button_buffer( PC_SPECIAL_PRESSED );
				}
			}
		}
		else if (talktime >= 100)
		{
			talk = coutindex < coutindexmax;
			if (talk)
			{
			    ++coutindex;
			    coutline = 0;
			    talktime = 0;
			    cout[0] = "";
			    cout[1] = "";
			    cout[2] = "";
			    cout[3] = "";
			    cout[4] = "";
			}
		}
	}
}

if runesUpdated || get_match_setting(SET_RUNES) {
	if runeD {
		dash_speed = 8.5;
		initial_dash_speed = 9;
	} else {
		dash_speed = 6.2;
		initial_dash_speed = 7;
	}
	if runeF {
		air_max_speed = 8;
	} else {
		air_max_speed = 5;
	}
	if runeN {
		jump_sound = sound_get("button_x");
		air_dodge_sound = sound_get("stick_wavedash");
	} else {
		jump_sound = asset_get("sfx_jumpground");
		air_dodge_sound = asset_get("sfx_quick_dodge");
	}
}

if (runeG)
{
	if (state_cat == SC_HITSTUN && down_down && special_pressed && hitstop)
	{
		var newattack = free?AT_DSPECIAL_AIR:AT_DSPECIAL_2;
		if (move_cooldown[newattack] == 0)
		{
			set_attack(newattack);
			invincible = true;
			invince_time = get_window_value(newattack, 1, AG_WINDOW_LENGTH);
			hit_player_obj.yeetimebreak2 = true;
			with (hit_player_obj)
			{
				set_state(PS_HITSTUN);
				hitstop_full = 20;
				hitstop = 20;
			}
		}
	}
}

if (runeN)
{
	if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_GROUND || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_PARRY) {
	    if (state_timer == 0) {
	        sound_play(sound_get("shoulder_press"));
	    }
	}
	
	if (state == PS_DASH_START || state == PS_DASH_TURN) {
	    if (state_timer == 0) {
	        if (spr_dir = 1) {
	            sound_play(sound_get("stick_tap_r"));
	        } else {
	            sound_play(sound_get("stick_tap_l"));
	        }
	    }
	}
	
	if (state == PS_DASH_STOP) {
	    if (state_timer == 3) {
	        sound_play(sound_get("stick_release"));
	    }
	}
	
	if (state == PS_DASH_START && !right_down && !left_down) {
	    if (state_timer == 6) {
	        sound_play(sound_get("stick_release"));
	    }
	}
	
	if (state == PS_AIR_DODGE && state_timer == 3) {
	    sound_play(sound_get("voice1"))
	}
	
	if (state == PS_JUMPSQUAT && state_timer == 0) {
	    sound_play(sound_get("voice2"))
	}
	
	if (state == PS_DOUBLE_JUMP && state_timer == 0) {
	    sound_play(sound_get("button_y"))
	    sound_play(sound_get("voice3"))
	}
	
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
	{ 
		if (state_timer == 0 && !abyss_paused)
		{
			if (attack == AT_JAB || attack == AT_NSPECIAL)
				sound_play(sound_get("button_x"))
			else
				sound_play(sound_get("c_stick_flick"))
		}
	
	}
}

if (state == PS_AIR_DODGE && abs(hsp)+abs(vsp)!=0)
{
	draw_indicator = false;
	spawn_hit_fx(x,y-30,trail_effect);
}

var jumptimeee = 14;

if (state == PS_DOUBLE_JUMP && state_timer == 0){
    floatjumptime = jumptimeee + 3;
}

if (!free && place_meeting(x, y, asset_get("par_block")))
{
	topcustom = y;
}

if (!free && ground_type == 2)
{
	ffcounter = 0;
	ffx = x;
	ffy = y;
}
else
{
	++ffcounter;
}

prat_land_time = (attack == AT_FSPECIAL && state == PS_PRATLAND ? prat_land_time2 : prat_land_time1);

if (aura && dspeccancelled)
{
	if (move_cooldown[AT_DSPECIAL_2] == 0) // when cooldown cancel end
	{
		dspeccancelled = false;
		aura = false;
	}
	else if (!(attack==AT_DSPECIAL_2||attack==AT_DSPECIAL_AIR) && dspecsound) // when you cancel
	{
		move_cooldown[AT_DSPECIAL_2] = 120;
		move_cooldown[AT_DSPECIAL_AIR] = 120;
		dspecsound = false;
		sound_play(sound_get("voiceup"));
	}
}
else
{
	dspeccancelled = false;
	dspecsound = false;
}

auraalpha = clamp(auraalpha+(aura?0.1:-0.1), 0, 1);
auraburn = aura?24:max(auraburn-1,0);

transcounter = clamp(((o_copyplayer == noone && get_player_color(tempplayer) == 2 && (attack == AT_TAUNT || attack == AT_TAUNT_2) && state == PS_ATTACK_GROUND)?transcounter+2:transcounter-6),0,70); // trans
irishcounter = clamp(((o_copyplayer == noone && get_player_color(tempplayer) == 12 && (attack == AT_TAUNT || attack == AT_TAUNT_2) && state == PS_ATTACK_GROUND)?irishcounter+2:irishcounter-6),0,30); // sino
qr = clamp(((o_copyplayer == noone && get_player_color(tempplayer) == 4 && (attack == AT_TAUNT || attack == AT_TAUNT_2) && state == PS_ATTACK_GROUND)?qr+0.1:qr-0.1),0,1); // qr

dspecshivertimer = (move_cooldown[AT_DSPECIAL_2]!=0&&down_down&&special_pressed&&(state_cat==SC_GROUND_NEUTRAL||state_cat==SC_AIR_NEUTRAL)?15:dspecshivertimer-1);
dspecshiver = (dspecshivertimer<=0?0:dspecshiver+(floor(get_gameplay_time()/3)%2==0?2:-2));

char_height += state==PS_CROUCH&&down_down?-5:5;
char_height = clamp(char_height, charHeightCrouch, charHeightStand);

if (!hitpause && as_flash > 0) as_flash--;
if (!hitpause && uspec_timer > 0) uspec_timer--;

if (aurapt[5])
{
	aurapt[0] = lerp(x, aurapt[2], aurapt[4]/aurapt[6]);
	aurapt[1] = lerp(y-floor(char_height/2), aurapt[3], aurapt[4]/aurapt[6]);
	if (aurapt[4]%6==0)
	{
		var owo = spawn_hit_fx(aurapt[0]+random_func(2,40,1)-20,aurapt[1]+random_func(3,40,1)-20,pew_effect); owo.depth = -999;
	}
	--aurapt[4];
	if (aurapt[4] == 0)
	{
		aurapt[5] = 0;
		transformplease = 1;
	    sound_play(asset_get("sfx_owl4"));
	}
}

if (!beast_deity)
{
	if (zawarudotime > 0)
	{
		--zawarudotime;
		timebreak = true;
	}
	else
	{
		zawarudotime = 0;
		timebreak = false;
	}
}

if (timebreak && counterid && instance_exists(counterid))
{
	counterid.hsp /= 1.1;
	counterid.vsp /= 1.3;
	with (counterid)
	{
		if (state != PS_RESPAWN && state != PS_DEAD)
		set_state(PS_HITSTUN);
	}
	var stage_x = get_stage_data( SD_X_POS );
	if (stage_x)
	{
		if (counterid.x < stage_x)
			counterid.x = stage_x;
		else if (counterid.x > room_width - stage_x)
			counterid.x = room_width - stage_x;
	}
}

in_field = false;
if (singleton_charge != noone)
{
	in_field = (point_distance(x, y, singleton_charge.x, singleton_charge.y) < singleton_charge.size*0.5);
}

if (state_cat != SC_HITSTUN)
	counter_dmg = get_player_damage(tempplayer);

if (floatjumptime && state_cat != SC_HITSTUN && !hitpause){ // absa jump
	fall_through = false;
	if (!jump_down && has_hit_player && state == PS_ATTACK_AIR)
	{
		floatjumptime = 0;
		vsp += 3;
		if (tutpart == 1)
			techdone[17] = true;
		if (fast_falling)
			techdone[18] = true;
	}
	else
	{
		if (tutpart == 0 && has_hit_player && state == PS_ATTACK_AIR && tutmenu == 17)
		{
			tutpart = 1;
			sound_play(asset_get("mfx_player_found"));
		}
		if (!free)
		{
			var playthesound = true;
			floatjumptime = jumptimeee;
			hsp *= 1.2;
			techdone[10] = true;
			if (!beast_deity && runeI)
			{
				killarticles = false;
				instance_create(x, y, "obj_article1");
				sound_play(asset_get("sfx_forsburn_split"));
			}
			if ((attack == AT_USPECIAL || attack == AT_DSPECIAL_2 || attack == AT_DSPECIAL_AIR) && state == PS_ATTACK_GROUND)
			{
				if (!special_down)
				{
					set_state(PS_IDLE);
					invincible = true;
					invince_time = floor(jumptimeee*1.5);
					move_cooldown[AT_USPECIAL] = jumptimeee * 2;
					techdone[11] = true;
				}
				else
				{
					floatjumptime = 0;
					playthesound = false;
				}
				vsp = 0;
			}
			if (playthesound)
			{
				sound_play(asset_get("sfx_ori_superjump_sein"));
				djumpTimer = djumpNumOfAfterImages;
			}
		}
		if (floatjumptime <= jumptimeee && floatjumptime != 0)
		{
			if (vsp > -10.5)
			    vsp += djump_accel;
			else
			    vsp = -10.5;
		}
		--floatjumptime;
		if (state == PS_AIR_DODGE)
			floatjumptime = 0;
	}
}
else if (!hitpause)
{
	floatjumptime = 0;
}

if (djumpTimer) djumpTimer--;
if (djumpTimer && !hitpause) djumpArray[djumpTimer-1]={djumpSprite:sprite_index,djumpImage:image_index,djumpX:x,djumpY:y,djumpDir:spr_dir,djumpAlpha:10};
for (var i = 0; i < djumpNumOfAfterImages; ++i) if (djumpArray[i] != -1 && djumpArray[i].djumpAlpha > 0) djumpArray[i].djumpAlpha--;

if (!hitpause && transformtime>=0){
    --transformtime;
	if (transformtime==0&&(state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR))
	{
		var windoww = get_attack_value( attack, AG_NUM_WINDOWS );
		var window_timerr = get_window_value( attack, windoww, AG_WINDOW_LENGTH );
		window = windoww;
		window_timer = window_timerr;
	}
}
	
if (godmode || beast_deity || runeN)
{
	immune_to_laws = true;
    if (!runeN && (state == PS_PRATFALL || state == PS_TUMBLE))
    {
        set_state(PS_IDLE_AIR);
    }
    if (state == PS_LANDING_LAG)
    {
        set_state(PS_IDLE);
    }
	if (godmode)
	{
		if (!("aiaiai" in self))
			iasa_script();
		has_walljump = true;
		was_parried = false;
		djumps = 0;
		has_airdodge = true;
		counter_dmg = 0;
		aura = true;
		hitstop = 0;
		if (counterid != noone && get_player_stocks( tempplayer ) < get_player_stocks( counterid.player ))
			set_player_stocks( tempplayer, get_player_stocks( counterid.player ) + 1 );
		if (state == PS_DEAD)
		{
			set_state(PS_IDLE);
			visible = true;
			x = deadx;
			y = deady;
			with (counterid)
			{
				x = (random_func(0, 2, true)==0?-621:room_width+621);
				y = random_func( 1, room_height, true );
				set_state(PS_HITSTUN);
				prev_state = PS_HITSTUN;
			}
			end_match(tempplayer);
		}
		else
		{
			deadx = x;
			deady = y;
		}
	}
}
if (aurainf)
{
	aura = true;
}

if (godmode || (beast_deity && !(beast_state == 0 && coutindex == 60) && !(beast_state == 8 && coutindex == 3)))
{
    if (hsp < 0 && x + hsp <= 0)
    {
        x = 0;
		hsp = 0;
    }
    else if (hsp > 0 && x >= room_width - hsp)
    {
        x = room_width;
		hsp = 0;
    }
    if ((y >= room_height - vsp) || (y <= vsp && state == PS_HITSTUN))
    {
        y = 1;
		vsp = 0;
		sound_play(asset_get("sfx_zetter_shine_charged"));
    }
		
}

if (buffcolour)
{
	if ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || state_timer == 0) buffcolour = false;
	buffmag = max(buffmag-20, 1);
}
else
{
	buffmag = min(buffmag+5, 100);
}

init_shader();

with (oPlayer)
{
	if ("checktimebreak" in self && checktimebreak==other.player)
	{
		if (activated_kill_effect)
		{
			yeetimebreak2 = true;
			hitstop_full *= 3;
			hitstop *= 3;
			orig_knock *= 1.8;
			invincible = true;
			invince_time = 30;
			can_tech = false;
			can_wall_tech = false;

			with (other)
			{
				if (get_player_stocks( other.player ) == 1 || godmode)
					sound_play(muted?asset_get("sfx_abyss_capture_end"):sound_get("finishhit"));
				sound_play(muted?sound_get("whoosh"):sound_get("criticalhit"));
			}
		}
		checktimebreak = 0;
	}
	if ("yeetimebreak2" in self && yeetimebreak2 && (last_attack == AT_FSTRONG || last_attack == AT_USTRONG || last_attack == AT_DSTRONG || last_attack == AT_FSPECIAL) && hit_player_obj == other)
	{
		x += floor(old_hsp/40);
		y += floor(old_vsp/40);
		with (other) // big brain
		{
			if ((attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG || (attack == AT_FSPECIAL&&!other.shiver)) && state == PS_IDLE)
			{
				set_attack(AT_TAUNT_2); //auto taunt
				attack = AT_TAUNT_2;
				transformtime = 120;
			}
		}
	}
	if ("yeetimebreak2" in self && !hitstop)
		yeetimebreak2 = false;
	if ("shiver" in self && shiver)
	{
		if (!hitstop)
			shiver = false;
		else
		{
			x += (floor(get_gameplay_time()/3)%2==0?1:-1);
		}
	}
}

if (get_gameplay_time() == 1)
{
	ishomestage = (get_stage_data( SD_ID ) == "p\content\383980\2061009621");
	practicemode = (get_stage_data( SD_ID ) == 22);
	topcustom = y;
    set_attack(AT_TAUNT_2);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, (b_infamous?85:62));
    create_hitbox(AT_DSPECIAL, 2, x, y - floor(char_height/2));
	//with (oPlayer)
	//{
	//	if (id != other.id
	//	&& (url == "1897991088"
	//	|| url == "1951432839"
	//	|| url == "1979660428"
	//	|| url == "1988166549"
	//	|| url == "1991669071"
	//	|| url == "1992673239")) // Mudkid's characters
	//	{
	//		other.instakill = true;
	//		set_player_stocks( tempplayer, 69 );
	//		other.counterid = tempplayer;
	//	}
	//}
}
else if (get_gameplay_time() == (b_infamous?90:68))
{
	set_attack(b_infamous?AT_DTHROW:AT_TAUNT);
	if (b_infamous)
	{
		infamous_dir = spr_dir;
		spr_dir = 1;
	}
	with (oPlayer)
	{
		if ((url == "1897991088" // Mudkid's characters
			|| url == "1951432839"
			|| url == "1979660428"
			|| url == "1988166549"
			|| url == "1991669071"
			|| url == "1992673239"
			|| url == "1867634411" // The Duane
			|| url == "1989766083" // UI Fox
			|| url == "2024752207" // God of Ultra Instinct FALOX(FUSED)
			|| url == "1979475100" // 100% Accurate Ultra Turbo Ganondorf
			|| url == "2007412127" // Cosmic Ronald
			|| url == "1987379223" // 100% Accurate Accurate-er Jigglypuff
			|| url == "1991613574" // God Of Destruction Falco
			|| url == "1988068773" // SSGSS 100% Fox (Super Sayain Blue)
			|| url == "1890617624" // Ronald McDonald
			|| url == "1916799945" // Yeetta
			|| url == "2003736618" // 250% Accurate Cloud
			|| url == "1943572189" // Battlehaus
			|| url == "2004804058" // RonaldGaucho
			|| url == "2056705560" // Ronald Wins
			|| url == "2064772006" // Ronald w/ Epic Child Toys
			|| url == "2043149282" // 100% ULTRA INSTINCT COSMIC ULTRA RONALD
			|| url == "2003067816" // Pepsi Man
			//|| url == "2105527362" // The Knight
			|| url == "2179072217" // Psychos
			//|| url == "2265876548" // Matthew Favson
			|| url == "2278404078" // The Ultra Instinct God Duane
			|| url == "2264285165" // PEPSI MAN X
			|| url == "2257020796" // Literal Sun
			|| url == "2252952269" // Godbelly
			|| url == noone // you tried
			//|| (url == other.url && "stupidbossbool" in self && stupidbossbool) // e[b]ic godmode cpu ditto
			) && other.stupidbossbool && player != other.player)
		{
			other.godmode = true;
			other.counterid = self;
			other.transformplease = 3;
			other.muted = false;
			if (url == "1890617624" && "afakening" in self && afakening) // Ronald McDonald
			{
				other.yes = true; // yes
				//other.timebreak = true; // this will crash the game lol
			}
		}
		else if (url == "1871153050" // 100% Accurate Fox
				|| url == "1980762597" // Puff
				|| url == "1993556113" // Cloud
				|| url == "2000855966" // Wolf
				|| url == "2013448650" // Joker
				|| url == "1988220395" // Samus
				|| url == "2035128973" // Lucario
				|| url == "1970731843" // Meta Knight
				|| url == "1877253352" // Falco
				)
		{
			other.counterid = self;
			other.transformplease = 3;
			other.runeN = true;
			other.runesUpdated = true;
			other.muted = false;
		}
	}
	ChangeColours();
}

if (get_gameplay_time() == 120)
{
	if (instakill)
	{
		set_player_stocks( tempplayer, 621 );
		if (counterid != noone)
		{
			transformeffect = true;
		    attack = AT_EXTRA_2;
		    set_attack(AT_EXTRA_2);
		}
	}
	if (taunt_down && !muted) spawnbuddy(2);
}

if (muted && get_gameplay_time() < 120)
{
	if (taunt_pressed && (get_player_color(tempplayer) != 15 || get_gameplay_time() > 68))
	{
		muted = false;
		sound_play(asset_get("mfx_star"));
		muteaplha = 3;
	}
}
else
{
	muteaplha = max(muteaplha-0.1,0);
}

if (counterid == noone && get_gameplay_time() > 120)
{
	with (oPlayer)
	{
		if (id != other.id)
		{
			other.counterid = self;
			other.transformplease = 3;
		}
	}
}

with (oPlayer)
{
	if (url == "2007375819" && attack == AT_TAUNT && (window == 4 || window == 5)) // BlueyBot
	{
		with (other) 
		{
			var owo = spawn_hit_fx(other.x+55*other.spr_dir,other.y-65,tauntpics);
			owo.depth = -10;
		}
	}
}

if (object_index == oTestPlayer) ChangeColours();

if (!beast_deity && thevoid)
{
	//if (state != PS_RESPAWN && state != PS_DEAD)
	//	set_state(PS_HITSTUN);
	attack_down = false;
	special_down = false;
	jump_down = false;
	shield_down = false;
	strong_down = false;
	taunt_down = false;
	up_down = false;
	down_down = false;
	left_down = false;
	right_down = false;
	attack_pressed = false;
	special_pressed = false;
	jump_pressed = false;
	shield_pressed = false;
	strong_pressed = false;
	taunt_pressed = false;
	up_pressed = false;
	pressed_pressed = false;
	left_pressed = false;
	right_pressed = false;
	clear_button_buffer(PC_LEFT_HARD_PRESSED);
	clear_button_buffer(PC_RIGHT_HARD_PRESSED);
	clear_button_buffer(PC_UP_HARD_PRESSED);
	clear_button_buffer(PC_DOWN_HARD_PRESSED);
	clear_button_buffer(PC_LEFT_STRONG_PRESSED);
	clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
	clear_button_buffer(PC_UP_STRONG_PRESSED);
	clear_button_buffer(PC_DOWN_STRONG_PRESSED);
	clear_button_buffer(PC_LEFT_STICK_PRESSED);
	clear_button_buffer(PC_RIGHT_STICK_PRESSED);
	clear_button_buffer(PC_UP_STICK_PRESSED);
	clear_button_buffer(PC_DOWN_STICK_PRESSED);
	clear_button_buffer(PC_JUMP_PRESSED);
	clear_button_buffer(PC_ATTACK_PRESSED);
	clear_button_buffer(PC_SHIELD_PRESSED);
	clear_button_buffer(PC_SPECIAL_PRESSED);
	clear_button_buffer(PC_STRONG_PRESSED);
	clear_button_buffer(PC_TAUNT_PRESSED);
}

//Trummel Support
if trummelcodecneeded {
    trummelcodec = 17;
    trummelcodecmax = 5;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 1;

    trummelcodecline[0,1] = "That's Hikaru, a";
    trummelcodecline[0,2] = "light-type Kitsune!";
    trummelcodecline[0,3] = "";
    trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 2;

    trummelcodecline[1,1] = "Hikaru's fakie will";
    trummelcodecline[1,2] = "power up her Strongs";
    trummelcodecline[1,3] = "and Specials.";
    trummelcodecline[1,4] = "";

    //Page 2
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 2;

    trummelcodecline[2,1] = "Be careful not to hit";
    trummelcodecline[2,2] = "either her clones, or";
    trummelcodecline[2,3] = "her DSpecial.";
    trummelcodecline[2,4] = "";

    //Page 3
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "If we give her Fakie,";
    trummelcodecline[3,2] = "she'd be able to";
    trummelcodecline[3,3] = "transform into us and";
    trummelcodecline[3,4] = "slow down time.";

    //Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "Do NOT ever let that";
    trummelcodecline[4,2] = "happen. We'd be dead if";
    trummelcodecline[4,3] = "she gets that power!";
    trummelcodecline[4,4] = "";

    //Page 5
    trummelcodecspeaker[5] = 2;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "Hikaru...";
    trummelcodecline[5,2] = "Hee Ka Roo...";
    trummelcodecline[5,3] = "";
    trummelcodecline[5,4] = "";
}

if swallowed {
    swallowed = 0;
    var ability_spr = sprite_get("nspecial_kirby");
    var ability_hurt = sprite_get("nspecial_kirby_hurt");
    var ability_as1 = sprite_get("nspecial_proj");
    var ability_as2 = sprite_get("nspecial_proj2");
    var ability_as3 = sprite_get("nspecial_proj3");
	var myicon = sprite_get("my_bobblehead_sprite")

    with enemykirby {
    newicon = myicon;

    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
    set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 8);
    set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
    set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
	set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 24);

	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9); //charge 1
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 40);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 8);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 0);

	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 9); //charge 2
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 40);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 8);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 8);

	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 9); //charge 3
	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 40);
	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 8);
	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 16);

	set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1); //shoot 1
	set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 24);

	set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1); //shoot 2
	set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 24);
	set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED, -1);

	set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1); //shoot 3
	set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 24);
	set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HSPEED, -3);

	set_window_value(AT_EXTRA_3, 8, AG_WINDOW_TYPE, 1); //end
	set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAME_START, 24);
	set_window_value(AT_EXTRA_3, 8, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_EXTRA_3, 8, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_send"));
        
	set_num_hitboxes(AT_EXTRA_3, 3);

	set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 5);
	set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 60);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -33);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 39);
	set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 72);
	set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
	set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_as1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_as1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .3);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	//set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 8);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 67);
	//set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 11);

	set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 6);
	set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 60);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -33);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 39);
	set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 90);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 60);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 2);
	set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HITSTUN_MULTIPLIER, 0.5);
	set_hitbox_value(AT_EXTRA_3, 2, HG_DRIFT_MULTIPLIER, 0);
	set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_EXTRA_3, 2, HG_EXTRA_HITPAUSE, 6);
	//set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 1.5);
	set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 108);
	set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
	set_hitbox_value(AT_EXTRA_3, 2, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, ability_as2);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, ability_as2);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, .3);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	//set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 6);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DESTROY_EFFECT, 66);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
	//set_hitbox_value(AT_EXTRA_3, 2, HG_EFFECT, 11);

	set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 7);
	set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 100);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -33);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 39);
	set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 90);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 60);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 3);
	//set_hitbox_value(AT_EXTRA_3, 3, HG_EFFECT, 11);
	set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 9);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HITSTUN_MULTIPLIER, 1);
	set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_EXTRA_3, 3, HG_EXTRA_HITPAUSE, 16);
	//set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, 1.1);
	set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 72);
	set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
	set_hitbox_value(AT_EXTRA_3, 3, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, ability_as3);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_MASK, ability_as3);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, .3);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	//set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_HSPEED, 4);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_DESTROY_EFFECT, 66);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
    }
}

if enemykirby {
	with oPlayer {
		if (state == PS_HITSTUN && as_charging)
			as_charge = 0;
		else if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
			if ((window == 2 || window == 3) && window_timer >= 39){
			    ++as_charge;
			    ++window;
			    window_timer = -1;
			}
			if (window == 1){
				if ((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down))
				{
					hsp = -hsp;
					spr_dir = -spr_dir;
				}
				if (window_timer >= 9){
					if (as_charge == 2){
					    window = 7;
					    as_charge = 0;
					}
					else{
					    window = as_charge + 2;
					}
					window_timer = -1;
				}
			}
			else if (window == 2 || window == 3 || window == 4){
				as_charging = true;
				fall_through = down_down;
				if (down_down && !freemd && !free)
				{
					free = true;
				}
				if ((special_pressed && special_down) || attack_pressed || left_stick_pressed || right_stick_pressed){
					as_charging = false;
				    as_charge = 0;
				    window += 3;
				    window_timer = -1;
					if ((spr_dir == 1 && left_stick_down) || (spr_dir == -1 && right_stick_down))
					{
						spr_dir = -spr_dir;
					}
				}
				else if (has_airdodge && free && shield_pressed){
					as_charging = false;
				    set_state(PS_AIR_DODGE);
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
				}
				else if (!free && (left_pressed || right_pressed)){
					as_charging = false;
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
					if ((spr_dir == 1 && right_pressed) || (spr_dir == -1 && left_pressed))
						set_state(PS_ROLL_FORWARD);
					else
						set_state(PS_ROLL_BACKWARD);
				}
				else if (!free && shield_pressed){
					as_charging = false;
					window = 8;
					window_timer = -1;
					clear_button_buffer( PC_SHIELD_PRESSED );
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
				}
				else if (jump_pressed){
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
				    if (free){
						as_charging = false;
				        set_state(PS_IDLE_AIR);
				    }
				    else if (has_hit_player){
						as_charging = false;
				        set_state(PS_IDLE);
				    }
					else
					{
						as_charging = false;
						window = 8;
						window_timer = -1;
					}
				}
			}
			else if (window == 5 || window == 6 || window == 7){
				if (window_timer == get_window_value(AT_EXTRA_3, window, AG_WINDOW_LENGTH) - 1)
				{
					switch (window)
					{
					case 6:
						set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 5);
						break;
					case 7:
						set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 6);
						break;
					default:
						break;
					}
					window = 8;
					window_timer = -1;
				}
			}
			else if (window == 8 && window_timer == get_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH) - 1)
			{
				set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 4);
			}
		}
	}
}

// transformplease guide
// 1 - gives aura and copies taunt (Used for clones and counter)
// 2 - copies last attack (Used for fakie counter)
// 3 - copies taunt (Used for intro)

if (transformplease != 0 && counterid && instance_exists(counterid)) { // Copy Attack
	if (transformplease == 1 && !beast_deity)
	{
		aura = true;
		sound_play(sound_get("powerup"));
		as_flash = 16;
	}
	transProj = false;
	theirAnimSpeed = 0.5;
	theirAnim = sprite_get("nspecial_proj4");
	walksword = false;
	with (counterid)
	{
		if (select == clamp(select, 2, 15)) // base cast
		{
			switch (select)
			{
			case 2:
				if asset_get( "zet_walk_new" )
				{
					other.theirAnim = asset_get( "zet_walk_new" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 3:
				if asset_get( "orca_walk" )
				{
					other.theirAnim = asset_get( "orca_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 4:
				if asset_get( "bird_walk" )
				{
					other.theirAnim = asset_get( "bird_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 5:
				if asset_get( "bug_walk" )
				{
					other.theirAnim = asset_get( "bug_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 6:
				if asset_get( "smoke_walk" )
				{
					other.theirAnim = asset_get( "smoke_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 7:
				if asset_get( "ferret_walk" )
				{
					other.theirAnim = asset_get( "ferret_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 8:
				if asset_get( "goat_walk" )
				{
					other.theirAnim = asset_get( "goat_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 9:
				if asset_get( "bear_walk" )
				{
					other.theirAnim = asset_get( "bear_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 10:
				if asset_get( "cat_walk" )
				{
					other.theirAnim = asset_get( "cat_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 11:
				if asset_get( "frog_walk" )
				{
					other.theirAnim = asset_get( "frog_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 12:
				if asset_get( "sword_walk" )
				{
					other.theirAnim = asset_get( "sword_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
					other.walksword = true;
				}
				break;
			case 13:
				if asset_get( "wolf_walk" )
				{
					other.theirAnim = asset_get( "wolf_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 14:
				if asset_get( "mech_walk" )
				{
					other.theirAnim = asset_get( "mech_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			case 15:
				if asset_get( "gus_walk" )
				{
					other.theirAnim = asset_get( "gus_walk" );
					other.transProj = true;
					other.theirAnimSpeed = 0.2;
				}
				break;
			default:
				break;
			}
		}
		else if (sprite_get( "walk" ) != 2918 && "walk_anim_speed" in self && !small_sprites) //why 2918 is the index of the X null sprite
		{
			other.theirAnim = sprite_get( "walk" );
			other.theirAnimSpeed = walk_anim_speed;
			other.transProj = true;
		}
	}
	
	abyssHime_deathspr = theirAnim;

    var attackk = AT_DAIR; // set enemy dair into extra1

    //attack properties
	for (var i = 0; i < 11; ++i)
	{
		arrayofattackstuff[i] = 0;
	}
	with (counterid) {
		other.arrayofattackstuff[0] = get_attack_value(attackk, AG_CATEGORY);
		other.arrayofattackstuff[1] = get_attack_value(attackk, AG_SPRITE);
		other.arrayofattackstuff[2] = get_attack_value(attackk, AG_AIR_SPRITE);
		other.arrayofattackstuff[3] = get_attack_value(attackk, AG_HURTBOX_SPRITE);
		other.arrayofattackstuff[4] = get_attack_value(attackk, AG_HURTBOX_AIR_SPRITE);
		other.arrayofattackstuff[5] = get_attack_value(attackk, AG_NUM_WINDOWS);
		//other.arrayofattackstuff[6] = get_attack_value(attackk, AG_HAS_LANDING_LAG);
		//other.arrayofattackstuff[7] = get_attack_value(attackk, AG_OFF_LEDGE);
		//other.arrayofattackstuff[8] = get_attack_value(attackk, AG_LANDING_LAG);
		//other.arrayofattackstuff[9] = get_attack_value(attackk, AG_STRONG_CHARGE_WINDOW);
		//other.arrayofattackstuff[10] = get_attack_value(attackk, AG_USES_CUSTOM_GRAVITY);
	}
    set_attack_value(AT_EXTRA_1, AG_CATEGORY, arrayofattackstuff[0]);
    set_attack_value(AT_EXTRA_1, AG_SPRITE, arrayofattackstuff[1]);
    set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, arrayofattackstuff[2]);
    set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, arrayofattackstuff[3]);
    set_attack_value(AT_EXTRA_1, AG_HURTBOX_AIR_SPRITE, arrayofattackstuff[4]);
    set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, arrayofattackstuff[5]);
    //set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, arrayofattackstuff[6]);
    //set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, arrayofattackstuff[7]);
    //set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, arrayofattackstuff[8]);
    //set_attack_value(AT_EXTRA_1, AG_STRONG_CHARGE_WINDOW, arrayofattackstuff[9]);
    //set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, arrayofattackstuff[10]);

    var boio = get_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS);
    for (var window_num = 1; window_num <= boio; ++window_num) {
        //attack window properties
		for (var i = 0; i < 20; ++i)
	    {
			arrayofwindowstuff[i] = 0;
		}
		with (counterid) {
			other.arrayofwindowstuff[0] = get_window_value(attackk, window_num, AG_WINDOW_TYPE);
			other.arrayofwindowstuff[1] = get_window_value(attackk, window_num, AG_WINDOW_LENGTH);
			other.arrayofwindowstuff[2] = get_window_value(attackk, window_num, AG_WINDOW_ANIM_FRAMES);
			other.arrayofwindowstuff[3] = get_window_value(attackk, window_num, AG_WINDOW_ANIM_FRAME_START);
			//other.arrayofwindowstuff[4] = get_window_value(attackk, window_num, AG_WINDOW_HSPEED);
			//other.arrayofwindowstuff[5] = get_window_value(attackk, window_num, AG_WINDOW_VSPEED);
			//other.arrayofwindowstuff[6] = get_window_value(attackk, window_num, AG_WINDOW_HSPEED_TYPE);
			//other.arrayofwindowstuff[7] = get_window_value(attackk, window_num, AG_WINDOW_VSPEED_TYPE);
			//other.arrayofwindowstuff[8] = get_window_value(attackk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION);
			//other.arrayofwindowstuff[9] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION);
			//other.arrayofwindowstuff[10] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION);
			//other.arrayofwindowstuff[11] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_GRAVITY);
			//other.arrayofwindowstuff[12] = get_window_value(attackk, window_num, AG_WINDOW_HAS_WHIFFLAG);
			//other.arrayofwindowstuff[13] = get_window_value(attackk, window_num, AG_WINDOW_INVINCIBILITY);
			//other.arrayofwindowstuff[14] = get_window_value(attackk, window_num, AG_WINDOW_HITPAUSE_FRAME);
			//other.arrayofwindowstuff[15] = get_window_value(attackk, window_num, AG_WINDOW_CANCEL_TYPE);
			////other.arrayofwindowstuff[16] = set_window_value(attackk, window_num, AG_WINDOW_CANCEL_FRAME);
			other.arrayofwindowstuff[17] = get_window_value(attackk, window_num, AG_WINDOW_HAS_SFX);
			other.arrayofwindowstuff[18] = get_window_value(attackk, window_num, AG_WINDOW_SFX);
			other.arrayofwindowstuff[19] = get_window_value(attackk, window_num, AG_WINDOW_SFX_FRAME);
		}
        set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_TYPE, arrayofwindowstuff[0]);
        set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_LENGTH, arrayofwindowstuff[1]);
        set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_ANIM_FRAMES, arrayofwindowstuff[2]);
        set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_ANIM_FRAME_START, arrayofwindowstuff[3]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_HSPEED, arrayofwindowstuff[4]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_VSPEED, arrayofwindowstuff[5]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_HSPEED_TYPE, arrayofwindowstuff[6]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_VSPEED_TYPE, arrayofwindowstuff[7]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, arrayofwindowstuff[8]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, arrayofwindowstuff[9]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, arrayofwindowstuff[10]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_CUSTOM_GRAVITY, arrayofwindowstuff[11]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_HAS_WHIFFLAG, arrayofwindowstuff[12]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_INVINCIBILITY, arrayofwindowstuff[13]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_HITPAUSE_FRAME, arrayofwindowstuff[14]);
        //set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_CANCEL_TYPE, arrayofwindowstuff[15]);
        ////set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_CANCEL_FRAME, arrayofwindowstuff[16]);
        set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_HAS_SFX, arrayofwindowstuff[17]);
        set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_SFX, arrayofwindowstuff[18]);
        set_window_value(AT_EXTRA_1, window_num, AG_WINDOW_SFX_FRAME, arrayofwindowstuff[19]);
   }

	if (transformplease == 1 || transformplease == 3 || !aura || beast_deity)
	{
		attackk = AT_TAUNT; // Set enemy taunt into taunt2
	}
	else
	{
		attackk = last_attack; // Set enemy attack into taunt2
	}

    //attack properties
	for (var i = 0; i < 11; ++i)
	{
		arrayofattackstuff[i] = 0;
	}
	with (counterid) {
		other.arrayofattackstuff[0] = get_attack_value(attackk, AG_CATEGORY);
		other.arrayofattackstuff[1] = get_attack_value(attackk, AG_SPRITE);
		other.arrayofattackstuff[2] = get_attack_value(attackk, AG_AIR_SPRITE);
		other.arrayofattackstuff[3] = get_attack_value(attackk, AG_HURTBOX_SPRITE);
		other.arrayofattackstuff[4] = get_attack_value(attackk, AG_HURTBOX_AIR_SPRITE);
		other.arrayofattackstuff[5] = get_attack_value(attackk, AG_NUM_WINDOWS);
		//other.arrayofattackstuff[6] = get_attack_value(attackk, AG_HAS_LANDING_LAG);
		//other.arrayofattackstuff[7] = get_attack_value(attackk, AG_OFF_LEDGE);
		//other.arrayofattackstuff[8] = get_attack_value(attackk, AG_LANDING_LAG);
		//other.arrayofattackstuff[9] = get_attack_value(attackk, AG_STRONG_CHARGE_WINDOW);
		//other.arrayofattackstuff[10] = get_attack_value(attackk, AG_USES_CUSTOM_GRAVITY);
	}
    set_attack_value(AT_TAUNT_2, AG_CATEGORY, arrayofattackstuff[0]);
    set_attack_value(AT_TAUNT_2, AG_SPRITE, arrayofattackstuff[1]);
    set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, arrayofattackstuff[2]);
    set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, arrayofattackstuff[3]);
    set_attack_value(AT_TAUNT_2, AG_HURTBOX_AIR_SPRITE, arrayofattackstuff[4]);
    set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, arrayofattackstuff[5]);
    //set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, arrayofattackstuff[6]);
    //set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, arrayofattackstuff[7]);
    //set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, arrayofattackstuff[8]);
    //set_attack_value(AT_TAUNT_2, AG_STRONG_CHARGE_WINDOW, arrayofattackstuff[9]);
    //set_attack_value(AT_TAUNT_2, AG_USES_CUSTOM_GRAVITY, arrayofattackstuff[10]);

	var boi = get_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS);
	for (var window_num = 1; window_num <= boi; ++window_num) {
	    //attack window properties
		for (var i = 0; i < 20; ++i)
	    {
			arrayofwindowstuff[i] = 0;
		}
		with (counterid) {
			other.arrayofwindowstuff[0] = get_window_value(attackk, window_num, AG_WINDOW_TYPE);
			other.arrayofwindowstuff[1] = get_window_value(attackk, window_num, AG_WINDOW_LENGTH);
			other.arrayofwindowstuff[2] = get_window_value(attackk, window_num, AG_WINDOW_ANIM_FRAMES);
			other.arrayofwindowstuff[3] = get_window_value(attackk, window_num, AG_WINDOW_ANIM_FRAME_START);
			//other.arrayofwindowstuff[4] = get_window_value(attackk, window_num, AG_WINDOW_HSPEED);
			//other.arrayofwindowstuff[5] = get_window_value(attackk, window_num, AG_WINDOW_VSPEED);
			//other.arrayofwindowstuff[6] = get_window_value(attackk, window_num, AG_WINDOW_HSPEED_TYPE);
			//other.arrayofwindowstuff[7] = get_window_value(attackk, window_num, AG_WINDOW_VSPEED_TYPE);
			//other.arrayofwindowstuff[8] = get_window_value(attackk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION);
			//other.arrayofwindowstuff[9] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION);
			//other.arrayofwindowstuff[10] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION);
			//other.arrayofwindowstuff[11] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_GRAVITY);
			//other.arrayofwindowstuff[12] = get_window_value(attackk, window_num, AG_WINDOW_HAS_WHIFFLAG);
			//other.arrayofwindowstuff[13] = get_window_value(attackk, window_num, AG_WINDOW_INVINCIBILITY);
			//other.arrayofwindowstuff[14] = get_window_value(attackk, window_num, AG_WINDOW_HITPAUSE_FRAME);
			//other.arrayofwindowstuff[15] = get_window_value(attackk, window_num, AG_WINDOW_CANCEL_TYPE);
			////other.arrayofwindowstuff[16] = set_window_value(attackk, window_num, AG_WINDOW_CANCEL_FRAME);
			other.arrayofwindowstuff[17] = get_window_value(attackk, window_num, AG_WINDOW_HAS_SFX);
			other.arrayofwindowstuff[18] = get_window_value(attackk, window_num, AG_WINDOW_SFX);
			other.arrayofwindowstuff[19] = get_window_value(attackk, window_num, AG_WINDOW_SFX_FRAME);
		}
		    set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_TYPE, arrayofwindowstuff[0]);
			set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_LENGTH, arrayofwindowstuff[1]);
			set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_ANIM_FRAMES, arrayofwindowstuff[2]);
			set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_ANIM_FRAME_START, arrayofwindowstuff[3]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_HSPEED, arrayofwindowstuff[4]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_VSPEED, arrayofwindowstuff[5]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_HSPEED_TYPE, arrayofwindowstuff[6]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_VSPEED_TYPE, arrayofwindowstuff[7]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, arrayofwindowstuff[8]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, arrayofwindowstuff[9]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, arrayofwindowstuff[10]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_CUSTOM_GRAVITY, arrayofwindowstuff[11]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_HAS_WHIFFLAG, arrayofwindowstuff[12]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_INVINCIBILITY, arrayofwindowstuff[13]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_HITPAUSE_FRAME, arrayofwindowstuff[14]);
			//set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_CANCEL_TYPE, arrayofwindowstuff[15]);
			////set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_CANCEL_FRAME, arrayofwindowstuff[16]);
			set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_HAS_SFX, arrayofwindowstuff[17]);
			set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_SFX, arrayofwindowstuff[18]);
			set_window_value(AT_TAUNT_2, window_num, AG_WINDOW_SFX_FRAME, arrayofwindowstuff[19]);
	}
	
	transformplease = 0;
	if ("Hikaru_Title" in counterid)
		Hikaru_Title2 = counterid.Hikaru_Title;
	/*
    //attack hitbox properties
	var numhitboxes;
	with counterid {
		numhitboxes = get_num_hitboxes(AT_EXTRA_1);
	}

    set_num_hitboxes(AT_EXTRA_1, 0);
	
    //individual hitbox properties
    for (var hitbox_num = 1; hitbox_num <= numhitboxes; ++hitbox_num)
	{
		for (var i = 0; i < 53; ++i)
		{
			arrayofstuff[i] = 0;
		}
		with (counterid) {
			//other.arrayofstuff[0] = get_hitbox_value(attackk, hitbox_num, HG_PARENT_HITBOX);
			//other.arrayofstuff[1] = get_hitbox_value(attackk, hitbox_num, HG_HITBOX_TYPE);
			other.arrayofstuff[2] = get_hitbox_value(attackk, hitbox_num, HG_WINDOW);
			other.arrayofstuff[3] = get_hitbox_value(attackk, hitbox_num, HG_WINDOW_CREATION_FRAME);
			//other.arrayofstuff[4] = get_hitbox_value(attackk, hitbox_num, HG_LIFETIME);
			//other.arrayofstuff[5] = get_hitbox_value(attackk, hitbox_num, HG_HITBOX_X);
			//other.arrayofstuff[6] = get_hitbox_value(attackk, hitbox_num, HG_HITBOX_Y);
			//other.arrayofstuff[7] = get_hitbox_value(attackk, hitbox_num, HG_WIDTH);
			//other.arrayofstuff[8] = get_hitbox_value(attackk, hitbox_num, HG_HEIGHT);
			//other.arrayofstuff[9] = get_hitbox_value(attackk, hitbox_num, HG_SHAPE);
			//other.arrayofstuff[10] = get_hitbox_value(attackk, hitbox_num, HG_PRIORITY);
			//other.arrayofstuff[11] = get_hitbox_value(attackk, hitbox_num, HG_DAMAGE);
			//other.arrayofstuff[12] = get_hitbox_value(attackk, hitbox_num, HG_ANGLE);
			//other.arrayofstuff[13] = get_hitbox_value(attackk, hitbox_num, HG_BASE_KNOCKBACK);
			//other.arrayofstuff[14] = get_hitbox_value(attackk, hitbox_num, HG_KNOCKBACK_SCALING);
			//other.arrayofstuff[15] = get_hitbox_value(attackk, hitbox_num, HG_EFFECT);
			//other.arrayofstuff[16] = get_hitbox_value(attackk, hitbox_num, HG_BASE_HITPAUSE);
			//other.arrayofstuff[17] = get_hitbox_value(attackk, hitbox_num, HG_HITPAUSE_SCALING);
			//other.arrayofstuff[18] = get_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT);
			//other.arrayofstuff[19] = get_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET);
			//other.arrayofstuff[20] = get_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET);
			other.arrayofstuff[21] = get_hitbox_value(attackk, hitbox_num, HG_HIT_SFX);
			//other.arrayofstuff[22] = get_hitbox_value(attackk, hitbox_num, HG_ANGLE_FLIPPER);
			//other.arrayofstuff[23] = get_hitbox_value(attackk, hitbox_num, HG_EXTRA_HITPAUSE);
			//other.arrayofstuff[24] = get_hitbox_value(attackk, hitbox_num, HG_GROUNDEDNESS);
			//other.arrayofstuff[25] = get_hitbox_value(attackk, hitbox_num, HG_EXTRA_CAMERA_SHAKE);
			//other.arrayofstuff[26] = get_hitbox_value(attackk, hitbox_num, HG_IGNORES_PROJECTILES);
			//other.arrayofstuff[27] = get_hitbox_value(attackk, hitbox_num, HG_HIT_LOCKOUT);
			//other.arrayofstuff[28] = get_hitbox_value(attackk, hitbox_num, HG_EXTENDED_PARRY_STUN);
			//other.arrayofstuff[29] = get_hitbox_value(attackk, hitbox_num, HG_HITBOX_GROUP);
			//other.arrayofstuff[30] = get_hitbox_value(attackk, hitbox_num, HG_HITSTUN_MULTIPLIER);
			//other.arrayofstuff[31] = get_hitbox_value(attackk, hitbox_num, HG_DRIFT_MULTIPLIER);
			//other.arrayofstuff[32] = get_hitbox_value(attackk, hitbox_num, HG_SDI_MULTIPLIER);
			//other.arrayofstuff[33] = get_hitbox_value(attackk, hitbox_num, HG_TECHABLE);
			//other.arrayofstuff[34] = get_hitbox_value(attackk, hitbox_num, HG_FORCE_FLINCH);
			//other.arrayofstuff[35] = get_hitbox_value(attackk, hitbox_num, HG_FINAL_BASE_KNOCKBACK);
			//other.arrayofstuff[36] = get_hitbox_value(attackk, hitbox_num, HG_THROWS_ROCK);
			//other.arrayofstuff[37] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_SPRITE);
			//other.arrayofstuff[38] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_MASK);
			//other.arrayofstuff[39] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_ANIM_SPEED);
			//other.arrayofstuff[40] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_HSPEED);
			//other.arrayofstuff[41] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_VSPEED);
			//other.arrayofstuff[42] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GRAVITY);
			//other.arrayofstuff[43] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GROUND_FRICTION);
			//other.arrayofstuff[44] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_AIR_FRICTION);
			//other.arrayofstuff[45] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR);
			//other.arrayofstuff[46] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR);
			//other.arrayofstuff[47] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR);
			//other.arrayofstuff[48] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_LIFESPAN);
			//other.arrayofstuff[49] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_PARRY_STUN);
			//other.arrayofstuff[50] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT);
			//other.arrayofstuff[51] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT);
			//other.arrayofstuff[52] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT);
		}
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PARENT_HITBOX, arrayofstuff[0]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HITBOX_TYPE, arrayofstuff[1]);
        set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_WINDOW, arrayofstuff[2]);
        set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_WINDOW_CREATION_FRAME, arrayofstuff[3]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_LIFETIME, arrayofstuff[4]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HITBOX_X, arrayofstuff[5]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HITBOX_Y, arrayofstuff[6]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_WIDTH, arrayofstuff[7]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HEIGHT, arrayofstuff[8]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_SHAPE, arrayofstuff[9]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PRIORITY, arrayofstuff[10]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_DAMAGE, arrayofstuff[11]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_ANGLE, arrayofstuff[12]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_BASE_KNOCKBACK, arrayofstuff[13]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_KNOCKBACK_SCALING, arrayofstuff[14]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_EFFECT, arrayofstuff[15]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_BASE_HITPAUSE, arrayofstuff[16]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HITPAUSE_SCALING, arrayofstuff[17]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_VISUAL_EFFECT, arrayofstuff[18]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, arrayofstuff[19]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, arrayofstuff[20]);
        set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HIT_SFX, arrayofstuff[21]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_ANGLE_FLIPPER, arrayofstuff[22]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_EXTRA_HITPAUSE, arrayofstuff[23]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_GROUNDEDNESS, arrayofstuff[24]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_EXTRA_CAMERA_SHAKE, arrayofstuff[25]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_IGNORES_PROJECTILES, arrayofstuff[26]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HIT_LOCKOUT, arrayofstuff[27]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_EXTENDED_PARRY_STUN, arrayofstuff[28]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HITBOX_GROUP, arrayofstuff[29]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_HITSTUN_MULTIPLIER, arrayofstuff[30]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_DRIFT_MULTIPLIER, arrayofstuff[31]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_SDI_MULTIPLIER, arrayofstuff[32]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_TECHABLE, arrayofstuff[33]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_FORCE_FLINCH, arrayofstuff[34]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_FINAL_BASE_KNOCKBACK, arrayofstuff[35]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_THROWS_ROCK, arrayofstuff[36]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_SPRITE, arrayofstuff[37]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_MASK, arrayofstuff[38]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_ANIM_SPEED, arrayofstuff[39]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_HSPEED, arrayofstuff[40]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_VSPEED, arrayofstuff[41]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_GRAVITY, arrayofstuff[42]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, arrayofstuff[43]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_AIR_FRICTION, arrayofstuff[44]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, arrayofstuff[45]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, arrayofstuff[46]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, arrayofstuff[47]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_LIFESPAN, arrayofstuff[48]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_PARRY_STUN, arrayofstuff[49]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, arrayofstuff[50]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, arrayofstuff[51]);
        //set_hitbox_value(AT_EXTRA_1, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, arrayofstuff[52]);
    }*/
}

#define tutorialPerish()
{
	hitstop = 1;
	hitpause = true;
	old_hsp = 0;
	old_vsp = 0;
	hsp = 0;
	vsp = 0;
	can_fast_fall = false;
	set_state(PS_IDLE_AIR);
	djumps = max_djumps;
	has_airdodge = false;
	invincible = true;
	invince_time = 1;
}

#define menuNav(maxv)
{
	if (up_down)
	{
		holdtimer += 1;
		if (holdtimer % 6 == 1 && (holdtimer > 30 || holdtimer == 1))
		{
			sound_play(asset_get("mfx_option"));
			tutmenu = max(tutmenu-1,0);
		}
	}
	else if (down_down)
	{
		holdtimer += 1;
		if (holdtimer % 6 == 1 && (holdtimer > 30 || holdtimer == 1))
		{
			sound_play(asset_get("mfx_option"));
			tutmenu = min(tutmenu+1,maxv-1);
		}
	}
	else
	{
		holdtimer = 0;
	}
}

#define zoroarkMode()
{
	with (oPlayer)
	{
		if (player != other.tempplayer)
			other.o_copyplayer = self;
	}
	if (o_copyplayer && o_copyplayer != noone && instance_exists(o_copyplayer))
	{
		var attackk;
		sound_play(sound_get("zoroark"));

		for (var noattacks = 0; noattacks < 37; ++noattacks)
		{
			switch (noattacks)
			{
			case 0:
				attackk = AT_JAB;
				break;
			case 1:
				attackk = AT_DATTACK;
				break;
			case 2:
				//attackk = AT_NSPECIAL;
				break;
			case 3:
				//attackk = AT_FSPECIAL;
				break;
			case 4:
				//attackk = AT_USPECIAL;
				break;
			case 5:
				//attackk = AT_DSPECIAL;
				break;
			case 6:
				attackk = AT_FSTRONG;
				break;
			case 7:
				attackk = AT_USTRONG;
				break;
			case 8:
				attackk = AT_DSTRONG;
				break;
			case 9:
				attackk = AT_FTILT;
				break;
			case 10:
				attackk = AT_UTILT;
				break;
			case 11:
				attackk = AT_DTILT;
				break;
			case 12:
				attackk = AT_NAIR;
				break;
			case 13:
				attackk = AT_FAIR;
				break;
			case 14:
				attackk = AT_BAIR;
				break;
			case 15:
				attackk = AT_DAIR;
				break;
			case 16:
				attackk = AT_UAIR;
				break;
			case 17:
				//attackk = AT_TAUNT;
				break;
			case 18:
				attackk = AT_NSPECIAL_2;
				break;
			case 19:
				attackk = AT_NSPECIAL_AIR;
				break;
			case 20:
				attackk = AT_FSPECIAL_2;
				break;
			case 21:
				attackk = AT_FSPECIAL_AIR;
				break;
			case 22:
				attackk = AT_USPECIAL_2;
				break;
			case 23:
				attackk = AT_USPECIAL_GROUND;
				break;
			case 24:
				//attackk = AT_DSPECIAL_2;
				break;
			case 25:
				//attackk = AT_DSPECIAL_AIR;
				break;
			case 26:
				attackk = AT_FSTRONG_2;
				break;
			case 27:
				attackk = AT_USTRONG_2;
				break;
			case 28:
				attackk = AT_DSTRONG_2;
				break;
			case 29:
				attackk = AT_FTHROW;
				break;
			case 30:
				attackk = AT_UTHROW;
				break;
			case 31:
				//attackk = AT_DTHROW;
				break;
			case 32:
				//attackk = AT_NTHROW;
				break;
			case 33:
				//attackk = AT_TAUNT_2;
				break;
			case 34:
				attackk = AT_EXTRA_1;
				break;
			case 35:
				attackk = AT_EXTRA_2;
				break;
			case 36:
				attackk = AT_EXTRA_3;
				break;
			default:
				//attackk = AT_JAB;
				break;
			}

			if (attackk)
			{
				//attack properties
				for (var i = 0; i < 11; ++i)
				{
					arrayofattackstuff[i] = 0;
				}
				with (o_copyplayer) {
					other.arrayofattackstuff[0] = get_attack_value(attackk, AG_CATEGORY);
					other.arrayofattackstuff[1] = get_attack_value(attackk, AG_SPRITE);
					other.arrayofattackstuff[2] = get_attack_value(attackk, AG_AIR_SPRITE);
					other.arrayofattackstuff[3] = get_attack_value(attackk, AG_HURTBOX_SPRITE);
					other.arrayofattackstuff[4] = get_attack_value(attackk, AG_HURTBOX_AIR_SPRITE);
					other.arrayofattackstuff[5] = get_attack_value(attackk, AG_NUM_WINDOWS);
					other.arrayofattackstuff[6] = get_attack_value(attackk, AG_HAS_LANDING_LAG);
					other.arrayofattackstuff[7] = get_attack_value(attackk, AG_OFF_LEDGE);
					other.arrayofattackstuff[8] = get_attack_value(attackk, AG_LANDING_LAG);
					other.arrayofattackstuff[9] = get_attack_value(attackk, AG_STRONG_CHARGE_WINDOW);
					other.arrayofattackstuff[10] = get_attack_value(attackk, AG_USES_CUSTOM_GRAVITY);
				}
				set_attack_value(attackk, AG_CATEGORY, arrayofattackstuff[0]);
				set_attack_value(attackk, AG_SPRITE, arrayofattackstuff[1]);
				set_attack_value(attackk, AG_AIR_SPRITE, arrayofattackstuff[2]);
				set_attack_value(attackk, AG_HURTBOX_SPRITE, arrayofattackstuff[3]);
				set_attack_value(attackk, AG_HURTBOX_AIR_SPRITE, arrayofattackstuff[4]);
				set_attack_value(attackk, AG_NUM_WINDOWS, arrayofattackstuff[5]);
				set_attack_value(attackk, AG_HAS_LANDING_LAG, arrayofattackstuff[6]);
				set_attack_value(attackk, AG_OFF_LEDGE, arrayofattackstuff[7]);
				set_attack_value(attackk, AG_LANDING_LAG, arrayofattackstuff[8]);
				set_attack_value(attackk, AG_STRONG_CHARGE_WINDOW, arrayofattackstuff[9]);
				set_attack_value(attackk, AG_USES_CUSTOM_GRAVITY, arrayofattackstuff[10]);

				var boi = get_attack_value(attackk, AG_NUM_WINDOWS);
				for (var window_num = 1; window_num <= boi; ++window_num) {
				    //attack window properties
					for (var i = 0; i < 20; ++i)
				    {
						arrayofwindowstuff[i] = 0;
					}
					with (o_copyplayer) {
						other.arrayofwindowstuff[0] = get_window_value(attackk, window_num, AG_WINDOW_TYPE);
						other.arrayofwindowstuff[1] = get_window_value(attackk, window_num, AG_WINDOW_LENGTH);
						other.arrayofwindowstuff[2] = get_window_value(attackk, window_num, AG_WINDOW_ANIM_FRAMES);
						other.arrayofwindowstuff[3] = get_window_value(attackk, window_num, AG_WINDOW_ANIM_FRAME_START);
						other.arrayofwindowstuff[4] = get_window_value(attackk, window_num, AG_WINDOW_HSPEED);
						other.arrayofwindowstuff[5] = get_window_value(attackk, window_num, AG_WINDOW_VSPEED);
						other.arrayofwindowstuff[6] = get_window_value(attackk, window_num, AG_WINDOW_HSPEED_TYPE);
						other.arrayofwindowstuff[7] = get_window_value(attackk, window_num, AG_WINDOW_VSPEED_TYPE);
						other.arrayofwindowstuff[8] = get_window_value(attackk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION);
						other.arrayofwindowstuff[9] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION);
						other.arrayofwindowstuff[10] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION);
						other.arrayofwindowstuff[11] = get_window_value(attackk, window_num, AG_WINDOW_CUSTOM_GRAVITY);
						other.arrayofwindowstuff[12] = get_window_value(attackk, window_num, AG_WINDOW_HAS_WHIFFLAG);
						other.arrayofwindowstuff[13] = get_window_value(attackk, window_num, AG_WINDOW_INVINCIBILITY);
						other.arrayofwindowstuff[14] = get_window_value(attackk, window_num, AG_WINDOW_HITPAUSE_FRAME);
						other.arrayofwindowstuff[15] = get_window_value(attackk, window_num, AG_WINDOW_CANCEL_TYPE);
						//other.arrayofwindowstuff[16] = set_window_value(attackk, window_num, AG_WINDOW_CANCEL_FRAME);
						other.arrayofwindowstuff[17] = get_window_value(attackk, window_num, AG_WINDOW_HAS_SFX);
						other.arrayofwindowstuff[18] = get_window_value(attackk, window_num, AG_WINDOW_SFX);
						other.arrayofwindowstuff[19] = get_window_value(attackk, window_num, AG_WINDOW_SFX_FRAME);
					}
					    set_window_value(attackk, window_num, AG_WINDOW_TYPE, arrayofwindowstuff[0]);
						set_window_value(attackk, window_num, AG_WINDOW_LENGTH, arrayofwindowstuff[1]);
						set_window_value(attackk, window_num, AG_WINDOW_ANIM_FRAMES, arrayofwindowstuff[2]);
						set_window_value(attackk, window_num, AG_WINDOW_ANIM_FRAME_START, arrayofwindowstuff[3]);
						set_window_value(attackk, window_num, AG_WINDOW_HSPEED, arrayofwindowstuff[4]);
						set_window_value(attackk, window_num, AG_WINDOW_VSPEED, arrayofwindowstuff[5]);
						set_window_value(attackk, window_num, AG_WINDOW_HSPEED_TYPE, arrayofwindowstuff[6]);
						set_window_value(attackk, window_num, AG_WINDOW_VSPEED_TYPE, arrayofwindowstuff[7]);
						set_window_value(attackk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, arrayofwindowstuff[8]);
						set_window_value(attackk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, arrayofwindowstuff[9]);
						set_window_value(attackk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, arrayofwindowstuff[10]);
						set_window_value(attackk, window_num, AG_WINDOW_CUSTOM_GRAVITY, arrayofwindowstuff[11]);
						set_window_value(attackk, window_num, AG_WINDOW_HAS_WHIFFLAG, arrayofwindowstuff[12]);
						set_window_value(attackk, window_num, AG_WINDOW_INVINCIBILITY, arrayofwindowstuff[13]);
						set_window_value(attackk, window_num, AG_WINDOW_HITPAUSE_FRAME, arrayofwindowstuff[14]);
						set_window_value(attackk, window_num, AG_WINDOW_CANCEL_TYPE, arrayofwindowstuff[15]);
						//set_window_value(attackk, window_num, AG_WINDOW_CANCEL_FRAME, arrayofwindowstuff[16]);
						set_window_value(attackk, window_num, AG_WINDOW_HAS_SFX, arrayofwindowstuff[17]);
						set_window_value(attackk, window_num, AG_WINDOW_SFX, arrayofwindowstuff[18]);
						set_window_value(attackk, window_num, AG_WINDOW_SFX_FRAME, arrayofwindowstuff[19]);
				}
				
				//attack hitbox properties
				var numhitboxes;
				with o_copyplayer {
					numhitboxes = get_num_hitboxes(attackk);
				}
				set_num_hitboxes(attackk, numhitboxes);
				
				//individual hitbox properties
				var boiii = get_num_hitboxes(attackk);
				for (var hitbox_num = 1; hitbox_num <= boiii; ++hitbox_num) {
					for (var i = 0; i < 53; ++i)
					{
						arrayofstuff[i] = 0;
					}
					with (o_copyplayer) {
						other.arrayofstuff[0] = get_hitbox_value(attackk, hitbox_num, HG_PARENT_HITBOX);
						other.arrayofstuff[1] = get_hitbox_value(attackk, hitbox_num, HG_HITBOX_TYPE);
						other.arrayofstuff[2] = get_hitbox_value(attackk, hitbox_num, HG_WINDOW);
						other.arrayofstuff[3] = get_hitbox_value(attackk, hitbox_num, HG_WINDOW_CREATION_FRAME);
						other.arrayofstuff[4] = get_hitbox_value(attackk, hitbox_num, HG_LIFETIME);
						other.arrayofstuff[5] = get_hitbox_value(attackk, hitbox_num, HG_HITBOX_X);
						other.arrayofstuff[6] = get_hitbox_value(attackk, hitbox_num, HG_HITBOX_Y);
						other.arrayofstuff[7] = get_hitbox_value(attackk, hitbox_num, HG_WIDTH);
						other.arrayofstuff[8] = get_hitbox_value(attackk, hitbox_num, HG_HEIGHT);
						other.arrayofstuff[9] = get_hitbox_value(attackk, hitbox_num, HG_SHAPE);
						other.arrayofstuff[10] = get_hitbox_value(attackk, hitbox_num, HG_PRIORITY);
						other.arrayofstuff[11] = get_hitbox_value(attackk, hitbox_num, HG_DAMAGE);
						other.arrayofstuff[12] = get_hitbox_value(attackk, hitbox_num, HG_ANGLE);
						other.arrayofstuff[13] = get_hitbox_value(attackk, hitbox_num, HG_BASE_KNOCKBACK);
						other.arrayofstuff[14] = get_hitbox_value(attackk, hitbox_num, HG_KNOCKBACK_SCALING);
						other.arrayofstuff[15] = get_hitbox_value(attackk, hitbox_num, HG_EFFECT);
						other.arrayofstuff[16] = get_hitbox_value(attackk, hitbox_num, HG_BASE_HITPAUSE);
						other.arrayofstuff[17] = get_hitbox_value(attackk, hitbox_num, HG_HITPAUSE_SCALING);
						other.arrayofstuff[18] = get_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT);
						other.arrayofstuff[19] = get_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET);
						other.arrayofstuff[20] = get_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET);
						other.arrayofstuff[21] = get_hitbox_value(attackk, hitbox_num, HG_HIT_SFX);
						other.arrayofstuff[22] = get_hitbox_value(attackk, hitbox_num, HG_ANGLE_FLIPPER);
						other.arrayofstuff[23] = get_hitbox_value(attackk, hitbox_num, HG_EXTRA_HITPAUSE);
						other.arrayofstuff[24] = get_hitbox_value(attackk, hitbox_num, HG_GROUNDEDNESS);
						other.arrayofstuff[25] = get_hitbox_value(attackk, hitbox_num, HG_EXTRA_CAMERA_SHAKE);
						other.arrayofstuff[26] = get_hitbox_value(attackk, hitbox_num, HG_IGNORES_PROJECTILES);
						other.arrayofstuff[27] = get_hitbox_value(attackk, hitbox_num, HG_HIT_LOCKOUT);
						other.arrayofstuff[28] = get_hitbox_value(attackk, hitbox_num, HG_EXTENDED_PARRY_STUN);
						other.arrayofstuff[29] = get_hitbox_value(attackk, hitbox_num, HG_HITBOX_GROUP);
						other.arrayofstuff[30] = get_hitbox_value(attackk, hitbox_num, HG_HITSTUN_MULTIPLIER);
						other.arrayofstuff[31] = get_hitbox_value(attackk, hitbox_num, HG_DRIFT_MULTIPLIER);
						other.arrayofstuff[32] = get_hitbox_value(attackk, hitbox_num, HG_SDI_MULTIPLIER);
						other.arrayofstuff[33] = get_hitbox_value(attackk, hitbox_num, HG_TECHABLE);
						other.arrayofstuff[34] = get_hitbox_value(attackk, hitbox_num, HG_FORCE_FLINCH);
						other.arrayofstuff[35] = get_hitbox_value(attackk, hitbox_num, HG_FINAL_BASE_KNOCKBACK);
						other.arrayofstuff[36] = get_hitbox_value(attackk, hitbox_num, HG_THROWS_ROCK);
						other.arrayofstuff[37] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_SPRITE);
						other.arrayofstuff[38] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_MASK);
						other.arrayofstuff[39] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_ANIM_SPEED);
						other.arrayofstuff[40] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_HSPEED);
						other.arrayofstuff[41] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_VSPEED);
						other.arrayofstuff[42] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GRAVITY);
						other.arrayofstuff[43] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GROUND_FRICTION);
						other.arrayofstuff[44] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_AIR_FRICTION);
						other.arrayofstuff[45] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR);
						other.arrayofstuff[46] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR);
						other.arrayofstuff[47] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR);
						other.arrayofstuff[48] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_LIFESPAN);
						other.arrayofstuff[49] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_PARRY_STUN);
						other.arrayofstuff[50] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT);
						other.arrayofstuff[51] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT);
						other.arrayofstuff[52] = get_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT);
					}
				    set_hitbox_value(attackk, hitbox_num, HG_PARENT_HITBOX, arrayofstuff[0]);
				    set_hitbox_value(attackk, hitbox_num, HG_HITBOX_TYPE, arrayofstuff[1]);
				    set_hitbox_value(attackk, hitbox_num, HG_WINDOW, arrayofstuff[2]);
				    set_hitbox_value(attackk, hitbox_num, HG_WINDOW_CREATION_FRAME, arrayofstuff[3]);
				    set_hitbox_value(attackk, hitbox_num, HG_LIFETIME, arrayofstuff[4]);
				    set_hitbox_value(attackk, hitbox_num, HG_HITBOX_X, arrayofstuff[5]);
				    set_hitbox_value(attackk, hitbox_num, HG_HITBOX_Y, arrayofstuff[6]);
				    set_hitbox_value(attackk, hitbox_num, HG_WIDTH, arrayofstuff[7]);
				    set_hitbox_value(attackk, hitbox_num, HG_HEIGHT, arrayofstuff[8]);
				    set_hitbox_value(attackk, hitbox_num, HG_SHAPE, arrayofstuff[9]);
				    set_hitbox_value(attackk, hitbox_num, HG_PRIORITY, arrayofstuff[10]);
				    set_hitbox_value(attackk, hitbox_num, HG_DAMAGE, arrayofstuff[11]);
				    set_hitbox_value(attackk, hitbox_num, HG_ANGLE, arrayofstuff[12]);
				    set_hitbox_value(attackk, hitbox_num, HG_BASE_KNOCKBACK, arrayofstuff[13]);
				    set_hitbox_value(attackk, hitbox_num, HG_KNOCKBACK_SCALING, arrayofstuff[14]);
				    set_hitbox_value(attackk, hitbox_num, HG_EFFECT, arrayofstuff[15]);
				    set_hitbox_value(attackk, hitbox_num, HG_BASE_HITPAUSE, arrayofstuff[16]);
				    set_hitbox_value(attackk, hitbox_num, HG_HITPAUSE_SCALING, arrayofstuff[17]);
				    set_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT, arrayofstuff[18]);
				    set_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, arrayofstuff[19]);
				    set_hitbox_value(attackk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, arrayofstuff[20]);
				    set_hitbox_value(attackk, hitbox_num, HG_HIT_SFX, arrayofstuff[21]);
				    set_hitbox_value(attackk, hitbox_num, HG_ANGLE_FLIPPER, arrayofstuff[22]);
				    set_hitbox_value(attackk, hitbox_num, HG_EXTRA_HITPAUSE, arrayofstuff[23]);
				    set_hitbox_value(attackk, hitbox_num, HG_GROUNDEDNESS, arrayofstuff[24]);
				    set_hitbox_value(attackk, hitbox_num, HG_EXTRA_CAMERA_SHAKE, arrayofstuff[25]);
				    set_hitbox_value(attackk, hitbox_num, HG_IGNORES_PROJECTILES, arrayofstuff[26]);
				    set_hitbox_value(attackk, hitbox_num, HG_HIT_LOCKOUT, arrayofstuff[27]);
				    set_hitbox_value(attackk, hitbox_num, HG_EXTENDED_PARRY_STUN, arrayofstuff[28]);
				    set_hitbox_value(attackk, hitbox_num, HG_HITBOX_GROUP, arrayofstuff[29]);
				    set_hitbox_value(attackk, hitbox_num, HG_HITSTUN_MULTIPLIER, arrayofstuff[30]);
				    set_hitbox_value(attackk, hitbox_num, HG_DRIFT_MULTIPLIER, arrayofstuff[31]);
				    set_hitbox_value(attackk, hitbox_num, HG_SDI_MULTIPLIER, arrayofstuff[32]);
				    set_hitbox_value(attackk, hitbox_num, HG_TECHABLE, arrayofstuff[33]);
				    set_hitbox_value(attackk, hitbox_num, HG_FORCE_FLINCH, arrayofstuff[34]);
				    set_hitbox_value(attackk, hitbox_num, HG_FINAL_BASE_KNOCKBACK, arrayofstuff[35]);
				    set_hitbox_value(attackk, hitbox_num, HG_THROWS_ROCK, arrayofstuff[36]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_SPRITE, arrayofstuff[37]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_MASK, arrayofstuff[38]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, arrayofstuff[39]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_HSPEED, arrayofstuff[40]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_VSPEED, arrayofstuff[41]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GRAVITY, arrayofstuff[42]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, arrayofstuff[43]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_AIR_FRICTION, arrayofstuff[44]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, arrayofstuff[45]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, arrayofstuff[46]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, arrayofstuff[47]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_LIFESPAN, arrayofstuff[48]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_PARRY_STUN, arrayofstuff[49]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, arrayofstuff[50]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, arrayofstuff[51]);
				    set_hitbox_value(attackk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, arrayofstuff[52]);
				}
			}
		}
	}
}

#define spawnbuddy(type)
{
	var owo = instance_create(x, y, "obj_article2"); owo.tick = type;
}

#define ChangeColours
{
	if (get_player_color(tempplayer) == 15)
	{
		var num = argument_count>0?altnum:(attack_down + special_down*2 + strong_down*4 + jump_down*8 + shield_down*16 + taunt_down*32);
		num = min(num, array_length_1d(alts)-1);
		set_color_profile_slot(15,0,alts[num].r1,alts[num].g1,alts[num].b1);
		set_color_profile_slot(15,1,alts[num].r2,alts[num].g2,alts[num].b2);
		set_color_profile_slot(15,2,alts[num].r3,alts[num].g3,alts[num].b3);
		set_color_profile_slot(15,3,alts[num].r4,alts[num].g4,alts[num].b4);
		set_color_profile_slot(15,4,alts[num].r5,alts[num].g5,alts[num].b5);
		set_article_color_slot(0,alts[num].r1,alts[num].g1,alts[num].b1);
		set_article_color_slot(1,alts[num].r2,alts[num].g2,alts[num].b2);
		set_article_color_slot(2,alts[num].r3,alts[num].g3,alts[num].b3);
		set_article_color_slot(3,alts[num].r4,alts[num].g4,alts[num].b4);
		set_article_color_slot(4,alts[num].r5,alts[num].g5,alts[num].b5);

		if (num > 0 && object_index != oTestPlayer) sound_play(asset_get("mfx_star"));
		altnum = num;
		init_shader();
	}
}