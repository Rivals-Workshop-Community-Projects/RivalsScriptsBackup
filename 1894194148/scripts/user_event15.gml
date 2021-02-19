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

//also, for my changes, there are in-lore explanations. read the diary.

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
		"Many MCPatcher features use properties files to control how textures within your texture pack are used!",
		"Many MCPatcher features use properties files to control how textures within your texture pack are used!",
		"Many MCPatcher features use properties files to control how textures within your texture pack are used!"
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
muno_char_name = "A.R.";								// Here I replace the name, because "Acid Rainbows" is kinda long

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



// Sprites (you could also include things like these in init.gml if you like)

spr_nspecial_proj = sprite_get("nspecial_proj");



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
	
	initTip("phone 3");
	initTipWords("phone 3");
	initTipWords("well. i guess the signal is available everywhere now. huh. such otherworldly technology...
	the phone firmware keeps updating pretty frequently, it seems actively developed. which is quite a refreshing experience after dealing with the previous 3-years-old firmware with no updates.");
	initTipWords("however i've decided i will still only be using this phone in the 'training town'. in battle i don't want the distraction of having a phone around.");
	initTipWords("arelle");
	
	initTip("phone 2");
	initTipWords("phone 2");
	initTipWords("almost a year without there being no phone signal (of course,) i was contemplating throwing this phone out altogether.
	but once i entered this town called uh 'training town', i received a notification. it offered my phone a new firmware by the name of munophone?");
	initTipWords("details page emphasized that it was compatible with this specific world. so i guess i installed it.
	miraculously or maybe through complex compatibility system or something, it recognized and kept all of my phone apps and its data.");
	initTipWords("unfortunately it seems the signal is only available within this town. it looks more like a city, seeing as how far and vast these buildings are.
	this town has an app-controlled geometry platform of sorts and i can control the layout of the ground here. it is all intriguing stuff.");
	initTipWords("i have encountered a few other travellers here as well. i'd assume they too have a phone and all kept here by such sudden notification. maybe they're friendly? would be nice to get a friend.");
	initTipWords("i'll stay here a bit, check what this firmware is capable of, and then move on i guess. maybe i'll return when i need some training.");
	initTipWords("arelle");
	
	initTip("manyphone");
	initTipWords("manyphone");
	initTipWords("idk why i have been keeping this phone. it's kinda useless here with no signal. i mean i guess it's not all useless. i use it to keep diaries. photos. a bit to remember.
	with everything seeming a bit hostile here in this world it does feel isolating sometimes. although i don't miss where i've escaped from, i guess it's nice to have some connection with, something.");
	initTipWords("i got this phone in my home world. actually, i don't really know if i was brought to that world from somewhere else, or i was born there. but i still call it my home world.
	it has a mediocre interface with only a select few apps available. only ones i use are the camera and this diary app.
	dubbed manyphone, it's a pieced together mess of holders, interactings and dynamics.");
	initTipWords("it's surprising how roughly made it still is, i expected it to become better like my XaaaCi dynamic did.");
	initTipWords("enough about this phone. i don't know where i'm heading right now. i'm walking along the shore. it's kinda dark, heavy clouds covering the sky. maybe i should move off from the shore, would be dangerous if it rains.
	i see a flickering light in the distance, seeing where it is it might be a lighthouse. maybe a port town.
	i could use some food right about now, hopefully it's a town of some kind.");
	initTipWords("arelle");
	
	initTip("power of acid");
	initTipWords("power of acid");
	initTipWords("dunno how long i've walked today. for now i've set up camp near a lake. it's calm and nice.
	seeing a pool of water made me want to try some fishing a bit, but i've refrained after a bit of thought. seeing as ranno is a frog man, i do wonder if all fishes are sentient? are there an ethically-edible non-sentient fishes? agh, probably the most confusing part of anthro universes.
	i'm so grateful ranno gave me a whole bunch of bread to eat. without them i'd probably be lost in these thoughts forever while i starve.
	huh, that makes me wonder. are there any other humans out here...? hm. even if not, still most likely there are monkeys in this world.");
	initTipWords("after the last entry i have been contemplating my elemental power. what it is, really.
	so i now know i can enhance my general punches and kicks with acid force, i didn't quite know i could do that before, as combat weren't too big of a thing back in previous world. they never made 'battle body' type a thing...
	it's pretty nifty. i'm not too well-trained in fighting so a bit of enhancement goes a long way for me. (the training from ranno helped too)");
	initTipWords("but either case, primarily, my acid power is separated into two parts. power of the acid substance, and the power of hallucinogenic 'acid'. most of my abstract powers comes from the latter, like the lightning and my acid-JIS form.
	it's like making hallucination real. i take the fact that others *see* me floating, and use that to actually float. it - it's more like making the world hallucinate, and it doesn't rely on making sentient beings hallucinate - ah, this probably doesn't make too much sense, does it
	and my JIS form is an extension of it where i just become an illusion myself... i-it might not make too much sense, but the important thing is that it works.");
	initTipWords("so in context of the 'four primary elements' thing, i wonder where *that* fits in?");
	initTipWords("...");
	initTipWords("maybe it's still water.");
	initTipWords("arelle");
	
	initTip("the leaving");
	initTipWords("the leaving");
	initTipWords("oops, ranno kicked me out of his shrinetemplething. i mean he didn't literally kick me out, he was all polite with it.
	so as we sparred and fought together we eventually realized that our elements weren't quite so similar. a bit of an opposite, in fact.");
	initTipWords("his element of poison, as seemingly similar to my power from the first glance, his is more about internal weakening, slowly destroying and immobilizing the opponent - while my power is more of a direct destruction, acid actively destroying, melting all things it touches.
	i did try to convince him that my 'other' definition of acid could still be used non-lethally, but my destructive acidic power was my primary fighting style so i couldn't argue much. we deemed our element not quite compatible, although we still respect both each others' abilities.");
	initTipWords("i wished him the best and decided to wander off in this world looking for what new things i can see, maybe even find somewhere else to call home. i'll see.");
	initTipWords("the leads i have are four primary locations he told me - the capital city of fire, merchant town of water, tree-top village of earth beyond the rock wall, and the city of steam and air. i wonder which element i'll find most comfortable with?
	i feel like my element of 'acid' doesn't quite fit into any of the four primary elements he told me about. some say acid is flammable, liquid-like, earthly material. and i paint clouds? those are like vaguely all 4 elements! well. i guess if ranno's poison is 'water', it might not be that much of a stretch to call mine water element as well.")
	initTipWords("so my first destination is water then. i'll get to walking now.");
	initTipWords("arelle");
	
	initTip("aetherworld");
	initTipWords("aetherworld");
	initTipWords("sorry to break your immersion but i've been too lazy to write this entry and i decided to publish the update without it.
	in this entry ranno tells me about what this world is about.");
	initTipWords("arelle");
	
	initTip("dash attack cancel");
	initTipWords("dash attack cancel");
	initTipImage(player_id.spr_dattack, 3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_dattack, 9, fa_right, 1, c_white, 0);
	initTipWords("ranno taught me about the applications of fighting, deception may be a neat element in battle.
	i have learnt to cancel my dash attack. simply press parry at startup and i will interrupt my swing.");
	
	initTip("ranno");
	initTipWords("ranno");
	initTipWords("i’ve successfully escaped to a new world it seems. it looked like a literal light at the end of the tunnel. a tunnel that i fell through, and into a calm river. the water was clean there. really clean, i could see through it.");
	initTipWords("after getting out the first thing i encounter was a tall walking frog dressed like a monk. he seemed capable in combat and i was too tired to fight, so in panic i had to express my unwillingness to fight, which he, somehow understood?
	turns out we can communicate to some degree, our languages sharing most elements. he explained something like he doesn’t really fight things in the first place. a pacifist of sorts.");
	initTipWords("he led me to a shrine? temple? near a wonderful waterfall, the environment here is beautiful and ...well made? i guess that doesn’t really apply here since it’s not the world i came from anymore. it’s all native, not created. i’m getting lost in thought, what was it");
	initTipWords("he introduced himself as Ranno, as i introduced myself back. he says it’s not the first time someone unfamiliar just appeared in the back of this shrinetemplething. guess it’s not his first time handling people from other worlds, fortunately. we seemed to share a similar power of sorts, him attuned to the power of poison, me a power of acid, similar enough right?");
	initTipWords("we talked for a while and eventually i explained that i’m utterly lost. stranded in this new unfamiliar world (although willingly) with no lead or goal, food home or anything. but super thankfully he let me stay at his place! he says he appreciated my friendliness and felt some association with my element as well. or something of the sort.
	for now it’s night and i’ll sleep in a bit, i’m excited for the new life in this new world - i hope to hear more about this world from ranno soon!");
	initTipWords("arelle");
	
	initTip("EXPLORER");
	initTipWords("EXPLORER");
	initTipWords("Error reading text data (Error Code 1) Entry corrupted
	Abort, Retry, Fail?");
	/*
	initTip("test");
	initTipWords("test");
	initTipWords("test");
	initTipImage(player_id.spr_uspecial, 3, fa_left, 1, c_white, 0);
	initTipImage(player_id.spr_uspecial, 9, fa_right, 1, c_white, 0);
	
	initTip("woag");
	initTipWords("Does this tip exist just to showcase the ability to scroll the screen up and down?");
	initTipWords("maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe");
	initTipWords_ext("maybe", fa_center, c_white, 0, 2);
	initTipImage(player_id.spr_taunt, 3, fa_center, 1, c_white, 0);
	initTipWords_ext("ok yea", fa_right, c_white, 0, 0);
	
	
	initTip("Did You Know?");
	initTipWords("Everything in these tips is only made with the easy-to-use MunoPhone tip templates and Sandbert's default sprites!");
	initTipWords("No hardcoding or custom-cropped images, just easy-to-use paragraph and image formatting (including all of the fancy gimmicks like shaking and scrolling).");
	initTipWords("Check out user_event15.gml");
	initTipWords("Code for the above:");
	initTipWords_ext("initTip(''Did You Know?'');
	
	initTipWords(''Everything in these tips is only made with the easy-to-use MunoPhone tip templates and Sandbert's default sprites!'');
	
	initTipWords(''No hardcoding or custom-cropped images, just easy-to-use paragraph and image formatting (including all of the fancy gimmicks like shaking and scrolling).'');
	
	initTipWords(''Check out user_event15.gml'');", fa_left, c_gray, 1, 0);
	*/
	
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
	
	initPatch("3.6", "2021-1-11 (YMD)");
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords_ext("-- -- counterplay", fa_left, c_olive, 1, 0);
	initPatchWords("- max speed you can have when jumping from ground decreased by 0.5 (7.5 -> 7)
	- max speed you can have when falling off from ledge decreased by 0.2 (7.2 -> 7)
	- hitstun gravity reduced by 0.05 (0.5 -> 0.45)
	- opponents can now destroy cloud by hitting the cloud with melee hitbox! however, if the cloud is 'charged' it will resist it and reduce the charge by 1. i think it's fair since AR can replace the cloud really quick anyway");
	
	
	initPatch("3.5", "2021-1-2 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- victory theme. Twilight v2 by Zuhzau. this is to accomedate the release of her home stage, Starry Hilltop.
	- corresponding victory background, also of Starry Hilltop.
	- new 'TWILIGHT' alt palette.
	- removed the 'vivian' alt and added a new alt 'repentance'
	- 1514+ words munophone lore.
	- steve message");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- changed the 'SHIfT-JIS' alt again, to be brighter
	- 'passion' 'verdant' 'usher' 'false mado' 'lime' 'faux-flowlight' 'autumn' 'feribows' alt colors have been adjusted.
	- changed around the hit sound effects and visual effects. hopefully for more impact!
	- removed the 'rare' dracula convos.
	- cleaned up unused code
	- switched around the bair windows and added an IASA just for animation purposes. hopefully it doesn't affect anything, but either case it should look better now
	- fspecial afterimage is finally recolored by alt colors now
	- fspecial cooldown recover visual effect is recolored now as well
	- kick attacks have a little sprite update............");
	
	initPatchWords_ext("Fixes", fa_left, c_yellow, 1, 0);
	initPatchWords("- fixed rune A not resetting upon deselect
	- fixed fair's non-sweetspot hit hitpause, was intended for late hit");
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords_ext("-- -- idk", fa_left, c_olive, 1, 0);
	initPatchWords("- bair main hit's hitpause scaling increased by 0.1 (0.5 -> 0.6)
	- uair weird sweetspot's base hitpause increased by 2 (10 -> 12)");
	initPatchWords_ext("-- -- beneficial", fa_left, c_olive, 1, 0);
	initPatchWords("- fries taunt (down + taunt) starts significantly faster. you can finally eat fries safely after you took a stock. (hopefully)");
	initPatchWords_ext("-- -- counterplay", fa_left, c_olive, 1, 0);
	initPatchWords("- fast-fall speed reduced by 3 (16 -> 13)
	- run speed decreased by 0.5 (8.5 -> 8)
	- max speed you can have when jumping from ground decreased by 0.5 (8 -> 7.5)");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("open for inputs!");
	
	
	initPatch("3.4", "2020-7-22 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- ported over abyss rune buddy code to official abyss rune, with all thanks to muno's conversion code. thank you muno!");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- changed rune A according to the recent changes.
	- changed rune D due to a crashing glitch. on the other hand this is probably a cooler rune now
	- tweaked the new SHIfT-JIS alt to look more lighter. my graphics card settings seem to be messed up and it looks lighter than it is on the phone. hopefully it's more legible now");
	
	initPatchWords_ext("Fixes", fa_left, c_yellow, 1, 0);
	initPatchWords("- uair hitbox 4's angle flipper wasn't working correctly. fixed that now
	- fixed the issue where SHIfT-JIS alt's cloud has a bigger collision than otherwise.");
	
	
	initPatch("3.3", "2020-6-26 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- additional detail for SHIfT-JIS alt and Early Access alt (now called tower of heaven)");
	initPatchWords_ext("- those are some of the most unnecessary details but ehhhh it's cool stuff imo", fa_left, c_gray, 1, 0);
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords_ext("-- -- idk", fa_left, c_olive, 1, 0);
	initPatchWords("- some of jab 1 and 2 hitboxes have been combined and given a more 'rivals' look, following sir trail mix's suggestion. thank you!");
	initPatchWords_ext("-- -- beneficial", fa_left, c_olive, 1, 0);
	initPatchWords("- jab 1 and 2 whifflag removed, and jab 1 endlag is 2 frames shorter. non-final jab does not have a whifflag for rivals' base cast, as sir trail mix have found out awhile ago while helping me with lumina. thank you for reminding me of this issue!");
	initPatchWords_ext("-- -- counterplay", fa_left, c_olive, 1, 0);
	initPatchWords("- hitstun hurtbox changed to ex_guy_hurt_box for easier time hitting acid. it was using her idle hurtbox before and it was quite tiny for a hitstun hurtbox, and also wasn't quite matching the hurt anim frames");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("idk why im up at 3am for this
	open for inputs!");
	
	
	initPatch("3.2", "2020-6-23 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- hyuponia's special css_draw script that i've been experimenting with
	- 3 dracula convos. one is most common, two are rarer. one of them were mostly made by my friend PisfoolStuffs. shoutouts to them!
	- 1 (one) miiverse pic");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- tweaked a lot of the alts. notably...
	- red ('passion') now has a red hoody, looking a bit more closer to green ('verdant')
	- 'false mado' alt is now more resembles her non-sprite renditions, with darker hair etc
	- 'lime' deviates away from the weird tree color pair
	- 'lumina' alt is a bit more unique now
	- 'vivian' alt's color is a bit more contained
	- 'feribows' alt (previously codenamed 'plant') is overhauled to look a lot better in general as a normal alt
	- more tweaks were done to other alts to hopefully look more appealing");
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords("- dspecial-induced fully-charged lightning now goes through platforms.
	- jab1 tweaked, now has a bit of new startup frame (3 frames for now, it was 1 frame before) and flinches like base cast jab1s
	- jab1 endlag is also a bit longer");
	
	initPatchWords("- implemented all the changes sir Sparx21 have made! there's a TON of changes he made that would fill this entire changelog page, so please check the changelog in the steam page instead");
	
	initPatchWords_ext("Notes", fa_left, c_yellow, 1, 0);
	initPatchWords("since last patch, many things have happened, like Lumina. pretty crazy
	once again, ultra-special thanks to sir sparx21, who, like, did a TON of balance stuff
	open for inputs!");
	
	
	initPatch("3.1", "2020-3-16 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- feri alt. haven't you heard? i did the whole animation set for her
	- feri costume support. haven't you heard? i coded the whole support thing
	- otto bobblehead (you don't have to write anything, i just put it for fun)
	- taunt3... (2 is omega) down taunt is now the greatly anticipated FRIES TAUNT. let's just say this taunt resonates with hime");
	
	initPatchWords_ext("Fixes", fa_left, c_yellow, 1, 0);
	initPatchWords("- fixed an issue where AR spits out like a thousand error messages when other workshop characters' article 2 or 3 were present
	- fixed an issue where forward air's unique landing lag animation... isn't happening for some reason.
	- changed the name of the variable used and put onto other players by acid raincloud, from 'rain' to 'ar_rain'. this way, in the future, it would be less likely to mess with others' character if they use a variable named 'rain'! hopefully, at least. future-proof!");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- revised trummelalto codec
	- revised ???
	- removed version number from the icon
	- version number on css is now drawn by css_draw
	- subtle 'SP' text drawn with css_draw on alt palettes that has a special treatment (mado sword, jis effects, omega most-of-the-things)
	- 'JIS' color changed up a bit
	- 'EA' color is now properly one-tone
	- 'omega' color's sword is now unnecessarily one-toned too
	- other alts' sword colors are tweaked this way also");
	
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords("- i wanted to put some balance changes here, but i was not informed of some situation. nothing here for now");
	
	
	initPatch("3.0", "2020-1-28 (YMD)");
	initPatchWords_ext("Additions", fa_left, c_yellow, 1, 0);
	initPatchWords("- hikaru's custom title thing
	- visual effect for when side-special cooldown is over!");
	
	initPatchWords_ext("Changes", fa_left, c_yellow, 1, 0);
	initPatchWords("- jump start duration is now 5, supposedly consistent with other base characters, in where they try to use the same value
- made various odd tweaks for css portrait for not much reason");
	
	initPatchWords("if you're playing casually like me, these nerfs are insignificant enough to be unnoticeable. but not sure how it would be for others");
	initPatchWords_ext("Balances", fa_left, c_yellow, 1, 0);
	initPatchWords("- nerfed her dash speed (8.9 -> 8.5)
	- nerfed her dashstart speed (9 -> 8.9)
	- nerfed her weight (1.0 -> 1.11), further enforcing the 'glass cannon' vision. now her weight approaches that of Yoyo
	- bair sweetspot knockback growth nerfed by 0.02 (tiny)
	- bair landing lag increased by 1(?)
	- fstrong hitbox felt like it lasted too long so added a 'late' hitbox for fstrong (is this a nerf?)
	- fstrong's (now-early strong hit) angle has been lowered (45 -> 42) (but this's a buff!)
	- uair's sdi multiplier has been increased (2 -> 3)
	- fspecial's iasa (interruptable-as-soon-as) has been pushed later (4 -> 8)
	- fspecial's cooldown has been increased (70 frames -> 80 frames)
	- fair's 'sword is out' landing lag has been increased (8 -> 10)");
	initPatchWords("i however won't leave you all with such a nerf note. i will hopefully find a new tool to add in later on, for all of you loyal players. thank you all.");
	
	
	initPatch("0.99", "2019-10-20 (YMD)");
	initPatchWords("turns out i forgot to change the version value, eheh.
	in this version includes:
	-release!
	-un-updated ingame description that says 'this is not supposed to be online yet', too bad it's online now!
	-weird 0.99 version numbering");
	
	
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
	stats_notes = "tldr fast"; // set to   "-"   if you don't need to put any notes
	
	
	
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
	
	initAbout("About A.R.", "Acid Rainbows, the human emissary - My debut creation to the RoA Workshop Community.	
	Acid Rainbows is a pretty fast-paced character, with focus of... not much, I guess. No real plan in making of this character.
	Her attacks are, in turn, pretty simple and easy to use.
	Rack up some damage with Acid-Raincloud, and catch them off-guard with a lightning!
	
	RoA Character by Hyuponia
	Character itself/design by Kaggysmilk
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