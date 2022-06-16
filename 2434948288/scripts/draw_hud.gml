if ("practice" in self)
{
	// taunt menu
	if (practice && (!variable_instance_exists(self, "temp_level") || temp_level==0))
	{
		draw_set_alpha(tutAlpha);
		ResetText();
		switch (menuState)
		{
			default:
				draw_debug_text(temp_x + 158, temp_y - 10 + floor(tutAlpha*4)*2-8, "Taunt~");
				break;
			case 1:
				AddText("Basic Tutorials");
				AddText("Advanced Tutorials");
				AddText("Change Notes");
				AddText("Shrine of Light Discord");
				AddText("Domenica Lore");
				DrawTutBlock();
				DrawTutText();
				break;
			case 2:
				AddText("Guitar (FSpecial)");
				AddText("USpecial");
				AddText("DSpecial");
				AddText("NSpecial");
				DrawTutBlock();
				DrawTutText();
				break;
			case 3:
				AddText("Airdodge-cancelled USpec");
				AddText("DAir Guitar bounce");
				AddText("Strong-cancelled FSpec");
				AddText("Airdodge-cancelled DSpec");
				AddText("NSpec reposition");
				AddText("Held NSpec");
				DrawTutBlock();
				DrawTutText();
				break;
			case 4:
				AddText("Change Notes");
				switch (tutMenu)
				{
					case 0:
						AddText("v1.0 - 25 Mar 2021");
						AddText("");
						AddText("Initial Commit");
						break;
					case 1:
						AddText("v1.1 - 25 Mar 2021");
						AddText("");
						AddText("Removed UAir stall");
						AddText("");
						AddText("Added extended parry stun for FSpec and NSpec");
						AddText("");
						AddText("DSpec now has a heavier landing sound");
						AddText("DSpec will now bury more consistently");
						AddText("");
						AddText("UStrong BKB 7.5 -> 8");
						AddText("");
						AddText("Shortened victory theme");
						AddText("");
						AddText("Removed double NSpec Guitar bug");
						AddText("Left it in as a tech with a slightly different input:");
						AddText("Hold NSpec to place the Guitar");
						break;
					case 2:
						AddText("v1.2 - 26 Mar 2021");
						AddText("");
						AddText("Added AI");
						AddText("");
						AddText("Fixed input buffer for USpec airdodge cancel");
						AddText("");
						AddText("DAir now can be airdodge and jump cancelled");
						AddText("");
						AddText("The Guitar will no longer continue attacking with FSpec and DAir when Domenica gets hit");
						AddText("");
						AddText("UTilt3 Damage 8 -> 6");
						AddText("UTilt3 BKB 7 -> 9");
						AddText("UTilt3 KBS 1.3 -> 1.1");
						AddText("UTilt3 Hitpause 10 -> 13");
						AddText("UTilt3 Hit sound now has more impact");
						AddText("");
						AddText("FStrong Angle 40 -> 45");
						AddText("FStrong BKB 7.5 -> 7");
						AddText("");
						AddText("DStrong Angle 35 -> 40");
						AddText("DStrong KBS 1 -> 0.9");
						AddText("");
						AddText("FSpec2 Damage 6 -> 1");
						AddText("");
						AddText("NSpec (Guitar Out) Damage 5 -> 3");
						break;
					case 3:
						AddText("v1.3 - 27 Mar 2021");
						AddText("");
						AddText("Fixed DAir hitpause bug");
						AddText("");
						AddText("Added cooldown to FSpecial and UAir when using either attacks to minimise air stalling");
						AddText("");
						AddText("DSpecial1 now buries aerial opponents too");
						AddText("Chance of burying depends on how many frames it takes for the hit player to touch the ground (20 frames)");
						AddText("DSpecial1 is no longer techable");
						break;
					case 4:
						AddText("v1.4 - 27 Mar 2021");
						AddText("");
						AddText("Regina Reforged came in and resprited a buncha stuff what");
						AddText("-BAir");
						AddText("-DAttack");
						AddText("-DSpecial");
						AddText("");
						AddText("???");
						AddText("Thanks??????");
						break;
					case 5:
						AddText("v1.5 - 28 Mar 2021");
						AddText("");
						AddText("Fixed a spriting error on the Walk animation");
						AddText("");
						AddText("DAttack now stops Domenica when parried");
						AddText("");
						AddText("Fixed an issue with DAttack's hsp startup");
						AddText("This also gives Domenica a good DACUS");
						AddText("");
						AddText("FSpecial Guitar will now only cancel within the first 20 frames of the attack when getting hit");
						AddText("DAir Guitar will now only cancel within the first 10 frames of the attack when getting hit");
						AddText("");
						AddText("Added a few new alts");
						break;
					case 6:
						AddText("v1.6 - 4 Apr 2021");
						AddText("");
						AddText("Adjusted FAir speeds to make it less oppressive");
						AddText("FAir will now instantly end when parried");
						AddText("");
						AddText("Increased UStrong hitpause scaling to increase impact");
						AddText("");
						AddText("Added a few new alts");
						break;
					case 7:
						AddText("v1.7 - 9 Apr 2021");
						AddText("");
						AddText("Added whifflag to DSpec - effectively 24 frames of endlag on whiff");
						AddText("");
						AddText("DAttack endlag 9 frames -> 13 frames");
						AddText("");
						AddText("Added Spectrum alt");
						break;
					case 8:
						AddText("v1.8 - 18 Apr 2021");
						AddText("");
						AddText("FSpec will now only receive the bounce once per airtime to reduce air stalling");
						AddText("");
						AddText("DAttack Endlag 13 -> 16 (24 on whiff)");
						AddText("");
						AddText("DTilt hitbox is now slightly thinner");
						AddText("");
						AddText("UStrong friction changed for less slippery DACUS");
						AddText("");
						AddText("BAir Landing lag 4 -> 6");
						AddText("");
						AddText("Guitar Strong return frame 8 -> 12");
						AddText("");
						AddText("Added a few new alts");
						break;
					case 9:
						AddText("v1.9 - 29 Apr 2021");
						AddText("");
						AddText("FSpec and UAir now both get cooldowns when using USpecial");
						AddText("Reduced USpecial speed 11 -> 9");
						AddText("(If you think you cant recover, try USpec->AirdodgeCancel->DAir->TapUSpec->HeldUSpec)");
						AddText("");
						AddText("Added Greed alt");
						break;
					case 10:
						AddText("v1.10 - 4 Feb 2022");
						AddText("");
						AddText("Fixed Rollback temp_level bug");
						break;
					case 11:
						AddText("v1.11 - 16 Jun 2022");
						AddText("");
						AddText("Initial Dash Speed 7 -> 6.5");
						AddText("Dash Speed 6.5 -> 6");
						AddText("");
						AddText("Mildly changed UTilt and FTilt sprites");
						AddText("Moved UTilt Final hitbox upwards to match new sprites");
						AddText("");
						AddText("DAttack now goes into endlag on hit immediately");
						AddText("");
						AddText("Updated to new AI system");
						break;
				}
				DrawTutorialBlock();
				DrawTutorialText();
				break;
			case 5:
			case 6:
				if (menuState == 5)
				{
					switch (tutPrevMenu)
					{
						case 0:
							AddText("Use FSpecial to throw out your Guitar! It has two swords in it! Isn't it cool?");
							AddText("The Guitar can be used to control some space on the stage and apply plenty of pressure.");
							AddText("Use any Strong attack to let the Guitar return to you.");
							AddText("While it is returning, it will have a weak hitbox that hits towards you. Use this to combo into your Strong attack!");
							break;
						case 1:
							AddText("USpecial has two variants. Tap or Hold.");
							AddText("Holding the Special button when using USpecial will launch you upwards.");
							AddText("Tapping, however, will launch you away from the Guitar. This will not put you in Special Fall.");
							AddText("The held variant will always be executed while the Guitar is following you.");
							break;
						case 2:
							AddText("You will fly towards the Guitar and dive downwards.");
							AddText("DSpecial will bury opponents, easily starting combos.");
							AddText("If you hold Down while falling, you can fall through platforms.");
							AddText("Be careful, if you're too far away from the Guitar, you'll end up in Special Fall.");
							AddText("You can use this to recover in unique ways.");
							break;
						case 3:
							AddText("NSpecial while the Guitar is away will hit towards you.");
							AddText("This can be used to extend combos.");
							AddText("However, NSpecial while the Guitar is with you will hit upwards instead.");
							break;
					}
				}
				else
				{
					switch (tutPrevMenu)
					{
						case 0:
							AddText("During the startup of USpec, you can airdodge out of it.");
							AddText("You can sacrifice your airdodge for more height by performing USpec twice,");
							AddText("or you can use this to reposition your Guitar.");
							break;
						case 1:
							AddText("Use DAir on your Guitar to bounce off it.");
							AddText("You can gain more height while attacking below.");
							AddText("This is also useful for safely using DAir offstage.");
							break;
						case 2:
							AddText("If you use a Strong attack while the FSpec Guitar is hitting the opponent before the final hit,");
							AddText("the opponent will be hit towards you to easily combo into your Strong attack.");
							break;
						case 3:
							AddText("You can airdodge at the peak of DSpec.");
							AddText("This can be used for recovery or for mixups.");
							break;
						case 4:
							AddText("Holding a direction on the joystick while performing NSpec will nudge the Guitar in that direction.");
							AddText("This is useful for repositioning the Guitar slightly, even while extending combos with NSpec.");
							break;
						case 5:
							AddText("Holding Special when executing NSpec while the Guitar is with you will place it on the stage.");
							break;
					}
				}
				DrawTutorialBlock();
				DrawTutorialText();
				break;
			case 7:
				AddText("Join the Shrine of Light Discord!");
				AddText("");
				AddText("Chat with the developer of Lonin and Hikaru");
				AddText("discord.gg/w4xqqtrXf8");
				AddText("");
				AddText("");
				AddText("");
				AddText("");
				DrawTutorialBlock();
				DrawTutorialText();
				draw_sprite_ext(sprite_get("discord"), 0, 16, temp_y-76+floor(tutAlpha*4)*2-8, 2, 2, 0, c_white, tutAlpha);
				draw_sprite_ext(sprite_get("HYPEkaru"), state_timer/(43/16), 192, temp_y-98+floor(tutAlpha*4)*2-8, 1, 1, 0, c_white, tutAlpha);
				break;
			case 8:
				AddText("Domenica is a character commissioned by TheShadowHatter!");
				AddText("");
				AddText("Here's a qr code link to Domenica's lore:");
				AddText("");
				AddText("");
				AddText("");
				AddText("");
				AddText("");
				DrawTutorialBlock();
				DrawTutorialText();
				draw_sprite_ext(sprite_get("lore"), 0, 16, temp_y-96+floor(tutAlpha*4)*2-8, 2, 2, 0, c_white, tutAlpha);
				break;
		}
		draw_set_alpha(1);
	}
}

