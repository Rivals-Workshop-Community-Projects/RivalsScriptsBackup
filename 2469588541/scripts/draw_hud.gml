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
				AddText("Lore / Story");
				AddText("Spawn Star");
				AddText("Final Smash");
				AddText("Make a wish");
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
					case 6:
						AddText("v1.6 - 13 May 2021");
						AddText("");
						AddText("Cracked stars no longer despawn after Lukastar gets hit");
						AddText("Cracked stars now instead despawn after 69 frames");
						AddText("");
						AddText("Added a Lore / Story page");
						AddText("");
						AddText("I am currently in army. Don't expect frequent balance changes.");
						break;
					case 7:
						AddText("v1.7 - 20 May 2021");
						AddText("");
						AddText("Stars now glow with the player's hud colour");
						AddText("");
						AddText("NSpecial now can be jump cancelled more consistently");
						AddText("");
						AddText("DAttack Endlag 12 -> 16 (before whifflag multiplier)");
						AddText("");
						AddText("DAir Multihit - Hitpause 2 -> 3");
						AddText("DAir Final - Hitpause 5 -> 7");
						AddText("DAir Multihit - Damage 2 -> 1");
						AddText("DAir Multihit - Hitstun Multiplier 0.65 -> 0.58");
						AddText("");
						AddText("NAir hitboxes are now smaller and has less range");
						break;
					case 8:
						AddText("v1.8 - 24 May 2021");
						AddText("");
						AddText("Added Final Smash");
						AddText("");
						LineBreak();
						AddText("v1.8.1 - 25 May 2021");
						AddText("");
						AddText("Added a wish");
						AddText("");
						LineBreak();
						AddText("v1.8.2 - 28 May 2021");
						AddText("");
						AddText("Bugfix Wish - Reduced the chance of false positives in regular battles");
						AddText("Bugfix Wish - Mashing A now doesn't skip gaining coins");
						break;
					case 9:
						AddText("v1.9 - 10 Jun 2021");
						AddText("");
						AddText("NAir All - Angle 361 -> 50");
						AddText("NAir All - KBS 0.6 -> 0.4");
						AddText("NAir Weak - BKB 6 -> 5");
						AddText("");
						AddText("Shinestar speed scaling 2.5 -> 3");
						AddText("Shinestar base speed 30 -> 40");
						AddText("Cracked stars despawn time 69 -> 35");
						AddText("Using USpecial will now crack all your stars");
						break;
					case 10:
						AddText("v1.10 - 21 Jun 2021");
						AddText("");
						AddText("Using USpecial no longer cracks all your stars");
						AddText("USpecial Endlag now has whifflag");
						AddText("");
						AddText("UAir and FStrong now has less range");
						AddText("");
						AddText("UAir startup 14 -> 9");
						AddText("UAir landing lag 8 -> 6");
						AddText("UAir Sourspot BKB 4 -> 5");
						break;
					case 11:
						AddText("v1.11 - 2 Jul 2021");
						AddText("");
						AddText("UAir - Removed Sweetest sweetspot");
						AddText("");
						AddText("Replaced Weeb alt with Sai M alt");
						break;
					case 12:
						AddText("v1.12 - 14 Jul 2021");
						AddText("");
						AddText("leave_ground_max 7 -> 5.5");
						AddText("max_jump_hsp 7 -> 5.5");
						AddText("hitstun_grav 0.5 -> 0.6");
						AddText("knockback_adj 1.1 -> 1.15 (Ori Weight)");
						AddText("");
						AddText("NAir Landing Lag 4 -> 5");
						AddText("DAir Landing Lag 5 -> 6");
						AddText("");
						AddText("FSpec 1 Damage 1 -> 0");
						AddText("FSpec 2 Damage 8 -> 9");
						break;
					case 13:
						AddText("v1.13 - 18 Jul 2021");
						AddText("");
						AddText("Slightly updated the Lore page");
						AddText("");
						AddText("BAir Landing lag 6 -> 7");
						AddText("");
						AddText("DAir Final Hitstun Multiplier 1 -> 0.9");
						AddText("");
						AddText("UTilt Damage 7 -> 6");
						AddText("");
						AddText("USpec Damage 4 -> 2");
						AddText("Prat land time 16 -> 17");
						AddText("");
						AddText("FSpec2 Hitpause 12 -> 15");
						AddText("FSpec2 KBS 1.1 -> 0.9");
						AddText("FSpec2 Endlag 32 -> 38");
						AddText("FSpec Endlag has reduced air acceleration and gravity");
						AddText("");
						AddText("UStrong Window 1 6 -> 8 (startup 10 -> 12)");
						break;
					case 14:
						AddText("v1.14 - 29 Jul 2021");
						AddText("");
						AddText("Redone Portrait and CSS art! Thanks Regina!");
						AddText("");
						AddText("Replaced Ori alt with Riptide alt");
						AddText("");
						AddText("---------------------");
						AddText("v1.14.1 - 29 Jul 2021");
						AddText("");
						AddText("Slightly changed CSS art");
						AddText("");
						AddText("Altered NAir sprites to match the smaller hitboxes");
						AddText("");
						AddText("Removed sfx from CSS");
						break;
					case 15:
						AddText("v1.15 - 2 Aug 2021");
						AddText("");
						AddText("New Victory Theme! Thanks Delta Parallax!");
						AddText("");
						AddText("DAttack HSpeed 12 -> 10");
						AddText("");
						AddText("Raised all NAir hitboxes upwards by 4");
						AddText("");
						AddText("FAir startup 6 -> 4");
						AddText("Altered FAir hiboxes to match smears better");
						AddText("FAir KBS 0.5 -> 0.7");
						AddText("");
						AddText("UTilt hurtbox now covers smear");
						AddText("Shrinked UTilt hitboxes");
						AddText("UTilt Endlag 10 -> 9 (Before whifflag multiplier)");
						AddText("");
						AddText("Hitting Lukastar now despawns (not crack) 2 stars instead of 1");
						AddText("");
						AddText("---------------------");
						AddText("v1.15.1 - 3 Aug 2021");
						AddText("");
						AddText("FAir sfx frame 6 -> 2");
						break;
					case 16:
						AddText("v1.16 - 15 Aug 2021");
						AddText("");
						AddText("'Can we pretend that airplanes in the night sky are Lukastars?'");
						AddText("");
						AddText("BAir Sweetspot hitbox shrink wrapped");
						AddText("BAir Sweetspot Lifetime 4 -> 3");
						AddText("BAir Startup sfx frame 7 -> 4");
						AddText("");
						AddText("Shinestar (Both) KB 7+0.45 -> 6+0.45");
						AddText("");
						AddText("USpec Speed 29 -> 27");
						break;
					case 17:
						AddText("v1.17 - 19 Aug 2021");
						AddText("");
						AddText("'I could really use a Flake right now, Flake right now, Flake right now...'");
						AddText("");
						AddText("Cracked stars despawn time 35 -> 69");
						AddText("Shinestar can no longer be used on cracked stars");
						AddText("");
						AddText("Big Shinestars now have a 12 frame startup before launching");
						AddText("Shinestars will aim at where the opponent was at the beginning of the startup");
						AddText("");
						AddText("USpec Startup 13 -> 16");
						AddText("Added visual effect to USpec to make it easier to react to");
						AddText("");
						AddText("FSpec Endlag 38 -> 16");
						AddText("FSpec now has pratfall on whiff");
						AddText("FSpec Endlag no longer has reduced air acceleration and gravity");
						AddText("");
						AddText("UAir Startup 9 -> 11");
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
			case 8:
				AddText("Lore / Story");
				AddText("");
				AddText("Lukastars, also known as the Star Foxes, live above the Archai and Xue Hua Mountains.");
				AddText("They defend Aether from threats from outer space, as well as most meteor strikes.");
				AddText("");
				AddText("Lukastars are often seen sparring with each other on Xue Hua Mountain.");
				AddText("They're most known for creating brilliant and stunning constellations when they turn into their feral form.");
				AddText("");
				AddText("Lukastars are sometimes mistaken for actual stars by other creatures on the ground.");
				AddText("They're close friends with Flake, who lives on Xue Hua Mountains.");
				AddText("They love listening to him play the Erhu.");
				AddText("");
				AddText("Occasionally, Lukastars fall from the sky to learn other creatures' fighting techniques.");
				AddText("Moves that they have tried to replicate are:");
				AddText("Zetterburn Shine, Forsburn BAir, Forsburn FAir, Ranno NAir, Maypul Drill, Maypul FSpec, and Absa USpec.");
				DrawTutorialBlock();
				DrawTutorialText();
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

#define LineBreak()
{
	AddText("-----------------");
}