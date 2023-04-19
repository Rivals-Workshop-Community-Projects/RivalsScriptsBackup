//post-draw




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
		
		
		patch_note_title[i] = "v1.6 - (2023 Apr 14)"
		patch_note_text[i++] = 
		"v1.6 - (2023 Apr 14)
		[b]additions[/b]
		- new secret alts added. if you're the creator of the color, you've already been informed of its inputs.
		- added the playtest changelog

		[b]changes[/b]
		- uair weird startup body hit hitbox has been repurposed to be a proper constant body hit
		- max_jump_hsp has been increased (5.5) (experimental)
		- but air max speed has been decreased by 0.3 (5.5 -> 5.2) (experimental)

		[b]balances[/b]
		-- -- idk
		- ustrong 2nd hit angle changed to 90 (80 -> 90)
		- uair final hit angle changed to 90 (80 -> 90)
		- uair weird startup body hit hitbox damage decreased by 1 (2 -> 1)
		- bair hitpause scaling increased (0.6 -> 0.7)
		- bair sound slightly tweaked

		-- -- beneficial
		- ustrong total damage increased to 15 (13 -> 15)
		- ustrong 2nd hit hitbox width increased by 4 (60 -> 64)
		- ustrong pre-charge startup decreased by 2 frames (16 -> 14)
		- aerial dspecial startup now matches with the grounded version (10 -> 7) (experimental)
		- aerial dspecial hitbox size increased generally
		- uair weird startup body hit hitbox has been repurposed to be a proper constant body hit
		- dstrong on-hit IASA happens 2 frames faster now (15 -> 13)
		- fspecial startup faster by 2 frames...? (experimental)

		-- -- counterplay
		- uspecial's startup leap has horizontal speed limit, you can no longer drift so much
		- uair weird startup body hit hitbox width decreased by 7 (47 -> 40)

		[b]notes[/b]
		kinda dangerous maybe? but well, updates exist!
		says i who havent updated the character in 2 years
		open for inputs!"
		
		
		patch_note_title[i] = "v1.5 - (2021 Oct 12)"
		patch_note_text[i++] = 
		"v1.5 - (2021 Oct 12)
		[b]additions[/b]
		- if you kick nspecial locket, its hitbox size increases??

		[b]changes[/b]
		- tweaked the portraits to be more 'accurate'.
		- fstrong's wacky spike hitbox has been given a better hit effect i think (it was tiny hit effect before)
		- bair animation tweaked!!!
		- alt color 'Twilight' altered.

		[b]balances[/b]
		-- -- idk
		- dstrong's Cat (Ci/しぃ) hit (backward hit) hitbox is smaller in size, but has higher priority! ....dunno if this helps any bit or its worse.
		- ustrong 1st hit not-connecting issue were identified, and 1st hit hitboxes were changed around a lot (and a new hitbox added???) to hopefully solve this...? i tested a lot for this, but of course, nothin's perfect, do tell me if it still bothers you
		- ustrong 2nd hit backward hit (cat hit) angle changed to 361 (50 -> 361) (uh oh)
		- dstrong 2nd hit's weird middle hit has given knockback that isn't so ambiguous anymore (growth 0.7 -> 1.0)
		- dstrong 2nd hit middle hit has higher hitpause too (base 7 -> 8, growth 0.6 -> 0.7)
		- also its angle (65 -> 55)
		- fstrong 'shockwave' hit has been removed entirely

		-- -- beneficial
		- fstrong main big hit's damage increased by 1 (12 -> 13)
		- fstrong's startup has been shortened by 3 frames (20 -> 17), and to be exact, the startup after the strong charge has been shortened
		- fstrong knockback growth increased??????????? (0.85 -> 1.0) (this may be a bad idea but we'll see, updates exist)
		- nspecial locket's hitbox size is a bit bigger than it looks now? (32 -> 38)
		- bair sweetspot hitbox's knockbacks and angles are now identical to ranno's. uh hopefully this is a buff? and hopefully they aren't too much for a character with much higher air speed than ranno? (base 7 -> 8, growth 0.7 -> 0.75)

		-- -- counterplay
		- dtilt 2nd hit hitbox size reduced. its height doesnt cover her entire height anymore, and it doesnt extend as much backwards now. generally smaller, but mostly backwards
		- nair early hit's hitbox size has been reduced. (95 -> 78, matches size of previous late hit)
		- nair late hit's hitbox size has been reduced. (78 -> 70, enough to hopefully be distinct in visualization)
		- nair startup increased by 1 frame. (5 -> 6) (figured i'll increase it lil bit because the hitbox is still relatively big)

		[b]notes[/b]
		the lemon has landed.
		open for inputs!"
		
		
		patch_note_title[i] = "v1.4 - (2021 May 23)"
		patch_note_text[i++] = 
		"v1.4 - (2021 May 23)
		[b]additions[/b]
		- 'another natsumi' alt. references Hinata Natsumi from sgt keroro. not a big deal
		- 'twilight' alt. generally blue-y purple-y color that she didnt have yet
		- 'tower' alt color now has an outline color change.
		- new secret alts added. if you're the creator of the color, you've already been informed of its inputs.
		- lemon added.
		- new cooldown for uspecial. it starts when you land, with a visual meter thing. it will fill immediately when you get hit, when you successfully parry, or when you walljump. currently it lasts for 180 frames (3 seconds). this is to maybe combat some stall concerns.

		[b]changes[/b]
		- you can now go to dtilt2 using tilt stick (or rather, right stick can activate dtilt2. cant detect tiltstick rn ;-;). yeps
		- nspecial limits your horizontal speed by 1 more point (5 -> 4)
		- nspecial 'velocity stall' no longer happens when you've done uspecial or fspecial in the airtime before.
		- bair ingame animation tweaked - ending frames last a little longer and has been applied an IASA.

		[b]balances[/b]
		-- -- idk
		- bair hitboxes hitpause scaling increased. (main 0.4 -> 0.6, sour 0.4 -> 0.5)
		- uair final hit base hitpause increased. (6 -> 7)
		- dair hitboxes non-sweetspot hitpause scaling increased. (right 0.6 -> 0.7, mid/left 0.5 -> 0.6)
		- jab hitboxes base hitpause and hitpause scaling increased. (base 5 -> 6, scaling 0.1 -> 0.4)
		- ustrong final hit base hitpause increased. (8 -> 10)
		- dstrong cat (ci) and main hit base hitpause increased. (8 -> 9)

		-- -- beneficial
		- did some ftilt frame data tinkering with whifflag and things and now ftilt has whifflag proper, with the old ftilt whifflag being the 'whiff' length (or so i think, or faster), what?
		- fstrong is 2 frames faster. (22 -> 20)
		- dattack startup and endlag reduced (startup 12 -> 11, endlag 13 -> 10)
		- fspecial startup reduced by 2 frames, and endlag reduced by 3 frames (startup 25 -> 23, endlag 26 -> 24 (excluding whifflag))

		-- -- counterplay
		- dair endlag increased by 4 (of which 2 of them are affected by endlag)
		- walljump vertical speed decreased by 1 point (12 -> 11)
		- uspecial vertical speed decreased by 2 points (15 -> 13), if you need an example, it's just about rock wall top platform height now

		[b]notes[/b]
		the lemon has landed.
		i've been hearing reports that ustrong is still unreliable. i haven't been able to replicate it in my computer matches, and i suspect it's related to player exclusive stuff or im just unlucky or it's related to SDI. if you come across it, i'd appreciate it if you could record a clip of it! much thanks to yall for playing as natsumi!
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