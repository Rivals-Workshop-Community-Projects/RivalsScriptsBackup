// phone - frontend

CORE_general();
CORE_tips();
CORE_patches();
CORE_cheats();
CORE_frame_data();
CORE_muno_compatibility();

/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ General Settings															║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Set miscellaneous values to customize how your character interacts with the
MunoPhone Touch.

*/

#define CORE_general

// Character's name, used in a couple of places in the phone.
// (if you delete this line, it'd just use the config.ini name)
muno_char_name = "Chuckya";

// Whether or not the phone sprite should recolor w/ your alt costume.
// (set to "true" if you make a custom phone sprite in your char's colors)
phone.uses_shader = false;

// If you use a custom phone sprite that's taller than the default, enter how
// much taller it is here. (measured in ingame pixels; so if editing the default
// phone sprite, multiply it by two)
phone.extra_top_size = 0;

// Set to true and the "Fast Graphics" feature will be enabled; see _readme.gml.
phone.supports_fast_graphics = false;

// Set to true and the phone will NOT activate Fast Fraphics when FPS gets low.
phone.dont_fast = false;

// Set to true and this will DISABLE a lot of the phone's side features, mostly
// the coding shortcuts.
// See _docs.gml for a full list of what it disables.
// If you don't intend to use any of those bonus features in your character,
// you should set this to true since it saves a bit of performance.
// (it's false by default since Phone Sandbert uses some of those features)
phone.lightweight = false;

// If you've created custom AG_ or HG_ indexes for your character already,
// use these to change where the phone starts assigning custom AG_s and HG_s.
// If you have no idea what that means, leave these alone!
// There's probably an upper bound here, but it's at least 200, so...
phone.starting_ag_index = 80;
phone.starting_hg_index = 80;

// The above, but for the AT_PHONE index.
// Maximum value is 50, minimum value (to avoid overlap w/ normal ones) is 39.
phone.phone_attack_index = 40;



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Tips																		║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Add Tips to your character, giving info on how to play or trivia. You can add
both text and images. It's recommended to keep these short-and-sweet, as in the
examples.

Use the initTip() function to start a new Tip:

	initTip(name);

Then, use the following functions to add content or paragraphs:

	initWords(text)
	
	initWords_ext(text, alignment, color, indent, ignore_height)
	
	initImage(sprite, frame)
	
	initImage_ext(sprite, frame, alignment, xscale, yscale, uses_shader, color,
		alpha, ignore_height, crop_left, crop_right, crop_up, crop_down)

Glossary:
	
	"_ext" at the end of a function name means an extended version of the
		function it's named after - giving you more formatting options.
	
	"alignment" can be the GML constants fa_left, fa_center, or fa_right.
	
	"color" can be any GML color, e.g. c_red, #00ff00, or make_color_hsv(...).
		Set this to a string (e.g. "h"), and it will be colored to the main
		color of whichever phone app the text is being displayed in.
	
	"indent" basically allows you to put any amount of "tabs" to the left of a
		paragraph.
	
	"sprite" can be any sprite index, e.g. sprite_get(...) or asset_get(...).
	
	"ignore_height" prevents this element from pushing the one below it
		downward. Set this to true to achieve effects such as two elements
		being side-by-side.
	
	"frame" can be 0 or any positive number for a static image, or a negative
		number for an animated image. The size of the negative number determines
		the framerate; -1 is the fastest, -2 is half as fast, -3 a third, etc.
	
	"uses_shader" determines whether or not the image should recolor with the
		character's alt costumes.
	
	"crop_left", "crop_right", etc allow you to crop an image by determining how
		far from the image's offset it should be drawn. Set all four to "noone"
		and it will use the entire image (including empty space).

NOTE: It's recommended to separate each paragraph into its own initWords() line,
so that things like page breaks can work properly.

*/

