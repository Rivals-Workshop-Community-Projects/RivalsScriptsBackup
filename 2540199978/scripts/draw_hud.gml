if ("practice" in self)
{
	if (menuState == 0 || !practice) for (var i = 4; i >= 0; --i)
	{
		shader_start();
		draw_sprite_ext(sprite_get("nspecialCharge"), 0, temp_x + 174 + i*6, temp_y - (((nspecCharge-10) > nspecChargeMax/5*(i+1))?8:4) + floor(tutAlpha*4)*2-8, 2, 2, 0, ((nspecCharge-10) > nspecChargeMax/5*(i+1))?IcicleColour(i):c_gray, tutAlpha);
		var article = noone;
		with (obj_article1) if (player_id == other && returning && state != 3 && index == i+1) {article = self; break;}
		var height = article==noone?0:article.state==0?1:article.state==1?article.state_timer/(article.idleTime-article.offsetTimer):0;
		height = floor(height*12)/12;
		if (height > 0) draw_sprite_part_ext(sprite_get("nspecialCharge"), 0, 0, 12*height, 8, 14,temp_x + 174 + i*6-3*2, temp_y - (((nspecCharge-10) > nspecChargeMax/5*(i+1))?8:4) + floor(tutAlpha*4)*2-8-7*2+(12*height*2), 2, 2, IcicleColour(i), tutAlpha);
		shader_end();
	}

	// taunt menu
	if (practice && !"temp_level" in self)
	{
		draw_set_alpha(tutAlpha);
		ResetText();
		switch (menuState)
		{
			default:
				draw_debug_text(temp_x + 118, temp_y - 10 + floor(tutAlpha*4)*2-8, "Taunt~");
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
						AddText("DSpecial now has aim assist cuz some of you cant aim smh");
						AddText("");
						AddText("Minor bugfixes:");
						AddText("-DTilt buffer");
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
							AddText("Fully charged icicles will stall, and then home in on you after a short while. Returning icicles deal more knockback.");
							AddText("If the Snowflake is out, the icicles will home in on the Snowflake instead, before returning to you.");
							AddText("NSpecial can be jump- and airdodge-cancelled.");
							break;
						case 2:
							AddText("Press and hold Special to send out an image of Flake. When you let go of Special, you will teleport to the image and attack.");
							AddText("You can move around freely before teleporting. FSpecial can be airdodge-cancelled.");
							break;
						case 3:
							AddText("Holding Special while the Snowflake is out will launch you in the direction of the Snowflake.");
							AddText("This boosts you slightly farther than without utilising the Snowflake.");
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