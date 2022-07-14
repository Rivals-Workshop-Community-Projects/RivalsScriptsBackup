if ("rollArray" in self)
{
	// intro song
	if ("in_adventure" not in self && state == PS_SPAWN && IsFirstLonin())
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
				AddText("Thank you");
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
				AddText("Thonk ping");
				AddText("DAir cancel");
				AddText("FSpec into Spike");
				AddText("Lonin Drip");
				AddText("Swap Lonin/Mio");
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
						AddText("Thonk ping can now be performed with the Bravo alt taunt");
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
					case 28:
						AddText("v1.28 - 16 Apr 2021");
						AddText("");
						AddText("Added Kirby support");
						AddText("");
						AddText("Added anti-Duane code");
						AddText("");
						AddText("Added Thunderclap Flash alt");
						AddText("Added Astral alt");
						AddText("");
						AddText("Added a message..");
						break;
					case 29:
						AddText("v1.29 - 24 Apr 2021");
						AddText("");
						AddText("Fixed UAir Grounded Final hitpause sprite");
						AddText("UAir Final BKB 8 -> 7");
						AddText("(UAir Final sends you into Tumble before USpec can hit)");
						AddText("");
						AddText("USpec Endlag 16 -> 20 (aerial), 36 (grounded)");
						AddText("Added more sprites for the endlag animation");
						AddText("USpec can now be edge cancelled");
						AddText("USpec will no longer go into pratfall while grounded");
						AddText("");
						AddText("FSpec Whiff Endlag 8 -> 12");
						AddText("FSpec will no longer go into pratfall on whiff while grounded");
						AddText("FSpec cancel on hit will drastically reduce hitstop time");
						AddText("FSpec BKB 1 -> 2");
						AddText("");
						AddText("NSpec Max charge time 100 -> 80");
						AddText("NSpec Endlag 18 -> 21 (32 frames after whifflag multiplier)");
						AddText("");
						AddText("FAir Sweet/Normal KBS 0.9 -> 1.0");
						AddText("JStrong BKB 6 -> 7");
						AddText("BAir Lifetime 6 -> 4");
						AddText("");
						AddText("Prat land time 16 -> 18");	
						AddText("Added Redline and AK Mortal alts");
						AddText("Replaced a message with a thank you note");
						break;
					case 30:
						AddText("v1.30 - 29 Apr 2021");
						AddText("");
						AddText("NSpec Max charge time 80 -> 90");
						AddText("NSpec Fully Charged KBS 2 -> 1.5");
						AddText("NSpec Fully Charged BKB 9 -> 11");
						AddText("NSpec Base KBS 0.8 -> 0.9");
						AddText("NSpec Base BKB 6 -> 8");
						AddText("(Now it kills at ~75% instead of ~30%)");
						AddText("");
						AddText("DAttack startup 4 -> 6");
						AddText("(Hitbox comes out frame 7)");
						AddText("");
						AddText("FSpec Whiff Endlag 12 -> 22 (Grounded; Aerial is still 12 but has pratfall)");
						AddText("");
						AddText("Mildly reworked DAir");
						AddText("(Removed DAir bounce)");
						AddText("");
						AddText("Added Enby alt");
						AddText("Added Ace alt");
						break;
					case 31:
						AddText("v1.31 - 1 May 2021");
						AddText("");
						AddText("DSpec Move cooldown 80 -> 110");
						AddText("");
						AddText("USpec startup +8 frames");
						AddText("");
						AddText("UAir Final BKB 7 -> 6");
						AddText("UAir Final KBS 0.4 -> 0.5");
						AddText("UAir Final Hitstun multiplier 0.7 -> 0.85");
						AddText("UAir Multi Hitstun multiplier 0.1 -> 0.3");
						AddText("UAir Landing Lag 4 -> 6");
						AddText("");
						AddText("Added End's High alt");
						break;
					case 32:
						AddText("v1.32 - 5 May 2021");
						AddText("");
						AddText("DAir Final - Removed Hitstun Multiplier & Drift Multiplier");
						AddText("DAir Link - BKB 15 -> 9");
						AddText("DAir Link - Hitstun Multiplier 0.1 -> 0.4");
						AddText("DAir Link - Extra Hitpause 0 -> -2");
						AddText("");
						AddText("UTilt - Extra Hitpause 8 -> 4");
						AddText("");
						AddText("I'm going into army tomorrow. Don't expect frequent balance changes anymore.");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.32.1 - 5 May 2021");
						AddText("Updated song list");
						break;
					case 33:
						AddText("v1.33 - 29 May 2021");
						AddText("");
						AddText("Replaced End's High alt with Riptide alt");
						AddText("");
						AddText("USpec Sour Damage 1 -> 4");
						AddText("USpec Sweet Damage 4 -> 9");
						AddText("");
						AddText("Removed Lonin drip for Riptide :(");
						AddText("Changed the Ping sound on taunt");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.33.1 - 3 Jul 2021");
						AddText("Added Diamond Grove to Song List");
						AddText("");
						AddText("NSpec Base Hitpause 5 -> 9");
						AddText("NSpec Endlag can now be cancelled into USpec");
						AddText("");
						AddText("JStrong Hitstun multiplier 0.7 -> 0.85");
						break;
					case 34:
						AddText("v1.34 - 12 Sep 2021");
						AddText("'The Dripdate'");
						AddText("");
						AddText("Slight animation update:");
						AddText("UTilt");
						AddText("DTilt");
						AddText("Parry");
						AddText("");
						AddText("Replaced 221020 alt with Drip alt");
						AddText("");
						AddText("Added Kura-Kura Stream Hub to Song List");
						AddText("Readded Lonin drip!!!!");
						break;
					case 35:
						AddText("v1.35 - 12 Sep 2021");
						AddText("'JStrong Speed Update'");
						AddText("");
						AddText("Slight animation update:");
						AddText("FAir");
						AddText("");
						AddText("Hit SFX changes:");
						AddText("BAir");
						AddText("FAir Sweetspot");
						AddText("");
						AddText("JStrong HSpeed boost 8 -> 10");
						AddText("max_jump_hsp 6 -> 10");
						AddText("");
						AddText("Replaced AK Mortal alt with Champion alt");
						break;
					case 36:
						AddText("v1.36 - 23 Oct 2021");
						AddText("Adventure Mode interactions Update");
						AddText("");
						AddText("FSpec now hooks onto solid articles in AM");
						AddText("FSpec in AM will now grapple slower, so that the camera in AM can catch up (and won't instakill lmao)");
						AddText("");
						AddText("Portals now give 5 frames of invincibility in AM (so you won't be instakilled on teleport)");
						AddText("Portals has Rune L enabled in AM (Not restricted by stage width and height boundaries)");
						AddText("Portals now have normal depth in AM");
						AddText("Portals now despawn on room switch in AM");
						AddText("");
						AddText("Disabled the Song Title intro in AM");
						break;
					case 37:
						AddText("v1.37 - 15 Dec 2021");
						AddText("");
						AddText("Drip alt is now Genesis alt");
						AddText("Both alts used very similar colour schemes");
						AddText("The Genesis alt has added effects");
						AddText("");
						AddText("Slightly changed Spectrum alt");
						break;
					case 38:
						AddText("v1.38 - 30 Dec 2021");
						AddText("");
						AddText("Replaced Astral alt with Paint alt.");
						AddText("Replaced Redline alt with Voidfox alt.");
						AddText("");
						AddText("Lonin's image inside the portal is now darker.");
						AddText("");
						AddText("Hitting USpec now restores walljump only once.");
						AddText("");
						AddText("DAir is now less 'Sticky' on platforms.");
						break;
					case 39:
						AddText("v1.39 - 5 Jan 2022");
						AddText("");
						AddText("Paint alt's colour changes now reflect in afterimages");
						AddText("");
						AddText("FAir Normal: KB 6+1.0 -> 6+0.9");
						AddText("FAir Normal: Stronger hit sound");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.39.1 - 1 Feb 2022");
						AddText("");
						AddText("Slightly changed NAir smears");
						break;
					case 40:
						AddText("v1.40 - 4 Feb 2022");
						AddText("");
						AddText("Fixed Rollback temp_level bug");
						break;
					case 41:
						AddText("v1.41 - 24 Mar 2022");
						AddText("");
						AddText("Fixed Rollback temp_level bug that I missed");
						AddText("");
						AddText("Lonin grounded Strongs now performs a Grab instead of Tilts");
						AddText("Added AI for grabbing");
						break;
					case 42:
						AddText("v1.42 - 31 Mar 2022");
						AddText("");
						AddText("NSpecial Damage 4=18 -> 8=18");
						AddText("");
						AddText("Grab Startup 10 -> 8");
						AddText("Grab Endlag 14 -> 16");
						AddText("");
						AddText("Tweaked AI slightly");
						AddText("");
						AddText("Updated song list");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.42.1 - 31 Mar 2022");
						AddText("");
						AddText("Added CSS sound effect");
						break;
					case 43:
						AddText("v1.43 - 5 May 2022");
						AddText("");
						AddText("JStrong HSpeed boost 10 -> 8");
						AddText("");
						AddText("NSpecial KB (8+0.9 - 11+1.5) -> (8+0.2 - 11+1.5)");
						AddText("");
						AddText("UTilt New smear sprites");
						AddText("UTilt Active window 12 -> 9 (Hitboxes less active)");
						AddText("UTilt Endlag 7 -> 8 (Before whifflag multiplier)");
						AddText("UTilt Removed all Extra Hitpause on all hitboxes");
						AddText("");
						AddText("FAir New smear sprites");
						AddText("FAir Adjusted whiff sfx timing");
						AddText("");
						AddText("UAir Final Base Hitpause 30 -> 10");
						AddText("UAir Multihit Hitsun Multiplier 0.3 -> 0.65");
						AddText("");
						AddText("DAir Falling Hitstun Multiplier 0.4 -> 0.6");
						AddText("DAir Landing Base Hitpause 10 -> 13");
						AddText("DAir Landing Extra Hitpause 0 -> -3");
						AddText("");
						AddText("BAir KB 7+0.9 -> 7+0.8");
						AddText("");
						AddText("Removed Riptide Alt");
						break;
					case 44:
						AddText("v1.44 - 6 May 2022");
						AddText("");
						AddText("Slightly tweaked Landing sprites");
						AddText("Changed UTilt hit sfx");
						AddText("");
						AddText("FTilt New smear sprites");
						AddText("");
						AddText("FSpecial Angle 0 -> 30");
						AddText("");
						AddText("NSpecial KB (8+0.2 - 11+1.5) -> (8+0.5 - 11+1.5) Oops");
						AddText("Added NSpecial Air sprites");
						AddText("");
						AddText("NAir 2 Angle 10 -> 20");
						AddText("");
						AddText("Changed FAir hitfx");
						AddText("");
						AddText("BAir Damage 7 -> 9");
						AddText("");
						AddText("Fixed DAir platform fall_through code");
						AddText("DAir now can drift while falling");
						break;
					case 45:
						AddText("v1.45 - 7 May 2022");
						AddText("");
						AddText("Using Jump Strongs will now despawn the 2nd (older) portal");
						AddText("JStrong now has sfx on frame 1");
						AddText("JStrong Startup 12 -> 14");
						AddText("JStrong Endlag 8 -> 12 (Before whifflag multiplier)");
						AddText("JStrong Endlag is now only jump cancellable on hit");
						AddText("JStrong Base Hitpause 30 -> 20");
						AddText("");
						AddText("Hitting FSpecial now resets midair jumps");
						AddText("");
						AddText("DSpec Move cooldown 110 frames -> 120 frames");
						AddText("");
						AddText("Landing with DAir now has impact");
						break;
					case 46:
						AddText("v1.46 - 9 May 2022");
						AddText("");
						AddText("Lonin now uses small_sprites");
						AddText("Drip Taunt now has afterimages");
						AddText("");
						AddText("Updated stage whitelist for Genesis Taunt");
						AddText("");
						AddText("Fixed AI parry bug");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.46.1 - 10 May 2022");
						AddText("");
						AddText("Updated Idle anims");
						AddText("");
						AddText("Changed Plat to small_sprites");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.46.2 - 12 May 2022");
						AddText("");
						AddText("Fixed Final Smash Plat scaling");
						break;
					case 47:
						AddText("v1.47 - 20 May 2022");
						AddText("");
						AddText("Added Shattered Shrine to Song List");
						AddText("");
						AddText("Reduced size of JStrong hitbox 64 -> 48");
						AddText("Portal Knockback 12 -> 14 (Can be hit farther by opponents)");
						AddText("Portal Spawn time 12 -> 10");
						AddText("Tweaked Portal Spawn code to prevent sinking bugs");
						AddText("Cleaned up alpha channels for new sprites (For portal rendering)");
						AddText("");
						AddText("DAir Falling Hitstun Multiplier 0.6 -> 0.4");
						AddText("DAir SDI Multiplier 1 -> 1.2");
						AddText("");
						AddText("Updated Kirby swallow NSpecial with Lonin's new NSpecial stats");
						break;
					case 48:
						AddText("v1.48 - 30 May 2022");
						AddText("");
						AddText("Added Mio skin (Attack + Taunt)");
						AddText("");
						AddText("Fixed DSpec hurtbox offset");
						AddText("Fixed Crouch recovery frames");
						AddText("Fixed small_sprites portal rendering");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.48.1 - 31 May 2022");
						AddText("");
						AddText("Changed Fatal Aikijutsu alt to Mallow Sky alt");
						AddText("");
						AddText("Mio swapping can now be done on intro");
						AddText("Mio swapping input is now during taunt, instead of beginning");
						break;
					case 49:
						AddText("v1.49 - 28 Jun 2022");
						AddText("");
						AddText("Removed Mio swapping in intro");
						AddText("Added HUD sprites for Mio skin");
						AddText("Added Mio button on the CSS");
						AddText("");
						AddText("DAir Falling Spawns every 6 frames instead of 4");
						AddText("DAir Startup 9 -> 11");
						AddText("DAir Startup VSpeed -6 -> -5");
						AddText("DAir Endlag 12 -> 14");
						AddText("");
						AddText("USpec Sweetspot KB 7.5+1.05 -> 9+1.05");
						AddText("");
						AddText("FAir Normal KB 6+0.9 -> 7+0.8");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.49.1 - 2 Jul 2022");
						AddText("");
						AddText("Bugfix for AI");
						AddText("");
						AddText("----------------------------------");
						AddText("v1.49.2 - 4 Jul 2022");
						AddText("");
						AddText("New Mio CSS and Portrait - Thanks Sai!");
						break;
					case 50:
						AddText("v1.50 - 9 Jul 2022");
						AddText("");
						AddText("Changed Mio's default colours");
						AddText("");
						AddText("Jump Strongs will no longer stop at ledge");
						AddText("Jump Strong Endlag 12 -> 24 (Before whifflag multiplier)");
						AddText("");
						AddText("Hitting portals will now have quarter hitstop instead of half");
						AddText("Portals will now be active earlier");
						AddText("(Lonin can move through portals on whiff with any angle)");
						AddText("");
						AddText("Added anti-Armada portal code");
						AddText("");
						AddText("Grab Ground Friction 0.2 -> 0.1");
						AddText("Grab Increased Hitbox Size");
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
							AddText("If you Jump Strong, you'll be able to enter your own portal");
							AddText("Recovery 1: FSpec (to the wall) -> Walljump -> Strong");
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
							AddText("DAir can be cancelled after " + string(dairCancel) + " frames");
							AddText("You can cancel into Jump, Airdodge, FSpecial, or USpecial");
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
						case 8:
							AddText("Press Attack + Taunt to swap between Lonin and Mio");
							AddText("Lol furry Lonin!");
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
				AddText("Thank you for participating in the ARG");
				AddText("");
				AddText("Hyuponia");
				AddText("Reshivan");
				AddText("BernardO");
				AddText("SnowKnight");
				AddText("Neptendo");
				AddText("Irol");
				AddText("Zerks");
				AddText("");
				AddText("You're a star!");
				DrawTutorialBlock();
				DrawTutorialText();
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
		case 32:
			return "Embers of a Burning Dystopia";
		case 33:
			return "The King of Onsen";
		case 34:
			return "Dazzling Dark Future";
		case 35:
			return "Luminous Impactor";
		case 36:
			return "Tactical Evolution EX ~ Creatures Medley";
		default:
			if (CheckStageUrl(2061009621))		return "Derek Fiechter - Night at the Castle";
			//else if (CheckStageUrl(2298935492))	return "Loeder - Miitopia Boss Battle 1 8-BIT";
			else if (CheckStageUrl(2082867100))	return "Evan King - [KARLSONVIBE]";
			else if (CheckStageUrl(2210984773))	return "Porter Robinson - Shelter";
			else if (CheckStageUrl(2158754801))	return "Bill Kiley - You Will Never Know";
			else if (CheckStageUrl(2392386094))	return "ARCHYTAS AAAAAAAAAAAAAA";
			else if (CheckStageUrl(2499100511))	return "Hyper Potions - Porta Vista";
			else if (CheckStageUrl(2498298211))	return "Pokemon Masters EX - Lillie Battle Theme";
			else if (CheckStageUrl(2598328548))	return "No Straight Roads - Vs. Sayu";
			else if (CheckStageUrl(2669189302))	return "Hyper Potions - Waterfall";
			else if (CheckStageUrl(2809646591))	return "Christa Lee - Celestial Resort (Good Karma Mix)";
			else if (CheckStageUrl(2823202747))	return "SSBM - Final Destination (GSV Remix)";
			return "Darude - Sandstorm";
	}
}

#define CheckStageUrl(_url)
{
	return string_count(string(_url), string(get_stage_data(SD_ID))) > 0;
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