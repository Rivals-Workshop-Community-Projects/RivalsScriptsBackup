//post-draw

if (state==PS_RESPAWN || (state==PS_ATTACK_GROUND && free && attack==AT_TAUNT)){
	draw_sprite_ext( sprite_get("plat_grnd"), 0, x, y, 1, 1, 0, -1, 1 ) 
}

shader_start() 



//dspecial buffer vfx

//if ( (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR) && (dsp_confirmed || dsp_modeii_buffer) ){
if ( (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR) && dsp_qualified ){
	draw_sprite_ext( sprite_get("dspecial_indicator"), get_gameplay_time()/3, x, y, 1, 1, 0, -1, 1 ) 
}

if (attack==AT_FSPECIAL&&(state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)){
	var tmp_a = ease_linear( 0, 50, fsp_a_time, fsp_a_t_max )/50
	draw_sprite_ext( sprite_get("nspecial_blue"), image_index, x, y, spr_dir, 1, 0, -1, tmp_a/(1.8-(fsp_level/5)) )
	gpu_set_blendmode(bm_add);
	draw_sprite_ext( sprite_get("nspecial_blue"), image_index, x, y, spr_dir, 1, 0, -1, tmp_a )
	gpu_set_blendmode(bm_normal);
}

if (attack==36&&(state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&mode=="B"){if (window==1||window==3){repeat(200){draw_sprite_ext(sprite_get("wave_buffer"),0,x+(-2*spr_dir),y,2*spr_dir,-2,0,-1,1);draw_sprite_ext(sprite_get("wave_buffer"),6,x+(-2*spr_dir),y,2*spr_dir,-2,0,-1,1);}}if (window==2){repeat(200){draw_sprite_ext(sprite_get("wave_buffer"),1,x+(-2*spr_dir),y,2*spr_dir,-2,0,-1,1);draw_sprite_ext(sprite_get("wave_buffer"),7,x+(-2*spr_dir),y,2*spr_dir,-2,0,-1,1);}}}

if ((state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR) && attack==AT_NSPECIAL){
	if (window == 4){
		if (window_timer > 3){
			var trail_frame = ((image_index==5)?0:(image_index==6)?1:(image_index==7)?2:0) + (nsp_direction_storage_for_post_draw*3);
			draw_sprite_ext( sprite_get("nspecial2_comettrail"), trail_frame, x-spr_dir, y, 2*spr_dir, 2, 0, -1, 1 ) 
		}
	}
}
shader_end() 

//attack-taunt "aorb test" code

var tmp_colorslot = 0;
var tmp_colornum = get_player_color(player);
switch (tmp_colornum){
    case 8:
    case 11:
    case 14:
    case 22:
    case 23:
        tmp_colorslot = 2;
    break;
    
    default: break;
}

var tmp_colr = get_color_profile_slot_r(tmp_colornum, tmp_colorslot);
var tmp_colg = get_color_profile_slot_g(tmp_colornum, tmp_colorslot);
var tmp_colb = get_color_profile_slot_b(tmp_colornum, tmp_colorslot);

var tmp_col = make_color_rgb(tmp_colr, tmp_colg, tmp_colb);

/*//deprecated
if (attack==AT_TAUNT_3){
	if (window == 2 || window == 3) {
		var timeoffset = ease_expoOut( 65, 0, dsp_test_timer, dsp_test_max )
		var timeoffset_ii = (timeoffset * dsp_test_dir)/100
		var timeoffset_iii = (timeoffset_ii)*180
		
		draw_debug_text( x-68, y-180, "pondering the aorb" )
		draw_debug_text( x-58, y-160, "current mode "+string(dsp_TESTMODE) )
		draw_debug_text( x-78, y-140, "LEFT/RIGHT to select..." )
		draw_debug_text( x-70, y-126, "ATTACK to confirm..." )
		
		draw_debug_text( x-68-190, y-180, "MODE 1:" )
		draw_debug_text( x-68-190, y-180+14*1, "this doesn't do" )
		draw_debug_text( x-68-190, y-180+14*2, "anything actually." )
		draw_debug_text( x-68-190, y-180+14*3, "sorry" )
		
		draw_debug_text( x-68-190, y-180+14*1, "normal rivals buffer" )
		draw_debug_text( x-68-190, y-180+14*2, "will account for dspec" )
		draw_debug_text( x-68-190, y-180+14*3, "input _before_" )
		draw_debug_text( x-68-190, y-180+14*4, "entering hitpause" )
		
		
		draw_debug_text( x-84+190, y-180, "MODE 2:" )
		draw_debug_text( x-84+190, y-180+14*1, "dspecial can be" )
		draw_debug_text( x-84+190, y-180+14*2, "buffered the entire" )
		draw_debug_text( x-84+190, y-180+14*3, "duration of attack" )
		draw_debug_text( x-84+190, y-180+14*4, "once you press it" )
		//dsp_test_timer
		
		var x_off_tmp = (dsp_test_buffer==1)?-180:(dsp_test_buffer==2)?180:0
		var x_off = x_off_tmp-timeoffset_iii
		var x_off_tmp_s = (dsp_TESTMODE==1)?-180:(dsp_TESTMODE==2)?180:0
		var x_off_s = x_off_tmp_s
		
		var box_x = 86
		var box_y_t = 188
		var box_y_b = 110
		draw_roundrect_colour_ext(x+x_off_s-box_x,   y-box_y_t,   x+x_off_s+box_x,   y-box_y_b,   6, 6, 0, tmp_col, true);
		draw_roundrect_colour_ext(x+x_off_s-box_x+1, y-box_y_t,   x+x_off_s+box_x-1, y-box_y_b,   6, 6, 0, tmp_col, true);
		draw_roundrect_colour_ext(x+x_off_s-box_x,   y-box_y_t+1, x+x_off_s+box_x,   y-box_y_b-1, 6, 6, 0, tmp_col, true);
		draw_roundrect_colour_ext(x+x_off_s-box_x+1, y-box_y_t+1, x+x_off_s+box_x-1, y-box_y_b-1, 6, 6, 0, tmp_col, true);
		
		draw_roundrect_colour_ext(x+x_off-box_x-1, y-box_y_t-1, x+x_off+box_x+1, y-box_y_b+1, 6, 6, 0, c_white, true);
		draw_roundrect_colour_ext(x+x_off-box_x-2, y-box_y_t-1, x+x_off+box_x+2, y-box_y_b+1, 6, 6, 0, c_white, true);
		draw_roundrect_colour_ext(x+x_off-box_x-1, y-box_y_t-2, x+x_off+box_x+1, y-box_y_b+2, 6, 6, 0, c_white, true);
	}
}*/









//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
//       Playtest Changelog Template by hyuponia. change the code as much you'd like
//       please paste somewhere in "post_draw.gml"!
//       find it at: https://pastebin.com/uDVTDU6R
//       hotfix A: it now asset_get's the room id (thanks mr nart!)
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
		
		patch_note_title[i] = "v2.5 - (2023 Nov 15)"
		patch_note_text[i++] = 
		"v2.5
		changes
		- made it so you can do the DSPECIAL cancelling for 6 frames after moves hit.
		--- it's 6 frames because it is the same amount of frames as the control input buffer. the way i implemented this makes it easy to change how many frames it can check for so i can easily make it longer!
		- because of this above change, v2.3's attack-taunt lost the purpose of setting the experimental stuff, so i made it the up-taunt.
		- FTILT has slightly updated animation. FTILT's horizontal speed also has been increased, making the effective range slightly further
		- UAIR has slightly updated animation, and its hitboxes are now larger to fit it.
		- UAIR also has a new hitbox, sweetspot for KO'ing!
		- DTILT animation tweaked as well
		- BAIR animation too, putting emphasis on that back hit is stronger or at least different
		- added sparkly trails for dspecial

		fixes
		- fixed an issue where one (two actually) of the FAIR hitboxes have different sound effects (thanks mallow!!!)

		balances
		-- -- beneficial
		- FTILT's horizontal speed increased, making effective range slightly further
		- UAIR's hitboxes are larger
		- UAIR has a new sweetspot hitbox, uh its beneficial right?
		- DTILT moves forward a bit now. with horizontal speed.
		
		notes
		i dont remember if theres anything else i changed my brain doesnt work right now
		ao loves you!
		open for inputs!"
		
		
		patch_note_title[i] = "v2.4 - (2022 Sep 17)"
		patch_note_text[i++] = 
		"v2.4 - (2022 Sep 17)
		changes
		- since people came across it on accident, removed the manual 'optimal mode' added in v2.2 as stars should be optimized now....... right?

		fixes
		- fixed an issue where Early Access (gameboy) alt outline is not updated to the new css
		- fixed an issue where i forgot to remove blue rimlight from results screen, ending up showing a weird color
		- fixed an issue where respawn platform has colors that is affected by alt colors now

		notes
		ao loves you!
		open for inputs!"
		
		
		patch_note_title[i] = "v2.3 - (2022 Sep 15)"
		patch_note_text[i++] = 
		"v2.3 - (2022 Sep 15)
		additions
		- new alt colors: 'Les Go!!!'
		- redone FAIR to be anew.
		- a new attack-taunt, which allows you to test an upcoming change for dspecial! changes will be applied later according to playtesting.
		- made NSPECIAL grab. (experimental)

		changes
		-- -- PERFORMANCE
		- NSPECIAL 'Tulip Moon' 's visual effects have been greatly optimized! it should be much better on your FPS

		-- -- cosmetic/visual
		- alt colors 'Apotos', 'Doomsay', 'Mi Ao', 'Red 2', 'Consigned to Oblivion', 'Ranked Gold', 'Winning', 'Antefn', 'Neae', 'Sundews' have all been adjusted to be hopefully more appealing.
		- also changed the name of 'AOL' alt to 'AOL Instant Messenger'
		- tweaked feri down-taunt costume. i was distracted
		- tweaked CSS portrait for no reason other than that 'it didnt look polished enough somehow'
		- added sparkles particle to bair and fspecial
		- added the 'star ring' particle for cancelling attacks with dspecial, the same one as nspecial. i can afford this now because of the optimization
		- buffering dspecial now has a small visual effect below ao.
		- USPECIAL animation is adjusted to accomedate for hitbox size changes (detailed below)
		- normal USPECIAL landing 'sword beam' 's animation is adjusted as well for hitbox size and active time
		- the alt colors will now affect the Ori & Sein VFX Ao uses.
		- hitting the NSPECIAL 'tulip moon' with strongs now has a sound effect.
		- DATTACK animation tweaked! gameplay values been adjusted accordingly as well

		- - - - gameplay
		- hitting the NSPECIAL 'Tulip Moon' with FSPECIAL now reduces the 'spin count' instead of increasing it (previous behavior), making you possibly continue the combo for longer???? idk??? is there potential for that???
		- buffering DSPECIAL on UTILT now activates DSPECIAL on the final hit
		- buffering DSPECIAL on FTILT now also activates DSPECIAL on the final hit
		- hitting the NSPECIAL 'tulip moon' with FSTRONG and DSTRONG now boosts Ao horizontally.
		- NSPECIAL's 'spin amount' buffer time when jump-cancelling has been reduced by 4 frames. (20 -> 16)
		- NSPECIAL's 'spin amount' buffer time doesnt happen when you're continuing NSPECIAL on ground now.
		- removed the bounce from NAIR (dspecial thing really made it redundant basically)

		fixes
		- fixed an issue where hurtbox doesn't change properly when you dspecial-cancel a move.
		- fixed an issue where hitting NSPECIAL 'tulip moon' with strongs doesn't remove the move's hitbox that was already out.

		balances
		-- -- idk
		- NAIR late hitbox active frames has been increased for 2 frames (??)
		- DTILT base hitpause increased by 2 points
		- DTILT angle is higher now (40 -> 90) (??)
		- UTILT damages adjusted
		- UTILT body hitbox size adjusted

		-- -- beneficial
		- NAIR startup reduced by 4 frames (9 -> 5)
		- NAIR endlag reduced by 4 frames (not counting whifflag)
		- DATTACK hitbox values/sizes adjusted generally! (simply put, it's bigger and the angle is higher now)
		- DTILT endlag adjusted and the endlag is also quicker
		- DTILT hitbox horizontal size is bigger now

		-- -- counterplay
		- normal USPECIAL's airdodge cancel time has been reduced (21~33 -> 27~33)
		- parrying USPECIAL will remove the landing 'sword beam' hitbox now (even if it was parried earlier in the move)
		- normal USPECIAL (landing) endlag increased by 2 frames
		- normal USPECIAL hitbox sizes are reduced (mostly horizontal size)
		- normal USPECIAL landing 'sword beam' hitbox size is reduced (mostly vertical size)
		- normal USPECIAL landing 'sword beam' 's starting location has been adjusted so the total distance is technically slightly shorter
		- normal USPECIAL landing 'sword beam' 's active time is reduced at the end (it is visibly distinguishable now i think?)
		- NAIR damage reduced because it's a rather fast move now (early 7 -> 5, lat e4 -> 3)

		notes
		sorry for making anyone who was waiting for this wait like a whole year for this
		ao loves you!
		open for inputs!"
		
		
		patch_note_title[i] = "unrelated note"
		patch_note_text[i++] = 
		"ao has a memory of having someone really important to her.
		she now can't remember who that is.
		as if they're gone.
		every day she spends, feeling something amiss.
		she really wants to try to go out in the world and find that someone,
		but she is scared that it would lead her nowhere."
		
		
		
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





//tests stuff, noinclude per se
if (false){
	draw_sprite_ext( sprite_get("cursor"), 0, mouse_x, mouse_y, 2, 2, 0, -1, 1 );
	draw_debug_text( mouse_x+32, mouse_y, string(mouse_x)+", "+string(mouse_y) )
}

























