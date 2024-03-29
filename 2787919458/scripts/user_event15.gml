// phone - frontend

if object_index == asset_get("cs_playerbg_obj"){
	CORE_css_draw();
	exit;
}

CORE_general();
CORE_tips();
CORE_patches();
CORE_cheats();
CORE_frame_data();
CORE_muno_compatibility();



/*
╔═══════════════════════════════════════════════════════════════════════════╗
║																			║
║ CSS Draw																	║
║																			║
╚═══════════════════════════════════════════════════════════════════════════╝

Set parameters that are used by the CSS drawing code.

*/

#define CORE_css_draw

// The number of alt costumes your char has, up to 32.
num_alts = 29;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 0;

// The list of names for the alts, if enabled.
alt_names = [
	"Sanic Hegehog",
	"Super Sanic",
	"Hyper Sanic",
	"Dankspine Sanic",
	"Dark Sanic",
	"Super Sanic God",
	"Super Sanic Blue",
	"Sanic.EXE",
	"Taels",
	"Knackles",
	"Robuttnik",
	"Shewdew",
	"Aimey",
	"Dank is infinite",
	"Obama Harry Potter Sanic",
	"Weegee",
	"Morshu",
	"Harambe",
	"Illuminati",
	"Shrek",
	"Doge",
	"Dat Boi",
	"Dorito",
	"Classic Sanic",
	"Sky",
	"Alisa",
	"Gee",
	"Oarly",
	"Chip",
	"a",
	];



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
muno_char_name = "Sanic";

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