#define AIStateToString(_state)
{
	switch (_state)
	{
		case 0:
			return "AS_NEUTRAL";
		case 1:
			return "AS_ADVANTAGE";
		case 2:
			return "AS_RECOVER";
		default:
			return "Dunno";
	}
}

#define TaskToString(_state)
{
	switch (_state)
	{
		case 0:
			return "TSK_NONE";
		case 1:
			return "TSK_STRONG";
		case 2:
			return "TSK_GUNREC";
		default:
			return "Dunno";
	}
}

#define DrawText(x, y, font, color, lineb, linew, scale, outline, alpha, string)
{
	draw_set_font(asset_get(font));
	draw_set_halign(fa_left);
	if (alpha > 0)
	{
		if (outline)
		    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
				draw_text_ext_transformed_color(x + i * 2, y + j * 2, string, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		draw_text_ext_transformed_color(x, y, string, lineb, linew, scale, scale, 0, color, color, color, color, alpha);
	}
	return string_width_ext(string, lineb, linew);
}

#define DrawTutBlock()
{
	draw_set_alpha(tutAlpha*0.4);
	draw_rectangle_color(temp_x - 8,temp_y - 12 - 16*tutLength + floor(tutAlpha*4)*2-8,temp_x + 215,temp_y + floor(tutAlpha*4)*2-8,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(temp_x - 6,temp_y - 10 - 16*tutLength + floor(tutAlpha*4)*2-8,temp_x + 213,temp_y-2 + floor(tutAlpha*4)*2-8,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(tutAlpha);
}

#define DrawTutorialBlock()
{
	var length = GetTextLength();
	draw_set_alpha(tutAlpha*0.4);
	draw_rectangle_color(6,temp_y - 26 - (tutLength)*16 + floor(tutAlpha*4)*2-8,length+24,temp_y-12 + floor(tutAlpha*4)*2-8,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(8,temp_y - 24 - (tutLength)*16 + floor(tutAlpha*4)*2-8,length+22,temp_y-14 + floor(tutAlpha*4)*2-8,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(tutAlpha);
}


#define DrawTutText()
{
	for (var i = 0; i < tutLength; ++i) draw_debug_text((tutMenu==i?round(sin(get_gameplay_time()/8))*2+2:0) + temp_x,temp_y - 20 - (tutLength-i-1)*16 + floor(tutAlpha*4)*2-8, (tutMenu==i?"> ":"  ")+tutText[i]);
}

#define DrawTutorialText()
{
	for (var i = 0; i < tutLength; ++i) draw_debug_text(16,temp_y - 32 - (tutLength-i-1)*16 + floor(tutAlpha*4)*2-8, tutText[i]);
}

#define ResetText()
{
	tutText = -1;
	tutLength = 0;
}

#define AddText(_string)
{
	tutText[tutLength] = _string;
	++tutLength;
}

#define GetTextLength()
{
	var length = 0;
	draw_set_font(asset_get("fName"));
	for (var i = 0; i < tutLength; ++i)
		length = max(length, string_width_ext(tutText[i], 0, room_width));
	return length;
}