#define CORE_tips

	initTip("Wall Cling");
	initWords("Chuckya can wall cling. That is all.");
	initImage_ext(sprite_get("wallcling"), -5, fa_center, 2, 2, false, c_white, 1, false, noone, noone, noone, noone);
	
	initTip("Cargo Grab");
	initWords("With Nspecial, Chuckya can grab opponents and items. Try grabbing a bouncing Bob-Omb, moving Heave-Ho, or even a resting cannon!");
	initWords("While holding opponents, there is a time limit before Chuckya will drop them, putting it into landing lag on the ground. No such limit exists for items. If Chuckya is too close to the bottom blastzone it will automatically drop players (not items), to prevent early cheese kills with down throw.");
	initWords("Chuckya has a full range of movement while holding something, and can fully dash, jump, and even crouch. Certain actions will cause Chuckya to drop its held object however, being dodging, parrying, or wall jumping.");
	initImage_ext(sprite_get("nspecial"), -5, fa_center, 2, 2, false, c_white, 1, false, noone, noone, noone, noone);

	initTip("Throws");
	initWords("While grabbing, Chuckya can throw an opponent in any direction. Inputting attacks or specials will throw in the held direction, and even works with the C-Stick.");
	initImage_ext(sprite_get("grab_fthrow"), -5, fa_center, 2, 2, false, c_white, 1, false, noone, noone, noone, noone);
	initHeader("Back Throw Input");
	initWords("BThrow is a bit finnicky on the ground, due to Chuckya being able to turn freely. Inputting attack too soon after the turning animation or NSpecial endlag will instead perform a backwards FThrow. To properly BThrow input backward, then slightly hesitate the attack input. When using C-Stick the issue only arrises when inputting too close to NSpecial's endlag, so just wait a few frames.");
    initImage_ext(sprite_get("grab_bthrow"), -5, fa_center, 2, 2, false, c_white, 1, false, noone, noone, noone, noone);

	initTip("Bob-Ombs");
	initWords("For FSpecial, Chuckya throws a Bob-Omb that bounces once before exploding on contact with the stage. Holding the Special button during startup will allow Chuckya to hold onto the Bob-Omb. It can still be caught mid-air when bouncing, but is a bit more difficult than this method.");
	initWords("Once grabbed the Bob-Omb will no longer bounce on the ground, instead exploding after being thrown. When exploding on the ground Bob-Ombs also have an extra larger explosion hitbox, which can catch opponents off guard.");
	initImage_ext(sprite_get("fspecial_bombproj_blast"), -5, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);

	initTip("Heave-Ho");
	initWords("For DSpecial, Chuckya summons a Heave-Ho. It will move across the stage automatically, throwing opponents, Bob-Ombs, or Cannons it comes across up into the air before exploding.");
	initWords("Heave-Ho keeps going in a single direction until hitting a wall, so turn Heave-Ho around by grabbing it and throwing it back down! Heave-Ho will also not attempt to throw players that are invincible, so rolling past Heave-Ho won't get rid of it.");
	initImage_ext(sprite_get("heaveho"), -5, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);

	initTip("Cannon");
	initWords("For USpecial, Chuckya launches itself out of a cannon. It can be aimed by pressing left or right, and fired Chuckya further the longer Special is held. After launching Chuckya will spin rapidly with a weak hitbox, making it hard to punish.");
	initWords("After launching yourself upwards, the cannon drops as a heavy projectile with moomentum the opposite of Chuckya's. If the cannon is grabbed and thrown by either Chuckya or Heave-Ho, it will actually get more powerful! The cannon will dissapear either after being inactive too long or when hitting a player.");
	initImage_ext(sprite_get("uspecial_cannon_grabbed"), 0, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
	
	initTip("Whomps & Thwomps");
	initWords("Chuckya's FStrong and DStrong are Whomp and Thwomp respectively, and both can be thrown offstage.
	
	Whomp can be tossed off by standing close to the ledge, and sends upward. Thwomp can be tossed off by sliding off the ledge during DStrong's startup, and does spike offstage.
	
	Whomps have a cooldown when being tossed off the ledge, but not when used onstage.");
	initImage_ext(sprite_get("fstrong_whomp"), -5, fa_center, 1, 1, false, c_white, 1, false, noone, noone, noone, noone);
	
	initTip("Misc. Advice");
	initHeader("Hit Cancels");
	initWords("Both DTilt and DAttack can be cancelled on hit. DTilt can be jump cancelled on hit at any time, and DAttack can be tilt cancelled on hit once the move enters endlag.");
	initImage_ext(sprite_get("dtilt"), -5, fa_left, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);
	initImage_ext(sprite_get("dattack"), -5, fa_right, -2, 2, false, c_white, 1, false, noone, noone, noone, noone);
	initHeader("Shockwave");
	initWords("During FTilt Chuckya claps its hands, smacking any opponents that are close. It also creates a much larger, much weaker shockwave that can easily catch opponents off guard. While not being powerful, this large range can prove very useful for disruption.");
	initImage_ext(sprite_get("ftilt"), -5, fa_center, 2, 2, false, c_white, 1, false, noone, noone, noone, noone);
	initHeader("Momentum Aerials");
	initWords("DAir gives a small upward boost during the attack, and the sweetspot will boost Chuckya even higher.");
	initWords("BAir, DThrow, and DSpecial also give a small upward boost, though both are constant to any use of the move regardless of hitting.");
	initImage_ext(sprite_get("dair"), -5, fa_center, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);
	initImage_ext(sprite_get("bair"), -5, fa_left, 2, 2, false, c_white, 1, true, noone, noone, noone, noone);
	initImage_ext(sprite_get("grab_dthrow"), -10, fa_right, -2, 2, false, c_white, 1, true, noone, noone, noone, noone);
	

/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Patches																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Keep a record of your character's update history, and at the end, also give
credits to the developer(s) of the character or any assets used.

Use the initPatch() function to start a new Patch:

	initPatch(version_number, date)

If the "date" field is set to an empty string, then the Patch will act more like
a Tip - mainly useful for making an "About [character]" page.

Use the same functions as in the Tips app to populate the Patch with text and
images.

Here are two more content functions, which are designed for use in Patches but
also work in Tips:

	initHeader(text)
	initSection(text)

These are basically shortcuts for two different types of formatted text.
initHeader() is a text heading that is colored either blue or green, depending
on whether it's a Tip or a Patch. initSection() is an indented block of text.

These are handy for dividing a Tip/Patch into sections, such as different moves
in a Patch.

*/

#define CORE_patches

initPatch("2.3", "24 March, 2023");
initHeader("Balance");
initSection("-UAir first hit hitboxes no longer have extra hitpause
-UAir first hit upper hitbox now has 0.2 KB scaling to match the lower hitbox
-UAir first hit upper hitbox no longer runs the horizontal linking code in hit_player, only the vertical
-UAir first hit lower hitbox angle adjusted from 85 to 110
-UAir first hit lower hitbox BKB increased from 5 to 7
-UAir first hit lower hitbox angle flipper changed from 4 to 7 (sends toward Chuckya's center instead of the hitbox center)
-UAir landing lag increased from 6 to 8

UAir had an infinite when hitfalling correctly + was janky and unreliable all around, should be much better for use as intended now");

initPatch("2.2", "16 November, 2022");
initHeader("Aesthetic");
initSection("-Updated ingame description and Munophone about page to not call Chuckya new");
initHeader("Balance");
initSection("-FStrong and DStrong no longer put Chuckya in hitpause (this majorly desynced online)
-FStrong launching hitbox no longer has hitpause scaling
-DStrong launching hitbox no longer has hitpause scaling
-DStrong shockwave hitbox no longer has hitpause scaling


(Since Chuckya is no longer put in hitpause I removed scaling just so the moves maintain consistency of when Chuckya is actionable)");
initPatch("2.1", "30 October, 2022");
initHeader("Balance");
initSection("-Heave-Ho throw hitbox can no longer be reflected
-Heave-Ho explosion hitbox now applies parry stun
-FStrong now applies parry stun (it was supposed to, whoops)
-L Rune wobbling is now true");
initHeader("Fixes");
initSection("-Optimized more code behind the scenes
-Bouncehurt sprite is now the correct size
-Fixed missing pixel on Bouncehurt
-Chuckya can no longer pick up a bomb that has been reflected
-Cannon charge is once again properly capped i have ZERO IDEA WHY IT WAS UN-FIXED BUT S U R E
-In fact USpecial shouldn't break at all for any reason anymore and if it does i am going to Piss");

initPatch("2.0", "29 October, 2022");
initHeader("Aesthetic");
initSection("-Wait animations now use the ingame system
-Renamed ``Default`` alt to ``Chuckya``
-Renamed ``Original`` alt to ``N64``
-Altered Golden, Rainbow, Virtual Boy, and N64 alts
-Bobble highlight colour removed from having its own colour slot
-Added colour slot for body shading
-Added smooth animation for carrying a Bob-Omb out of FSpecial
-Hoot now flies away after dropping from the respawn platform
-Added seasonal costumes when spawning
-DSpecial now has a proper animation
-Added DTaunt
-Added UTaunt
-Flags now have nicer animation
-Added platform variants of every taunt
-Added extra sound effect for starting UStrong
-Added fun surprise when triggering a galaxy from UStrong
-Added smear and extra sound effect for UTilt to better indicate its first hit
-Altered DAir hit effect to look nicer
-Altered FTilt shockwave to look nicer
-Wario Apparition (Final Smash) now has a rainbow trail
-Bob-Omb destroy effect is no longer an explosion (visually misleading)
-Star particles are now sprited at 1x scale (to look nicer with the rotation, said rotation already making it pointless to try and avoid mixels with them)
-Neutral airdodge now uses the sideways airdodge sprite
-Altered Bully foot colour
-Adjusted BAir and Jab 3 keys to look less dumb when exaggerated
-NSpecial now animates as intended (seperate endlag for a successful grab is now used)
-Held objects are now always given a lower depth than Chuckya while carried
-Cannon now blinks fully invisible rather than half transparent when dissapearing
-Adjusted UStrong, NSpecial, UAir, and DAttack sound effects
-Thwomps, Whomps, and cannons now have an extra sound, screenshake, and dust when hitting the ground
-Tweaked default hit effect usage for more variety/being actually good (there were a lot of strong hits with the small hfx)
-Increased double jump animation speed
-Increased walking animation speed
-DAir sweetspot now has extra screenshake
-Final Smash no longer has 2 projectiles spawn, instead having a smooth fade in
-Added more HUD offset stuff on various attacks
-Added a bunch of dust effects to various attacks
-Bob-Ombs now have a fuse sound and particles when active
-Heave-Ho now has dust effects when moving");
initHeader("Balance");
initSection("-Added Abyss Runes
-Added AI (not very good AI but better than the default one)
-Reduced jump speed from 11 to 10.5
-Reduced knockback adjustment from 0.95 - 0.9 (Chuckya could stand to feel a little heavier, these changes should help)
-Pratland time increased from 8 to 24 (USpecial is stupidly safe, this is necessary)
-Key and bobble are no longer part of Chuckya's hurtbox (mostly benefits Jab 3, BAir, and UAir with disjoint)

-Held objects now track Chuckya's hands during throw animations
-FThrow and DThrow hitboxes adjusted to match new animated throw positions

-NSpecial no longer cancels into idle when landing the grab on a player (grab release timer pauses so same overall hold time)
-NSpecial now has whifflag (whifflag doesn't apply when landing the grab on objects, since you still ``hit`` the move)
-NSpecial endlag window length decreased from 16 to 10 (evens out with new whifflag/cancel changes)
-NSpecial hitpause decreased from 6 to 4

-BThrow angle adjusted from 135 to 145 (35 backward)
(Since Chuckya can freely turn having BThrow be a kill move or something wouldn't work since it's not position based. I gave it a lower angle so it has different utility without being strictly better or worse)

-Doubled explosion sizes (Bob-Omb, Heave-Ho)

-Bob-Ombs now refresh their bounce when parried
-Adjusted how FSpecial's cooldown is applied

-DSpecial startup increased from 8 to 9 (this is literally just to fit the new animation lmao)
-Heave-Ho now has a seperate collision mask sprite (should also help with player detection)
-Heave-Ho can now throw cannons
-Heave-Ho no longer makes a whirring sound when held
-Heave-Ho explosion lifetime increased from 6 to 9

-Cannon base hitpause and scaling increased from 8 and 0.3 to 15 and 0.7
-Cannon damage increased from 6 to 16 (Only applies after grab)
-Cannon BKB increased from 6 to 8 (Only applies after grab)
-Cannon KB scaling increased from 0.5 to 0.6 (Only applies after grab)

-DAir sourspot BKB decreased from 5 to 4 (it should feel worse to hit and usually not kill)
-DAir sourspot KB scaling decreased from 0.55 to 0.4
-DAir sourspot base hitpause and scaling decreased from 7 and 0.6 to 6 and 0.4
-DAir can no longer hitfall

-BAir final hit base hitpause and scaling increased from 6 and 0.5 to 7 and 0.6

-UAir final hit base hitpause and scaling increased from 5 and 0.2 to 7 and 0.6
-UAir final hit height increased from 37 to 45 and lowered by 5 pixels

-UStrong startup increased from 6 to 12 (YIKES WHY WAS IT ONLY 6)
-UStrong initial hitbox width increased from 42 to 64 and moved back (covers more of Chuckya's body)
-UStrong initial hitbox given angle flipper 6 (compliments above change)
-UStrong launching hitbox damage increased from 2 to 5 (11 to 14 total with all other hits)
-UStrong launching hitbox KB scaling decreased from 1 to 0.9

-DAttack can now be cancelled on hit during window 3 (4 frames earlier, should help it better fit the role of an open-ended combo starter)

-DTilt sweetspot given higher priority (more consistent with DAir, as well as making it easier to hit for how small the extra reward is)

-UTilt first hitbox width increased from 46 to 65
-UTilt second hitbox width increased from 60 to 70
-UTilt second hitbox height increased from 75 to 80
-UTilt startup reduced from 6 to 4

-Wario Apparition (Final Smash) now spawns further behind Chuckya (-450 to -800)

-DEDICATED WHOMP/THWOMP PATCHNOTES (theres a lot)-
-Thwomps and Whomps no longer move during hitpause
-Adjusted Whomp collision mask

-FStrong and DStrong now have untechable 3 on their comboing hitboxes (untechable + doesn't bounce, the initial hits now combo to launching hit even at 999)
-FStrong and DStrong hitboxes are now classified as projectile hitboxes (fixes a bunch of issues)

-FStrong first hit merged into 1 hitbox from the ground only + air only (untechable 3 makes this redundant)
-FStrong launching hit BKB reduced from 10 to 6 (this kb is stupid, the only reason no one noticed is because whomps were so janky)
-FStrong falling hit damage reduced from 10 to 6
-FStrong falling hitbox is now one long hitbox and no longer stops spawning after hitting a player (only really affects multiplayer)
-FStrong falling hit now has extra hitpause of 10 (should connect to launching hit when landing off the side of a platform)
-FStrong lifetimes on all hitboxes now last longer than 1 frame

-DStrong startup decreased from 24 to 20
-DStrong endlag gravity increased from 0.55 to 1 (should no longer awkwardly stall in the air)
-DStrong falling hitbox merged into 1 hitbox from the ground only + air only (untechable 3 makes this redundant)
-DStrong falling hitbox is now one long hitbox and no longer has a hit lockout of 7
-DStrong falling hitbox no longer has extra hitpause
-DStrong launching hit damage increased from 8 to 12 (DStrong is kinda just worse than FStrong so this should help)
-DStrong KB scaling increased from 0.8 to 0.9
-DStrong now has an extra grounded only shockwave hitbox (again to give it better usage over FStrong)
-DStrong launching hitbox no longer has untechable 1
-DStrong launching hitbox now has a hit lockout of 10 (so the shockwave doesn't cancel the hit, groups don't work here)");
initHeader("Fixes");
initSection("-Optimized a bunch of stuff behind the scenes
-Grounded BThrow now works when using the right stick
-Players not being able to escape during throws now applies to all throws rather than just FThrow (why was it fixed but just for fthrow what even is that)
-Adjusted BThrow sprite offset
-Swipe sounds for UStrong, UAir, UTilt, DStrong, DTilt, DAir, BAir, NAir, FThrow, DThrow, BThrow, UThrow, and NSpecial now play at the correct time
-UStrong crystal once again uses Chuckya's shader
-Colour groups adjusted to include UStrong crystal
-Smear hurtboxes on DAir, NAir, and USpecial have been properly removed
-FStrong endlag now plays all animation frames as intended
-DStrong frame with missing bobble is now fixed (it was hidden by the Thwomp projectile but yknow, peace of mind and all that)
-All attacks now use the correct hit particles
-Cannon dissapearing now uses bottom blastzone Y rather than the stage boundary Y
-Removed whifflag from DAttack window 3
-Crouch now plays all frames as intended
-Intro sound effects should now only play once even if Chuckya's state is messed with
-Heave-Ho can no longer move while exploding
-Heave-Ho now makes a swipe sound when throwing objects, not just players
-Jumping while holding an object now uses the correct animation
-Jump start time is no longer set to 3
-USpecial startup now uses its sound effect
-DAttack now animates as intended
-Updated Walljump code, and releasing the wall cling now plays the jump sound (more polished than dan could even bother with)
-Fixed Platform Taunt offset
-Jab 1 now animates as intended
-Fixed miscoloured pixel when closing Munophone
-Fixed miscoloured pixel on intro animation
-Fixed missing pixel on UTilt
-Explosions from parried Bob-Ombs now belong to the correct player");

initPatch("1.16", "15 May, 2022");
initHeader("Aesthetic");
initSection("-Removed 8bit sound effects on classic alts (they don't sound great and honestly discourage me from picking them)
-8bit taunts now use the 8bit warping sound
-Reduced volume on the remaining 8bit sounds
-Flag taunts now overwrite neutral taunt on gayzone alts (this only wasn't the case initially because of isssues with Munophone we were too dumb to realize how to fix easily)
-Flags now dissapear immediately when using a flag taunt a second time");

initPatch("1.15", "23 March, 2022");
initHeader("Aesthetic");
initSection("-Removed cyan pixels on results screen (i forgor)
-Added more frames on DAir sweetspot hfx");
initHeader("Balance");
initSection("-Droppin grabbed players offstage now uses the bottom blastzone Y rather than the stage boundary Y
-Heaveho being destroyed offstage now uses the bottom blastzone Y rather than the stage boundary Y
-Heave-Ho no longer activates when passing a player that is invincible
-Chuckya can no longer fastfall during DStrong
-FStrong launching hitbox height increased from 20 to 35 (Should hit more consistently on aerial opponents)
-Removed hit lockout from FStrong launching hit (idk why it's even there)
-Removed hit lockout from FStrong falling hitbox (It should now combo into the launching hit when falling off a platform)
-FStrong falling hitbox now deativates after hitting a player (sucks for 4p matches but like those guys are stinky anyway)
-UStrong multihit window length increased from 10 to 14
-Above change means amount of hits is increased, so damage is also increased from 9 to 11
-Reduced DAir sourspot BKB scaling from 0.65 to 0.55
-DAttack can now be attack cancelled on hit during the endlag window");
initHeader("Fixes");
initSection("-Flag taunts can no longer be activated on the platform
-Flag taunt music is now stopped in got_hit
-Hitting Chuckya on the first frame of parrying no longer repeats the sound 80 times because ouch my ears
-Put !hitpause on some other sound effects because you can never be too careful
-Fixed the swipe sound effect for the launching hit of BAir not playing");


initPatch("1.14", "10 March, 2022");
initHeader("Aesthetic");
initSection("-Exaggerated visuals on Jab, FAir, UTilt, and FTilt
-Removed cyan highlight on CSS
-Added CSS select sound
-USpecial now has a white border for the entire charge duration
-USpecial now has some squash before firing
-The blue part on the cannon no longer has slightly assymetrical shading
-UStrong crystal is now a separate sprite
-UStrong star now recolours with alts
-Thwomp and Whomp now use custom hit effects
-UStrong now uses custom hit effects
-All attacks now have star hit particles (except when Dan Moment messed them up)
-Players grabbed by Chuckya will now flip back and forth as well as shaking when the grab timer is low");
initHeader("Balance");
initSection("-Hurtboxes adjusted on Jab, FAir, UTilt, and FTilt to match visual tweaks
-Jab 1 hitbox width increased from 56 to 65 and moved forward slightly
-Jab 2 hitbox width increased from 50 to 70 and moved forward
-Jab 3 hitbox height increased from 50 to 55 and moved forward
-FAir hitboxes width increased from 50 to 60 and moved forward
-FAir top hitbox moved slight upward
-UTilt second hitbox width increased from 50 to 60
-UTilt second hitbox height increased from 70 to 75
-Due to USpecial visual change, Chuckya is now fired out 6 frames after the button is released
-USpecial vsp changed from 0.8 to 0.6
-USpecial now puts Chuckya into Pratfall 20 frames after being fired out (all this really changes is walljumping)
-Body hitbox when being fired from USpecial is now part of the move rather than attaching it to Pratfall
-Increased Pratland time from 4 to 8
-FSpecial cooldown is no longer 60 from initially spawning the Bob-Omb, instead the cooldown is active as long as a Bob-Omb is on screen
-Bob-Ombs can now be automatically grabbed by holding special when throwing one
-DSpecial throw hitbox lifetime increased from 3 to 7 (to better match the animation and be more consistent when hitting players)
-DSpecial throw hitbox width increased from 70 to 85, should now more consistently hit players slightly behind Heaveho
-Reduced DSpecial cooldown after Heave-Ho is destroyed
-Heave-Ho now dissapears closer to the bottom blastzone
-Bob-Ombs no longer bounce after being dropped from Chuckya's grab");
initHeader("Fixes");
initSection("-Christmas alt is no longer broken (not that itll matter for a while)
-Whomp now uses the correct sound when using an 8bit alt
-Fire HFX for USpecial body hitbox now fully recolours with alts
-Fixed darker grey colours on Heave-Ho not recolouring with alts
-DAir hitboxes are now in the same group (whoops idk when that happened)");


initPatch("1.13", "9 March, 2022");
initHeader("Fixes");
initSection("-Thwomp now properly breaks when hitting the ground
-Fixed custom gravity on airborne DStrong
-HOPEFULLY fixed the cannon being weird and launching Chuckya into space
-Heave-Ho now has extended parry stun on the throwing hitbox
-Heave-Ho now has parry stun and extended parry stun on explosion hitbox (i thought i fixed that before rip)
-Heave-Ho can now throw players when being initially spawned");

initPatch("1.12", "6 October, 2021");
initHeader("Aesthetic");
initSection("-Added custom effect for DAir sweetspot");
initHeader("Balance");
initSection("-Bob-Ombs are no longer transcendant
-Bob-Omb cooldown increased from 60 to 75
-FStrong now has 7 whifflag
-DStrong now has 6 whifflag
-Bob-Ombs can no longer hit players when held (even though that was really funny, blame ambi)");

initPatch("1.11", "5 October, 2021");
initHeader("Balance");
initSection("-Heaveho throw no longer has an angle flipper, now always sending upward
-Adjusted Heaveho throw angle from 70 to 90
-Reduced Heaveho throw base hitpause from 9 to 3
-Increased Heaveho throw BKB from 10 to 13 (it still barely has any scaling, don't worry about it)");
initHeader("Fixes");
initSection("-Bob-Omb eyes now recolour with alts during Chuckya's FSpecial animation
-Bully eyes now recolour with alts
-Heaveho HUD indicator eyes now recolour with alts
-Flag taunt can no longer be activated when on the platform
-Heaveho throw hitbox now properly follows Heaveho's position
-Bully now properly appears randomly on FSpecial");

initPatch("1.10", "30 September, 2021");
initHeader("Aesthetic");
initSection("-Changed falling cannon hit effect
-Changed falling cannon mask sprite");
initHeader("Fixes");
initSection("-Fixed cannon shlide (again)");

initPatch("1.9", "30 September, 2021");
initHeader("''Fixes''");
initSection("-Cannon shlide is back because for some reason fixing it made it spawn 300 hitboxes (thank you lemons very cool)
-Removed some print_debug stuff");

initPatch("1.8", "30 September, 2021");
initHeader("Aesthetic");
initSection("-Chuckya now has a unique sprite for crouching while holding an object");
initHeader("Balance");
initSection("-Chuckya now drops its held object when wall jumping or getting hit
-Grabbed opponents are now released 8 frames sooner when Chuckya drops them
-Heaveho throw hitbox adjusted to be higher up and closer to Heaveho's front
-Heaveho throw hitbox is now larger
-Removed second 3% hitbox from falling USpecial cannon
-First Falling USpecial hitbox now does 6%");
initHeader("Fixes");
initSection("-Chuckya's eyes now recolour with alts during platform taunt
-Chuckya's key now recolours with alts during FThrow
-Adjusted sprite offset for crouching
-Bob-Omb sound effects now play properly when reflected
-Chuckya's Cargo Dash animation now loops
-Fixed bug where a falling cannon shot at a precise angle and speed would cause it to slide across the ground");

initPatch("1.7", "25 September, 2021");
initHeader("Aesthetic");
initSection("-Added Dialogue Buddy support");
initHeader("Balance");
initSection("-Reduced endlag on FStrong from 16 frames to 10");

initPatch("1.6", "23 September, 2021");
initHeader("Fixes");
initSection("-Fixed bug where Thwomps would get stuck falling when landing on a platform too low to solid ground
-Fixed bug (I say bug, it was me being stupid) where the aerial only combo hit on Thwomp had the wrong hitbox number and prevented the grounded only hitbox from appearing");

initPatch("1.5", "22 September, 2021");
initHeader("Aesthetic");
initSection("-FThrow now has a unique animation from FSpecial
-Thwomp eyes now recolour with alts");

initHeader("Balance");
initSection("-Extended player grab range
-Extended Bob-Omb grab range
-Grab timer no longer affects articles
-Chuckya now drops whatever it's holding when dodging

-Thwomp now has 1 less animation frame when hitting the ground for better gamefeel
-DStrong endlag increased from 0 (rip) to 8
-Nerfed DStrong launching hit BKB from 10 to 9
-Nerfed DStrong launching hit scaling from 1.0 to 0.8
-DStrong launching hit now comes out a few frames later (there was a weird bug don't ask)
-DStrong comboing hits now how 7 frames of hit lockout (same bug, still don't ask)

-FStrong endlag increased from 14 frames to 24

-Cannon now dissapears after hitting an opponent
-Chuckya now loses super armor sooner when exiting the cannon

-Nerfed scaling on explosions from 0.8 to 0.6
-Increased hitpause on explosions
-Increased cooldown on Bob-Ombs

-Heaveho now puts Chuckya into parry stun when its attack is parried
-Heaveho is now destroyed by Clairen's plasma field");
initHeader("Fixes");
initSection("-Cargo Idle animation now loops
-Offscreen indicator eyes now recolour with alts
-Chuckya now has 20 frames of landing lag when dropping opponents on the ground, and 20 frames of NSpecial cooldown in the air to prevent wobbling
-You can grab a Bob-Omb while it's exploding to hold nothing, which I didn't actually fix because it's funny and SM64 accurate. I just wanted to let everyone know it's there lol
-Heaveho no longer falls through platforms when placed directly on them");

initPatch("1.4", "20 September, 2021");
initHeader("Balance");
initSection("-Body hitbox added when firing out of USpecial
-Added 4 frames of pratland back

-Falling Cannon now only does 6%
-Falling Cannon angle changed from 270 to 90
-Cannon no longer loses friction after falling hitbox hits an opponent

-DStrong launching hit angle changed from 270 to 90
-DStrong launching hit scaling changed from 1.5 to 1

-FStrong combo hit changed to grounded only
-Extra FStrong combo hit added for aerial only");
initHeader("Fixes");
initSection("-Charging USpecial no longer dissapears when fighting an opponent with a solid article
-Removed some leftover print_debug");

initPatch("1.3", "19 September, 2021");
initHeader("Aesthetic");
initSection("-why was it using the old victory theme
-well anyway it''s the new one now
-chuckya ballz");

initPatch("1.2", "19 September, 2021");
initHeader("Aesthetic");
initSection("-Renamed ''Chuckyaster'' alt to ''Ramel C. Chuckster''
-USpecial falling hitbox sound changed");
initHeader("Balance");
initSection("-UStrong launching hit scaling nerfed back from 1.2 to 1.0

-DStrong launching hit BKB buffed from 9 to 10
-DStrong launching hit scaling buffed from 1.3 to 1.5

-USpecial falling hitbox height reduced
-USpecial falling hitbox scaling nerfed from 0.8 to 0.5

-DAttack HSP reduced from 3 to 2
-DAttack friction on last window increased from 0.4 to 0.6
-DAttack BKB reduced from 6 to 5 to make followups easier with the new reduced speed

-Added 0.2 scaling to UAir second hit

-Removed custom gravity from BAir's first window
-Removed VSpeed from BAir's first window
-Reduced VSpeed on BAir window 3 from -3 to -2

-Distance to blastzone before dropping opponents reduced
-Removed pratland lag, Chuckya is now actionable immediately when touching the ground");
initHeader("Fixes");
initSection("-HEAVE-HO WORKS NOW WOOOOO
-Unique platform taunt now works
-Cargo Dashstop no longer has miscoloured eyes on alts
-The last patch notes lied, Heaveho explosion was still ludicrously strong. Fixed it to be the same strength as Bob-Ombs, actually this time");

initPatch("1.1", "18 September, 2021");
initHeader("Balance");
initSection("-Reduced time limit on grabbing from 2 seconds to 1
-Increased friction on dropped cannons from 6 to 1.2

-FStrong launching hit BKB buffed from 9 to 10
-UStrong launching hit scaling buffed from 1 to 1.2
-DStrong launching hit BKB buffed from 8 to 9

-DTilt endlag nerfed from 10 frames to 15
-Increased DTilt friction on final window from 0.1 to 0.3

-DAttack can no longer be held down, only hitting the minimum 4 times

-DSpecial explosion hitbox and FSpecial ground explosion hitbox fixed from 15 damage, 10 BKB, 1.1 scaling to 7 damage, 7 bkb, 0.8 scaling (JESUS CHRIST WHO MADE THEM THAT STRONG)
-DSpecial explosion hitbox and FSpecial ground explosion hitbox made smaller
-Removed hit sound and hit effect from DSpecial explosion hitbox and FSpecial ground explosion hitbox");
initHeader("Fixes");
initSection("-Neutral special can no longer galaxy off the bottom at 0% (Chuckya will drop opponents when offstage)
-FTilt no longer has miscoloured eyes on alts");


initPatch("1.0", "18 September, 2021)");
initSection("-Chuckya released :)");

initPatch("About Chuckya", "");
initHeader("General Info");
initSection("The Clockwork Catapult from SM64, Chuckya, comes to Rivals of Aether! Carrying on the spirit of NickYellow's Chuckya character, it's the high quality Chuckya by Fighting Polygon Team!

This round robot loves to throw things around, including players! Use Chuckya's cargo grab to throw opponents, Bob-Ombs, and everything inbetween!");
initHeader("Character by Fighting Polygon Team");
initSection("Flophawk: Project Manager, Lead Artist, Lead Coder, Victory Theme
Ability: Lead Coder
Gnome: Lead Coder
DeltaParallax: Lead Coder
DynamicLemons: Last Minute Very Epic Coder
Mr. Start: Assistant Artist
Succ: Assistant Artist
Tai: Assistant Hitbox Coder
Spam: Assistant Coder
BagelBoy: Thwomp Sprite
NickYellow: Taunt Sprite


Shoutouts to BowlingKing and Ambi for balancing tips.");
	
initHeader("Stuff used:");
initSection("Gaybow Road Taunt Music: Rainbow Road by RhymesWithStomach
Numerous Bees Taunt Music: Honeycomb Highway by Siivagunner
Trans Rights Taunt Music: idk the USSR or something
Final Smash Buddy Music: Looping Steps from SM64 (reversed)
Rune Wobbling Music: Looping Steps from SM64

	
SFX sourced from Super Mario 64, SMB2, Super Mario Maker, SML2, Rhythm Heaven Fever, Marvel vs Capcom 3,  Mario Party, Undertale, Smash Ultimate, and Super Mario Sunshine");
initHeader("Compatible with");
initSection("Final Smash Buddy, Dialouge Buddy, Trummel & Alto, Otto, Steve, Link, Feri, Hikaru, The Chosen One, Abyss Hime, Wall-E, Moonchild, Miiverse, Mt. Dedede, Soulbound Conflict, Trial/Killing Grounds, The Last Resort, Dracula Boss, and Pokemon Stadium");

// Recommended template for non-Sandbert characters (delete the other patches):

/*

// other patches go here...

initPatch("1.0", "42 Shmebruary, 2021"); // (replace the date lol)
initHeader("General");
initSection("The character was released.");

initPatch("About CHARACTER NAME", "");
initHeader("Character by");
initSection("your name here");
initHeader("SFX from");
initSection("any places you got sfx (or other assets)");
initHeader("Compatible with");
initSection("Trummel & Alto, Otto, Steve, Link");

*/



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Cheats																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Create options for players to change how the character plays, either as silly
fun bonuses or useful training utilities (e.g. filling a meter instantly).

Use the initCheat() function to create a Cheat:

	CHEAT_[NAME_HERE] = initCheat(name, [options], [option_names], description)

Glossary:
	
	"CHEAT_[NAME_HERE]" is a variable that stores the ID of the Cheat. In the
		example below, CHEAT_FLY is equal to 0. This is necessary for
		referencing your cheat later in your character's code.
	
	"[options]" is an array of the possible values that the Cheat can have. A
		simple example is [0, 1] for on and off, but it could also be something
		like [0, 1, 5, 9] or ["Cherry", "Strawberry", ""].
	
	"[option_names]" is an array of the displayed names for the options given in
		"[options]". It should be the same length as "[options]", and each entry
		should be a string.
	
To access a Cheat's current value inside your character's code, grab the entry
in the "phone_cheats" array at the index of the "CHEAT_" variable. For example:

	// update.gml
	
	if phone_cheats[CHEAT_FLY] == 1{
		vsp = -2;
	}

The "phone_cheats" array entry holds whatever value you defined in "[options]",
for the Cheat's current setting. (e.g. "phone_cheats" could contain a string,
not just a number)

You can also run code only at the moment that the Cheat was clicked on, by
using the "phone_cheats_updated" array (each entry is just true or false):
	
	// update.gml
	
	if phone_cheats_updated[CHEAT_FLY]{
		phone_cheats_updated[CHEAT_FLY] = 0; // you have to reset it yourself
		if phone_cheats[CHEAT_FLY]{
			print("Flight started");
		}
		else{
			print("Flight ended");
		}
	}

Pro tip: having a Cheat with only a single option is useful if you just need a
"click button to do X" thing for your character, e.g. "click to reset meter to
zero".

*/

#define CORE_cheats

CHEAT_INFGRAB		= initCheat("Endless Grab", [0, 1], ["Off", "On"], "Renoves grab time limit on players, and doesn't drop them when near the bottom blast zone.

Doesn't remove the shaking, so you can still tell when the grab *would* have ended.");

CHEAT_CANON         = initCheat("Endless Cannon Charge", [0, 1], ["Off", "On"], "Renoves automatic firing on USpecial.

When normal time limit is reached, Chuckya also stops sinking.");
CHEAT_HEAVE         = initCheat("Heave-Ho Speed", [1, 0.5, 0], ["100%", "50%", "0%"], "Set Heave-Ho's movement speed when grounded.");

/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Frame Data																║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Customise the Frame Data guide.

*/

#define CORE_frame_data

// Reorder this list to change the order that moves appear in the guide!
phone.move_ordering = [
	AT_JAB,
	AT_FTILT,
	AT_DTILT,
	AT_UTILT,
	AT_DATTACK,
	AT_FSTRONG,
	AT_USTRONG,
	AT_DSTRONG,
	AT_FSTRONG_2,
	AT_USTRONG_2,
	AT_DSTRONG_2,
	AT_NAIR,
	AT_FAIR,
	AT_BAIR,
	AT_UAIR,
	AT_DAIR,
	AT_NSPECIAL,
	AT_NSPECIAL_AIR,
	AT_NSPECIAL_2,
	AT_FSPECIAL,
	AT_FSPECIAL_AIR,
	AT_FSPECIAL_2,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_USPECIAL_2,
	AT_DSPECIAL,
	AT_DSPECIAL_AIR,
	AT_DSPECIAL_2,
	AT_NTHROW,
	AT_FTHROW,
	AT_UTHROW,
	AT_DTHROW,
	AT_EXTRA_1,
	AT_EXTRA_2,
	AT_EXTRA_3,
	AT_TAUNT,
	AT_TAUNT_2,
	AT_PHONE,
	2,
	3,
	39,
	42,
	43,
	44,
	45,
	46,
	47,
	48,
	49,
	50
];

// Whether or not to include the "Stats" page.
phone.include_stats = true;

// Notes for the "Stats" page - put "-" for no notes.
phone.stats_notes = "-";

// Whether or not to include a custom data page, which can hold any values you
// want - useful for data that's specific to your character's mechanics.
phone.include_custom = false;

// The name of the custom page.
phone.custom_name = "Example Custom Data"

// The content of the custom page.
initCFDHeader("Article lifetime");
initCFDBody("100 frames");
initCFDHeader("Second value");
initCFDBody("459");
initCFDBody("epic");



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Muno Character Compatibility												║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Add bonus features and interactions with Muno's characters, like a codec for
Trummel & Alto.

If you don't feel like adding one of them, you can just comment out the lines
of code.

*/

#define CORE_muno_compatibility

/*
Trummel codec:

initCodec(gimmick)
initCodecPage(speaker, expression, gimmick, text)

The variable trummel_id is initially set to noone (-4). When Trummel opens this
char's codec, trummel_id is set to Trummel's object ID.

Codec speaker handles:
SPK_TRUM: Trum
SPK_ALTO: Alto
SPK_OTTO: Otto
SPK_CODA: Coda
SPK_ECHO: Tempo
SPK_MINE: Steve (i dont normally use this one... like, what is he supposed to say?? the funny oof noise? you can if you want)
SPK_SEGA: Sonic (see above)

Codec speaker expressions:
https://pastebin.com/qTLnsNFY

Codec gimmicks:
there aren't any

Page gimmicks:
GIM_CHOMP			make the enemy ftilt
GIM_CLONE 			display 2 speakers
GIM_LAUGH_TRACK		play the funny haha sound
GIM_SKIP 			advance the page immediately when the text finishes
GIM_DIE				die
GIM_SHUT_UP			no chatter sfx
GIM_HOWL			make the enemy dspecial
GIM_SHADER			use your char's shaders (palette swaps) for the speaker portrait
GIM_TEXTBOX			text color				is set to the value of the	spr_custom_trummel_textbox	variable in the player object
GIM_COLOR			textbox sprite index	is set to the value of the	spr_custom_trummel_color	variable in the player object

To use multiple gimmicks on a single page, MULTIPLY them together.
*/

// Custom speaker setup - use 1, 2, 3, 4, ... for the index.
SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));

initCodec(0); // this should just always be 0, because there are no codec gimmicks
	initCodecPage(SPK_ALTO, 2, 0, "Chuckya, The Clockwork Catapult. It appears in SM64 and it's remake.");
	initCodecPage(SPK_ALTO, 3, 0, "Fun fact! Chuckya can blink, but chooses not to.");
	initCodecPage(SPK_TRUM, 2, 0, "thats not fun at all");
	initCodecPage(SPK_ALTO, 1, 0, "More fun facts! Chuckya feels nothing and will yeet you into the shadow realm with no remorse!");
	initCodecPage(SPK_TRUM, 1, 0, "why are you like this");
	initCodecPage(SPK_ALTO, 6, 0, "I had fun removal surgery in 2004.");
	initCodecPage(SPK_TRUM, 4, 0, "that explains a lot");
    initCodecPage(SPK_ALTO, 4, 0, "");
	initCodecPage(SPK_ALTO, 4, 0, "No it doesn't shut up.");

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");

// Otto bobblehead body. (optional, don't really need this)
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body");

// Steve death message.
steve_death_message = "Steve was thrown out of the course.";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 4;

/*
Spear IDs:

1: Traveler's Spear
2: Knight's Halberd
3: Wooden Mop
4: Spiked Boko Spear
5: Flamespear
6: Frostspear
7: Thunderspear
8: Guardian Spear
*/

// Palutena's Guidance (for RuberCuber's Pit character)
// Works kind of similarly to Trummel codecs.
// initCodecPagePit(speaker, expression, voice, text);
// List of expressions and voice clips: https://pastebin.com/wsz22ZwJ

initCodecPit();
initCodecPagePit(SPK_PIT,	3,	0,	"Hey, it's Sandbert!");
initCodecPagePit(SPK_PIT,	1,	6,	"...Isn't he a bit above my power level?");
initCodecPagePit(SPK_PALU,	0,	3,	"Actually, this version of Sandbert has received a lot of nerfs to his damage and frame data.");
initCodecPagePit(SPK_PALU,	0,	2,	"He can't even cancel his USpecial or end it early anymore!");
initCodecPagePit(SPK_VIR,	5,	1,	"But yes, Pit, he IS still above your power level.");
initCodecPagePit(SPK_PIT,	6,	0,	"Pssh, sounds like a pushover to me.");
initCodecPagePit(SPK_PALU,	0,	4,	"Don't be so sure - despite the nerfs, his power and attack speed are still a force to be reckoned with.");
initCodecPagePit(SPK_PALU,	0,	2,	"Also, he has the same MunoPhone as you do - so he'll be well-versed in his frame data and combos.");
initCodecPagePit(SPK_VIR,	6,	4,	"Maybe you should turn on some Cheats for this fight, Pit?");
initCodecPagePit(SPK_PALU,	0,	2,	"No, I'm sure he'll be fine.");
initCodecPagePit(SPK_PALU,	2,	5,	"...As long as he avoids the Kamehameha.");
initCodecPagePit(SPK_PIT,	4,	1,	"The WHAT?!?");



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ Behind-The-Scenes															║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

This is the end of the stuff you need to worry about!

Below this point are just all of the functions used to make the above sections
work.

It's not recommended to edit anything below here unless you know what you're
doing and have a good reason to.

*/

#define initTip(tip_name)

array_push(phone.tips, {
	name: tip_name,
	objs: [],
	page_starts: [0]
});

phone.currently_edited_obj = phone.tips[array_length(phone.tips) - 1];

initWords_ext("- " + tip_name + " -", fa_center, phone.apps[phone.APP_TIPS].color, 0, 0);

#define initPatch(patch_version, patch_date)

array_push(phone.patches, {
	name: (patch_date == "" ? "" : "v") + patch_version,
	objs: [],
	page_starts: [0]
});

phone.currently_edited_obj = phone.patches[array_length(phone.patches) - 1];

if patch_date == ""{
	initWords_ext("- " + patch_version + " -", fa_center, phone.apps[phone.APP_PATCHES].color, 0, 0);
}
else{
	initWords_ext("- v" + patch_version + ": " + patch_date + " -", fa_center, phone.apps[phone.APP_PATCHES].color, 0, 0);
}

#define initHeader(obj_text)

initWords_ext(obj_text, fa_left, "h", 0, 0);

#define initSection(obj_text)

initWords_ext(obj_text, fa_left, $4ABAA7, 1, 0);

#define initWords(obj_text)

array_push(phone.currently_edited_obj.objs, {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: $4ABAA7,
	indent: 0,
	side_by_side: false
});

#define initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_ignore_height)

array_push(phone.currently_edited_obj.objs, {
	type: 0,
	text: obj_text,
	align: obj_align,
	color: obj_color,
	indent: obj_indent,
	side_by_side: obj_ignore_height
});

#define initImage(obj_sprite, obj_frame)

array_push(phone.currently_edited_obj.objs, {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: fa_center,
	xscale: 1,
	yscale: 1,
	uses_shader: 1,
	color: c_white,
	alpha: 1,
	margin_l: noone,
	margin_r: noone,
	margin_u: noone,
	margin_d: noone,
	needs_auto_margins: true,
	side_by_side: false
});

#define initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_yscale, obj_uses_shader, obj_color, obj_alpha, obj_ignore_height, obj_l, obj_r, obj_u, obj_d)

array_push(phone.currently_edited_obj.objs, {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	yscale: obj_yscale,
	uses_shader: obj_uses_shader,
	color: obj_color,
	alpha: obj_alpha,
	margin_l: obj_l,
	margin_r: obj_r,
	margin_u: obj_u,
	margin_d: obj_d,
	needs_auto_margins: (obj_l == noone && obj_r == noone && obj_u == noone && obj_d == noone),
	side_by_side: obj_ignore_height
});

#define initCheat(ch_name, ch_opt, ch_opt_name, ch_desc)

array_push(phone.cheats, {
	name: ch_name,
	options: ch_opt,
	option_names: ch_opt_name,
	description: ch_desc,
	on: 0
});

array_push(phone_cheats, ch_opt[0]);
array_push(phone_cheats_updated, 0);
return array_length(phone.cheats) - 1;

#define initCFDHeader(text)

array_push(phone.custom_fd_content, {
	type: 0, // header
	content: text
});

#define initCFDBody(text)

array_push(phone.custom_fd_content, {
	type: 1, // body
	content: text
});

#define initCodec(cd_gimmick)

if "trummel_codecs" not in self trummel_codecs = [];

var new_cdc = {
	gimmick: cd_gimmick,
	pages: []
};

array_push(trummel_codecs, new_cdc);

#define initCodecPage(cd_speaker, cd_expression, cd_gimmick, cd_text)

var new_page = {
	speaker: cd_speaker,
	expression: cd_expression,
	gimmick: cd_gimmick,
	text: cd_text
};

array_push(trummel_codecs[array_length(trummel_codecs) - 1].pages, new_page);

#define initSpeaker(idx, speak_name, speak_sprite)

if "trummel_speakers" not in self trummel_speakers = [];

trummel_speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite	// Sprite of face
};

return idx * -1;

#define initCodecPit()

with oPlayer if "ruber_pit" in self {
	load_codecs = true;
}

pit_codecs = [];

var new_cdc = {
	pages: []
};

array_push(pit_codecs, new_cdc);

#define initCodecPagePit(cd_speaker, cd_expression, cd_sfx, cd_text)
var new_page = {
	speaker: cd_speaker,
	expression: cd_expression,
	sfx: cd_sfx,
	text: cd_text
};
array_push(pit_codecs[array_length(pit_codecs) - 1].pages, new_page);