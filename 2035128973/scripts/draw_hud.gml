if (get_synced_var(player) == 15005) exit;
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
	
	with (pHitBox) if (player_id == other.id && attack == AT_USPECIAL && hbox_num == 1)
	{
		var clampCheckX = x != clamp(x, view_get_xview(), view_get_xview()+view_get_wview());
		var clampCheckY = y != clamp(y, view_get_yview(), view_get_yview()+view_get_hview()-52);
		if (clampCheckX || clampCheckY)
		{
			var hudShape = clampCheckX&&clampCheckY;
			var hudOffset = 32;
			var drawX = clamp(x-view_get_xview(), hudOffset, view_get_wview()-hudOffset);
			var drawY = clamp(y-view_get_yview(), hudOffset, view_get_hview()-52-hudOffset);
			var hudRot = 0;
			if (drawX == view_get_wview()-hudOffset) hudRot = 90;
			if (drawY == hudOffset) hudRot = 180;
			if (drawX == hudOffset) hudRot = (drawY==view_get_hview()-52-hudOffset)?0:270;
			draw_sprite_ext(sprite_get("hud"), hudShape , drawX, drawY, 2, 2, hudRot, get_player_hud_color(other.player), 1);
			with (other) shader_start();
			draw_sprite_ext(sprite_get("boneHud"), 0, drawX, drawY, 2, 2, 0, c_white, 1);
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
				draw_debug_text(temp_x + 158, temp_y - 10 + floor(tutAlpha*4)*2-8, "Taunt~");
				break;
			case 1:
				AddText("Basic Tutorials");
				AddText("Advanced Tutorials");
				AddText("Change Notes");
				AddText("Shrine of Light Discord");
				AddText("Final Smash");
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
						break;
					case 3:
						AddText("v2.2 - 26 Nov 2021");
						AddText("");
						AddText("Redone Intro animation");
						AddText("Redone Victory screen");
						AddText("");
						AddText("Added Down Taunt");
						AddText("");
						AddText("Added a small amount of runes");
						AddText("");
						AddText("Bugfix for DSpec not doing DJump after using jumps");
						break;
					case 4:
						AddText("v2.3 - 29 Nov 2021");
						AddText("");
						AddText("Extreme Speed now has a proper startup animation - Thanks Sai!");
						AddText("Slightly changed startup speed properties (instant stop -> slow down)");
						AddText("");
						AddText("The bone projectile now has an offscreen indicator");
						AddText("");
						AddText("Polished Bone sfx");
						AddText("");
						AddText("Swapped Pop alt for Hue alt");
						break;
					case 5:
						AddText("v2.4 - 7 Dec 2021");
						AddText("");
						AddText("Lucario's outline now flashes when Aura Sphere is fully charged");
						AddText("Aura Sphere now becomes transcendant on parry");
						AddText("Aura Sphere is now Polite when charged less than 20% of full charge");
						AddText("");
						AddText("Both USpecials now have Extended Parry Stun");
						AddText("Pratland time 16 -> 20");
						AddText("");
						AddText("UAir KB 7+0.7 -> 6+0.8");
						AddText("");
						AddText("Bone DTilt Angle 65 -> 80");
						AddText("Boneless DTilt KB 9+0.4 -> 8+0.2");
						AddText("");
						AddText("Boneless FTilt sweet KB 7+0.9 -> 7.5+0.9");
						AddText("Boneless FTilt sweet Base hitpause 8 -> 9");
						AddText("Boneless FTilt sweet fixed hit sfx");
						AddText("");
						AddText("FStrong Angle 361 -> 40");
						AddText("");
						AddText("Added Pilot's Lucario idle costumes to Up/Down taunt");
						break;
					case 6:
						AddText("v2.5 - 4 Feb 2022");
						AddText("");
						AddText("Fixed Rollback temp_level bug");
						AddText("Renamed Hue alt to Paint");
						break;
					case 7:
						AddText("v2.6 - 1 Apr 2022");
						AddText("");
						AddText("Fixed a bug with parrying USpec bone");
						AddText("");
						AddText("Fastfall can now be used while in pratfall");
						break;
					case 8:
						AddText("v2.7 - 3 May 2022");
						AddText("");
						AddText("Prat Land Time 20 -> 22");
						AddText("");
						AddText("Polished Bone article");
						AddText("Boneless DSpec now despawns Bone (USpec) projectile");
						AddText("");
						AddText("FStrong Startup 14 -> 16");
						AddText("UStrong Startup 14 -> 16");
						AddText("DStrong Startup 16 -> 18");
						AddText("DStrong Angle 40 -> 45");
						AddText("DStrong Reduced range");
						AddText("");
						AddText("Force Palm Grabbox Lifetime 9 -> 3");
						AddText("");
						AddText("Boneless NAir Landing Lag 4 -> 5");
						AddText("Bone NAir 2 Angle 10 -> 20");
						AddText("Boneless DAir Increased hitpause");
						AddText("Bone FAir New smear sprites");
						AddText("Reworked Bone FAir to kill on tipper");
						AddText("Reworked Boneless FAir to be faster and more similar to Fors FAir");
						AddText("Slightly improved BAir sprites");
						AddText("");
						AddText("Aura glow opacity 0.8 -> 0.9");
						break;
					case 9:
						AddText("v2.8 - 4 May 2022");
						AddText("");
						AddText("Lucario now uses Small Sprites");
						AddText("Removed Bone alt");
						AddText("Slightly altered Star Fox alt");
						AddText("Renamed some alts");
						AddText("");
						AddText("Reworked UAir to be a combo move rather than a kill move");
						AddText("");
						AddText("USpecial projectile KB 5+0.45 -> 5+0.2");
						AddText("");
						AddText("Extreme Speed now has Force Flinch");
						AddText("Extreme Speed Hitstun Multiplier 1 -> 0.7");
						AddText("Extreme Speed Drift Multiplier 1 -> 1.1");
						AddText("");
						AddText("Slightly improved Bone FTilt sprites");
						AddText("Slightly improved Bone NAir sprites");
						AddText("Slightly improved Bone DAir sprites");
						break;
					case 10:
						AddText("v2.9 - 10 May 2022");
						AddText("");
						AddText("Fixed CSS error messages");
						AddText("");
						AddText("Parried Aura Spheres are no longer polite");
						AddText("");
						AddText("DAir startup 10 -> 12");
						AddText("DAir Sweetspot KB 5+0.5 -> 6+0.8");
						AddText("DAir Sourspots shrinked hitbox sizes slightly");
						AddText("");
						AddText("Added Bone UAir - A slow but huge attack");
						AddText("");
						AddText("FAir Sweetspot KB 7+0.8 -> 7.5+0.8");
						AddText("");
						AddText("Extreme Speed no longer has Force Flinch");
						AddText("Extreme Speed now can be Crouch Cancelled");
						break;
					case 11:
						AddText("v3.0 - 29 Jun 2022");
						AddText("");
						AddText("Readded 100% Accurate Lucario");
						AddText("Slightly polished 100% Accurate mode");
						AddText("");
						AddText("Bone article now slightly sways when a player moves past it");
						AddText("");
						AddText("Bone UAir Startup 18 -> 14");
						AddText("Bone UAir Landing Lag 7 -> 8");
						AddText("Bone UAir Sour Damage 7 -> 6");
						AddText("");
						AddText("Bone DAir Landing Lag 9 -> 6");
						AddText("");
						AddText("Boneless DAir Removed momentum");
						AddText("");
						AddText("DSpecial now gives midair jumps back only once per airtime");
						AddText("");
						AddText("Aura Sphere Charge can no longer break projectiles");
						AddText("");
						AddText("Reworked Force Palm to be weaker without grabbing the opponent");
						AddText("Force Palm Startup 26 -> 20");
						AddText("Force Palm Endlag 12 -> 16 (Before whifflag multiplier)");
						AddText("Force Palm Damage 10 -> 8");
						AddText("Force Palm KB 9+0.9 -> 7+0.7");
						AddText("Critical Force Palm KB 10+1.05 -> 10+1.1");
						AddText("Critical Force Palm Damage 14 -> 16");
						AddText("");
						AddText("UStrong Link hitbox width 40 -> 50");
						break;
					case 12:
						AddText("v3.1 - 2 Jul 2022");
						AddText("");
						AddText("Bone Rush Removed vertical momentum");
						AddText("Bone Rush Endlag 18 -> 14 (Before whifflag multiplier)");
						AddText("");
						AddText("Reworked Force Palm hitboxes");
						AddText("Force Palm now gets weaker the farther from the base");
						AddText("");
						AddText("Boneless UAir KB 9+0.2 -> 8+0.35");
						AddText("Boneless UAir Damage 4 -> 6");
						AddText("");
						AddText("Boneless NAir1 KB 4+0.3 -> 5+0.2");
						AddText("");
						AddText("Bone Article when hit by Aura Sphere will move upwards proportionately to the charge");
						AddText("Misc bugfixes for Bone Article");
						AddText("");
						AddText("----------------------------------");
						AddText("v3.1.1 - 21 Jul 2022");
						AddText("");
						AddText("Added Anti-Dan code");
						break;
					case 13:
						AddText("v3.2 - 17 Sep 2022");
						AddText("");
						AddText("Aura Sphere Charge Angle 80 -> 90");
						AddText("");
						AddText("Changed Critical Force Palm hit sound effect");
						AddText("Revert Critical Force Palm KB 10+1.1 -> 10+1.05");
						AddText("");
						AddText("Dattack Angle 38 -> 70");
						AddText("Dattack KB 9+0.5 -> 9+0.2");
						AddText("Dattack Damage 8 -> 5");
						AddText("");
						AddText("Boneless UTilt is now 3 frames faster");
						AddText("");
						AddText("Revert Bone NAir 2 Angle 20 -> 10");
						AddText("");
						AddText("DStrong Widened hitboxes slightly");
						AddText("");
						AddText("----------------------------------");
						AddText("v3.2.1 - 20 Dec 2022");
						AddText("");
						AddText("Fixed AI from a base game update.");
						break;
					case 14:
						AddText("v3.3 - 4 Jan 2023");
						AddText("");
						AddText("Added compatibility with Dakota's Citizen mod");
						AddText("Readjusted Bone projectile offscreen hud code");
						AddText("");
						AddText("Fixed AI taunt code");
						AddText("");
						AddText("----------------------------------");
						AddText("v3.3.1 - 5 Jan 2023");
						AddText("");
						AddText("Bone projectile offscreen hud now recolours with alts");
						AddText("");
						AddText("----------------------------------");
						AddText("v3.3.2 - 7 Jan 2023");
						AddText("");
						AddText("Added more alts for 100% Accurate Lucario");
						AddText("");
						AddText("CPU 100% Accurate button on the CSS can now be pressed by all players");
						break;
					case 15:
						AddText("v3.4 - 8 Mar 2023");
						AddText("");
						AddText("Bone FAir Startup 10 -> 12");
						AddText("Bone FAir Total active time 4 -> 3");
						AddText("");
						AddText("Bone UAir Startup 14 -> 15");
						AddText("Bone UAir Endlag 12 -> 16 (Before whifflag multiplier)");
						AddText("Bone UAir Total active time 6 -> 4");
						AddText("");
						AddText("Extreme Speed USpec will no longer have a hitbox across the travel distance");
						AddText("The hitbox is now only at the end");
						AddText("");
						AddText("Added custom colours on the last alt for specific tags:");
						AddText("Input Delay: Lukaru, Karu");
						AddText("Surprising!: Night");
						AddText("Aurora: Aurora, Auro<3");
						AddText("");
						AddText("----------------------------------");
						AddText("v3.4.1 - 6 Apr 2024");
						AddText("");
						AddText("Removed the ability to select 100% mode online");
						AddText("");
						AddText("----------------------------------");
						AddText("v3.4.2 - 17 Apr 2024");
						AddText("");
						AddText("Fixed bugged code for Aura Sphere not losing charge on getting hit during the move");
						break;
					case 16:
						AddText("v3.5 - 12 Nov 2024");
						AddText("");
						AddText("Optimized filesize");
						AddText("");
						AddText("Bone UAir Startup 15 -> 18");
						AddText("Bone UAir Sweetspot KB 7+0.8 -> 8.5+0.7");
						AddText("Bone UAir Sweetspot Hitstun Multiplier 1 -> 0.75");
						AddText("");
						AddText("BAir Startup 12 -> 14");
						AddText("BAir Endlag 8 -> 10 (Before whifflag multiplier)");
						AddText("BAir Landing Lag 9 -> 10");
						AddText("BAir Sweetspot KB 7.5+0.9 -> 7.5+0.95");
						AddText("");
						AddText("NSpecial Startup 7 -> 11");
						AddText("NSpecial Max Charge Time 100 frames -> 150 frames");
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
							AddText("- Hitting the opponent with the Grab hitbox will make the move stronger.");
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