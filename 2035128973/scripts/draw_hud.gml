if ("rollArray" in self)
{
	if (killCard.timer > 0 && killCard.attackPlayer != -4 && killCard.deadPlayer != -4)
	{
		var tempAlpha = clamp(sin(pi*killCard.timer/120)*3, 0, 1);
		var tempX = view_get_wview()/2;
		var tempY = 130+tempAlpha*8;
		draw_sprite_ext(sprite_get("killcard"), 0, tempX, tempY, 2, 2, 0, get_player_hud_color(killCard.attackPlayer.player), 0.6*tempAlpha);
		draw_sprite_ext(sprite_get("killcard"), 1, tempX, tempY, 2, 2, 0, get_player_hud_color(killCard.deadPlayer.player), 0.6*tempAlpha);
		draw_sprite_ext(sprite_get("killcard"), 2, tempX, tempY, 2, 2, 0, c_white, tempAlpha);
		with (killCard.attackPlayer) shader_start();
		draw_sprite_ext(get_char_info(killCard.attackPlayer.player, INFO_OFFSCREEN), killCard.attackPlayer.select-1, tempX-70, tempY+2, 1, 1, 0, c_white, tempAlpha);
		with (killCard.deadPlayer) shader_start();
		draw_sprite_ext(get_char_info(killCard.deadPlayer.player, INFO_OFFSCREEN), killCard.deadPlayer.select-1, tempX+70, tempY+2, -1, 1, 0, c_white, tempAlpha);
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
				AddText("Bone Stances");
				AddText("DSpec");
				AddText("FSpec Bone Rush");
				AddText("FSpec Force Palm");
				AddText("USpec Bone Throw");
				AddText("USpec Extreme Speed");
				AddText("NSpec Aura Sphere");
				DrawTutBlock();
				DrawTutText();
				break;
			case 3:
				AddText("ASC BAir");
				AddText("Extreme Speed UAir");
				AddText("Boner Sphere");
				DrawTutBlock();
				DrawTutText();
				break;
			case 4:
				AddText("Change Notes");
				switch (tutMenu)
				{
					case 0:
						AddText("v1.0 - 26 Mar 2020");
						AddText("");
						AddText("Initial Commit");
						break;
					case 1:
						AddText("v2.0 - 22 Nov 2021");
						AddText("");
						AddText("'Give me some time and I'll update it enough that it becomes a legit character'");
						AddText("Here it is lol:");
						AddText("The Pokejam Update");
						AddText("");
						AddText("Removed 100% Accurate");
						break;
					case 2:
						AddText("v2.1 - 24 Nov 2021");
						AddText("'The not day 1 update'");
						AddText("");
						AddText("DSpecial is now DJump cancellable");
						AddText("");
						AddText("Boneless FTilt Endlag 8 -> 11 (Before whifflag multiplier)");
						AddText("");
						AddText("Bone FSpec Endlag 13 -> 18 (Before whifflag multiplier)");
						AddText("");
						AddText("Increased bone pickup radius of Boneless FSpec 50px -> 70px");
						AddText("");
						AddText("Bone DAir animation now matches the hitbox lifetimes");
						AddText("Bone DAir sourspot is now thinner to match the sprite better");
						AddText("");
						AddText("Boneless DAir Air friction 0.8 -> 0.7");
						AddText("");
						AddText("Parrying Aura Sphere Charge now immediately sends Lucario into parrystun");
						AddText("Aura Sphere Charge now has hit sfx");
						AddText("Aura Sphere Charge Extra Hitpause 3 -> 2");
						AddText("Aura Sphere Charge Angle 70 -> 80");
						AddText("Aura Sphere sfx now changes depending on the charge");
						AddText("");
						AddText("UStrong is now a multihit");
						AddText("");
						AddText("Adjusted all aura-based hit sfx");
						AddText("");
						AddText("Fixed Photon Edge alt colours");
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
							AddText("Lucario has 2 stances: Bonefighter stance, and Brawler stance.");
							AddText("- While Lucario is holding the bone, Lucario will play more like a Swordie, with larger but laggier moves.");
							AddText("- Without the bone, Lucario has faster moves, but lack range.");
							AddText("[Taunt to return]");
							break;
						case 1:
							AddText("While holding your bone, use DSpecial to plant the bone in the ground.");
							AddText("Without the bone, use DSpecial to pull a new bone from the ground.");
							AddText("- The previous bone will despawn when creating a new bone.");
							AddText("[Taunt to return]");
							break;
						case 2:
							AddText("While holding your bone, FSpecial will perform Bone Rush.");
							AddText("- You can use this move to impale the opponent with your bone.");
							AddText("- Getting hit by a non-projectile hitbox of the impaled opponent will return the bone to you.");
							AddText("Try impaling the opponent with Bone Rush!");
							break;
						case 3:
							AddText("Without the bone, FSpecial will perform Force Palm.");
							AddText("- Hitting an impaled opponent with the Grab hitbox will retrieve the bone and cause a critical hit.");
							AddText("- Tapping Special when perfroming Force Palm while near a planted bone will retrieve it, and end the attack.");
							AddText("Try retrieving the bone with Force Palm!");
							break;
						case 4:
							AddText("While holding the bone, USpecial will throw the bone as a projectile.");
							AddText("- You can change the angle slightly by pressing a direction, and change the strength by holding or tapping Special.");
							AddText("- This projectile can impale the opponent on hit.");
							AddText("Try impaling the opponent with Bone Throw!");
							break;
						case 5:
							AddText("Without the bone, USpecial turns into Extreme Speed.");
							AddText("- Tapping Special will launch Lucario upwards. Lucario will be extremely vulnerable.");
							AddText("- Holding Special instead, Lucario will dash towards the bone, wherever it is on screen.");
							AddText("- Only the Held variant has hitboxes. Hitting the opponent will remove pratfall.");
							AddText("Try hitting the opponent with Extreme Speed! (Tip: Maybe impale them first?)");
							break;
						case 6:
							AddText("Aura Sphere is similar to Smash's version.");
							AddText("- Aura Sphere's B reverse will flip Lucario's horizontal speed.");
							AddText("- Aura Sphere can be cancelled with Jump or Shield.");
							AddText("- The Aura Sphere projectile can launch Lucario's planted bone, which turns into the USpec projectile.");
							AddText("Try hitting the planted bone with Aura Sphere!");
							break;
					}
				}
				else
				{
					switch (tutPrevMenu)
					{
						case 0:
							AddText("The Aura Sphere charging hitbox can be jump cancelled into BAir quite easily.");
							AddText("[Taunt to return]");
							break;
						case 1:
							AddText("Extreme Speed can be used on a launched impaled opponent near the top blastzone and be followed up into UAir to kill.");
							AddText("- This only works on poor DI though.");
							AddText("- idk you might be able to re-impale with bone throw instead of uair lmao");
							AddText("[Taunt to return]");
							break;
						case 2:
							AddText("Bone NAir 1 into reversed fully charged Aura Sphere");
							AddText("- Bone Nair is just Forsburn NAir lmao");
							AddText("- Inspired by Forsburn's Boner Fart (NAir 1 Combust)");
							AddText("[Taunt to return]");
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
	draw_rectangle_color(temp_x - 6,temp_y - 10 - 16*tutLength + floor(tutAlpha*4)*2-8,temp_x + 213,temp_y-2 + floor(tutAlpha*4)*2-8,tutColour,tutColour,tutColour,tutColour,false);
	draw_set_alpha(tutAlpha);
}

#define DrawTutorialBlock()
{
	var length = GetTextLength();
	draw_set_alpha(tutAlpha*0.4);
	draw_rectangle_color(6,temp_y - 26 - (tutLength)*16 + floor(tutAlpha*4)*2-8,length+24,temp_y-12 + floor(tutAlpha*4)*2-8,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(8,temp_y - 24 - (tutLength)*16 + floor(tutAlpha*4)*2-8,length+22,temp_y-14 + floor(tutAlpha*4)*2-8,tutColour,tutColour,tutColour,tutColour,false);
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