//post-draw


if (state==PS_RESPAWN || (state==PS_ATTACK_GROUND && free && attack==AT_TAUNT)){
	draw_sprite_ext( sprite_get("plat_grnd"), 0, x, y, 1, 1, 0, -1, 1 ) 
}

if (state==PS_ATTACK_GROUND && attack==AT_NSPECIAL_2){
	if (window==3||window==4){
	var pull_to_x = 28 * spr_dir;
	var pull_to_y = -56+(10*((window==4)?1:0));
	//grabbed_player_obj.x = x + pull_to_x + (10 * spr_dir) + (sin( get_gameplay_time()*0.8 )*4)
	//grabbed_player_obj.y = y + pull_to_y - 10 + (sin( get_gameplay_time()*0.8 )*1)
	var tmp_x = x + pull_to_x + (10 * spr_dir) + (sin( get_gameplay_time()*0.7 )*10)
	var tmp_y = y + pull_to_y - 10 + (sin( get_gameplay_time()*0.8 )*5)
	draw_sprite_ext( sprite_get("nspecial_ice_blue"), get_gameplay_time()/4, tmp_x, tmp_y, 1, 1, 0, -1, 1 )
	}
}


//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
//       Playtest Changelog Template by hyuponia. change the code as much you'd like
//       please paste somewhere in "post_draw.gml"!
//       find it at: https://pastebin.com/uDVTDU6R
//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
if (object_index == asset_get("oTestPlayer")){//this checks if it's in a playtest screen.
	if (!variable_instance_exists(id,"pn__init")){//initialization part runs once
		var i = 0;
		
		//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
		//       if you're just trying to put this on your character, change these variables!
		//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
		
		//IF YOUR TEXT HAS "" (quotes), REPLACE IT OR IT WILL BREAK!!! i usually replace them with '' (apostrophe)
		//to make a new line, simply press enter. rivals' gml parser thing reads newline in string properly for some reason
		//you can make as many entry as you want by copypasting
		//  patch_note_title[i] = "";   and   patch_note_text[i++] = ""   like the example.
		//no need to change the array number! (or rather, "i++" in this case), as it's incrementing itself each new text.
		//the order you have in the code is how it'll be ordered in the list as well.
		//
		//i made it able to store multiple text but its probably recommended to only have a few in here
		//like just for recent few patch notes maybe? but it's up to you how you use it!
		//
		//put text here.
		
		
		patch_note_title[i] = "v3.4 - (2025/07/28)"
		patch_note_text[i++] = 
		"===v3.4===
		---additions---
		:: extra vfx for FSPECIAL, when your FSPECIAL is fully charged, and NSPECIAL iceball.
		:::: ... let me know if there are performance problems.

		---changes---
		:: HUD ... adjusted
		:: JAB ... now a 2 part jab, with tweaked animation. old jab is now jab1 and the v3.1 jab is now jab2.
		:::: ... that means you can tilt cancel, i guess
		:: NSPECIAL-GROUND ... iceball for ground version looks different now? very slightly.
		:: NSPECIAL-GROUND ... EXPERIMENTAL: specifically for NSPECIAL-GROUND, iceball's physics has been adjusted.
		:: FSPECIAL ... AG_OFF_LEDGE is now false. that means you don't slide off the edge of the ground into air.
		:: FSPECIAL ... the recoil now has ledge snap.
		:: FSPECIAL ... umbrella blast now has body hitbox, doesnt scale with charge nor velocity. it's just a weak hitbox
		:: DSPECIAL ... EXPERIMENTAL: the end has a little bit of ledge snap?
		:: DSPECIAL ... now has a priority 0 hitbox that covers the umbrella(doesnt hit players but destroys projectiles)
		:: DSPECIAL ... bouncing off of raincloud is now much higher (VSP -8 -> -13)

		---fixes---
		-- ANIMATIONS ... miscolored spots have been spotted in PARRY and FSTRONG. like. this whole time. fixed these now
		-- DSPECIAL ... fixed an issue where player/cloud bounce velocity behaves weird when you do it really early in the move
		-- NSPECIAL-AIR ... fixed hurtbox not being filled green when landing

		---balancing??---
		this is ordered with attacks instead of uh neutral-buffs-nerfs that i usually do
		i usually order attacks in: jab, dattack, tilts, aerials, strongs, specials, and directions n, f, b, u, d
		:: STATS ... WALLJUMP horizontal speed increased (5 -> 6)
		-- STATS ... WALLJUMP height decreased (11 -> 8)
		:::: ... the only reason i have walljumps like that for my chars are because i didnt really know that there was like standards for base cast walljumps and i just liked them to go vertical. thats like, the only reason
		:::: ... with the later change on dspecial height and her general recovery height i think its fine to reduce the walljump height
		:::: ... and im comfortable with horizontal speed increase with her new horizontal recovery option of dspecial
		-- JAB1 (old jab) ... startup is 1 frame shorter. (5 -> 4)
		-- JAB1 (old jab) ... now has less forward momentum. (HSP 2 -> 1)
		:: JAB2 (new jab) ... EXPERIMENTAL: hitbox angle is 40????
		:: JAB2 (new jab) ... knockback growth has been increased (KBG 0.2 -> 0.35)
		-- DATTACK ... more of the endlag are properly included in the whifflag, it's pretty dang slow on whiff now
		++ DATTACK ... endlag reduced by 5 frames, excluding whifflag (25 -> 20)
		++ DATTACK ... hurtbox sliced a little, hands are no longer hurtbox
		:: DATTACK ... EXPERIMENTAL: early hit angle now 80, late hit angle 70
		:: DATTACK ... base knockback decreased, knockback growth increased (BKB 9, 9 -> 8, 8) (KBG 0.4, 0.2 -> 0.5, 0.3)
		++ FTILT ... hurtbox sliced a little too, when arms are out forward it's not hurtbox
		-- FTILT ... startup increased by like 2 frames (5 -> 7)
		:::: ... with ftilt's things like pivot cancels and things maybe its fine to add like that
		++ DTILT ... time between 1st hitbox and 2nd hitbox is reduced by 3 frames. (7 -> 4)
		:::: ... DTILT's this inbetween time was always kinda weird so i guess its better
		:: NAIR1 ... hitbox timings match the animation frame change a bit more now, this makes early hit shorter by 4 frames (8 -> 4), and late hit longer by 5 frames. (17 -> 22)
		++ NAIR1 ... to compensate, early hit base knockback increased by 1. (BKB 5 -> 6)
		++ NAIR (both) ... landing lag lower by 2 points (7 -> 5), but no longer has autocancel.
		++ FAIR ... startup shorter by 1 frame (17 -> 16)
		++ FAIR ... umbrella's hurtbox was cut in half
		++ FAIR ... main hit now has hit lockout of 15
		++ FAIR ... EXPERIMENTAL: main hit angle is now 45 (50 -> 45)
		++ FAIR ... EXPERIMENTAL: main hit knockback scaling reduced a bit (1.0 -> 0.95)
		:::: ... maybe i shouldnt have done all these at the same time, lets see how this goes
		++ BAIR ... EXPERIMENTAL: hurtbox was cut for the shoes, i noticed thats a thing with like ssbu hurtboxes
		++ UAIR ... EXPERIMENTAL: main hit angle is now 50 (45 -> 50)
		:::: ... i do like upward angle uair. maybe too good? hard to say, we'll see
		:: FSTRONG, USTRONG, DSTRONG ... hit lockout of 15 has been added to all of these
		++ USTRONG ... knockback growth has been increased (KBG 1.0 -> 1.1)
		++ DSTRONG ... both knockback growth are now the same, and has been increased by 0.05 (KBG 0.75, 0.8 -> 0.85)
		++ NSPECIAL-GROUND ... startup reduced by 2, it's now the same with NSPECIAL-AIR (19 -> 17)
		++ FSPECIAL ... umbrella blast minimum startup has been shortened by 6 frames
		++ USPECIAL ... startup spike hitbox hitpause scaling increased (HPS 0.6 -> 0.8)
		++ DSPECIAL ... hitbox size increased
		++ DSPECIAL ... endlag, also being the window after cancelling, is shorter by 2 frames.
		:::: ... as i tried to buff dspecial more, i felt a disturbance in the air and shivered. even if anyone thinks this move is not good, i am not going to make this move any better. no...

		---notes---
		thank you spider boi and others, for balance feedbacks!
		thank you v_force for the ledge snap they added for slenderman fspecial

		i figured out how to make dspecial hit multiple times but im not putting it yet she isn't ready"
		
		
		patch_note_title[i] = "v3.2 - (2025/07/21)"
		patch_note_text[i++] = 
		"===v3.2===
		---balancing??---
		-- UTILT ... 2nd hitbox active frame shorter by 1 frame at the end, it matches the animation now
		---fixes---
		-- DASH ... just found out theres been a miscolored part that used the eye color in place of green like. this whole time. fixed that"
		
		
		patch_note_title[i] = "v3.1 - (2025/07/21)"
		patch_note_text[i++] = 
		"===v3.1===
		---additions---
		:: new hud element to indicate FSPECIAL spin charge state

		---fixes---
		:: fixed an issue where in an usher ditto match, the ice hitbox from the rainclouds frozen by usher, belongs to the usher who made the raincloud
		:: fixed the issue of fully charged FSPECIAL still shooting out the raincloud even when it's parried.
		:: fixed how FSPECIAL spin charge amount was not reset upon getting KO'd.
		:: fixed some results screen things. i added some ditto stuff too while im at it.
		:: added some extra data for munobird because everyone keeps complaining about it on all of my characters. can you guys please like stop speaking in numbers i speak in windows. like i'm seriously like begging you please. i don't know what exact frame the hitbox spawns. i don't know where to where the endlag duration is, not to mention the whifflag. hitbox spawns on window 2 and everything from there is endlag. seriously please stop i'm crying
		:: in specific, IASA windows are now excluded from the endlag.
		:: some extra notes that were actually there before is now present because i fixed the attack index id number. i had it wrong before.

		---balancing??---
		++ NSPECIAL-GROUNDED ... hitbox lifetime for this move is different from NSPECIAL-AIR, but it is now even longer a bit. (80 -> 100 frames)
		++ FSPECIAL ... spin charge scaling for the hitboxes are stronger for knockback growth. as of v3.1, damage max is 11, bkb max is 8.10, kbg max is 0.85.
		++ DSPECIAL ... EXPERIMENTAL: it can now be exited-out-of early if you land on ground && you are not holding SPECIAL.
		-- FSPECIAL ... recoil velocity no longer applies when you were parried.
		-- FSPECIAL ... 1st spin when starting charge no longer charges 

		---notes---
		early bugfixes and tweaks. looks like ive missed a bunch a stuff.
		not gonna make any more changes for the time being, let things sit a little bit for the early days
		open for inputs!"
		
		
		patch_note_title[i] = "v3.0 - (2025/07/20)"
		patch_note_text[i++] = 
		"===v3.0===
		:: ''version 2.0'' is overdone so it's version 3.0 now. Yeah that's the only reason.

		---ameliorations---
		:: every single animation has been touched up!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! every single one!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		:: new portrait!

		---additions---
		:: new jab animation! that means new hitbox size and new frame data
		:: new dattack animation! taller, but less distance.
		:: completely new dtilt!
		:: new nspecial-ground! a re-purposing of old dspecial throw animation, she throws the ice ball up high with the umbrella. it's slightly slower to start than nspecial-air.
		:: completely new dspecial! a forward leap riding the umbrella. it can be held and you bounce on grounds, and with the hitbox you can bounce on opponents too! only once though cause i couldnt figure it out
		:::: after a bit, you can go out of it by releasing special, pressing parry, or pressing jump. around the same time, you'll be able to fastfall too.
		:::: that means you don't have a raincloud throw anymore, but it has been moved to...
		:: new fspecial! a chargeable umbrella blast with a recoil that scales with how much you charged. it's interestingly versatile, maybe?? hopefully???
		:::: and as a bonus, when it's fully charged, it shoots out the raincloud, on its own, not attached to a player. you can interact with it the same way you've always done, but it doesn't follow the opponent anymore!!
		:::: you can also bounce on it with dspecial. only once though cause i couldnt figure it out
		:: new taunt!
		:: ALT COLORS ... Palette Set D is now available. re-includes some fan favorites like the Sorbet alt!

		---changes---
		:: ALT COLORS ... like 95% of the alt colors had their shading strength value tweaked.
		:: ALT COLORS ... alt color Overcast has been tweaked to be hopefully more interesting than just a straight up a mash of grey colors, similarly for alt color Lens too
		:: ALT COLORS ... Dreaming Starburst alt has a new mask texture thanks to Reiga! it also no longer does the attack pattern fade thing.
		:: UTILT ... hitbox location and size has been tweaked in accordance to the new animation.
		:: NAIR1 ... early and late hitbox values are now swapped, along with some tweaks.
		:: USPECIAL ... umbrella float has directional input sprites now
		:: RAINCLOUD ... the width of the rain area now utilizes Easing, and it is now wider for longer

		---balancing??---
		== NAIR1 ... stronger hitbox is now weaker
		++ STATS ... run speed increased. (5.75 -> 6)
		++ STATS ... max air speed increased. (3.75 -> 4)
		++ NAIR2 ... early hitbox is now taller. (48 -> 58)
		++ USTRONG ... middle hitbox shape is now a rounded rectangle, and it is also taller.
		:::: this way should be able to hit platforms a bit more easier. it was either this or make it unable to
		-- no nerfs?

		---notes---
		now that the worst parts of her is done and gone, let me know any feedback to nerf her if necessary.
		open for inputs! as i always say."
		
		
		patch_note_title[i] = "v1.9 - (2024/10/01)"
		patch_note_text[i++] = 
		"===v1.9===
		---changes---
		:: alt color Sorbet moved somewhere else
		:: in its place, we have the Seasonal alt now

		---fixes---
		:: fixed an issue where FSPECIAL land-cancelling didnt work
		:: fixed an issue where after playing certain characters, usher's alt list might look... Broken

		---notes---
		i wanted to put changes on FSPECIAL landcancelling but
		currently usher is in an online majors roster so it's in a patch lockout. hold on tight! im also busy and also want to rest"
		
		
		patch_note_title[i] = "v1.8 - (2024/08/28)"
		patch_note_text[i++] = 
		"===v1.8===
		---changes---
		:: it's v1.8 now. all of a sudden. yeah.
		:: victory dialogue for asra and venus yeah i'll keep updatin for all-star heroines chars

		---notes---
		an update to hopefully address issues."
		
		
		patch_note_title[i] = "v1.2 - (2024/08/23)"
		patch_note_text[i++] = 
		"===v1.2===
		---changes---
		:: alt color Hymn moved somewhere else
		:: alt color Starlove has been moved to Hymn's former slot
		:: alt color Seasonal has been added after Abyss and Early Access
		:::: ...is what i would write, but Usher's confirmed to be in the roster of major tournament Riptide!!
		:: so, for now, replacing Seasonal, riptide and poolparty-themed alt color Sorbet is added
		:::: seasonal alts are ready tho

		---notes---
		just alt color stuff havin' fun.
		still open for feedbacks like balance changes yknow!
		but since a major is comin' up i won't be able to patch til that's over."
		
		
		patch_note_title[i] = "v1.1 - (2024/08/18)"
		patch_note_text[i++] = 
		"===v1.1===
		---changes---
		:: CPU AI stuff slightly improved.
		:::: i think ive imbued her with like 30% of my fighting power
		:::: to think i could... i could make her smarter.... kinda spooky
		:: added little vfx on successful pivot cancel ftilt

		---fixes---
		:: fixed issue where in practice mode, when CPU Usher's action is set to stand (or anything other than fight), she can still act on her own somewhat. (the classic not-detecting ''fight''-option issue)

		---balancing??---
		-- RAINCLOUD STATE ... all freezing hitbox now applies longer extended parry stun on top of what's already there.
		:::: normal freeze applies 1/5 more frames, FSTRONG freeze applies *2 more frames.
		:::: as you can imagine, this is a janky implementation. who knows if anything else is broken...
		-- FTILT ... looking at it now, i agree, that is pretty dang fast. increased endlag by 2 frames (excluding whifflag, whifflag's gon add up yknow)
		-- walljump_vsp -1 (12 -> 11)

		---notes---
		some tiny early changes.
		open for inputs!"
		
		
		patch_note_title[i] = "v1.0 - (2024/08/17)"
		patch_note_text[i++] = 
		"===beta to v1.0===
		2024/08/17
		---additions kind of---
		++ pogumbo compat
		++ mamizou compat
		++ scoop compat
		++ results screen dialogue
		++ miiverse images (waiting for 4 more though)
		++ star ko/screen ko compat
		++ alt color ASHe now has special treatment with particles! many of the ASHe characters has this also!
		++ alt color Dreaming Starburst now has an EXTRA special treatment! fancyyyy!!
		++ added CPU AI stuff. did you know ive never added this ever since Acid Rainbows?????????
		:::: i slightly figured out how to do ai_update stuff so i was messing around with it, now i think she can fight slightly ok

		---changes---
		:: alt colors Moondusk, ASHe, Swaying, and Mirror adjusted
		:: did you know FSPECIAL's land-cancelling is disabled if you are holding SPECIAL? i.. even i didnt remember i did that. anyways, it now checks for ''special_pressed'' being false, which means it'll count off first 6 frames of SPECIAL being pressed. hopefully this reduces it happening accidentally?
		:: munobird notes on aerials extended to be loud and clear about actual landing lag value.

		---fixes---
		:: alt color Anemone had a wrong color for the CSS icon. fixed that

		---balancing??---
		-- BAIR ... startup increased by 2 (5 -> 7)
		-- BAIR ... late hit hitbox active frame decreased by 2 (11 -> 9)
		-- FSPECIAL ... startup increased by 2...? (7 -> 9)
		-- FSPECIAL ... cooldown increased to 4 frames (3 -> 4) and it applies on land cancel now too
		:::: both: people's been pointing out these moves are kinda overcentralizing sometimes and i wouldnt like that, so both's been toned down
		++ FSPECIAL ... travels slightly more distance. (relevant number: 10 -> 11)
		-- UTILT ... startup increased by 1 (4 -> 5)
		:::: slightly iffy on this but it really was weird how utilt was faster than jab so

		---notes---
		thank you all for all the support!
		open for inputs!"
		
		
		
		//these are optional things that you can change if you'd like, but probably best to keep as-is
		pn__bg_col = make_colour_rgb( 0,0,0 ); //bg color.
		pn__txt_col = make_colour_rgb( 255,255,255 ); //text color.
		pn__acc_col = get_player_hud_color( player ); //accent color.
		pn__btn_txt = "hold TAUNT: changelog"; //button text
		pn__btn_width = 176; //button width in pixels, change it accordingly to text
		pn__guide_txt = "use ATTACK / SPECIAL"; //select list guide text
		pn__swipe_sound = asset_get("mfx_result_expand"); //sound for when changelog is opened/closed with taunt
		pn__move_sound = asset_get("mfx_input_key"); //sound for moving between list entries
		pn__confirm_sound = asset_get("mfx_forward"); //sound for confirming a list entry
		pn__cancel_sound = asset_get("mfx_return_cursor"); //sound for cancelling out of a list entry
		pn__scroll_speed = 3; //the speed of which how fast you scroll up/down in text display
		
		//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
		//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
		
		//below are the actual patch note rendering and stuff.
		//if you're not trying to do in-depth stuff, you dont have to touch these
		//these are permanent variables just so we only have to run them once
		//pn__ standing for Patch Note (double underscore cause i dont think anyone would do this, avoiding overlaps)
		pn__init = true;
		pn__list_select = 0;
		pm__list_select_old = pn__list_select; //remember old selection for transition anim direction purposes
		pn__list_max = i-1; //print(string(pn__list_max));
		pn__taunt_track = 0; //after activated, checks if taunt has been unpressed before timer starts counting up again
		pn__taunt_timer = 0; //track how long taunt is being held
		pn__taunt_max = 50; //how long taunt should be held until its open
		pn__open = false; //is it open or not
		pn__opener_timer_max = 30; //opening timer max
		pn__opener_timer = pn__opener_timer_max; //timer for opening
		pn__displaying = false; //is it in the text screen (true) or in the list screen (false)
		pn__scroll = 0; //current amount of scroll
		pn__up_track = 0; //same with taunt track for list selection
		pn__down_track = 0; //yes
		pn__list_old = 0; //list selection storage
		pn__select_timer_max = 16; //selection transition timer max
		pn__select_timer = pn__select_timer_max; //selection transition timer
		pn__scroll_did = 0; //niche storage for if list has scrolled or not
			pn__online = false; //set
		if (room == asset_get("network_char_select") || room == asset_get("workshop_room")){ //if in online playtest, or in extramode workshop list playtest
			//thanks to mr nart for heads up on using asset_get for room id's instead!
			pn__online = true; //switch to online view
		}
		
	}
	if (variable_instance_exists(id,"pn__init")){ //this is very unnecessary i just want to be safe to avoid error log
		//the var's will omit the pn__ prefix because i dont think var's would interfere much with overlaps
		//unless its in the same code, of course
		//
		//notes for self and for others:
		//sprites with origin point at bottom will align with offline playtest screen bottom with
		//clamp( (y + 61), 0, room_height-13 );
		//update: accounting for room top, clamp( (y + 61), 209, room_height-13 );
		//camera reaches the top at y 148, anything higher shifts the camera, so + 61, then 209
		//playtest canvas is w 200 h 162 at 2x scale.
		//css playtest is room 69
		//extramode workshop list playtest is room 72  -  asset_get("workshop_room")
		//online playtest is room 113  -  asset_get("network_char_select")
		
		var bc_x = clamp( x, 100, 860 );//i guess this is the "center", bottom center
		var bc_y = clamp( (y + 61), 209, room_height-13 );//puzzles of math
		var bc_yA = bc_y;//copy to preserve original for use as this one will be changed
		var pn_bg = pn__bg_col; //it was long, will make it short. bg color.
		var pn_txt = pn__txt_col; //text color.
		var pn_acc = pn__acc_col; //text color.
		var pn_i = pn__list_select; //selected entry.
		var btn_wh = pn__btn_width/2; //button width but halved.
		var page_h = 144 //page height
		var pn_alpha = 0.8; //alpha
		var a_str = draw_get_alpha(); //store the original alpha value to get back to once im done rendering, just in case
		
		// !!online values override!! 
		if (pn__online){//create online detection later
			var bc_x = clamp( 120, 100, 860 );//i guess this is the "center", bottom center
			var bc_y = clamp( (y + 111), 255, room_height-13 );
			var bc_yA = bc_y;
			var page_h = 190; //page height
		}
		var extendem = (pn__online)?260:0;
		
		//player freezer i hope
		if (pn__open){ //(if open)
			state = PS_SPAWN;
			state_timer = 89;
			hitpause = true; hitstop = 2; hitstop_full = 2;
		}
		//offset
		if (pn__opener_timer<pn__opener_timer_max){
			pn__opener_timer++;
		}
		if (pn__select_timer<pn__select_timer_max){
			pn__select_timer++;
		}
		if (pn__open){ //(if opened)
			var bc_yA = ease_expoOut( bc_yA-40, bc_y-page_h, pn__opener_timer, pn__opener_timer_max )
		}else{ //(if closed)
			var bc_yA = ease_expoOut( bc_y+40-page_h, bc_yA, pn__opener_timer, pn__opener_timer_max )
		}
		
		//draw time
		
		draw_set_alpha(pn_alpha);
		//bottom to top
		var btn_wh_tmp = btn_wh+6;
		draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-1, bc_x+(btn_wh_tmp-1), bc_yA, pn_bg,pn_bg,pn_bg,pn_bg, false );
		var btn_wh_tmp = btn_wh+2;
		draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-3, bc_x+(btn_wh_tmp-1), bc_yA-2, pn_bg,pn_bg,pn_bg,pn_bg, false );
		draw_rectangle_colour( bc_x-btn_wh, bc_yA-13, bc_x+(btn_wh-1), bc_yA-4, pn_bg,pn_bg,pn_bg,pn_bg, false );
		var btn_wh_tmp = btn_wh-2;
		draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-15, bc_x+(btn_wh_tmp-1), bc_yA-14, pn_bg,pn_bg,pn_bg,pn_bg, false );
		
		//this is like the page
		draw_rectangle_colour( bc_x-100-(20*sign(extendem)), bc_yA+1, bc_x+99+extendem, bc_y+2, pn_bg,pn_bg,pn_bg,pn_bg, false );
		draw_set_alpha(1);
		
		//button text button
		draw_set_halign(fa_center); draw_set_valign(fa_bottom);
		draw_set_font(asset_get("tinyFont"));
		draw_text_ext_transformed_colour(bc_x+1, bc_yA-11, pn__btn_txt, 1, 800, 2, 2, 0, pn_txt, pn_txt, pn_txt, pn_txt, 1-(pn__open/2));
		
		//accent line
		draw_set_alpha(0.6);
		draw_rectangle_colour( bc_x-96-(20*sign(extendem)), bc_yA+5, bc_x+95+extendem, bc_yA+6, pn_acc,pn_acc,pn_acc,pn_acc, false );
		draw_set_alpha(1);
		
		//txt alpha
		if (pn__open){ //(if opened)
			var txt_a = ease_expoOut( 0, 1, pn__opener_timer, pn__opener_timer_max )
		}else{ //(if closed)
			var txt_a = ease_expoOut( 1, 0, pn__opener_timer, pn__opener_timer_max )
		}
		
		
		if (pn__open){ //(if open)
		
		//the main page contents
		
		//list page
		if (pn__displaying == false){
			
			//guide text
			draw_set_valign(fa_top);
			draw_text_ext_transformed_colour(bc_x+1, bc_yA+9, pn__guide_txt, 1, 800, 2, 2, 0, pn_txt, pn_txt, pn_txt, pn_txt, 1-(pn__open/2));
			//txt set
			draw_set_halign(fa_left); draw_set_valign(fa_top);
			draw_set_font(asset_get("fName"));
			
				//tthe lerp for l_off (list offset)
					var l_off_x = ease_cubeOut( -4, 2, pn__select_timer, pn__select_timer_max )
				if (pn__list_old == "up"){ //prev input is up
					var l_off_y = ease_cubeOut( 4, 0, pn__select_timer, pn__select_timer_max )
				}
				if (pn__list_old == "down"){ //prev input is down
					var l_off_y = ease_cubeOut( -4, 0, pn__select_timer, pn__select_timer_max )
				}
			
			
			//time to draw the list page
			if (pn__open){//scroll stuff n select stuff
				if (up_down){
					if (pn__up_track==false){
						pm__list_select_old = pn__list_select;  pn__list_select--;
						if (pn__list_select<0){pn__list_select = pn__list_max;}
						pn__up_track = true;
						pn__select_timer = 0;
						pn__list_old = "up"
						sound_play(pn__move_sound);
						pn__scroll_did = 0;
					}
				}else{ pn__up_track = false; };
				if (down_down){
					if (pn__down_track==false){
						pm__list_select_old = pn__list_select;  pn__list_select++;
						if (pn__list_select>pn__list_max){pn__list_select = 0;}
						pn__down_track = true;
						pn__select_timer = 0;
						pn__list_old = "down"
						sound_play(pn__move_sound);
						pn__scroll_did = 0;
					}
				}else{ pn__down_track = false; };
				
				//list scroll stuff
				if ( ((pn_i*22)+26)+pn__scroll > page_h-20 ){//horrible puzzle of maths
					//print("true, down")
					pn__scroll = clamp( (pn_i*-22)+81, -9000, 0 );
					if (pn__online){ pn__scroll = clamp( (pn_i*-22)+132, -9000, 0 ); }
					pn__scroll_did = 2;
				}
				if ( ((pn_i*22)+26)+pn__scroll < 26 ){
					//print("true, up")
					pn__scroll = clamp( (pn_i*-22)+6, -9000, 0 );
					pn__scroll_did = 2;
				}
				//print(string(pn__scroll))
				
				if (attack_down){
					pn__displaying = true;
					pn__scroll = 0;
					sound_play(pn__confirm_sound);
				}
			}
			for (var t = 0; t <= pn__list_max; t += 1){
				var x_off = (t==pn_i)?8+l_off_x:0;
				var y_off = (t==pn_i)?(t*22)+l_off_y:t*22;
				var y_loc = 26+pn__scroll-(l_off_y*pn__scroll_did);
				if (t==pn_i){
					var x_t_p = bc_x+l_off_x-89; //x triangle point
					var y_t_p = bc_yA+y_off+y_loc+5; //y triangle point
					draw_rectangle_colour( (x_t_p-1),   y_t_p,   (x_t_p),   y_t_p+1, pn_acc,pn_acc,pn_acc,pn_acc, false );
					draw_rectangle_colour( (x_t_p-1)-2, y_t_p-2, (x_t_p)-2, y_t_p+3, pn_acc,pn_acc,pn_acc,pn_acc, false );
					draw_rectangle_colour( (x_t_p-1)-4, y_t_p-4, (x_t_p)-4, y_t_p+5, pn_acc,pn_acc,pn_acc,pn_acc, false );
				};
				//title text!
				draw_text_ext_transformed_colour(bc_x-92+x_off, bc_yA+y_off+y_loc, patch_note_title[t], 16, -1, 1, 1, 0, pn_txt,pn_txt,pn_txt,pn_txt, txt_a);
				//divider line
				var c_tmp = (t==pn_i)?pn_acc:pn_txt;//color temp
				draw_set_alpha((t==pn_i)?1:0.3);
				draw_rectangle_colour( bc_x-96, bc_yA+y_off+y_loc+13, bc_x+95, bc_yA+y_off+y_loc+14, c_tmp,c_tmp,c_tmp,c_tmp, false );
				draw_set_alpha(1);
			}
			
		}
		if (pn__displaying == true){
		
		//txt set
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_set_font(asset_get("fName"));
		
		//time to draw changelog!!
		
		//text render is here!
		if (pn__open){//scroll stuff
			var scroll_max = ( string_height_ext(patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem)-113 )*-1//thanks vman for finding this function
			if (up_down){ pn__scroll+=pn__scroll_speed * (shield_down+1); } //hold shield to scroll faster
			if (down_down){ pn__scroll-=pn__scroll_speed * (shield_down+1); }
			pn__scroll = clamp( pn__scroll, scroll_max, 0 );
			if (special_down){
				pn__displaying = false;
				pn__scroll = false;
				sound_play(pn__cancel_sound);
			}
		}
		draw_text_ext_transformed_colour(bc_x-96, bc_yA+pn__scroll+12, patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem, 1, 1, 0, pn_txt, pn_txt, pn_txt, pn_txt, txt_a);
		
		}//changelog over (if pn__displaying == true)
		}//open check over
		
		//taunt hold meter
		if (pn__taunt_timer>0){
			var w_pr = ease_cubeIn( 2, pn__btn_width-2, round(pn__taunt_timer), pn__taunt_max );
			draw_rectangle_colour( bc_x-btn_wh, bc_yA-1, (bc_x-btn_wh)+w_pr, bc_yA, pn_acc,pn_acc,pn_acc,pn_acc, false );
			draw_set_alpha(1);
		}
		
		//checks for taunt being held, or if it's in list view and special is being held
		if (taunt_down || (pn__open && special_down && pn__displaying == false)){
			if (pn__taunt_track == false){
				pn__taunt_timer++;
				if (pn__open){ pn__taunt_timer+=0.5; } //1.5x the speed when the panel is already open
				if (pn__taunt_timer > pn__taunt_max){
					pn__open = !pn__open; //this toggles it hopefully
					pn__taunt_track = true;
					pn__taunt_timer = 0;
					pn__opener_timer = 0;
					sound_play(pn__swipe_sound);
				}
			}
		}else{pn__taunt_track = false; pn__taunt_timer = 0; };
		
		//change it back
		draw_set_alpha(a_str); draw_set_valign(fa_top); draw_set_halign(fa_center);
	}
	
	
}//testplay check over