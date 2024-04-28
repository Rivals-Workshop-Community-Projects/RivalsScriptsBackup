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
				AddText("Waveshine Training");
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
				AddText(aura?"USpec Link":"USpec Cancel");
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
						LineBreak();
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
						LineBreak();
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
						AddText("");
						LineBreak();
						AddText("v1.17.1 - 6 Sep 2021");
						AddText("");
						AddText("Fixed typo for FAir 2 Damage value (0 -> 6)");
						break;
					case 18:
						AddText("v1.18 - 12 Oct 2021");
						AddText("Part 1");
						AddText("");
						AddText("Hitbox Size reduced for most Normals");
						AddText("- BAir 1 bkb 8>6.5");
						AddText("+ BAir 1 startup 11>9");
						AddText("- BAir 1 kbs .9>.7");
						AddText("- FAir endlag 8>12");
						AddText("- DAir startup 6>10");
						AddText("+ DAir endlag 16>12");
						AddText("- DAir landing lag 8>10");
						AddText("");
						AddText("- DTilt startup 5>8");
						AddText("+ DTilt endlag 10>8");
						AddText("= FTilt startup 8>6");
						AddText("= FTilt movement changed to just a short forward boost.");
						AddText("- FAir startup 4>5");
						AddText("- FAir landing lag 5>6");
						AddText("+ Jab endlag 12>8");
						AddText("- Jab 3 hsp 6>3");
						break;
					case 19:
						AddText("v1.18 - 12 Oct 2021");
						AddText("Part 2");
						AddText("");
						AddText("DAttack active frames reduced hsp adjusted");
						AddText("- DAttack startup 4>8");
						AddText("+ DAttack endlag 14>10");
						AddText("");
						AddText("- UAir animation changed, size reduced");
						AddText("- UAir startup 11>8");
						AddText("- UAir active 4>3");
						AddText("- One hit box, closer in function to basic fox UAir.");
						AddText("- Removed constellation effect on UAir");
						AddText("- USpecial startup 16>18");
						AddText("");
						AddText("Strong animations adjusted to only flash once when transforming");
						AddText("- DStrong startup 6>10");
						AddText("- FStrong startup");
						AddText("+ DStrong endlag 15>13");
						AddText("");
						AddText("Removed Constellation screenshake completely");
						AddText("");
						AddText("Replaced Moon Kitten alt with Champion alt cuz Seggo won Riptide lmao");
						break;
					case 20:
						AddText("v1.19 - 28 Nov 2021");
						AddText("Look a Buff!");
						AddText("");
						AddText("+ DAir Landing lag 10>8");
						AddText("");
						AddText("+ BAir KBS +.1 to both hitboxes");
						AddText("");
						AddText("+ USpecial Startup 18>14");
						AddText("");
						AddText("+ FSpecial (Up Throw) endlag 12>6");
						AddText("+ FSpecial Startup 16>14");
						AddText("+ FSpecial Endlag 16>8");
						AddText("");
						AddText("- FSpecial doesn't go as far");
						AddText("+ FSpecial doesn't go into special fall on ground");
						AddText("+ UAir constellation tipper added back in");
						AddText("");
						AddText("+ FStrong Endlag 14>12");
						AddText("");
						AddText("+ UStrong Startup 10>9");
						AddText("+ UStrong Endlag 11>10");
						AddText("");
						AddText("+ DStrong Endlag 13>12");
						break;
					case 21:
						AddText("v1.20 - 29 Dec 2021");
						AddText("Soulrifle funny patch");
						AddText("");
						AddText("USpec can now be walljump-cancelled");
						AddText("");
						AddText("FTilt Angle 40 -> 30");
						AddText("FTilt KB 7.5+0.4 -> 7.0+0.4");
						AddText("");
						AddText("FSpec now doesnt have pratfall on hit");
						AddText("");
						AddText("Added Paint alt");
						break;
					case 22:
						AddText("v1.21 - 4 Feb 2022");
						AddText("");
						AddText("Fixed Rollback temp_level bug");
						break;
					case 23:
						AddText("v1.22 - 25 Mar 2022");
						AddText("");
						AddText("DAir is now Angle Flipper 10 - Hits same the direction as velocity");
						AddText("USpecial now requires Special to be held down to use multiple blinks");
						AddText("");
						AddText("Added Galaxy Fox mode (Input is Shield and Taunt)");
						AddText("");
						AddText("Removed a wish since Dan patched the exploit");
						AddText("");
						AddText("Swapped alt position of Riptide and Paint");
						AddText("");
						AddText("v1.22.1 - 31 Mar 2022");
						AddText("");
						AddText("Added CSS sound effect");
						break;
					case 24:
						AddText("v1.23 - 11 May 2022");
						AddText("");
						AddText("Lukastar now uses small_sprites");
						AddText("Weight 1.15 -> 1.1");
						AddText("");
						AddText("BAir Startup 9 -> 7");
						AddText("BAir Endlag 14 -> 12");
						AddText("BAir Fist KB 6.5+0.8 -> 6+0.8");
						AddText("BAir Body KB 6.5+0.7 -> 6+0.7");
						AddText("Adjusted BAir Body Hitpause and Hit sfx");
						AddText("NAir Late KB 5+0.4 -> 4+0.4");
						AddText("Removed UAir VSpeed on hit");
						AddText("DAir Landing lag 8 -> 6");
						AddText("DAir Startup 10 -> 8");
						AddText("DAir Endlag 12 -> 10");
						AddText("");
						AddText("Jab 1&2 Angle 361 -> 50");
						AddText("DTilt Startup 8 -> 6");
						AddText("FTilt Startup 6 -> 5");
						AddText("FTilt Endlag 11 -> 8");
						AddText("");
						AddText("DStrong KB 8+0.9 -> 7+0.9");
						AddText("DStrong Startup 10 -> 6");
						AddText("");
						AddText("USpecial Startup 14 -> 10");
						AddText("FSpecial UThrow Drift Multiplier 0.45 -> 0.20");
						AddText("FSpecial HSpeed 15 -> 18");
						break;
					case 25:
						AddText("v1.24 - 12 May 2022");
						AddText("");
						AddText("Jab 1&2 Angle 50 -> 361");
						AddText("");
						AddText("FSpecial UThrow Drift Multiplier 0.2 -> 1.2");
						AddText("FSpecial UThrow KB 12+0 -> 13+0");
						AddText("FSpecial UThrow Hitpause 6 -> 0 (Can't DI)");
						AddText("FSpecial UThrow Endlag 6 -> 8");
						AddText("FSpecial Startup 12 -> 18");
						AddText("FSpecial Endlag 8 -> 12");
						AddText("FSpecial No longer moves back in endlag");
						AddText("FSpecial Reduced hitpause on first hit");
						AddText("");
						AddText("Slightly changed afterimages frequency");
						break;
					case 26:
						AddText("v1.25 - 17 May 2022");
						AddText("");
						AddText("FSpecial UThrow Drift Multiplier 1.2 -> 0.35");
						AddText("FSpecial UThrow Hitpause 0 -> 6 (Can DI again)");
						AddText("FSpecial UThrow now spawns 2 stars on hit (for a total of 3)");
						AddText("");
						AddText("FSpecial can no longer be jump cancelled on hit");
						AddText("");
						AddText("When spawning stars over the max star count limit, the farthest star from the player despawns");
						AddText("instead of the new star being spawned.");
						AddText("");
						LineBreak();
						AddText("v1.25.1 - 2 Jul 2022");
						AddText("");
						AddText("Bugfix for AI");
						break;
					case 27:
						AddText("v1.26 - 12 Jul 2022");
						AddText("");
						AddText("Removed Jobble");
						AddText("");
						AddText("FSpecial Up Throw Hitstun Multiplier 0.35 -> 0.7");
						AddText("");
						LineBreak();
						AddText("v1.26.1 - 25 Aug 2022");
						AddText("");
						AddText("Henry Stickmin: added death quips");
						AddText("Po & Gumbo: added food compat");
						AddText("");
						AddText("meow meow meow meow meow meow (ahh)");
						AddText("meow meow meow meow meow meow meow meow (ahh)");
						AddText("meow meow meow meow meow meow (ahh)");
						AddText("meow meow meow meow meow meow meow meow (ahh)");
						AddText("(Thanks Causeimapilot for the frames)");
						break;
					case 28:
						AddText("v1.27 - 17 Sep 2022");
						AddText("");
						AddText("Star outline now only shows against another Lukastar.");
						AddText("Star hitboxes now no longer have hit lockout.");
						AddText("");
						AddText("Jab 1 Window Cancel Frame 5 -> 4");
						AddText("");
						AddText("USpecial input now doesn't require holding Special.");
						AddText("");
						AddText("Dattack Endlag 10 -> 14 (Before whifflag multiplier)");
						AddText("Dattack Landing hit 1 immediately starts hit 2");
						AddText("");
						AddText("Adjusted FTilt hitboxes to fit animation");
						AddText("FTilt Lifetime 4 -> 2");
						AddText("");
						AddText("Fixed meow song loop");
						AddText("");
						LineBreak();
						AddText("v1.27.1 - 20 Sep 2022");
						AddText("");
						AddText("Changed CSS Background Colour to Air");
						AddText("");
						AddText("Cracked stars can no longer merge with DSpec");
						AddText("");
						LineBreak();
						AddText("v1.27.2 - 17 Nov 2022");
						AddText("");
						AddText("NSpec - Fixed Special buffer when jump cancelling");
						break;
					case 29:
						AddText("v1.28 - 25 Dec 2022");
						AddText("");
						AddText("Merry Christmas!!");
						AddText("");
						AddText("Hitstun Gravity 0.6 -> 0.53");
						AddText("");
						AddText("Fixed a freeze bug in Galaxy Fox mode");
						AddText("");
						LineBreak();
						AddText("v1.28.1 - 30 Dec 2022");
						AddText("");
						AddText("USpec Endlag 8 -> 18");
						AddText("USpec No longer has whifflag");
						AddText("USpec KB 5 -> 8");
						AddText("");
						AddText("Fixed a Dan bug with detecting alts in the online CSS");
						AddText("");
						LineBreak();
						AddText("v1.28.2 - 31 Dec 2022");
						AddText("");
						AddText("USpec KB 8 -> 6.75");
						AddText("");
						AddText("Galaxy Fox no longer triggers on Turbo mode");
						LineBreak();
						AddText("v1.28.3 - 31 Dec 2022");
						AddText("");
						AddText("USpec KB 6.75 -> 6.45");
						AddText("agedcheez please stop asking for changes");
						break;
					case 30:
						AddText("v1.29 - 24 Jan 2023");
						AddText("");
						AddText("USpecial is now Fox/Zetterburn USpec instead of Pika/Absa USpec.");
						AddText("Uspec can be cancelled into a boost upwards by touching a star.");
						AddText("");
						LineBreak();
						AddText("v1.29.1 - 6 Feb 2023");
						AddText("");
						AddText("Increased time freshly spawned stars from NSpec cannot be fired 18 -> 24");
						AddText("This timer is cancelled at the beginning of NSpec");
						AddText("");
						AddText("USpec Damage 2 -> 9");
						AddText("");
						LineBreak();
						AddText("v1.29.2 - 8 Mar 2023");
						AddText("");
						AddText("Fixed a visual bug where the Constellation effect connects to the wrong stars.");
						break;
					case 31:
						AddText("v1.30 - 28 Jul 2023");
						AddText("");
						AddText("Prat land time 17 -> 10");
						AddText("");
						AddText("Fixed a bug where stars can collide with solid objects on frame 1 with DSpecial");
						AddText("Fixed a bug where the alternate taunt is set every frame in practice mode");
						AddText("");
						AddText("Touched up the shading on some alts");
						AddText("");
						LineBreak();
						AddText("v1.30.1 - 29 Jul 2023");
						AddText("");
						AddText("Reverted Prat land time 10 -> 17");
						AddText("");
						AddText("Fixed a bug where Rainbow alts don't work on the results screen");
						AddText("Lower CPU levels now have weaker ai to match its proper level");
						AddText("Removed default CPU attack movepool");
						AddText("Added Spamton Ad compatibility");
						AddText("");
						LineBreak();
						AddText("v1.30.2 - 29 Jul 2023");
						AddText("");
						AddText("Added custom colours on the last alt for specific tags:");
						AddText("LUKARU, KARU: Sky High");
						AddText("AURORA, AURO<3: Fel Spark");
						AddText("WEET: Pix");
						AddText("GEAR: Just a Friend");
						AddText("FUNGUS: Enby");
						break;
					case 32:
						AddText("v1.31 - 3 Nov 2023");
						AddText("");
						AddText("NSpec Star projectiles now have 0.6 Hitstun Mult");
						AddText("");
						AddText("UStrong now has more endlag and has whifflag on more parts of endlag");
						AddText("");
						AddText("Optimised Constellation drawing code");
						AddText("");
						AddText("Reworked Rune O to spawn a trail of stars with DSpec");
						break;
					case 33:
						AddText("v2.0 - 22 Apr 2024");
						AddText("The @7axel7 Patch");
						AddText("");
						AddText("Removed angle flipper 6 from FAir, and Jab");
						AddText("BAir sourspot longer hitpause 6+0.7 -> 8+0.9");
						AddText("Made DAttack1 connect better, gave DAttack 2 frames more endlag and 3 frames more whifflag");
						AddText("");
						AddText("Added flinch normalization code for Jab1 and start of DAir, now flinch ignores weight variable.");
						AddText("(Very slight nerf against light characters and very slight buff against heavies)");
						AddText("");
						AddText("Shine release consistency (buffered jump makes shine activate)");
						AddText("Removed paw particles hurtbox from bair");
						AddText("");
						AddText("Added waveshine training mode in practice tool, which gives an explanation, information about the inputs, and a few scenarios");
						AddText("Fixed the color of constellation stars on non base alts");
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
							AddText("These stars will add base knockback and damage when consumed by landing a Strong attack or a sweetspot UAir");
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
							if (aura)
							{
								AddText("Fast moves are true if you hit USpec on the ground, ending close to the opponent");
								AddText("It's more consistent if you do it diagonally downwards");
								AddText("However, this can easily be countered by crouch cancelling");
								AddText("If you see your opponent crouching before getting hit by USpec, don't follow up!");
								AddText("");
								AddText("USpec1 -> USpec2 (Optional) -> Jab/UTilt/DTilt");
							}
							else
							{
								AddText("USpec can be cancelled into a boost upwards if you hit a star.");
								AddText("The cancel will be applied at the end of your movement, or can be cancelled earlier if you press Special or Shield.");
							}
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
				AddText("Lore / Story");
				AddText("");
				AddText("Lukastar, also known as the Star Fox, lives above the Archai and Xue Hua Mountains.");
				AddText("They defend Aether from threats from outer space, as well as most meteor strikes.");
				AddText("");
				AddText("Lukastar is often seen sparring with Flake, who lives on Xue Hua Mountains.");
				AddText("They also love listening to him play the Erhu.");
				AddText("");
				AddText("They're most known for creating brilliant and stunning constellations when they turn into their feral form.");
				AddText("Hence, Lukastar is sometimes mistaken for an actual star by other creatures on the ground.");
				AddText("");
				AddText("Occasionally, Lukastar falls from the sky to learn other creatures' fighting techniques.");
				AddText("Moves that they have tried to replicate are:");
				AddText("Zetterburn Shine, Forsburn BAir, Forsburn FAir, Ranno NAir, Maypul Drill, Maypul FSpec, and Zetterburn USpec.");
				DrawTutorialBlock();
				DrawTutorialText();
				break;
			case 9:
				AddText("Waveshine Info");
				AddText("Hit Training");
				AddText("RNG Hit Training");
				AddText("Techchase Training");
				DrawTutBlock();
				DrawTutText();
				break;
			case 10:
				if(!hideBlurb && tutPrevMenu == 0)
				{
					AddText("Right after using Nspecial, you can cancel it into a jump");
					AddText("Then airdodge to the ground or a platform repeatedly to 'Waveshine'");
					AddText("You need to time the airdodge to have it buffered");
					AddText("after hitpause is over if you hit an enemy");
					AddText("This can be used to cover multiple tech options");
					AddText("The text below gives you additional information about your waveshining");
				}
				DrawWaveshineGuide();
				DrawTutorialBlock();
				DrawTutorialText();
				break;
		}
		draw_set_alpha(1);
	}
	else if (aura)
		draw_debug_text(temp_x + 128, temp_y - 10, "Galaxy Fox");
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

