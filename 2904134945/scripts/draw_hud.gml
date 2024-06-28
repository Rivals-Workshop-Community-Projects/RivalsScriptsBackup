if ("practice" in self)
{
	with (obj_article1) if (player_id == other.id && state == 1 && ("Pocketed" not in self || !Pocketed))
	{
		var tempY = y - 38;
		var clampCheckX = x != clamp(x, view_get_xview(), view_get_xview()+view_get_wview());
		var clampCheckY = tempY != clamp(tempY, view_get_yview(), view_get_yview()+view_get_hview()-52);
		if (clampCheckX || clampCheckY)
		{
			var hudShape = clampCheckX&&clampCheckY;
			var hudOffset = 32;
			var drawX = clamp(x-view_get_xview(), hudOffset, view_get_wview()-hudOffset);
			var drawY = clamp(tempY-view_get_yview(), hudOffset, view_get_hview()-52-hudOffset);
			var hudRot = 0;
			if (drawX == view_get_wview()-hudOffset) hudRot = 90;
			if (drawY == hudOffset) hudRot = 180;
			if (drawX == hudOffset) hudRot = (drawY==view_get_hview()-52-hudOffset)?0:270;
			draw_sprite_ext(sprite_get("hud"), hudShape, drawX, drawY, 2, 2, hudRot, get_player_hud_color(other.player), 1);
			with (other) shader_start();
			draw_sprite_ext(sprite_get("crystalHud"), 0, drawX, drawY, 2, 2, 0, c_white, 1);
			shader_end();
		}
	}

	// taunt menu
	if (practice && (!variable_instance_exists(self, "temp_level") || temp_level==0))
	{
		draw_set_alpha(tutAlpha);
		ResetText();
		switch (menuState)
		{
			default:
				draw_debug_text(temp_x + 148, temp_y - 10 + floor(tutAlpha*4)*2-8, "Taunt~");
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
				AddText("Frostbite Mechanic");
				AddText("FrostGrave (DSpec)");
				AddText("IceShock (NSpec)");
				AddText("Blizzard (FSpec)");
				DrawTutBlock();
				DrawTutText();
				break;
			case 3:
				AddText("Antonymph");
				AddText("DSpec without Crystal");
				AddText("DSpec InstantFall");
				DrawTutBlock();
				DrawTutText();
				break;
			case 4:
				AddText("Change Notes");
				switch (tutMenu)
				{
					case 0:
						AddText("v1.0 - 20 Dec 2022");
						AddText("");
						AddText("Initial Commit");
						AddText("");
						AddText("Happy Birthday Hikaru!!");
						AddText("Christmas is JUST A WEEK AWAY!!");
						break;
					case 1:
						AddText("v1.1 - 21 Dec 2022");
						AddText("");
						AddText("Removed knockback scaling from multihit strongs");
						AddText("All strongs now use a new custom vfx (Thanks Delta Parallax!!)");
						AddText("");
						AddText("Slowed down Paint alt's hue speed");
						AddText("Buffed Rune C >:)");
						AddText("Taught the AI to use some runes :D");
						AddText("Added Snow Angel mode (Input is Shield and Taunt)");
						AddText("Added Final Smash support");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.1.1 - 21 Dec 2022");
						AddText("");
						AddText("Hotfix for Snow Angel victory screen bug");
						break;
					case 2:
						AddText("v1.2 - 25 Dec 2022");
						AddText("");
						AddText("Merry Christmas!!");
						AddText("");
						AddText("FTilt Sweetspot KB 8.5+0.85 -> 8+0.8");
						AddText("FTilt Sweetspot Hitpause 8+0.85 -> 11+0.8");
						AddText("");
						AddText("UStrong Linker Hitstun Multiplier 1 -> 0.7");
						AddText("");
						AddText("NSpec Weak IceShock Damage 9 -> 7");
						AddText("NSpec Weak IceShock Endlag 12 -> 14");
						AddText("");
						AddText("Swapped Rune C and I");
						AddText("");
						AddText("Final Smash now freezes instead of instakilling the opponent");
						AddText("");
						AddText("Antonymph Strobe Lights now fade in instead");
						AddText("");
						AddText("Snow Angel no longer triggers on Turbo mode");
						break;
					case 3:
						AddText("v1.3 - 29 Dec 2022");
						AddText("");
						AddText("FSpec SDI multiplier 1 -> 1.1");
						AddText("");
						AddText("UAir linker hitbox radius 60 -> 50");
						AddText("");
						AddText("UStrong linker 1 SDI & Drift multiplier 1 -> 0.3");
						AddText("UStrong linker 2-3 SDI & Drift multiplier 1 -> 0.5");
						AddText("UStrong linker 2-3 Angle 70 -> 60");
						AddText("");
						AddText("Added offscreen hud for Ice Crystal");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.3.1 - 4 Jan 2023");
						AddText("");
						AddText("Added compatibility with Dakota's Citizen mod");
						AddText("NSpec Strong IceShock Flash projectile can no longer destroy projectiles");
						AddText("(The IceShock explosion still can destroy projectiles)");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.3.2 - 5 Jan 2023");
						AddText("");
						AddText("Ice Crystal offscreen hud now recolours with alts");
						break;
					case 4:
						AddText("v1.3.3 - 4 Mar 2023");
						AddText("");
						AddText("Added custom colours on the last alt for specific tags:");
						AddText("Key Frame: Lukaru, Karu");
						AddText("Nyan: HELP, M30W");
						AddText("Aurora: Aurora, Auro<3");
						break;
					case 5:
						AddText("v1.4 - 1 Apr 2023");
						AddText("");
						AddText("Added more custom colours on the last alt for specific tags:");
						AddText("London: WEET");
						AddText("Maeday: FUGG");
						AddText("");
						AddText("NSpec Weak IceShock Hitstun Multiplier 1.0 -> 0.7");
						AddText("FSpec Hitstun Multiplier 1.0 -> 0.9");
						AddText("DTilt Projectiles Hitstun Multiplier 1.0 -> 0.9");
						AddText("");
						AddText("Fixed Ice Crystal Break not Galaxying when necessary");
						AddText("Rainbow alts now work on the results screen");
						AddText("Lower CPU levels now have weaker ai to match its proper level");
						break;
					case 6:
						AddText("v1.5 - 23 May 2023");
						AddText("");
						AddText("FSpec now heals 2% instead of 1% each");
						AddText("FSpec throw sfx volume now lowers over time");
						AddText("");
						AddText("Added Backward Jump animations");
						break;
					case 7:
						AddText("v1.6 - 17 Jul 2023");
						AddText("");
						AddText("Added Spamton Ad compatibility");
						AddText("");
						AddText("FSpec Hitstun Multiplier 0.9 -> 0.8");
						AddText("FSpec SDI multiplier 1.1 -> 1.2");
						AddText("FSpec Angle 50 -> 45");
						AddText("FSpec can now be fully crouch armoured through (Effect 12)");
						AddText("");
						AddText("Ice Crystal Extra Hitpause 0 -> 4 (Base is still 8)");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.6.1 - 8 Aug 2023");
						AddText("");
						AddText("Added more custom colours on the last alt for specific tags:");
						AddText("Pika alt I think: PIKA");
						AddText("");
						AddText("Hopefully removed the secondary taunt sfx spam bug");
						break;
					case 8:
						AddText("v1.6.2 - 24 Aug 2023");
						AddText("");
						AddText("Touched up FAir and NSpecial sprites");
						AddText("Added custom landing FAir animation");
						AddText("");
						AddText("DTilt projectiles now have extended parry stun");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.6.3 - 11 Dec 2023");
						AddText("");
						AddText("Replaced Fez alt with Ketsukane alt");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.6.4 - 11 Jun 2024");
						AddText("");
						AddText("Optimized sprite file sizes");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.6.5 - 26 Jun 2024");
						AddText("");
						AddText("Upgraded flag outline system");
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
							AddText("When you hit opponents with Ice attacks, you can apply Frostbite to them.");
							AddText("Ice moves are: DTilt, NAir, UAir, NSpec, FSpec, USpec, and all Strong Attacks...! XP");
							AddText("");
							AddText("Once they're fully marked with "+string(frostbiteMax)+" stacks... you can put them in an Ice Crystal with any Strong attack.");
							AddText("When encased in ice, opponents will move much slower... but hitstun lasts twice as long!");
							AddText("The ice breaks when hitstun ends, or after "+string(frostgraveTime)+" frames, or when they touch the ground.");
							break;
						case 1:
							AddText("DSpec spawns an Ice Crystal! The longer you hold Special... the higher you can go!");
							AddText("You can hit opponents into the crystal and they will bounce right back XD");
							AddText("Did you know... Frostbite can also be applied to the Ice Crystal! XP");
							AddText("");
							AddText("If opponents are fully marked with Frostbite, they will get stuck in the crystal instead.");
							break;
						case 2:
							AddText("IceShock has 2 variations! If you time your attack, IceShock becomes a TON more deadly!");
							AddText("...But most of the time you won't have enough time to use it (Obviously XP)");
							AddText("");
							AddText("If you use IceShock earlier, it's a weaker multihit projectile. But it's super useful for giving Frostbite!");
							AddText("Did you know, you can hold down Special when using IceShock to use it quickly XD");
							break;
						case 3:
							AddText("Blizzard throws out many snowballs! It's my favourite move to apply Frostbite!");
							AddText("But, you can't use Blizzard too much... or it will be a lot weaker.");
							AddText("");
							AddText("Watch out for the little meter that shows how much you can use Blizzard!");
							AddText("Snowballs will apply Frostbite only if there's enough energy.");
							break;
					}
				}
				else
				{
					switch (tutPrevMenu)
					{
						case 0:
							AddText("Up/Down + Taunt");
							AddText("...Fahaha!");
							break;
						case 1:
							AddText("Sometimes you might need to use DSpecial to recover...");
							AddText("but you don't want to despawn the existing Ice Crystal! XD");
							AddText("");
							AddText("Press Shield before you let go of Special during the move and you will cancel it immediately!");
							break;
						case 2:
							AddText("This move is the same as the previous DSpec without Crystal.");
							AddText("Except, you cancel it SUPER early... It's great for mixups! XP");
							AddText("");
							AddText("Press Shield before you start rising during the move and you will drop down really fast!");
							AddText("I bet you'll look cooler than Burghley when he figures out how to wavedash! XD");
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
		}
		draw_set_alpha(1);
	}
	else if (aura)
		draw_debug_text(temp_x + 128, temp_y - 10, "Snow Angel");
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