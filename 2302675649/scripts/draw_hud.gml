if ("rollArray" in self)
{
	// intro song
	if (state == PS_SPAWN && IsFirstLonin())
	{
		draw_set_font(asset_get("roaMBLFont"));
		var musicName = GetMusicName();
		var tempColour = c_gray;
		var bgMaxWidth = string_width_ext(musicName, 0, 1000) + 64;
		var bgWidth = state_timer<20?ease_backOut(0, bgMaxWidth, state_timer, 20, 1):state_timer>100?ease_backIn(bgMaxWidth, 0, state_timer-100, 26, 1):bgMaxWidth;
		var bgHeight = 68;
		draw_set_alpha(0.8);
		draw_rectangle_color(0,temp_y-bgHeight-16,bgWidth,temp_y-16,tempColour,tempColour,tempColour,tempColour,false);
		draw_rectangle_color(0,temp_y-bgHeight-16-6,bgWidth,temp_y-bgHeight-16-4,tempColour,tempColour,tempColour,tempColour,false);
		draw_set_alpha(1);
		tempColour = c_black;
		draw_rectangle_color(0,temp_y-2-16,bgWidth,temp_y-16,tempColour,tempColour,tempColour,tempColour,false);
		tempColour = c_white;
		draw_rectangle_color(0,temp_y-2-16,lerp(0,bgWidth,state_timer/126),temp_y-16,tempColour,tempColour,tempColour,tempColour,false);
		DrawText(bgWidth-bgMaxWidth+8, temp_y-76, "roaMBLFont", tempColour, 0, 1000, 1, false, 1, "Now Playing:");
		var songTextWidth = DrawText(bgWidth-bgMaxWidth+8, temp_y-48, "roaMBLFont", tempColour, 0, 1000, 1, true, 1, musicName);
		draw_sprite_ext(sprite_get("song"), 0, bgWidth-bgMaxWidth+16+songTextWidth, temp_y-48, 2, 2, 0, tempColour, 1);
		draw_set_alpha(1);
	}

	// taunt menu
	if (practice && !"temp_level" in self)
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
				DrawTutBlock();
				DrawTutText();
				break;
			case 2:
				AddText("Jump strongs");
				AddText("NSpecial");
				AddText("DSpecial");
				AddText("FSpecial");
				DrawTutBlock();
				DrawTutText();
				break;
			case 3:
				AddText("Portal Recovery");
				AddText("NSpec cancelling");
				AddText("USpec cancelling");
				AddText("FSpec hit-cancelling");
				AddText("Discord ping");
				AddText("DAir autocancel");
				AddText("FSpec into Spike");
				AddText("Lonin Drip");
				DrawTutBlock();
				DrawTutText();
				break;
			case 4:
				AddText("Change Notes");
				switch (tutMenu)
				{
					case 0:
						AddText("v1.0 - 29 Nov 2020");
						AddText("");
						AddText("Initial Commit");
						break;
					case 1:
						AddText("v1.1 - 01 Dec 2020");
						AddText("");
						AddText("Added Runes");
						AddText("Bugfix: Can't jump strong after quick doublejump");
						AddText("Jab: KBS 0.3 -> 0");
						AddText("Jab: BKB 5 -> 5.5");
						break;
					case 2:
						AddText("v1.2 - 03 Dec 2020");
						AddText("");
						AddText("Added Victory Screen");
						AddText("Bugfix: Taunt menu not working");
						AddText("");
						AddText("NAir (All): Lifetime 3 -> 2");
						AddText("FAir: Startup 12 -> 14");
						break;
					case 3:
						AddText("v1.3 - 05 Dec 2020");
						AddText("");
						AddText("Added AI");
						AddText("Fixed Early Access HUD colours");
						break;
					case 4:
						AddText("v1.4 - 07 Dec 2020");
						AddText("");
						AddText("Added victory theme! Thank you Delta Parallax!");
						break;
					case 5:
						AddText("v1.5 - 11 Dec 2020");
						AddText("");
						AddText("DTilt: Angle 88 -> 94");
						AddText("");
						AddText("FAir: Repositioned the bottom and back hits so it doesn't hit behind anymore");
						AddText("FAir: Resprited smears to fit the new hitbox positions");
						AddText("");
						AddText("DAir: Autocancel timer 120 -> 60");
						AddText("DAir: Added Advanced tech page");
						AddText("");
						AddText("FSpec: Added hookshot cancel tech");
						AddText("FSpec: Added Advanced tech page");
						AddText("");
						AddText("DSpec: Move cooldown 60 -> 75");
						AddText("");
						AddText("USpec: Added Dragon hit effect");
						AddText("USpec: Extra hitpause 0 -> 14");
						AddText("");
						AddText("Rune K: Replenish doublejumps on hit -> DSpecial has no cooldown");
						AddText("");
						AddText("Alts: Renamed some alts");
						AddText("Alts: Replaced Billy alt with Josuke alt");
						break;
					case 6:
						AddText("v1.6 - 18 Dec 2020");
						AddText("");
						AddText("NSpec: Screen darkens and shakes when fully charged");
						AddText("NSpec: Opponent shakes during hitpause on hit");
						AddText("NSpec: Increased max hitpause 30 -> 60");
						AddText("");
						AddText("Portal: Opponent hit knockback 9 -> 11");
						AddText("");
						AddText("DSpec: Reduce opponent speed by 25% on teleport");
						AddText("DSpec: Gives back opponent walljump and airdodge on teleport");
						break;
					case 7:
						AddText("v1.7 - 29 Dec 2020");
						AddText("");
						AddText("UAir: Fixed double final hit bug");
						AddText("UAir Final: Hitstun Multiplier 1 -> 0.7");
						AddText("");
						AddText("BAir: Hitpause 8 -> 18");
						AddText("");
						AddText("FAir Sweetspot: Angle 30 -> 31");
						AddText("FAir Normal: Angle 40 -> 39");
						AddText("FAir Sweetspot: Hitpause 16 -> 22");
						AddText("FAir Normal: Hitpause 10 -> 16");
						AddText("FAir Sourspot: Hitpause 6 -> 8");
						AddText("");
						AddText("DAir Final: Hitpause 8 -> 14");
						AddText("");
						AddText("FTilt: Hitpause 8 -> 12");
						AddText("");
						AddText("DAttack Final: Hitpause 8 -> 12");
						AddText("");
						AddText("UTilt: Extra Hitpause 6 -> 8");
						AddText("");
						AddText("USpec Sweetspot: BKB 8 -> 7.5");
						break;
					case 8:
						AddText("v1.8 - 31 Dec 2020");
						AddText("");
						AddText("Added support for The Tutorial Grid X");
						AddText("");
						AddText("Updated Original alt to have a white border instead of black");
						AddText("Updated some afterimages to be a solid colour");
						AddText("");
						AddText("Added FSpec into Spike tutorial");
						AddText("");
						AddText("Added DAir method to Portal Recovery tutorial");
						AddText("Made DAir portal recovery more consistent");
						AddText("");
						AddText("FAir Sweetspot: Angle 31 -> 40");
						AddText("FAir Sweetspot: BKB 6 -> 8");
						AddText("FAir Normal: Angle 39 -> 45");
						break;
					case 9:
						AddText("v1.9 - 26 Jan 2021");
						AddText("");
						AddText("NAir Landing Lag: 4 -> 6");
						AddText("FAir Landing Lag: 5 -> 8");
						AddText("BAir Landing Lag: 4 -> 8");
						AddText("");
						AddText("UTilt Window 3 Length 4 -> 7");
						AddText("");
						AddText("FTilt: Hitpause 12 -> 10");
						AddText("");
						AddText("DAttack Final: Hitpause 12 -> 10");
						AddText("");
						AddText("FAir Sweetspot: Hitpause 22 -> 18");
						AddText("FAir Normal: Hitpause 16 -> 12");
						AddText("");
						AddText("BAir: Hitpause 18 -> 12");
						AddText("");
						AddText("DAir Final: Hitpause 14 -> 10");
						AddText("");
						AddText("FSpec has soft armor while flying");
						AddText("");
						AddText("USpec is now walljump cancellable in endlag");
						break;
					case 10:
						AddText("v1.10 - 03 Feb 2021");
						AddText("");
						AddText("DAir Multihit Damage 2 -> 1");
						AddText("DAir Final Damage 6 -> 7");
						AddText("DAir 8 frames less endlag");
						AddText("");
						AddText("USpec added endlag momentum");
						AddText("USpec 2 frames less endlag");
						AddText("USpec Final Lifetime 1 -> 3");
						AddText("");
						AddText("FSpec bugfix for teleporting opponents to the blastzone");
						AddText("");
						AddText("Strong 10 frames less endlag");
						AddText("Strong endlag can jump cancel");
						AddText("");
						AddText("Jab hit cancel 4 frames earlier");
						AddText("Jab cooldown is 2 frames longer");
						AddText("");
						AddText("DAttack 1 now has 2 extra hitpause to link to final hit consistently");
						AddText("");
						AddText("Portal-hitbox collision code tweaked so the portals no longer sink through the ground");
						AddText("");
						AddText("Added the Shrine of Light Discord link");
						break;
					case 11:
						AddText("v1.11 - 10 Feb 2021");
						AddText("");
						AddText("Lonin Drip (Down Taunt)");
						AddText("");
						AddText("FTilt Angle 40 -> 45");
						AddText("FTilt KBS 0.8 -> 0.9");
						AddText("");
						AddText("DTilt Angle 94 -> 95");
						AddText("");
						AddText("DAir Linking Angle 288 -> 292");
						AddText("DAir Linking BKB 8 -> 9");
						AddText("DAir Final Damage 7 -> 9");
						AddText("");
						AddText("USpec Sweetspot KBS 1.1 -> 1.05");
						AddText("USpec Sweetspot Damage 3 -> 4");
						AddText("");
						AddText("Transcend flag now works in intro");
						break;
					case 12:
						AddText("v1.12 - 22 Feb 2021");
						AddText("");
						AddText("Portals now have hitpause on hit");
						AddText("Portals now have better collision code... probably");
						AddText("Portals now work with small_sprites correctly");
						AddText("");
						AddText("Strongs can no longer be jump cancelled when parried");
						break;
					case 13:
						AddText("v1.13 - 26 Feb 2021");
						AddText("");
						AddText("Portals now spawn at the correct location when spawning far from the main stage");
						AddText("");
						AddText("DSpec cooldown HUD now displays correctly");
						AddText("DSpec cooldown 75 -> 80");
						AddText("");
						AddText("Added dust particles to some attacks");
						break;
					case 14:
						AddText("v1.14 - 27 Feb 2021");
						AddText("");
						AddText("Added AI mode because funny");
						AddText("(Hold down taunt)");
						AddText("");
						AddText("Reduced USpec holding time by 28 frames");
						AddText("");
						AddText("Increased prat_land_time 16 -> 17");
						break;
					case 15:
						AddText("v1.15 - 28 Feb 2021");
						AddText("");
						AddText("AI mode now doesn't cause the screen to move upwards");
						AddText("");
						AddText("Lonin Drip now has the Drip sound");
						AddText("");
						AddText("USpec has 6 frames less startup when cancelling from Strongs");
						AddText("This is to make it easier for the player to pull off this intended mechanic");
						AddText("");
						AddText("Portals now freeze while being shot by FSpecial");
						AddText("Selected Portals are now red, in addition to having the arrow");
						AddText("");
						AddText("The CSS now has some logos");
						AddText("");
						AddText("Decreased prat_land_time 17-> 16");
						break;
					case 16:
						AddText("v1.16 - 2 Mar 2021");
						AddText("");
						AddText("Fixed UAir double final hit bug (For real this time)");
						AddText("");
						AddText("Added Trans outline to the Transcend alt");
						AddText("Replaced Original alt with Sawtooth alt");
						AddText("(Sawtooth is the best Lonin in the world currently)");
						AddText("");
						AddText("FSpec now hits accurately (It used to aim 3 pixels lower)");
						AddText("This means that short characters like Orcane can't be hit with normal FSpec when grounded");
						AddText("");
						AddText("Removed AI mode (It kept crashing or softlocking)");
						AddText("So I made Lonin Drip 2 instead (New sprite)");
						break;
					case 17:
						AddText("v1.17 Hotfix! - 2 Mar 2021");
						AddText("");
						AddText("Portals now change selection even when in hitpause");
						break;
					case 18:
						AddText("v1.18 - 3 Mar 2021");
						AddText("");
						AddText("Portals now can be hit by teammates");
						AddText("");
						AddText("FSpec will now hit teammates if team attack is on");
						AddText("FSpec will not put you into pratfall if you're supposed to hook onto another player");
						AddText("FSpec will not hook onto an airdodging or rolling player on the frame they gain invincibility");
						break;
					case 19:
						AddText("v1.19 - 15 Mar 2021");
						AddText("");
						AddText("Removed AI debug code on FSpec");
						AddText("");
						AddText("FSpec no longer has armour when hooking onto the wall");
						AddText("FSpec still has armour while hooking onto the opponent");
						AddText("");
						AddText("Maybe fixed song name intro");
						AddText("");
						AddText("Lonin Drip can now also be executed with up + taunt");
						AddText("Lonin Drip is now jump cancellable");
						break;
					case 20:
						AddText("v1.20 - 18 Mar 2021");
						AddText("");
						AddText("Added support for Final Smash Buddy");
						break;
					case 21:
						AddText("v1.21 - 24 Mar 2021");
						AddText("");
						AddText("Added 2 new alts:");
						AddText("-Saikyo Jyanshi");
						AddText("-BLM");
						break;
					case 22:
						AddText("v1.22 - 28 Mar 2021");
						AddText("");
						AddText("Flag alts will now apply their flags to the opponent when hitting USpec");
						AddText("");
						AddText("USpec now has 6 frames of direction lock when releasing Special");
						AddText("");
						AddText("Added overshoot to USpec circle effect HUD");
						AddText("");
						AddText("Added Metal alt");
						break;
					case 23:
						AddText("v1.23 - 30 Mar 2021");
						AddText("");
						AddText("Portals now despawn on parry");
						AddText("Portals now cause half hitpause when hit");
						AddText("Portals now bounce off stage limits when hit");
						AddText("Portal stage limit borders now show when the portals are close");
						AddText("Portal NSpec movement speed 4 -> 5");
						AddText("Portal Knockback 11 -> 12");
						AddText("");
						AddText("Redone Metal alt");
						AddText("Added 221020 alt");
						AddText("Laurie D. Bunnykins alt (Dakoda)");
						break;
					case 24:
						AddText("v1.24 - 7 Apr 2021");
						AddText("");
						AddText("Added Void Dragon mode (Startup and Endlag removed)");
						AddText("Void Dragon mode is activated on Level 1 (CPU)");
						AddText("or by holding Taunt during the start of the game (Player)");
						AddText("");
						AddText("Void Dragon NSpec will activate Final Smash at 150%");
						AddText("");
						AddText("Added Gold alt");
						break;
					case 25:
						AddText("v1.25 - 8 Apr 2021");
						AddText("");
						AddText("Void Dragon CPU can no longer activate Final Smash at any time");
						AddText("Void Dragon Drip will now spawn a Lonin CPU clone");
						AddText("");
						AddText("Void Dragon now will have a rainbow outline");
						AddText("");
						AddText("Fixed Void Dragon Lonin CPU code so dittos aren't just spamming FSpec");
						AddText("");
						AddText("Final Smash will no longer cause SDs at the edge of the screen");
						break;
					case 26:
						AddText("v1.26 - 9 Apr 2021");
						AddText("");
						AddText("BAir KBS 1.0 -> 0.9");
						AddText("(Please give feedback directly to me next time instead)");
						AddText("");
						AddText("Void Dragon can now be toggled by holding Shield while performing a normal taunt");
						AddText("");
						AddText("Discord ping can now be performed with the Bravo alt taunt");
						AddText("");
						AddText("Added Spectrum alt");
						break;
					case 27:
						AddText("v1.27 - 13 Apr 2021");
						AddText("");
						AddText("Drastically reduced momentum from USpec endlag");
						AddText("");
						AddText("UAir Final Hitpause 60 -> 30");
						AddText("UAir Multihit Extra Hitpause 0 -> -1");
						AddText("UAir Multihit BKB 6 -> 7");
						AddText("UAir Multihit can now dragdown opponents through platforms properly");
						AddText("");
						AddText("Jab cooldown on hit 12 -> 30");
						AddText("Jab Hitstun multiplier 1 -> 0.6");
						AddText("");
						AddText("FSpec horizontal speed after grappling can now be adjusted by holding left or right");
						AddText("(This means FSpec on aerial opponents can lead to FAir more consistently)");
						AddText("");
						AddText("Fixed USpec airdodge cancelling special buffer");
						AddText("Lonin AI will not use USpec downwards to the blastzone accidentally anymore... probably");
						AddText("");
						AddText("Added Swordfighter alt");
						AddText("Added Slayer of Demons alt");
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
							AddText("Jump and then press Strong immediately");
							AddText("Strong attacks will only be activated within " + string(jsMax) + " frames of jumping");
							AddText("Strong attacks will spawn a portal");
							AddText("On hit, Strong attacks teleport the opponent to the other portal, and can be cancelled into USpec");
							break;
						case 1:
							AddText("NSpecial can be charged infinitely");
							AddText("NSpecial will also move the selected portal with the joystick");
							AddText("NSpecial takes " + string(nspecMax) + " frames to fully charge");
							break;
						case 2:
							AddText("DSpecial is a really quick " + string(get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)) + "-frame move");
							AddText("DSpecial will also swap the currently selected portal");
							AddText("DSpecial will cause the opponent to teleport if they are touching the portal");
							AddText("Careful though, this will reduce opponent's speed by 25% and will give them their walljump and airdodge");
							break;
						case 3:
							AddText("FSpecial is a very slow attack with huge range that can start combos");
							AddText("You can use it to grapple onto the wall to recover, or catch opponents at any distance");
							AddText("You can also shoot through your portals to surprise opponents");
							AddText("If you hold Down during the startup of the attack, you'll shoot low");
							break;
					}
				}
				else
				{
					switch (tutPrevMenu)
					{
						case 0:
							AddText("If you Jump Strong upwards, you'll be able to enter your own portal");
							AddText("Recovery 1: FSpec (to the wall) -> Walljump -> Up Jump Strong");
							AddText("Recovery 2: DAir (if you're high up enough) -> Up Jump Strong");
							break;
						case 1:
							AddText("NSpec can be cancelled with the Parry button while it's not fully charged");
							AddText("You can cancel into a wavedash by pressing Jump and Parry at the same time");
							break;
						case 2:
							AddText("USpec can be cancelled with the Parry button while charging");
							AddText("Use USpec and cancel it to remove portals quickly");
							AddText("You can use USpec again after cancelling to stall in the air for a while");
							break;
						case 3:
							AddText("FSpec can be cancelled with the Parry button on hit");
							AddText("Use this for tactical situations where hooking is disadvantageous");
							break;
						case 4:
							AddText("Press Special while taunting");
							AddText("Lol!");
							break;
						case 5:
							AddText("DAir will autocancel after " + string(dairCancel) + " frames");
							AddText("Be sure to jump high before starting your DAir");
							AddText("When you cancel, you'll bounce up high");
							AddText("This bounce counts as a jump, so you can jump strong afterwards");
							AddText("Hold down the Attack button to prevent autocancelling");
							break;
						case 6:
							AddText("Use aerial FSpec to chain into a strong spike");
							AddText("Shorthop Low FSpec -> DStrong");
							AddText("The little bounce you get from landing aerial FSpec counts as a jump, so you can jump strong afterwards");
							break;
						case 7:
							AddText("Down + Taunt, or Up + Taunt");
							AddText("Lol!");
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
				AddText("discord.gg/Kn5ttGx");
				AddText("");
				AddText("");
				AddText("");
				AddText("");
				DrawTutorialBlock();
				DrawTutorialText();
				draw_sprite_ext(sprite_get("discord"), 0, 16, temp_y-76+floor(tutAlpha*4)*2-8, 2, 2, 0, c_white, tutAlpha);
				draw_sprite_ext(sprite_get("hikaru"), state_timer/(43/16), 64, temp_y-96+floor(tutAlpha*4)*2-8, 2, 2, 0, c_white, tutAlpha);
				break;
		}
		draw_set_alpha(1);
	}
	else if (aura)
		draw_debug_text(temp_x + 128, temp_y - 10, "Void Dragon");
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

