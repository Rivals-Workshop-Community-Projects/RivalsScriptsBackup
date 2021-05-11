if ("practice" in self)
{
	// taunt menu
	if (practice && !"temp_level" in self)
	{
		draw_set_alpha(tutAlpha);
		ResetText();
		switch (menuState)
		{
			default:
				draw_debug_text(temp_x + 158, temp_y - 10 + floor(tutAlpha*4)*2-8, "Taunt~");

				var noOfStars = 0;
				with(asset_get("obj_article1")) if (player_id == other.id && state == 1) noOfStars += isBig+1;;
				AddText("No. of stars: " + string(noOfStars));
				AddText("KB multiplier: " + string(noOfStars*starKB) + "%");
				//AddText("djumps: " + string(djumps));
				DrawDebugBlock();
				DrawDebugText();
				break;
			case 1:
				AddText("Basic Tutorials");
				AddText("Advanced Tutorials");
				AddText("Change Notes");
				AddText("Shrine of Light Discord");
				AddText("Spawn Star");
				DrawTutBlock();
				DrawTutText();
				break;
			case 2:
				AddText("Constellations");
				AddText("Shinestar");
				AddText("Bigger Stars");
				DrawTutBlock();
				DrawTutText();
				break;
			case 3:
				AddText("Up Throw Up Air");
				AddText("Up Throw NSpec");
				AddText("Up Throw FSpec");
				AddText("USpec Link");
				DrawTutBlock();
				DrawTutText();
				break;
			case 4:
				AddText("Change Notes");
				switch (tutMenu)
				{
					case 0:
						AddText("v1.0 - 28 Apr 2021");
						AddText("");
						AddText("Initial Commit");
						break;
					case 1:
						AddText("v1.1 - 28 Apr 2021");
						AddText("");
						AddText("Jab 2 is no longer untechable");
						AddText("");
						AddText("USpecial now doesn't put you in pratfall when sliding off the ledge");
						AddText("");
						AddText("DAir Final KBS 0 -> 0.4");
						AddText("");
						AddText("NSpecial Damage 5 -> 4");
						AddText("");
						AddText("You now also get DSpecial back when walljumping and getting hit");
						AddText("");
						AddText("Added Runes!");
						break;
					case 2:
						AddText("v1.2 - 28 Apr 2021");
						AddText("");
						AddText("Adjusted Lyca alt");
						AddText("");
						AddText("Adjusted FSpecial sprite colours");
						AddText("Adjusted FSpecial visual effects");
						AddText("Added FSpecial sound effects");
						AddText("");
						AddText("FStrong angle 40 -> 45");
						break;
					case 3:
						AddText("v1.3 - 29 Apr 2021");
						AddText("");
						AddText("Constellations now no longer affects base knockback");
						AddText("Star damage bonus increased to 2% per star");
						AddText("");
						AddText("DStrong KBS 0.8 -> 0.9");
						AddText("");
						AddText("Weight (knockback_adj) 1.15 -> 1.1");
						AddText("");
						AddText("USpec now no longer refreshes resources when landing");
						AddText("");
						AddText("Added 'USpec Link' advanced tutorial");
						AddText("Added 'Spawn Star' command");
						break;
					case 4:
						AddText("v1.4 - 30 Apr 2021");
						AddText("");
						AddText("NAir Initial - Damage 6 -> 5");
						AddText("NAir Initial - Range reduced");
						AddText("Nair Startup 3 -> 4");
						AddText("");
						AddText("FSpecial Grab - Frame 11 -> 9");
						AddText("FSpecial Dash - Startup 20 -> 16");
						AddText("FSpecial Endlag 18 -> 32");
						AddText("FSpecial Endlag no longer has whifflag multiplier");
						AddText("FSpecial no longer has 8 frames cooldown");
						AddText("");
						AddText("NSpecial can no longer Jump Cancel UStrong");
						AddText("");
						AddText("UAir Startup 18 -> 14");
						AddText("UAir Endlag 12 -> 14");
						AddText("");
						AddText("Big stars deceleration 1.05 -> 1.07");
						AddText("(Speed is divided by this number every frame; For reference, small stars have 1.1)");
						AddText("");
						AddText("Replaced Lukaru's victory theme with Regina's victory theme");
						AddText("Replaced Fink Pong alt with Ice Bnuuy alt");
						AddText("Replaced Grey alt with Black alt");
						break;
					case 5:
						AddText("v1.5 - 1 May 2021");
						AddText("");
						AddText("Fixed infinite djump FSpec bug");
						AddText("");
						AddText("NSpecial now can Jump Cancel UStrong");
						AddText("NSpecial now prioritizes big stars");
						AddText("Small stars no longer has parry stun");
						AddText("");
						AddText("DSpecial now pulls in stars more consistently");
						AddText("DSpecial now pulls in stars faster");
						AddText("");
						AddText("FSpecial dash now pulls the opponent in to follow up more consistently");
						AddText("");
						AddText("BAir startup 13 -> 11");
						AddText("");
						AddText("Added Cracked Star state for destroying stars");
						AddText("Stars become cracked when getting hit by the opponent");
						AddText("Cracked stars only despawn after Lukastar gets hit");
						AddText("Spawning new stars prioritizes despawning cracked stars when reaching star limit");
						AddText("Fusing stars will remove the cracked status");
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
							AddText("Most attacks create stars on hitting the opponent");
							AddText("These stars will add base knockback and damage when consumed by landing a Strong attack or a tipper UAir");
							AddText("You can have a maximum on 7 stars at any time");
							AddText("Each star will increase knockback multiplier by " + string(starKB) + "% and increase damage by " + string(starDamage) + "%");
							AddText("");
							AddText("Create stars (Hit opponent) -> Strong / tipper UAir");
							break;
						case 1:
							AddText("Using NSpecial on a star will shoot it forward towards the closest enemy that you're facing");
							AddText("These small stars have polite hitboxes and can only hit enemies in hitstun");
							AddText("Shinestar used to extend combos");
							AddText("");
							AddText("Charging NSpecial will let you use it up to 3 times consecutively");
							AddText("The more you charge it, the farther the stars will go");
							AddText("");
							AddText("Create stars (Hit opponent) -> NSpecial on a star");
							break;
						case 2:
							AddText("DSpecial will call nearby stars to you");
							AddText("Two small stars that collide with each other from DSpecial can merge to form a big star");
							AddText("");
							AddText("A big star is still calculated as 2 stars in Constellations");
							AddText("Using Shinestar, the big star does more damage than the small star, and is no longer polite");
							AddText("Both deal the same knockback, however");
							AddText("");
							AddText("Create stars (Hit opponent) -> Merge stars (DSpecial)");
							break;
					}
				}
				else
				{
					switch (tutPrevMenu)
					{
						case 0:
							AddText("FSpecial can grab at close range and will throw the opponent uppwards");
							AddText("Use this to combo into UAir");
							AddText("");
							AddText("FSpecial Grab -> Shorthop/DSpecial -> UAir");
							break;
						case 1:
							AddText("Instead of going for UAir after Up Throw, you can use Shinestar (NSpec) to shoot a star");
							AddText("This can let you start combos, or lead into an UAir again");
							AddText("");
							AddText("Grab (FSpecial) -> Shinestar (NSpecial)");
							break;
						case 2:
							AddText("Instead of going for UAir after Up Throw, you can use FSpec to catch opponents");
							AddText("This is more consistent than UAir, but kills later.");
							AddText("");
							AddText("Grab (FSpecial) -> Shorthop/DSpecial -> FSpecial");
							break;
						case 3:
							AddText("Frame 6 or faster moves are true if you hit USpec on the ground, ending close to the opponent");
							AddText("It's more consistent if you do it diagonally downwards");
							AddText("However, this can easily be countered by crouch cancelling");
							AddText("If you see your opponent crouching before getting hit by USpec, don't follow up!");
							AddText("");
							AddText("USpec1 -> USpec2 -> UStrong/DStrong/UTilt/DTilt (or anything frame 6 or faster)");
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

#define DrawDebugBlock()
{
	var length = GetTextLength();
	draw_set_alpha(tutAlpha*0.4);
	draw_rectangle_color(temp_x-8,temp_y - 12 - (tutLength)*16 + floor(tutAlpha*4)*2-8,temp_x + length+6,temp_y-1 + floor(tutAlpha*4)*2-8,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(temp_x-6,temp_y - 10 - (tutLength)*16 + floor(tutAlpha*4)*2-8,temp_x + length+4,temp_y-3 + floor(tutAlpha*4)*2-8,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(tutAlpha);
}


#define DrawDebugText()
{
	for (var i = 0; i < tutLength; ++i) draw_debug_text(temp_x, temp_y - 20 - (tutLength-i-1)*16 + floor(tutAlpha*4)*2-8, tutText[i]);
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