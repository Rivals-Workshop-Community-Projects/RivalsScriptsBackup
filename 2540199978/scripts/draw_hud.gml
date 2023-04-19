if ("practice" in self)
{
	if (menuState == 0 || !practice) for (var i = nspecIcicles-1; i >= 0; --i)
	{
		shader_start();
		draw_sprite_ext(sprite_get("nspecialCharge"), 0, temp_x + 204 + (i-nspecIcicles)*6, temp_y - (((nspecCharge-10) > nspecChargeMax/nspecIcicles*(i+1))?8:4) + floor(tutAlpha*4)*2-8, 2, 2, 0, ((nspecCharge-10) > nspecChargeMax/nspecIcicles*(i+1))?IcicleColour(i):c_gray, tutAlpha);
		var article = noone;
		with (obj_article1) if (player_id == other && returning && state != 3 && index == i+1) {article = self; break;}
		var height = article==noone?0:article.state==0?1:article.state==1?article.state_timer/(article.idleTime-article.offsetTimer):0;
		height = floor(height*16)/16;
		if (height > 0) draw_sprite_part_ext(sprite_get("nspecialCharge"), 0, 0, 16*height, 8, 14,temp_x + 204 + (i-nspecIcicles)*6-6, temp_y - (((nspecCharge-10) > nspecChargeMax/nspecIcicles*(i+1))?8:4) + floor(tutAlpha*4)*2-24+(16*height*2), 2, 2, IcicleColour(i), tutAlpha);
		shader_end();
	}

	// taunt menu
	if (practice && (!variable_instance_exists(self, "temp_level") || temp_level==0))
	{
		draw_set_alpha(tutAlpha);
		ResetText();
		switch (menuState)
		{
			default:
				draw_debug_text(temp_x + 148 - nspecIcicles*6, temp_y - 10 + floor(tutAlpha*4)*2-8, "Taunt~");
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
				AddText("Snowflake (DSpec)");
				AddText("Charged Icicles (NSpec)");
				AddText("Snowblind (FSpec)");
				AddText("USpec with Snowflake");
				DrawTutBlock();
				DrawTutText();
				break;
			case 3:
				AddText("Quick Snowflake");
				AddText("FSpec with Snowflake");
				AddText("Icicles with FSpec");
				DrawTutBlock();
				DrawTutText();
				break;
			case 4:
				AddText("Change Notes");
				switch (tutMenu)
				{
					case 0:
						AddText("v1.0 - 8 Jul 2021");
						AddText("");
						AddText("Initial Commit");
						break;
					case 1:
						AddText("v1.1 - 8 Jul 2021");
						AddText("");
						AddText("Changed Portrait, Charselect, and Result images");
						AddText("Thanks, Regina!");
						AddText("");
						AddText("Added some workshop support");
						break;
					case 2:
						AddText("v1.2 - 8 Jul 2021");
						AddText("");
						AddText("USpecial is no longer airdodge-cancellable");
						AddText("");
						AddText("DStrong Angle 290 -> 280");
						AddText("");
						AddText("Speed changes to FSpecial");
						AddText("");
						AddText("DSpecial now has aim assist cuz some of you can't aim smh");
						AddText("");
						AddText("Minor bugfixes:");
						AddText("-DTilt buffer");
						break;
					case 3:
						AddText("v1.3 - 14 Jul 2021");
						AddText("");
						AddText("Increased prat_land_time 12 -> 14");
						AddText("");
						AddText("BAir startup 15 -> 13");
						AddText("BAir endlag 17 -> 15");
						AddText("BAir BKB 7 -> 6.5");
						AddText("BAir Angle 145 (35) -> 140 (40)");
						AddText("BAir Base Hitpause 7 -> 10");
						AddText("BAir Hitpause Scaling 0.95 -> 1");
						AddText("");
						AddText("You now can't drift while in hitpause when hitting FSpec");
						AddText("");
						AddText("DStrong Base Hitpause 8 -> 11 cuz some of you can't tech smh");
						AddText("");
						AddText("Added dust effects to attacks");
						AddText("Added snow effects to Snowflake");
						AddText("");
						AddText("Funny down taunt");
						AddText("");
						AddText("Added Acolyte alt");
						break;
					case 4:
						AddText("v1.4 - 17 Jul 2021");
						AddText("");
						AddText("Added Victory theme");
						AddText("Thanks Delta Parallax!");
						break;
					case 5:
						AddText("v1.5 - 25 Jul 2021");
						AddText("");
						AddText("Added Final Smash support");
						AddText("");
						AddText("Implemented Anticheat() :moyai:");
						break;
					case 6:
						AddText("v1.6 - 2 Aug 2021");
						AddText("");
						AddText("Changed Anticheat()");
						AddText("");
						AddText("DSpec Extra Hitause 28 -> 8");
						AddText("DSpec Damage 5 -> 4");
						AddText("");
						AddText("Fully charged Icicles in idle state will no longer count down its return timer while Flake is in Hitstun");
						AddText("");
						AddText("Tap USpec will now go into pratfall on whiff");
						AddText("Swapped the USpec distance between Tap and Hold variants");
						AddText("(Tap now goes farther than Held)");
						AddText("");
						AddText("Icicles now will also despawn on death");
						break;
					case 7:
						AddText("v1.7 - 23 Jan 2022");
						AddText("");
						AddText("Added hit sfx to DSpec and FSpec");
						AddText("Added visual effects to USpec");
						AddText("BAir - Changed 1 animation frame (Startup)");
						AddText("UAir - Slightly changed animation");
						AddText("FAir - Slightly changed animation");
						AddText("");
						AddText("UAir Sweet Lifetime 2 -> 3");
						AddText("UAir Sour Lifetime 4 -> 8");
						AddText("FAir Lifetime 2 -> 3");
						AddText("FAir Damage 6 -> 7");
						AddText("Adjusted FAir hitbox to match sprites.");
						AddText("");
						AddText("UTilt Damage 6 -> 8");
						AddText("UTilt now has less ground friction.");
						AddText("DTilt - Reduced Hurtbox height");
						AddText("");
						AddText("Fully charged Icicles in idle state will have its return timer reset to while Flake is in Hitstun");
						AddText("FSpecial Final 8+0.8 -> 9+0.8");
						AddText("FSpecial Final Damage 8 -> 9");
						AddText("");
						AddText("DStrong Angle 280 -> 275");
						AddText("UStrong Final KB 7.5+1.1 -> 10.5+0.9 (Galaxies Zetter on Jules at the same %)");
						AddText("");
						AddText("Added Double Trouble alt for RagingBagon");
						AddText("Somewhat reduced the hit sfx volume for FStrong and UStrong");
						break;
					case 8:
						AddText("v1.7.1 - 24 Jan 2022");
						AddText("");
						AddText("Reverted UStrong Final KB (10.5+0.9 -> 7.5+1.1)");
						AddText("");
						AddText("Grabbing an opponent or your snowflake with FSpec will now restore your Doublejump once per airtime");
						AddText("");
						AddText("Icicles now will properly despawn on parry");
						AddText("");
						AddText("DSpecial now has extended parry stun");
						AddText("");
						AddText("NAir startup 8 -> 7");
						AddText("");
						AddText("FAir now gets a small boost upwards on hit (-3 vsp)");
						AddText("");
						AddText("UAir Startup 11 -> 10");
						AddText("");
						AddText("DTilt KB 7+0.3 -> 8+0.3");
						AddText("");
						AddText("DAttack KB 5+0.3 -> 6+0.3");
						AddText("DAttack Angle 65 -> 60");
						AddText("");
						AddText("Added Paint alt");
						AddText("Slightly touched up USpec particle effect physics");
						break;
					case 9:
						AddText("v1.8 - 26 Jan 2022");
						AddText("'The Revert patch'");
						AddText("");
						AddText("Reverted DTilt hurtbox");
						AddText("");
						AddText("UTilt resprite (Thanks Delta Parallax!)");
						AddText("Changed UTilt hitbox timing and size to fit the new animation");
						AddText("UTilt Damage 8 -> 7");
						AddText("UTilt Startup 5 -> 6");
						AddText("UTilt Endlag 8 -> 12 (Before whifflag mult)");
						AddText("");
						AddText("FAir on hit vsp boost -3 -> -1");
						AddText("Reverted FAir Damage 7 -> 6");
						AddText("");
						AddText("Improved USpec Tap/Held input detection");
						AddText("Grounded USpec:");
						AddText("- No longer has pratfall");
						AddText("- Can now USpec again in the air (It doesn't combo tho)");
						AddText("- Held (homing) variant now travels the same distance as Tap");
						AddText("");
						AddText("Decreased FSpec max teleport distance 250 -> 200");
						AddText("Increased FSpec speed 4 -> 5");
						AddText("FSpec damage 9 -> 8");
						AddText("FSpec KB 9+0.8 -> 8+0.8");
						AddText("");
						AddText("Added a simple intro reusing DSpec sprites");
						AddText("Paint alt effects now work properly");
						break;
					case 10:
						AddText("v1.9 - 4 Feb 2022");
						AddText("");
						AddText("Fixed Rollback temp_level bug");
						break;
					case 11:
						AddText("v1.10 - 1 Apr 2022");
						AddText("");
						AddText("Added CSS sound effect");
						break;
					case 12:
						AddText("v1.11 - 14 May 2022");
						AddText("");
						AddText("Flake now uses small_sprites");
						AddText("");
						AddText("UStrong now has new Endlag animation");
						AddText("");
						AddText("FSpec Grab Hitbox size is now wider");
						AddText("FSpec Kick Angle 60 -> 80");
						AddText("FSpec Kick KB 8+0.8 -> 8+0.4");
						AddText("FSpec can now be jump cancelled on hit in endlag");
						AddText("");
						AddText("---------------------------");
						AddText("v1.11.1 - 17 May 2022");
						AddText("");
						AddText("Added 4 runes");
						break;
					case 13:
						AddText("v1.12 - 21 Aug 2022");
						AddText("");
						AddText("FAir Added hurtbox on smear");
						AddText("FAir Landing lag 4 -> 5");
						AddText("FAir Endlag 10 -> 12 (Before whifflag multiplier)");
						AddText("UAir Landing lag 5 -> 8");
						AddText("UAir Sweet KB 8+0.8 -> 8+0.75");
						AddText("UAir Sour KB 5+0.3 -> 7+0.3");
						AddText("DAir Shrunk hitbox slightly");
						AddText("DAir Bounce vsp 8.25 -> 7");
						AddText("BAir KB 6.5+0.95 -> 6+0.95");
						AddText("BAir startup 13 -> 12");
						AddText("BAir Shrunk hitbox slightly");
						AddText("");
						AddText("FTilt Sweet Angle 40 -> 45");
						AddText("DTilt Endlag 9 -> 11 (Before whifflag multiplier)");
						AddText("");
						AddText("FStrong Shrunk hitbox slightly");
						AddText("DStrong Angle 275 -> 280");
						AddText("UStrong Endlag 15 -> 20 (Before whifflag multiplier)");
						AddText("UStrong Shrunk hitbox slightly");
						AddText("");
						AddText("Icicles now also despawn when homing in on Snowflake");
						AddText("Icicles KB 8.5+0.8 -> 8.5+0.5");
						AddText("Icicles Angle 45 -> 50");
						AddText("All icicles break when 1 gets hit");
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
							AddText("The Snowflake is your main stage presence. Using DSpec will send out or call back the Snowflake.");
							AddText("Hitting an opponent with the Snowflake spawning hitbox will freeze them for a short moment, and give you 2 icicle charges.");
							AddText("Hold Special and use Left and Right to control it.");
							break;
						case 1:
							AddText("You can charge up to 5 icicles at a time by holding down Special. Tapping Special will fire all icicles charged.");
							AddText("Pressing Special immediately after stopping your charge will also fire icicles.");
							AddText("Fully charged icicles will stall, and then home in on you after a short while. Returning icicles will hit harder.");
							AddText("If the Snowflake is out, the icicles will home in on the Snowflake instead.");
							AddText("NSpecial can be jump- and airdodge-cancelled.");
							break;
						case 2:
							AddText("Press and hold Special to send out an image of Flake. When you let go of Special, you will teleport to the image and attack.");
							AddText("You can move around freely before teleporting. FSpecial can be airdodge-cancelled.");
							break;
						case 3:
							AddText("Holding Special while the Snowflake is out will launch you in the direction of the Snowflake.");
							AddText("This does not put you in pratfall, but you can't use USpec again.");
							AddText("Snowflake Held USpecial travels a shorter distance than normal Tap USpecial.");
							AddText("This also forces all fully charged Icicles to home in on the Snowflake.");
							break;
					}
				}
				else
				{
					switch (tutPrevMenu)
					{
						case 0:
							AddText("Input DSpecial immediately after letting go of Special when sending out the Snowflake will call it back quickly.");
							AddText("DSpecial -> Let go of Special -> Immediately input DSpecial within 4 frames");
							break;
						case 1:
							AddText("Grabbing the Snowflake with FSpecial will disable the Pratfall at the end of the move.");
							AddText("This will also restore your Doublejump once per airtime.");
							AddText("You can either extend combos or recover with this.");
							break;
						case 2:
							AddText("Hitting an opponent with the final hitbox of the move will force all fully charged icicles to home in on the opponent.");
							AddText("Icicles affected by this deal half damage than usual.");
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

#define IcicleColour(_i)
{
	if (get_player_color(player) == 6)
	{
		switch (_i)
		{
			case 0:
			case 4:
				return make_colour_rgb(85, 205, 252);
			case 1:
			case 3:
				return make_colour_rgb(247, 168, 223);
			default:
				break;
		}
	}
    return c_white;
}