#define IsFirstLonin()
{
	var isFirst = false;
	var smallestPlayerNum = player;
	with (oPlayer) if ("url" in self && url == other.url && smallestPlayerNum > player) smallestPlayerNum = player;
	return smallestPlayerNum == player;
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

#define GetMusicName()
{
	switch (get_stage_data(SD_ID))
	{
		case 1:
			return "Sylvan Radiance";
		case 2:
			return "Fiery Ambitions";
		case 3:
			return "Fight and Flight";
		case 4:
			return "The Earthen Division";
		case 5:
			return "Oceanic Breeze";
		case 7:
			return "Moonlight Inferno";
		case 8:
			return "Luna Ascension EX";
		case 9:
			return "Lightning Pandemonium";
		case 10:
			return "Glacial Bastion";
		case 11:
			return "Decisive Encounter";
		case 12:
			return "Formless Onslaught";
		case 14:
			return "The Earthen Division (Main Event Ver.)";
		case 15:
			return "Ori and the Blind Forest Medley";
		case 17:
			return "Fire's Last Hope";
		case 18:
			return "Elusive Master of Toxin";
		case 19:
			return "Howl of the Forest";
		case 20:
			return "Full Steam Vengeance!!";
		case 21:
			return "Shovel Knight Medley";
		case 22:
			return "Tutorial Session";
		case 23:
			return "Lovers Encore";
		case 24:
			return "In the Halls of the Usurper (Rivals Ver.)";
		case 25:
			return "Nihil Redux";
		case 16:
		case 26:
			return "Neon Universe EX";
		case 27:
			return "The Earthen Division (Main Event Ver.)";
		case 29:
			return "Tetherball Versus";
		default:
			if (string_count("2061009621", get_stage_data(SD_ID)) > 0)
				return "Derek Fiechter - Night at the Castle";
			else if (string_count("2298935492", get_stage_data(SD_ID)) > 0)
				return "Loeder - Miitopia Boss Battle 1 8-BIT";
			else if (string_count("2082867100", get_stage_data(SD_ID)) > 0)
				return "Evan King - [KARLSONVIBE]";
			else if (string_count("2210984773", get_stage_data(SD_ID)) > 0)
				return "Porter Robinson - Shelter";
			else if (string_count("2158754801", get_stage_data(SD_ID)) > 0)
				return "Bill Kiley - You Will Never Know";
			else if (string_count("2392386094", get_stage_data(SD_ID)) > 0)
				return "ARCHYTAS AAAAAAAAAAAAAA";
			return "Darude - Sandstorm";
	}
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