#define DrawWaveshineGuide()
{
	if (waveshineTimer == 1)
	{
		releaSuccess = "!";
		squatSuccess = "!";
		dodgeSuccess = "!";
		pressSuccess = "!";
		latehSuccess = "!";
		waveShineScore = 0;
	}
	if (!shineHitPlayer)
	{
		if (jumpSquatFrame == 4 && squatSuccess == "!")
		{
			squatSuccess = "|";
			waveShineScore++;
		}
		if (airDodgeFrame == 9 && dodgeSuccess == "!")
		{
			dodgeSuccess = "|";
			waveShineScore++;
		}
		//check for aerial shine cancel
		if (airDodgeFrame == 4 && dodgeSuccess == "!")
		{
			dodgeSuccess = "|";
			waveShineScore++;
		}
		if (airDodgeFrame == 4 && squatSuccess == "!")
		{
			squatSuccess = "|";
			waveShineScore++;
		}
	}
	else
	{
		if (jumpSquatFrame == 9 && squatSuccess == "!")
		{
			squatSuccess = "|";
			waveShineScore++;
		}
		if (airDodgeFrame == 14 && dodgeSuccess == "!")
		{
			dodgeSuccess = "|";
			waveShineScore++;
		}
		//check for aerial shine cancel
		if (airDodgeFrame == 9 && dodgeSuccess == "!")
		{
			dodgeSuccess = "|";
			waveShineScore++;
		}
		if (airDodgeFrame == 9 && squatSuccess == "!")
		{
			squatSuccess = "|";
			waveShineScore++;
		}
	}
	if ((shineReleaseFrame == 0 || shineReleaseFrame == 1) && releaSuccess == "!")
	{
		releaSuccess = "|";
		waveShineScore++;
	}
	if (2 <= shieldPressFrame && shieldPressFrame <= 9 && pressSuccess == "!")
	{
		pressSuccess = "|";
		waveShineScore++;
	}
	if (7 <= shieldPressFrame && shieldPressFrame <= 14 && latehSuccess == "!")
	{
		latehSuccess = "|";
		waveShineScore++;
	}

	if (techCatchSuccess == "!")
	{
		if (techInPlaceCatchFrame >= 13 && techInPlaceCatchFrame <= 18)
			techCatchSuccess = "|";
	}
	var frameShow = shineHitPlayer?min(waveshineTimer,14):min(waveshineTimer,9);

	if (waveShineScore == 5 && waveshineTimer > 9 && (tutPrevMenu != 3 || techCatchSuccess = "|"))
	{
		waveShineScore = 0;
		sound_play(sound_get("sfx_cursor"),0,-4, 0.45);
		hideBlurb = true;
	}

	AddText("-------------------------");
	AddText("Shine Release Frame (0 to 1)    " + releaSuccess + string(shineReleaseFrame));
	AddText("Jump Squat Frame   (4 or 9)    " + squatSuccess + string(jumpSquatFrame));
	AddText("Air Dodge Frame:     (9 or 14).  " + dodgeSuccess + string(airDodgeFrame));
	AddText("Miss Shield Frame:   (2 to 9)    " + pressSuccess + string(shieldPressFrame));
	AddText("Hit Shield Frame:     (7 to 14).  " + latehSuccess + string(shieldPressFrame));
	AddText("Current Frame:                    " + "|"          + string(frameShow));
	if(tutPrevMenu == 3){
		AddText("Ground Tech Frame:  (13 to 18) " + techCatchSuccess + string(techInPlaceCatchFrame));
		AddText("techTimer:.                         " + "|" + string(techTimer));
	}
	// AddText("Score: " + string(waveShineScore));
}