//post-draw

if (!phone_disable){
	if (phone_manual_init >= 1){
		user_event(12);
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
		
		
		patch_note_title[i] = "v2.7b - (2025 Apr 26)"
		patch_note_text[i++] = 
		"v2.7b - (2025 Apr 26)
		[b]fixes[/b]
		- it seems lumina was affected by the update after all. fixed the issue where UAIR could not go into UAIR2 if you are tapping ATTACK and not holding ATTACK or using TILTSTICK UP.

		[b]notes[/b]
		open for inputs!"
		
		
		patch_note_title[i] = "v2.7 - (2025 Apr 25)"
		patch_note_text[i++] = 
		"v2.7 - (2025 Apr 25)
		[b]fixes[/b]
		- nothing special, i just fixed how the ranked gold alt special alternative colors were checking for the wrong alt color number which was infamous alt. did that make no sense? idk thats fine

		[b]notes[/b]
		open for inputs!"
		
		
		patch_note_title[i] = "v2.6 - (2024 Apr 29)"
		patch_note_text[i++] = 
		"v2.6 - (2024 Apr 29)
		[b]changes[/b]
		- nspecial turnaround-on-release thing input moved to Attack (formerly on parry button).
		- parrying nspecial makes it even faster than previous versions
		- parrying fspecial field shatter lightbullets now makes it faster
		
		[b]balances[/b]
		-- -- beneficial
		- you can now cancel nspecial charging with parry (what!?)
		- ftilt 1st hit hitbox extended by like 8 pixels forward
		- also ftilt hurtbox trimmed sliiiightly so that ftilt 1st hit's weird extended arm isnt hurtbox
		-- -- idk
		- fair hitpause has been scaled (hitpause scaling 0.5 -> 0.8)

		[b]notes[/b]
		open for inputs!"
		
		
		patch_note_title[i] = "v2.5 - (2024 Jan 30)"
		patch_note_text[i++] = 
		"v2.5 - (2024 Jan 30)
		[b]additions[/b]
		- new alt added: Infamous (she's been around since that time....)

		[b]changes[/b]
		- one of the secret alts have been changed! if you're the creator of the color, you've already been informed of this.

		[b]balances[/b]
		-- -- beneficial
		- dtilt angle is now 50. (40 -> 50)
		-- -- counterplay
		- removed hitstun multiplier from dtilt. (1.1 -> 1)

		[b]notes[/b]
		how long has it been...?
		open for inputs!"
		
		
		patch_note_title[i] = "v2.4 - (2023 Apr 07)"
		patch_note_text[i++] = 
		"v2.4 - (2023 Apr 07)
		[b]additions[/b]
		- you can now reverse your direction when your fspecial-field-enhanced dspecial kick starts.
		- you can now turnaround dair again, but you have to hold parry button for it
		- you can now turnaround nspecial charged blast too, but with parry button
		- new secret alts added. if you're the creator of the color, you've already been informed of its inputs.
		- added the playtest changelog

		[b]fixes[/b]
		- fixed an issue where nspecial charged bullet doesn't flip direction
		- fixed an issue where when your fspecial field hits your nspecial charged bullet that has been parried by the opponent, it doesn't launch the hit towards you nor could it hit you.

		[b]balances[/b]
		-- -- idk
		- tweaked jab hitboxes. some hitboxes are gone even

		-- -- beneficial
		- jab attack window length decreased by 8 (48 -> 40), meaning it's shorter and the hitboxes come out more rapidly
		- jab hitboxes coming out more rapidly also means hitboxes connect slightly more reliably maybe 

		-- -- counterplay
		- jab total damage reduced from 10? to like 8 (2,1,1,1,1,1,1,3,1 -> 1,1,1,1,1,1,-,2,-)

		[b]notes[/b]
		i loathe parry interactions,,,
		open for inputs!"
		
		
		patch_note_title[i] = "v2.3 - (2022 Jun 10)"
		patch_note_text[i++] = 
		"v2.3 - (2022 Jun 10)
		[b]additions[/b]
		- hitting the strongs within the fspecial field now shatters the field in a new way, with the field shatter bullets all hitting the opponent. it does 16 extra damage!
		- you can now walljump-cancel uncharged nspecial. idk how much difference this makes, but here it is anyway

		[b]changes[/b]
		- removed turnaround thing from dair.

		[b]notes[/b]
		open for inputs!"
		
		
		patch_note_title[i] = "v2.2 - (2021 Oct 16)"
		patch_note_text[i++] = 
		"v2.2 - (2021 Oct 16)
		[b]additions[/b]
		- rivals RC support already!?... with custom AIR RIDE controls!? (WARNING: I HIGHLY _DON'T_ RECOMMEND ATTEMPTING SOMETHING LIKE THIS YOURSELF! IT IS VERY TRICKY AND MY IMPLEMENTATIONS ARE HACKY AND THE POINT OF RIVALS RC IS THAT YOU CAN ENJOY PLAYING AS YOUR OWN CHARACTERS WITHOUT WORRYING ABOUT STATS ETC, I DID THIS AS A PROOF OF CONCEPT)

		[b]changes[/b]
		- bigger range ftilt!! with tweaked animation to suit the range!!
		- weird thing added for bair where the animation will immediately skip to the next frame once it hits (so that it would look cooler) don't worry, this does not affect the frame data
		- extra sound added for bair and ftilt
		- there is now a visual/sound effect when you ledge cancel your uspecial
		- dspecial endlag can now be walljump-cancelled
		- fspecial field now summons even if there's a wall in the way (if there IS a wall in the way, it will instead summon at lumina's location instead)
		- decreased sound volume of fstrong shatter sound by 1 audacity tick

		[b]balances[/b]
		-- -- beneficial
		- fstrong main big hit's base knockback increased by 1 (8 -> 9)

		-- -- counterplay
		- uh increased ftilt startup by 1 frame juuuuuust in case (6 -> 7)

		[b]notes[/b]
		open for inputs!"
		
		
		patch_note_title[i] = "v2.1 - (2021 Jul 31)"
		patch_note_text[i++] = 
		"v2.1 - (2021 Jul 31)
		[b]additions[/b]
		- added the changelogs in munophone oops.

		[b]changes[/b]
		- you can't go into uair2 if you have been parried now.

		[b]fixes[/b]
		- fixed the issue getting parried the fspecial field shatter bullet and parrying it back gave the player who shot the projectile at first invincibility
		- fixed the issue where uair1 doesnt get parry stun pratfall anymore if you dont land.
		- fixed an issue when a parried charged nspecial bullet plays an error sound when it expires
		- tweaked some other codes that miiiight prevent issues

		[b]notes[/b]
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