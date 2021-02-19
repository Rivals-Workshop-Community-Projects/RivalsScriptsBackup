// Muno template - [CORE] user-defined content



/*
 * THIS IS THE ONLY FILE YOU NEED TO EDIT! The other user_events, as well as
 * css_draw, are not to be edited by the end user unless you want to specially
 * modify the template. (It's open source, but I'll be sad if you remove my
 * attempts at standardization)
 */

//hi -hyu
//p.s. i only now read the later part of that warning text
//honestly i'm REAAAAAAALLY REAAAAAAALLY REAAAAAAALLY not feeling the whole "template-author-personalized standardization"? i know it's your brand and all, but if you want to "standardize" it, you should make it generic as well. i tried to keep the trace of munophone as much as i can though and i didn't alter user_event14, but i still dunno

//also, for my changes, there are in-lore explanations. if you, muno, by chance, are reading this in curiousity of why i've made some choices, please wait for acid rainbows' phone update - it will be explained there.

/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Update Code			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

if ("phone_inited" in self && phone_inited){

	/*
	 * update.gml Code - this runs every frame, edit the below sections as you
	 * see fit.
	 */
	
	
	
	/*
	 * Below are 3 custom entries for the Print Debug setting in the Settings
	 * app. You can replace the "url"s with any constant, variable, or function
	 * to monitor it when that setting is enabled.
	 */
	
	phone_custom_debug = [
		"This is truly the experience of a contemporary guardian angel",
		"This is truly the experience of a contemporary guardian angel",
		"This is truly the experience of a contemporary guardian angel"
		];
	
	//custom resources tm
	
	//vol+4
	// i stole code from user event 14
	sfx_pho_close1 = sound_get("gui_minimize");
	sfx_pho_close2 = sound_get("gui_decline");
	sfx_pho_move = sound_get("gui_select");
	sfx_pho_open1 = sound_get("gui_open");
	sfx_pho_open2 = sound_get("gui_start");
	sfx_pho_select1 = sound_get("gui_accept");
	sfx_pho_select2 = sound_get("DING");
	phone.spr_pho_idle = sprite_get("_pho_idle");
	phone.spr_pho_app_icons = sprite_get("_pho_app_icons");
	phone.spr_pho_wallpaper = sprite_get("_pho_wallpaper");
	
	with phone{
	
	/*
	 * initApp(<index>, <name>, <icons frame>, <background color>)
	 */
	
	// i stole function from user event 14
	initApp(0, 0, "Menu", $84596d, 0); //6d5984
	initApp(1, 1, "Diary", $3d9ba0, tips); //a09b3d
	initApp(2, 2, "News", $5a7b1d, patches);
	initApp(3, 3, "Settings", $bd5b68, settings);
	initApp(4, 4, "Frame Data", $606abf, moves); //bf6a60 // old color: $236b89
	initApp(5, 5, "Boosts", $353535, cheats);
	initApp(6, 6, "T.T. Official App", $6c3e3f, stage_settings);
	initApp(7, 7, "Codecs", $264b87, []);
	initApp(8, 8, "About", $8f2b85, abouts);
	initApp(9, 9, "Power Off", $87263d, 0);
	
	}
	exit;
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ General Character Info                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

muno_char_name = get_char_info(player, INFO_STR_NAME);	// Name of the character, used for the MunoPhone - and also free to be used by other mods
muno_char_name = "Lumina";								// Here I replace the name, because "Acid Rainbows" is kinda long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

luminadraw = sprite_get("lumina_phone_drawings");
luminatrail = sprite_get("lumina_diduknow");



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Tips					                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	i = 0;
	j = 0;
	
	/*
	 * Tips are hints or instructions on how to play the character. They range
	 * from one-sentence descriptions to pages-long tutorials. You can also
	 * embed images and formatted text.
	 * 
	 * initTip(name)
	 * initTipWords(text)
	 * initTipImage(sprite, frame, align, xscale, color, gimmick)
	 * initTipWords_ext(text, align, color, indent, gimmick)
	 * initTipImage_ext(sprite, frame, align, xscale, color, gimmick, border_l, border_r, border_u, border_d)
	 * 
	 * NOTE: indent = a number of "tabs", not a number of pixels
	 * 
	 * To place two consecutive elements side-by-side, they must meet the
	 * following conditions:
	 * - The second element must not be text
	 * - The width of the two elements must not exceed the page width
	 * - One element must be left-aligned, and the other right-aligned
	 * 
	 * NOTE: For images, set frame to a negative number and it will animate the
	 * sprite at that rate. E.g. set to -3, each anim frame will last 3 frames.
	 * 
	 * Another image-related note: the placement for images is calculated based
	 * on the BORDERS of the sprite. Two consequences:
	 * - The offset of the sprite (load.gml) has NO effect.
	 * - If your sprites are made with a lot of transparent empty space around
	 *   the actual content (like mine are), it'll have that much extra space
	 *   around it in the tip.
	 * 
	 * To fix the second bullet point, use initTipImage_ext(), with the four
	 * extra "border_" arguments representing the distance FROM THE SPRITE'S
	 * OFFSET (as defined in load.gml) to "cut off" the sprite in each of the
	 * four directions. E.g. if your sprite's actual content is all contained
	 * within these distances from the sprite offset:
	 * - 100 to the left
	 * - 20 to the right
	 * - 50 up
	 * - 0 down
	 * 
	 * ...then the last 4 arguments should be 100, 20, 50, 0. It basically crops
	 * the sprite
	 * 
	 * Lastly, the "gimmick" is a special effect that you can apply to an
	 * element. Here's the list of implemented gimmicks:
	 * - 0: Nothing
	 * - 1: Shaking
	 * - 2: Scrolling left
	 * - 3: Scrolling right
	 * - 4: Ignore vertical scroll (always placed at top of screen)
	 * 
	 * Negative gimmick numbers are saved for whatever YOU might need them for!
	 * Like idk, if you're a coding wizard and figure out something cool to do
	 * by interacting with the tip data.
	 * 
	 */
	 
	 //boy that's a lot of text
	
	initTip("text 1");
	initTipWords("text 1")
	initTipWords("hello i am lumina metosela flowlait")
	initTipWords("umm")
	initTipWords("i niid kaili to teech me spering")
	
	initTip("image 1");
	initTipImage(player_id.luminadraw, 0, fa_left, 1, c_white, 0);
	
	initTip("image 2");
	initTipImage(player_id.luminadraw, 1, fa_left, 1, c_white, 0);
	
	initTip("image 3");
	initTipImage(player_id.luminadraw, 2, fa_left, 1, c_white, 0);
	
	initTip("image 4");
	initTipImage(player_id.luminadraw, 3, fa_left, 1, c_white, 0);
	
	initTip("image 5");//dspecial
	initTipImage(player_id.luminadraw, 4, fa_left, 1, c_white, 0);
	initTipImage(player_id.luminadraw, 5, fa_right, 1, c_white, 0);
	
	initTip("image 6");//uspecial
	initTipImage(player_id.luminadraw, 9, fa_left, 1, c_white, 0);
	initTipImage(player_id.luminadraw, 10, fa_right, 1, c_white, 0);
	
	initTip("image 7");//ronaldinho
	initTipImage(player_id.luminadraw, 6, fa_left, 1, c_white, 0);
	initTipImage(player_id.luminadraw, 7, fa_right, 1, c_white, 0);
	
	initTip("image 8");//secretcolors
	initTipImage(player_id.luminadraw, 8, fa_left, 1, c_white, 0);
	
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Patch Notes			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	i = 0;
	
	/*
	 * Patch notes are patch notes. Inform players on what's changed since they
	 * last played the character. If you want, you can just paste the changelogs
	 * from your Steam page or etc.
	 * 
	 * initPatch(name)
	 * initPatchWords(text)
	 * initPatchImage(sprite, frame, align, xscale, color, gimmick)
	 * initPatchWords_ext(text, align, color, indent, gimmick)
	 * initPatchImage_ext(sprite, frame, align, xscale, color, gimmick, border_l, border_r, border_u, border_d)
	 * 
	 * The formatting is exactly the same as with tips. Just replace "Tip" with
	 * "Patch" in the function calls, and instead of a name for the patch,
	 * put the version number and full date.
	 */
	
	/*initPatch("1.9 [WIP]", "2020-?-? (YMD)");
	initPatchWords("this patch is wip... copypaste changelog later...");*/
	
	initPatch("1.8", "2020-11-26 (YMD)");
	initPatchWords_ext("Fixes", fa_left, c_yellow, 1, 0);
	initPatchWords("- fixed the issue where parrying lumina's dtilt didn't put lumina into parry stun.
	- fixed the issue where getting hit out of dspecial when you are charging with lightfield would stop the light field in place.");
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("sorry to disappoint you but it's just bugfixes.");
	
	
	initPatch("1.7", "2020-11-23 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- you can now charge yourself with speed when you start dspecial in the light field sentry thing! it's not stronger or anything, just faster. and also...
	- while you are charging dspecial with light field, you can also choose the direction to go to (forward or diagonal)!
	- you can now also slam into the light sentry (after startup) with aerial dspecial to bounce up a bit
	- phone");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- tco art changed. i think. i haven't tested it yet
	- this doesn't affect gameplay because i added iasa but dtilt has a longer end animation. for visuals. again it has iasa so it's cancellable
	- ...in doing this, i've accidentally made dtilt dash-bufferable. might be fun? i'm gonna keep it 'til this is an issue
	- doesn't affect gameplay either but extended the dash stop animation. you can still act out the same frames as before.
	- you may have noticed that 'lethal' fair hit plays an additional sound effect. i added an additional hitstop/hitpause as well for when it happens.
	- you can no longer go into bottom blastzone while in the startup of uspecial.");
	
	initPatchWords_ext("Fixes", fa_left, c_yellow, 1, 0);
	initPatchWords("- typo on info. thanks Snolid Ice! ... idk why they removed the info button.
	- fixed the issue where if you only press down b in air for like 1 frame, it did a grounded dspecial
	- fixed the issue where you can 'field cancel' uspecial even when the light sentry is disappearing (i think)");
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords_ext("-- -- beneficial", fa_left, c_olive, 1, 0);
	initPatchWords("- initial dash speed faster by 0.25 (6.5 -> 6.75)
	- dash speed faster by 0.35 (6 -> 6.35)
	- max jumpstart horizontal speed faster by 0.5 (5 -> 5.5)
	- aerial max speed faster by 0.55 (4.2 -> 4.75)
	- max doublejump horizontal speed faster by 0.5 (3 -> 3.5)
	- waveland multiplier increased by uh 0.05 (1.3 -> 1.35)
	- waveland friction decreased by 0.005 (0.03 -> 0.025)
	- that's it for char parameters
	- nspecial charge faster by 4 frames (24 -> 20 frames)
	- utilt endlag decreased by 1 point (not counting whifflag)
	- nair landing lag decreased by 1 point (idk how landinglag works) (7 -> 6)
	- uair landing lag decreased by 1 point (landinglag seems to fluctuate and idk how to count it) (7 -> 6)
	- uspecial 'field cancel' is much much faster (how much can i make that better until i end up accidentally making normal ledge cancel less appealing? hnn)
	- uspecial land-on-ground max speed increased - in other words ledge cancel is a bit easier");
	initPatchWords_ext("-- -- counterplay", fa_left, c_olive, 1, 0);
	initPatchWords("- uh oh there are no counterplay changes sorry");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("apparently lumina is the weakest curated character so here are buffs
	uhhh
	good luck for devolition derby competitors!!! sorry if i completely wrecked lumina balance with this");
	
	
	initPatch("1.6-1.5", "2020-7-21 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- 2 new alts (Trigonometric, La La La)
	- 2 secret alts. wow! (margret & arry, hold special + up or down while match loads.. in fact, check 'image 8')
	- arena title for stage
	- undertale battle text for stage
	- pictograph");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- tweaked the alt color ranges, now the shade of robe's yellow isn't as bizzare.
	- abyss alt tweaked to be more in-style with base cast abyss alts.");
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords_ext("-- -- idk", fa_left, c_olive, 1, 0);
	initPatchWords("- dair bullet angle is higher (55 -> 60) (experimental)");
	initPatchWords_ext("-- -- beneficial", fa_left, c_olive, 1, 0);
	initPatchWords("- uspecial cancelling with fspecial field is 2 frames faster now (14 -> 12)");
	initPatchWords_ext("-- -- counterplay", fa_left, c_olive, 1, 0);
	initPatchWords("- ustrong final hit weak by uhhhhh 0.05? (1.1 -> 1.05) (experimental)
	- ustrong first hit hitboxes size and location adjusted (experimental)
	- ustrong startup 2 frames longer (10 -> 12) (experimental)");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("weak? strong? this was supposed to be a cosmetic update, i don't know.");
	
	
	initPatch("1.4", "2020-7-5 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- doing uspecial teleport into the fspecial lightsentry will now let you act out a LOT quicker, however destroying the sentry in the process.
	- experimental custom hit effect.
	- hyuponia's special css_draw script that i've been experimenting with
	- victory theme (Twinklesky by Fether)
	- victory background
	- i was too late to put a pre-emptive dracula support
	- trum&alto codec thing test
	- 1 (one) mii verse draw
	- kirby copy ability support.");
	
	initPatchWords_ext("Fixes", fa_left, c_yellow, 1, 0);
	initPatchWords("- glitch with hitbox not hitting when dspecial changing thing happens has been fixed.
	- fixed the issue where bair smear effect was included in the hurtbox.
	- fixed the issue where hitting the dair bullets still gives you whifflag.");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- tweaked lightsentry sprite.
	- early access alt has a colored outline now. while it's not how the base cast does it, it's fancier this way
	- various hit sounds have been tweaked
	- various hit effects have been tweaked
	- dspecial's 'turns into aerial version off the ledge' behavior has been moved to 'hold special + down'
	- which, in turn, means that if you don't hold these buttons, you will now go off ledge normally as you'd expect from ganondorf
	- increased the number of possible angles for uspecial teleport. sorry keyboard players! (8 -> 32)
	- removed one of the abyss runes because it was literally just 'unlock all angles'
	- doing uspecial teleport into the ground retains more momentum.");
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords_ext("-- -- idk", fa_left, c_olive, 1, 0);
	initPatchWords("- hitpause for dspecial, fstrong, ustrong and dstrong increased.
	- charged nspecial speed increased (4.8 -> 5.5)");
	initPatchWords_ext("-- -- beneficial", fa_left, c_olive, 1, 0);
	initPatchWords("- charged nspecial lifetime increased (41 -> 61)
	- trail removed from bair hurtbox, idk why that slipped past
	- fstrong angle lowered (49 -> 45)
	- fstrong knockback higher (7.5 + 0.97 -> 8 + 1)");
	initPatchWords_ext("-- -- counterplay", fa_left, c_olive, 1, 0);
	initPatchWords("- grounded dspecial endlag increased (14 -> 18)
	- ustrong active frames shorter by 4 frames, endlag longer by 1 frame");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("sorry for bein all-so-late. i had to finish poke floats and update all the other things
	thank you to sir sparx for providing me with balance suggestions!
	thanks for still reading the changelog. i very much appreciate you
	open for inputs!");
	
	initPatchImage(player_id.luminatrail, 0, fa_center, 1, c_white, 0)
	
	
	initPatch("1.3", "2020-6-7 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- you can now influence the direction & distance you summon the fspecial field. hold up, down, or special");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- alt colors adjusted so that the first three are hopefully more appealing now. if you prefer the old ones, you can @ me
	- switched around the color so that the 'dust' color doesn't use the color of the skin for some reason (now uses the 'blue' color from the robe)
	- bair hit in fspecial area will shoot bullets backwards
	- as a side-effect of preventing fspecial field angled down from not doing anything, fspecial field now disappears when it hits a wall (experimental)");
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords_ext("-- -- idk", fa_left, c_olive, 1, 0);
	initPatchWords("- uncharged nspecial multihit knockback adjusted (2 -> 4)");
	initPatchWords_ext("-- -- beneficial", fa_left, c_olive, 1, 0);
	initPatchWords("- dash attack early hit angle adjusted (361 -> 60)
	- fstrong angle adjusted a bit lower (55 -> 49)
	- bair endlag reduced a bit (19 -> 15) (hopefully able to recover from below ledge)");
	initPatchWords_ext("-- -- counterplay", fa_left, c_olive, 1, 0);
	initPatchWords("- aerial dspecial sweetspot angle adjusted (292 -> 272) (tech better)
	- aerial dspecial sweetspot knockback adjusted
	- implemented got_parry on charged nspecial bullet so that it can properly hit lumina afterwards (proper punish with parry)
	- put extended parry stun on fspecial field shatter bullet (proper punish with parry)");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("open for inputs!
	this feels a bit overtuned atm idk");
	
	
	initPatch("1.2", "2020-5-31 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- few abyss runes (not all)
	- feri costume support
	- tco art
	- added bunch more sounds");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- fspecial area can now be hit by charged nspecial bullet to shatter it. (experimental)");
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords("- added four extra bullet for fspecial field hit (experimental)
	- adjusted four other bullets' movement
	- bullets' lifetime adjusted (75 -> 95)
	- bullets' angle adjusted (55 -> 60) (experimental)
	- dstrong buffed to be a bit stronger, closer to other rivals' dstrongs (experimental)
	- charged nspecial bullet hitpause is a little bit higher.
	- fspecial area moves a little slower now.
	- fspecial area is a bit wider (not visibly)
	- nair initial hit has a little lower knockback growth (0.35 -> 0.29) and a bit higher angle (50 -> 60)
	- utilt endlag reduced by 2 frames (11 -> 9) (not counting whifflag)
	- dtilt endlag reduced by 1 frame (9 -> 8) (not counting whifflag)
	- ftilt endlag reduced by 4 frames (13 -> 9) (not counting whifflag)");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("open for inputs!");
	
	
	initPatch("1.1", "2020-5-27 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- alts recolor the light now
	- alts recolor the ori hit effect now");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- nspecial 'final smack' should hit proper now, uninterrupted by later hits.
	- fspecial light sentry area can now be activated when you attack an opponent in the light area, while you are outside
	(before, you could only activate it with you in the area, or hitbox in the area)
	- jab2 startup reduced by 1 frame (4 -> 3). this will make jab2 unparriable, although not sure if that's what we want or not. experimental
	- fspecial light bullets lifetime is 5 frames longer (70 -> 75)");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("hello to the curious you who is reading the changelog.
	did you know hitting FStrong in the Light Area will stun the opponent a bit?
	thank you for playing this character!

	sound update soon enough, probably.");
	
	
	initPatch("1.0", "2019-5-26 (YMD)");
	initPatchWords("IT'S OUT?????");
	
	
	initPatch("0.0", "2020-?-? (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords_ext("-- -- idk", fa_left, c_olive, 1, 0);
	initPatchWords("- this entry is a placeholder for copypasting.");
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Cheat Codes			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with self{
	
	i = 0;
	
	/*
	 * Cheat codes enable bonus features or overpowered modes. This is a great
	 * place to put utilities that help when practicing the character, such as
	 * an option to instantly fill a resource meter or skip a cooldown.
	 * 
	 * initCheat(display name, backstage name, options, option names, description)
	 * 
	 * Use phone_cheats[] to reference these cheats in code, putting the
	 * backstage name (without quotes) as the array index. The backstage name
	 * becomes the name of a variable storing the cheat's index. E.g.
	 * 
	 * if (phone_cheats[cheat_funny_snail] == 1) {
	 *	   print_debug("woag");
	 * }
	 * 
	 * This is pretty similar to abyss runes - but instead of checking for if
	 * has_rune("X") is true or false, you check for the entry in the
	 * phone_cheats array.
	 * 
	 * Each cheat defaults to the first option in its option list (e.g.
	 * cheat_funny_snail defaults to 0). This happens even when the MunoPhone
	 * itself is not available.
	 * 
	 * Cheat descriptions should be short and sweet, as they can't be scrolled.
	 */
	
	// NOTE: If you remove these cheat codes, you will need to remove where
	// they're referenced elsewhere in code. The comment above each code tells
	// you which files reference it.
	
	// post_draw.gml
	initCheat("Eternal Cloud", "cheat_cloud", [0, 1], ["Off", "On"], "once on, raincloud temporarily disables despawn timer. setup practice of sorts.");
	initCheat("Cloud Charge", "cheat_charge", [0, 1, 2], ["0", "1", "Max"], "newly spawned raincloud will be charged this much.");
	initCheat("SHIfT-JIS", "cheat_jis", [0, 1], ["-> to toggle", "On"], "channel more of my JIS power. dashstart speed drastically increases.");
	initCheat("Mado Knife", "cheat_mado", [0, 1, 2], ["Automatic", "Off", "On"], "enables mado knife without mado alt.");
	initCheat("010138CD", "cheat_test", [0, 1], ["Off", "On"], "broken hack. not compatible within this world.
	and besides im sure this version of the cheat doesnt even let you go out of bounds");
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Frame Data Guide		                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{

	// Move ordering. Reorder this as you see fit for your character
	
	// note: do NOT remove indexes from this list. empty indexes will be ignored by the frame data guide.
	// to hide an in-use attack index from the guide, use AG_MUNO_ATTACK_EXCLUDE instead!
	
	move_ordering = [
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
	
	
	
	// Include a "Stats" page in the frame data guide?
	include_stats = true;
	
	// If so, put any specific notes here:
	stats_notes = "tldr slow"; // set to   "-"   if you don't need to put any notes
	
	
	
	// Include a custom page in the frame data guide? (Useful for documenting miscellaneous numbers, e.g. stats of a passive mechanic)
	include_custom = false;
	
	// If so, what's its name?
	custom_name = "Monado Art Data"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDHeader("Monado Jump");
	initCFDBody("Cooldown: 100000 seconds
	Duration: 5
	Effects: you jump higher???? by like 2x");
	
	initCFDHeader("Monando Shield");
	initCFDBody("Cooldown: 4
	Duration: 2
	Effects: Wait why is this listed second");
	initCFDBody("woag this is a enw apragraph");
	
	initCFDHeader("Some crazy third thing");
	initCFDBody("Damage: 7
	sw: i
	m");
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ About					                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	/*
	 * Info found in the "About" app.
	 * 
	 * initAbout(entry name, entry text)
	 * 
	 * Useful for credits or etc. The page can also scroll, so they can be long
	 * if you want
	 */
	
	initAbout("About Manyphone", "Error reading text data (Error Code 1) Entry corrupted
	Abort, Retry, Fail?");
	
	initAbout("About Lumina", "Lumina Methuselah Flowlight, the casual light sorceress - My actual OC, made into a playable Rivals character.
	A character I was making for a character creation race event 'Vs. Sai', and magnificently lost the same day. The quality, however, is yet to be judged... (even to this day, they kinda just scrapped the 'contest' part of it)
	Her moveset is also pretty straight-forward, but maybe a bit more unique than Acid Rainbows' in function.
	
	Character by Hyuponia
	Big coding help by Trail Mix
	Victory music 'Twinklesky' by Fether
	Special Thanks to a cat
	
	Thank you for checking out this character!");
	
}







/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

// Trummel & Alto codec

if pho_has_trum_codec{
	
	/*
	 * initCodec(gimmick)
	 * initCodecPage(speaker, expression, gimmick, text)
	 * 
	 * The variable trummel_id is initially set to noone (-4). When Trummel
	 * opens this char's codec, trummel_id is set to Trummel's object ID.
	 */
	
	/*
	 * Codec speaker handles:
	 * SPK_TRUM: Trum
	 * SPK_ALTO: Alto
	 * SPK_OTTO: Otto
	 * SPK_CODA: Coda
	 * SPK_ECHO: Tempo
	 * SPK_MINE: Steve (i dont normally use this one... like, what is he supposed to say?? the funny oof noise? you can if you want)
	 * SPK_SEGA: Sonic (see above)
	 */
	
	/* 
	 * Page gimmick handles:
	 * GIM_CHOMP			make the enemy ftilt
	 * GIM_CLONE 			display 2 speakers
	 * GIM_LAUGH_TRACK		play the funny haha sound
	 * GIM_SKIP   			advance the page immediately when the text finishes
	 * GIM_DIE    			die
	 * GIM_SHUT_UP			no chatter sfx
	 * GIM_HOWL				make the enemy dspecial
	 * GIM_SHADER			use your char's shaders (palette swaps) for the speaker portrait
	 * GIM_TEXTBOX			use a sprite stored in your char under the var spr_custom_trummel_textbox instead of the default textbox
	 * GIM_COLOR			use a color stored in your char under the var spr_custom_trummel_color instead of white (for the codec text)
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	
	SPK_SAND = initSpeaker(1, "Sandbert", sprite_get("_pho_example_speaker"));
	SPK_TWIN = initSpeaker(2, "Sandbert's evil twin", sprite_get("_pho_example_speaker"));
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_SEGA, 0, 0, "im sonic, sonic the hedgehog");
	initCodecPage(SPK_TRUM, 0, 0, "wow");
	initCodecPage(SPK_ALTO, 0, 0, "Please read the codec on the old version of Trummel & Alto for now.");
	initCodecPage(SPK_ALTO, 0, 0, "...Yes, 'for now'. They will add a proper version later.");
	initCodecPage(SPK_TRUM, 0, 0, "til then");
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve got canceled on Twitter";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	sprite_change_offset("feri_costume", 84, 114);
	feri_costume = sprite_get("feri_costume");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	Hikaru_Title = "woaf";
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	personaQuips[10] = "woaf";
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
	tcoart = sprite_get("tco_sketch");
	
}



// Abyss Hime death sprite

if pho_has_ahime_dead{
	
	sprite_change_offset("ahime_dead", 0, 0);
	abyssHime_deathspr = sprite_get("ahime_dead");
	
}



// Fire's taunt

if pho_has_fire_taunt{
	
	sprite_change_offset("fire_taunt", 0, 0);
	fire_taunt = sprite_get("fire_taunt");
	fire_taunt_duration = 420;
	fire_taunt_frames = 69;
	fire_taunt_sound = sound_get("woagf");
	fire_taunt_sound_frame = 3;
	
}



// Wall-E's radio

if pho_has_wall_e_ost{
	
	walle_taunt_sound = sound_get("wall_e_sound");
	walle_taunt_type = 1;
	
}



// Amber's plushie and hug

if pho_has_amber_love{
	
	plushForAmber = sprite_get("amber_plushie");
	
	// Amber interaction variables
	amber_herObj = noone; // The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
	amber_thisHugSprite = sprite_get("sandbert_hug");
	amber_herHugSprite = sprite_get("amber_hug");
	amber_startHug = false; // This variable is set true from Amber's scripts
	amber_thisSpriteInFront = true; // When true, this character's sprite is rendered over Amber's sprite
	amber_autoTurnToHer = true; // This character will automatically face towards Amber upon hug activatation when true
	
	amber_hugStartPos[0] = 42; // The x target offset point (from Amber's pos) where the player should hug Amber at. 
	amber_hugStartPos[1] = 0; // The y target offset point. Recommended to keep this at 0 for grounded interaction
	
	amber_hugExitPos[0] = 42; // The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
	amber_hugExitPos[1] = 0; // The y target offset point.
	
	// The x target offset positions will inherit the character's spr_dir when this is true.
	// Set this to true for character interactions that face toward each other such as hugging
	// Set this to false for centered interaction animations
	amber_useSprDirOffset = true; 
	
	amber_hugExitTimer = 30; // How many frames should pass before either player can exit the hug window loop
	amber_hugExitWindow = 3; // The window to jump to when either player presses a button to exit hug loop
	
	sprite_change_offset("sandbert_hug", 32, 62);
	sprite_change_offset("amber_hug", 32, 62);
	
}



// Moonchild music

if pho_has_moon_music{
	
	childsupport = true; // this is so sad
	
}



// Agent N codec

if pho_has_agentn_cdc{
	
	ncode1 = "line1";
	ncode2 = "line2";
	ncode3 = "line3";
	
}



// Dracula dialogue

if pho_has_drac_codec{
	
	dracula_portrait = sprite_get("drac_portrait");
	dracula_portrait2 = asset_get("empty_sprite");
	dracula_portrait3 = asset_get("empty_sprite");
	var page = 0;
	
	// Page 0
	dracula_speaker[page] = 0;
	dracula_text[page] = "holy frick";
	page++;
	
	// Page 1
	dracula_speaker[page] = 0;
	dracula_text[page] = "im dracula";
	page++;
	
	// repeat...
	
}



// Miiverse post

if pho_has_miivs_post{
	
	sprite_change_offset("miiverse_post", 60, 30);
	miiverse_post = sprite_get("miiverse_post");
	
}



// Mt Dedede title

if pho_has_dede_title{
	
	arena_title = "woag";
	arena_short_name = "woaf";
	
}



// Soulbound Conflict

if pho_has_soul_title{
	
	battle_text = "* woag";
	
}



// Last Resort painting

if pho_has_resort_pic{
	
	sprite_change_offset("last_resort", 27, 39);
	resort_portrait = sprite_get("last_resort");
	
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	
	pkmn_stadium_front_img = sprite_get("pkmn_front");
	pkmn_stadium_back_img = sprite_get("pkmn_back");
	pkmn_stadium_name_override = "sdkhjfskhgfkslhfglkha";
	
}



// Daroach dialogue

if pho_has_daro_codec{
	
	daroach_portrait = sprite_get("daro_portrait");
	daroach_portrait2 = asset_get("empty_sprite");
	daroach_portrait3 = asset_get("empty_sprite");
	var page = 0;
	
	// Page 0
	daroach_speaker[page] = 0;
	daroach_text[page] = "holy frick";
	page++;
	
	// Page 1
	daroach_speaker[page] = 0;
	daroach_text[page] = "im dracula";
	page++;
	
	// repeat...
	
}





/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ The End				                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

// THIS MARKS THE END OF THE SECTION YOU HAVE TO EDIT!
// BELOW THIS IS JUST BEHIND-THE-SCENES CODE





#define initAbout(obj_name, obj_text)

var para = {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

var tip = {
	name: obj_name,
	objs: [para]
};

array_push(abouts, tip);



#define initCFDHeader(text)

custom_fd_content[i] = {
	type: 0, // header
	content: text
};

i++;



#define initCFDBody(text)

custom_fd_content[i] = {
	type: 1, // body
	content: text
};

i++;



#define initCodec(cd_gimmick)

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

trummel_speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite	// Sprite of face
};

return idx * -1;



#define initTip(tip_name)

tips[i] = {
	name: tip_name,
	objs: [0]
};

i++;

j = 0;



#define initTipWords(obj_text)

i--;

tips[i].objs[j] = initWords(obj_text);

tipObjEnd();



#define initTipWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

i--;

tips[i].objs[j] = initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick);

tipObjEnd();



#define initTipImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

i--;

tips[i].objs[j] = initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick);

tipObjEnd();



#define initTipImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

i--;

tips[i].objs[j] = initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d);

tipObjEnd();



#define initPatch(pat_ver, pat_date)

patches[i] = {
	name: "v" + pat_ver,
	date: pat_date,
	objs: [0]
};

i++;

j = 0;



#define initPatchWords(obj_text)

i--;

patches[i].objs[j] = initWords(obj_text);

tipObjEnd();



#define initPatchWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

i--;

patches[i].objs[j] = initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick);

tipObjEnd();



#define initPatchImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

i--;

patches[i].objs[j] = initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick);

tipObjEnd();



#define initPatchImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

i--;

patches[i].objs[j] = initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d);

tipObjEnd();



#define initWords(obj_text)

return {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

tipObjEnd();



#define initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

return {
	type: 0,
	text: obj_text,
	align: obj_align,
	color: obj_color,
	indent: obj_indent,
	gimmick: obj_gimmick,
	side_by_side_exempt: false
};

tipObjEnd();



#define initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

return {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	color: obj_color,
	gimmick: obj_gimmick,
	margin_l: "unset",
	margin_r: "unset",
	margin_u: "unset",
	margin_d: "unset",
	needs_auto_margins: true,
	side_by_side_exempt: false
};

tipObjEnd();



#define initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

return {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	color: obj_color,
	gimmick: obj_gimmick,
	margin_l: obj_l,
	margin_r: obj_r,
	margin_u: obj_u,
	margin_d: obj_d,
	needs_auto_margins: false,
	side_by_side_exempt: false
};

tipObjEnd();



#define tipObjEnd

i++;

j++;



#define initCheat(ch_name, ch_cmd, ch_opt, ch_opt_name, ch_desc)

phone.cheats[i] = {
	name: ch_name,
	command: ch_cmd,
	options: ch_opt,
	option_names: ch_opt_name,
	description: ch_desc,
	on: 0
};

variable_instance_set(self, ch_cmd, i);
phone_cheats[i] = ch_opt[0];

i++;



#define room_add(_room_id,room_data) // Adds a new room to the scene. for BTT
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}


#define initApp(idx, app_sprite, app_name, app_color, app_arr)

apps[idx] = {
	name: app_name,			// Name displayed on HOME Menu, etc
	sprite: app_sprite,		// App icon displayed on HOME Menu
	color: app_color,		// Background color while in app
	array: app_arr,			// Array of items to be shown in the list
	dark_color: make_color_rgb(
		color_get_red(app_color) * 0.25,
		color_get_green(app_color) * 0.25,
		color_get_blue(app_color) * 0.25
		)
};