initTip("NSpecial: Dorito™️ Throw");
initWords("Sanic throws a giant Dorito™ in the air that bounces of the ground while cracking, 
when it hits the ground/opponent 3 times it breaks apart and small Dorito™ pieces fall off.");
initImage_ext(sprite_get("dorito"), 0, fa_right, 1, 1, true, c_white, 1, true, noone, noone, noone, noone);
initImage_ext(sprite_get("shard"), 0, fa_right, 1, 1, true, c_white, 1, true, -40, noone, noone, noone);
initImage_ext(sprite_get("nspecial"), -4, fa_left, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("FSpecial: Dew Boost");
initWords("FSpecial has Sanic chug a full 2 liter bottle of Mountain Dew™️ and boost forward at high speeds!");
initImage_ext(sprite_get("fspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("USpecial: 420 blaze it");
initWords("Sanic takes a puff of weed and gets high. The move can be used 3 times before landing.");
initImage_ext(sprite_get("uspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("DSpecial: 360 No-Scope");
initWords("Sanic pulls out a sniper, jumps and spins and then fires.");
initWords("The move has massive range but does get weaker as it goes on.");
initImage_ext(sprite_get("dspecial"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Speed");
initWords("Over time while moving Sanic builds up crazy speed (with a cap of 69, nice) use this to ambush your foes!");
initImage_ext(sprite_get("walk"), -2, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Airdash");
initWords("Instead of a typical airdodge Sanic has an airdash that allows him to propell forward!");
initImage_ext(sprite_get("airdodge"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);

initTip("Strongs");
initWords("When using any of your strongs Sanic will call out a buddy to fight for him. When a summon is out you can no longer use your strongs, 
attempting to use a strong will cause the summon to attack.");
initWords_ext("Summons", fa_center, c_gray, 0, false);
initWords("-----------------------------------------------------------");
initWords_ext("Doge will first bork, sending the opponent up. Then he will spit facts at you.",fa_center,c_white,false,false);
initWords("Charging the strong will cause Doge's words to be more factual as the charge gets higher.");
var doge_sprite = "doge_alts";
if(alt == 0 || alt == 20)doge_sprite = "doge";
if(alt == 15)doge_sprite = "doge_weegee";
if(alt == 23)doge_sprite = "doge_lolbit";
initImage_ext(sprite_get(doge_sprite), -6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords("
-----------------------------------------------------------

");
var shrek_sprite = "shrek_alts";
if(alt == 0 || alt == 19)shrek_sprite = "shrek";
if(alt == 15)shrek_sprite = "shrek_weegee";
initImage_ext(sprite_get(shrek_sprite), -6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords_ext("Shrek will flush the toilet before opening it, slamming the door open.",fa_center,c_white,false,false);
initWords("
-----------------------------------------------------------                        
");
var datboi_sprite = "datboi_alts";
if(alt == 0 || alt == 21)datboi_sprite = "datboi";
if(alt == 15)datboi_sprite = "datboi_weegee";
initImage_ext(sprite_get(datboi_sprite), -6, fa_center, 1, 1, true, c_white, 1, false, noone, noone, noone, noone);
initWords_ext("Dat Boi will sit there waiting to dash, when called he will dash forward",fa_center,c_white,false,true);

initTip("BAir: Plunger");
initWords("BAir has Sanic stab backwards with a plunger, hitting an opponent or a projectile will cause the plunger to stick before Sanic throws the stuck object down!");
initImage_ext(sprite_get("bair"), -4, fa_center, 2, 2, true, c_white, 1, false, noone, noone, noone, noone);



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
initPatch("1.20", "June 5th, 2023");

initHeader("Buffs");
initSection("- Sanic can pin himself to the wall with BAir
- Spring now sends you less distance, but to make up for it it now scales with percent slightly; making it more deadly at higher percents.
- FTilt is 1 frame quicker
- FTilt sweetspot KBS .7 > .9
- UTilt sourspot BKB 6 > 7
- UTilt sweetspot KBS .7 > .9
- UTilt startup 8 > 5
- UTilt endlag 8 > 6
- Made UTilt's hitboxes a bit different to make the priority fix feel better, also changed the sweetspot vfx");

initHeader("Nerfs");
initSection("- Made UTilt sweetspot have less priority than sourspot
- Fixed how the Fests hud works and as a result your top speed is properly 69 instead of 70 (I was lying to you)
- Dattack now has 12 frames of endlag on the initial slam to make annoying combos less easy
- UAir sourspot BKB 8 > 7
- UAir sourspot KBS .8 > .6");

initHeader("Fixes / Other Changes");
initSection("- Sanic will now launch himself properly when invincible and using dattack (only works on the inital run)
- Sanic now displays on the hud when he is unable to use his summons
- Sanic now has a little effect and sound queue to when his summons/dorito are usable again
- Fixed a bug that would cause Dat Boi to be unusable for a long while if activated while dying
- Fixed munophone summon images
- Fixed strange behavior with dash accel code
- Fixed the wheel sfx on the skateboard dash
- Fixed a mishap with runes being incorrectly ordered
- Tweaked the joint hud icon's position slightly
- Attemped to mitigate some janky movement with the spring");

initPatch("1.19", "20th February, 2023");

initHeader("Buffs");
initSection("- When Shrek and Doge are in endlag you can use the other available strongs
- 1 new scream");

initHeader("Nerfs");
initSection("- Doge stays around longer, but you can use your other 2 strongs until he despawns (makes pocketing easier");

initHeader("Fixes / Other Changes");
initSection("- Shrek no longer triggers on projectiles with 0 priority
- Shrek can detect your own projectiles and launch them
- Fixed a spawn issue with Shrek's detection box
- Shrek's detect/hit box is no longer pocketable or reflectable (Turns out this was a rivals moment lol)
- Doge's words now have proper despawn effects
- Fixed some issues with Villager pocket
- Fixed a drawing error with Sanic's summons drawing arrows on other peoples hitboxes
- Weegee alt has a different death sound")

initPatch("1.18", "19th February, 2023");

initHeader("Buffs");
initSection("- Dat Boi now spikes when falling
- 2 new screams
- 1 new up hurt scream
- 2 new CSS's
- Nair Airhorn damage increased by 1
- Nair Airhorn knockback increased 8 > 9
- Added Rune D, E, G
- Dorito shards now spike when falling
- Nair has less startup 19 > 16
- Utilt has less startup 11 > 9
- Fair has less startup 19 > 13
- Utilt has less startup 11 > 9
- FSpecial has less startup 29 > 25
- All strongs have less startup 12 > 8
- Ustrong and Dstrong slams now spawn on the right frame
- Shrek can now reflect projectiles, when a projectile is near him he'll quickly hurry up and slam the door open to reflect it back at them. You may not disturb his private times");

initHeader("Nerfs");
initSection("- Fspecial hits 1 frame later
- Dat Boi gets weaker after 40 frames
- Ftilt and Utilt now have whifflag woops
- Fair sweetspot angle 35 > 45");

initHeader("Fixes / Other Changes");
initSection("- Dorito will now send straight up if moving up and not horizontally
- Updated some compatibility with other KoB characters
- Added support for Villager's pocket
- Recoded the summons for his strongs
- Recoded DSpecial Sniper
- Dat Boi has an outline to show the owner
- All summons now have a dust effect and land sound
- Tech, Parry and Jab sounds now don't play when muted
- Recoded alternate sprite code to make it cleaner
- TLDR; lots of code changes.
- Finally fixed Doge's animation being buggy
- Fixed a bug that would have Dat Boi's first hit to have 2 hitfx spawned upon hit
- Cleaned some sprites up
- Fixed the spring animation looking janky
- Moved the first jab sound to attack_update (fixed issues that spammed the sound) and also made it play a bit later to match the visual
- Added Dracula support
- Added Toon Link support
- Made the colormapping also change article color slot to fix drawing issues
- Made projectiles that despawned offscreen check for blastzone to make it better on bigger stages
- Fixed a bug that could cause an X to show on the results screen
- Fixed a small issue that would cause active Dat Boi to not make the airhorn noise offscreen
- Fixed an animation issue where the parry sprite would show up for a frame when rolling
- Made Olympia's crystal overwrite Sanic's colormapping properly.
- Dorito shards now send out properly
- Sky alt can now use secret side taunt")



initPatch("1.17", "14th September, 2022");

initHeader("Buffs");
initSection("- Jab3 damage 5 > 8
- Jab3 kb scaling .6 > .85
- Jab 1 cancel time is 2 frames faster
- Jab 2 is now 2 frames faster
- Swapped the stats for Dorito shard and the big Dorito
- Dtilt will now launch you up if you hit it
- Dtilt kb scale .6 > .7
- Dtilt can be attack canceled
- Dtilt damage and kb scaling now increase with charge
- Dorito can now be aimed when throwing it
- You can have multiple Dorito's if your previous Dorito lasts long enough
- Increased the size of Utilt's sourspot
- If Dat Boi is out for long enough you will be able to summon someone else/another Dat Boi
- Dorito spawns 2 frames earlier and a bit further
- Shrek slam hitbox base kb 9 > 11
- DatBoi now multihits but properly and won't hit multiple times when he shouldn't");

initHeader("Nerfs");
initSection("- Grounded FSpecial boosts you up a bit less
- Fspecial is a few frames slower before the hitbox appears
- Dair spike kb scale .7 > .5");

initHeader("Fixes / Other Changes");
initSection("- Made Dorito no longer ignore hitboxes with 'ignore projectiles' as that was causing some strange interactions
- Fixed Munophone dates
- Added a Dorito to the hud to show the cooldown/availability of Nspecial
- Readded the online css button using new code that works online
- Reanimated and re-worked Nair, it's now a 2 hit that's quicker and has attack cancel on hit
- Reanimated DTilt
- Reanimated FSpecial
- Reanimated NSpecial
- Added multiple css
- Added Wily Castle support
- Made spring check for 'Bounceable'
- DatBoi now properly spawns at the right position so he won't fall through a platform")


initPatch("1.16", "3rd August, 2022");

initHeader("Buffs");
initSection("- Added 7 new screams
- Made Sanic able to grab non transcendent projectiles with Bair. If you don't want this set 'MorshuCanGrab' to false in your projectile.
- Bair now throws projectiles with more force.");

initHeader("Fixes / Other Changes");
initSection("- Fixed an issue with the parry sound running on load.
- Fixed an issue that wouldn't reset Sanic's bair category (allowing it to be used on the ground)
- Hopefully fixed an issue that would cause 'Come on, Step it up' to be overlayed with the current intro sound.
- Made BAir's grab hitboxes ignore projectiles so they don't break if not transcendent.
- Added back the old method to disable MLG mode as online the CSS button doesn't work.
- If a hitbox is set to ignore projectiles Dorito will not be hit by it.
- Fixed a bug that could allow Sanic to grab through full armor due to Rivals not resetting it's variables")

initPatch("1.15", "25th July, 2022");

initHeader("Buffs");
initSection("- 1 new scream
- Bair can now grab articles
- Increased the size of Utilt's hitboxes
- Made Jab1's hitbox a bit taller and more disjointed
- Fixed Doge's words/sfx being delayed by 1 frame from when his mouth opens.
- Made Doge's animation a bit slower so you can see it better.
- Made Doge leave 16 frames earlier (around when his word dies)
- Made Dtilt's hitbox slightly bigger.
- Gave Ftilt a sweetspot on his hand.");

initHeader("Fixes / Other Changes");
initSection("- Made Jab1's hitbox come out 3 frames sooner to match the visual
- Made Doge return to idle 1 frame sooner to fix a bug with his animation
- Made projectiles use the new grab hitbox on bair to make it a bit easier to grab them
- Made grabbed projectiles have 0 hit priority.
- Made grabbed projectiles properly sit on the plunger.");

initPatch("1.14", "14th July, 2022");

initHeader("Buffs");
initSection("- Uair damage (7 > 8) 
- Dat Boi damage (6 > 9)
- Gave Uair a sweetspot");

initHeader("Nerfs");
initSection("- Made Dat Boi no longer multihit
- Made Doge's words active for 5 less frames");

initHeader("Fixes / Other Changes");
initSection("- Made the portrait and other sprites properly reset after using the Dorito alt
- Made spring not increase the damage of projectiles flung (this was a left-over from the new reflect code that I forgot to remove)
- Made spring not launch unless it's cooldown was gone
- Made spring reset the can_hit variable on projectiles meaning they can hit again once hitting the spring.");

initPatch("1.13", "6th July, 2022");
initHeader("Fixes / Other Changes");
initSection("- Added a new special alt.
- Made all summons flip properly (This was a Rivals quirk that was annoying)
- Hopefully fixed the steam versions and in-game versions being 1 digit off");

initPatch("1.12", "28th June, 2022");

initHeader("Nerfs");
initSection("- Made FSpecial's weak hitbox active for less time (8>4)");

initHeader("Fixes / Other Changes");
initSection("- Added a CSS button to toggle MLG effects/voices
- Due to the above the hud text for disabling sfx has been removed
- Added chilidog, stupid bitch hurt sound, fspecial sound and death airhorn to the mute list
- Dorito now has a colored outline to show who owns it.
- Fixed some offset issues with the Dorito.
- Due to the above Dorito's hitbox is now centered");

initPatch("1.11", "20th June, 2022");
initHeader("Fixes / Other Changes");
initSection("- Fixed Spring changing ownership");

initPatch("1.10", "13th June, 2022");
initHeader("Buffs");
initSection("- Added 1 new scream
- Made DAir slow you down on hit so it connects better");

initHeader("Nerfs");
initSection("- Gave NSpecial and BAir less time to turn around");

initHeader("Fixes / Other Changes");
initSection("- Fixed a bug with the new reflector code where Sanic's projectiles wouldn't be bounced
- Made the springs animation happen faster
- Sanic's dorito will no longer take damage if a teammate hits it
- Optimized the scream code to make adding new screams easier
- Removed the placeholder intro animation
- Fixed the date on the last patch
- Made some alts have white gloves instead of gray");

initPatch("1.9", "9th June, 2022");
initHeader("Buffs");
initSection("- Added 6 new screams
- Gave NSpecial, DSpecial and BAir 5 more frames where you can turn around
- Made Sniper properly last for 2 frames");

initHeader("Nerfs");
initSection("- Made jab 1 and 2 have more endlag
- Made Dorito have less bkb when falling 5 > 4
- Made Dat Boi's refresh timer for hitting slower so he chains less
- Gave Dorito a slight cooldown when it breaks
- BAir slam hitbox kbs .7 > .6
- Made Shrek and Dat Boi's falling hitboxes way smaller and more accurate to visual");

initHeader("Fixes / Other Changes");
initSection("- Made sniper unbashable by Ori
- Made sniper unreflectable
- Made sniper transcendent
- Made sniper ignore Clairen's shield
- Made sniper have proper parry stun
- Dat Boi can now be snacced by Matty
- Sniper can now be snacced by Matty
- Dorito will now be launched when snacced by Matty
- Fixed an issue where Dorito would sometimes lose health when grabbed/bouncing
- Made the feet on platform not draw if Sanic is taunting
- Boosted the volume of the gunga and train horn hurt sounds
- Slightly cleaned up some code here and there
- Fixed some issues with sniper and players/walls/ground
- Shrek's falling hitbox now has extra shake and better hit sfx to add more impact
- Updated Springs reflect code to hopefully reduce desyncs online");

initPatch("1.8", "9th May, 2022");
initHeader("Buffs");
initSection("- Made DSpecial's multihits angle 30 so it'll connect more reliably
- Added 3 new screams");

initHeader("Nerfs");
initSection("- DAir boost hitbox bkb 10 > 8
- Made USpecials clouds less active
- USpecial's cloud initial hit bkb 5 > 4
- USpecial's vsp -10 > -9
- USpecial limits your horizontal more speed making it more punishable
- Gave USpecial anti stall by capping how high you can go before the boost is worse
- DAttack connecting hit kbs .8 > .4
- Sniper: Reduced it to one hitbox so it won't get weaker as you get further, as a result it's now weaker
- Sniper will also no longer extend its lifetime when hitting someone else");

initHeader("Fixes / Other Changes");
initSection("- Fixed DAttack and gave it parry stun (because of rivals the spring will have it but not the melee)
- Fixed an issue with BAir grabbing through armor
- Made BAir be unable to switch who/what it's grabbing after it already has someone/something stuck
- Made taunting at the beginning of a match also disable screams");

initPatch("1.7", "28th April, 2022");
initHeader("Nerfs");
initSection("- Lowered the volume of one of the screams");

initPatch("1.6", "27th April, 2022");
initHeader("Buffs");
initSection("- Jab 3 KB scale (.4 > .6)");

initHeader("Nerfs");
initSection("- Shrek's falling hitbox: Base KB (8>6)
- Shrek's falling hitbox: KB Scaling (.6>.5)
- Strongs spike hitbox: Base KB (7>6)
- Strongs spike hitbox: KB Scaling (.8>.6)");

initHeader("Fixes / Other Changes");
initSection("- Morshu and Weegee alts now has special sounds for jab and intro
- Weegee has special sprites for summons + idle
- Cal can no longer snack the spring
- Fixed a bug with parrying Dair
- Made spring properly reflect non transcendent projectiles instead of breaking them
- Added 9 more hurt sounds
- Added a new intro interaction
");

initPatch("1.6", "22nd April, 2022");
initHeader("Buffs");
initSection("- BAir angle (270 > 280)
- 2 new dash animations
- FSpecial will send you out further when hit by spring
- To add to the buff above hitting off a spring with FSpecial resets your ability to hit players, allowing for double hits
");

initHeader("Nerfs");
initSection("- Reduced the projectile grabbing range on BAir");

initHeader("Fixes / Other Changes");
initSection("- Made spring ungrabbable
- Fixed a bug that could cause infinite Dorito shards to spawn when opponents broke it
- Made DAttack's spring not spawn when parried and made DAttack stop when parried
- DSpecial's reload now has a float
- Added new alts (Shewdew, Aimey, Illuminati)
- Added new intro sounds (including ones for special matchups)
- Added new hurt sounds
- Reduced BAir's projectile grab time (8 > 4)
- Runs also get randomized during dash turn now
- When hit sometimes chilidogs will fly out instead of rings
- Fixed a coloring issue on the offscreen indicator");

initPatch("1.5", "20th April, 2022");
initHeader("Fixes / Other Changes");
initSection("- Fixed a bug with the new patch that didn't allow Dorito to be hit by other players");

initPatch("1.4", "19th April, 2022");
initHeader("Buffs");
initSection("- Dorito can now be hit around by all of your attacks, along with this Dorito no longer breaks in one hit from opponent hitboxes.
- Made BAir's hitbox much bigger making able to hit easier");

initHeader("Fixes / Other Changes");
initSection("- Changed airdash's hurtbox to match the visuals
- You can now airdash down instead of at an angle");

initPatch("1.2", "6th April, 2022");
initHeader("Buffs");
initSection("- Resprited Doge's words making them larger and more useful
- Gave DAttack a hitbox while dashing to lead into the spring
- Made strongs not die upon hitting a player while falling
- Made summons able to be activated while airborne
- Made FSpecial wall jump cancelable
- Resprited FTilt giving it more range and a funnier animation");


initPatch("1.3", "11th April, 2022");
initHeader("Buffs");
initSection("- Added 10 new hurt sounds");

initHeader("Fixes / Other Changes");
initSection("- Made aerials able to be used via the strong button while a strong is active
- Gave the strongs and uair screenshake
- Alt sprites added for FStrong, Dattack, FSpecial, BAir
- Made the base alt's gloves white instead of gray
- Fixed some shading issues on BAir");

initPatch("1.2", "6th April, 2022");
initHeader("Buffs");
initSection("- Resprited Doge's words making them larger and more useful
- Gave DAttack a hitbox while dashing to lead into the spring
- Made strongs not die upon hitting a player while falling
- Made summons able to be activated while airborne
- Made FSpecial wall jump cancelable
- Resprited FTilt giving it more range and a funnier animation");

initHeader("Nerfs");
initSection("- Spring now goes away when parrying it (does not apply to the Sanic that own's the spring)");

initHeader("Fixes / Other Changes");
initSection("- Made DAir's boost maintain speed if you hold the direction you're going (be careful it gets fast)
- Added a new Rune
- Added randomized dashing animations
- Dat Boi now has a charged animation
- Added Up Taunt
- Added a special taunt for one of the alts
- Added Down Taunt
- Made all strong airhorns flinch instead of knock away
- Added a joint to the hud to show your current USpecial count better
- Changed UStrong's hit sfx to sound meatier
- Made strongs not spawn summons when parried
- Added more hurt sounds
- Added a hitbox_timer reset on BAir's grab so that you can properly grab things
- Properly made DSpecial's hit effect centered on the enemy
- Fixed a bug that'd cause you to sometimes fling yourself when using BAir on a projectile
- Slightly edited DAttack's animation to reflect that it now has a hitbox");

initPatch("1.1", "1st April, 2022");
initHeader("Buffs");
initSection("- Made Sanic maintain his speed with a little boost while dash turning
- Made DAir apply momentum slower but longer (results in the same speed but feels better),
- Dat Boi's half charged knockback scaling (.9 > 1)
- Made FStrong spawn slightly further making it easier to spike offstage with
- DSpecial's far hitbox extra hitpause (5>10)
- Made Sanic heavier (1.2>1.1)
- Hitstun Gravity (.5>.45)
");

initHeader("Nerfs");
initSection("- Made DAir's dash hitbox smaller");

initHeader("Fixes / Other Changes");
initSection("- Marked him as finished
- Fixed USpecial's initial cloud hitbox being oversized
- Made DTilt stop when parried
- Removed left over Munophone variables
- Gave the Chip alt fire particles while running
- Changed Chip alt's smears/trails to red
- Killcam hud opacity (.8>.5)
- Made Dat Boi (when active) and Shrek able to be grabbed
- Made DSpecial's bullet effect pause with hitpause");

initPatch("About Sanic", "");
initWords("fest");
initHeader("Additional SFX from");
initSection("Sonic games or something");
initHeader("Compatible with");
initSection("Steve, Link, GFZ, Dracula, Toon Link");

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
// Steve death message.
steve_death_message = "Steve didn't step it up";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 3;

//GFZ
gfzsignspr = sprite_get("gfz_sign");
sprite_change_offset("gfz_sign",18,41)
//DDD
arena_title = "The MLG superstar";
//Wily
wily_robotmaster_img = sprite_get("wilycastle");
//TL
toonlink_photo = sprite_get("tl_photo");
toonlink_photo2 = 6;
//Dracula support
dracula_portrait = (get_player_color(player)!=22)?sprite_get("drac_2"):sprite_get("drac_2_dorito");
dracula_portrait2 = asset_get("empty_sprite");
dracula_portrait3 = (get_player_color(player)!=22)?sprite_get("drac_1"):sprite_get("drac_1_dorito");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Back again I see, you filthy rat.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "cumon step it up";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "I beg your pardon?";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "ur too slow";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "What is this nonsense?";
page++;

//Page 5
dracula_speaker[page] = 3;
dracula_text[page] = "OHH OHHH OOOOOOOOOHHH MOMMM MOMMM!!! GET THE CAMERA!!";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Calling for your mother? Pathetic.";
page++;

//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "iLL maKe yoU eAt tHosE wOrDs!";
page++;

//Page 8
dracula_speaker[page] = 0;
dracula_text[page] = "I've had it to here with your incessive aggravating voice. Off with you [glass]";
page++;

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

initWords_ext(obj_text, fa_left, c_white, 1, 0);

#define initWords(obj_text)

array_push(phone.currently_edited_obj.objs, {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
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