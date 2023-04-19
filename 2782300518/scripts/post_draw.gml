//Draw Tail in front of Carol
if (tsprite_index!=-1 && tfront==true){
	init_shader();
	if (get_player_color(player) == 17)
	{
		var base = 4*8;
		static_colorO[base] = 0.137;
		static_colorO[base+1] = 0.262;
		static_colorO[base+2] = 0.192;
	}
	shader_start();
	draw_sprite_ext(tsprite_index, timage_index, x+tx, y+ty, tsx*image_xscale, tsy, trotation, c_white, 1);
	shader_end();
}

//Draw Bike and shield in front of Carol
if (bsprite_index!=-1 && bfront==true){
	init_shader();
	if (get_player_color(player) == 17)
	{
		var base = 4*8;
		static_colorO[base] = 0.137;
		static_colorO[base+1] = 0.262;
		static_colorO[base+2] = 0.192;
	}
	shader_start();
	draw_sprite_ext(bsprite_index, bimage_index, x+bx, y+by, bsx*image_xscale, bsy, brotation, c_white, 1);
	shader_end();
}

switch (state)
{
	case PS_WALL_JUMP:
		if (motorbike == false)
		{
			draw_sprite_ext(sprite_get("walljump_counter2"), walljump_number, x-26, y-80, 2, 2, 0, c_white, 1);
		}
	break;
	default:
	break;
}

if (motorbike == false && fuel >=40)
{
	draw_sprite_ext(sprite_get("fuel_prompt2"), 0, x-26, y-84, 2, 2, 0, c_white, 1);
}
if (hitConfirm && motorbike == false)
{
	draw_sprite_ext(sprite_get("fuel_canister"), 0, x-16, y-84, 2, 2, 0, c_white, 1);
	draw_debug_text(x +2, y-80, string(fuel));
}

if (nBoostReadyTimer < 100 && move_cooldown [AT_FSPECIAL_2] == 0 && motorbike == true)
{
	draw_sprite_ext(sprite_get("nitro_ready"), 0, x-36, y-94, 2, 2, 0, c_white, 1);
}

//Hyuponia's Changelog text
//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
//       Playtest Changelog Template by hyuponia. change the code as much you'd like
//       please paste somewhere in "post_draw.gml"!
//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
if (object_index == asset_get("oTestPlayer"))
{//this checks if it's in a playtest screen.
    if (!variable_instance_exists(id,"pn__init"))
    {//initialization part runs once
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

        patch_note_title[i] = "1.71"
        patch_note_text[i++] = 
		"Quick bug fix so that the CSS works correctly"

        patch_note_title[i] = "1.70"
        patch_note_text[i++] = 
		"These changes were intended for V2 but I brought them forward a bit to improve overall gamefeel.

		Jab, Ftilt, Utilt and Dtilt all now have hitboxes that last 3 frames, also on bike too.

		Startup for all these moves is now 4 frames. However on bike, Utilt and Dtilt are still 6 frames.
		
		Endlag has increased slightly from 17 to 20 and the cancel windows have all been moved 3 frames back.
		
		It is now easier to cancel Jabs and tilts on hit and they no longer require precise timing to do so.
		
		The first hit of all of these are untechable, normally these would have Force Flinch on first hit but due to the way the combo system works I can't really do that.
		
		FStrong is 3 frames shorter but is a bit faster to make up for it.
		
		NSpecial Endlag 27 -> 14.
		
		Dash Attack is back to no longer halting your speed on hit, you still lose all speed when parried however.
		
		Dash Attack can also be cancelled on hit at any time, not just in endlag.
		
		Reduced the height gained by Dair as it was overtuned, also upward vertical momentum as well as horizonal momentum is killed during startup
		
		Dair has been nerfed from 7/.4 Knockback to 5/.3 and has a hitstun multplier of 0.5.
		
		Dair cancels have been improved to be more responsive but you can only jump cancel after the hitbox comes out. In fact, you can only cancel in general after the hitbox comes out.

		Dair has a more distinctive startup pose to make it different from Nair (will probably make a new pose entirely for 2.0)
		
		Bike Nair Endlag reduced from 10 to 7 frames.
		
		Bair Endlag reduced from 15 frames to 7 frames.
		
		Bike Bair Endlag reduced from 17 to 12 frames.
		
		Both Uairs Endlag reduced from 17 to 10 and 9 frames respectively.
		
		Fair Startup 15 -> 10
		
		Fair Endlag reduced to 9 Endlag.
		
		Revamped Nair2 hitbox, now split into 5 that each linger for 2 frames but are all the same angle, which is now 65, no Angle Flippers anymore.
		
		FSpecial2 can only be jump cancelled after the hitbox comes out.
		
		Corrected the properites of the bike double jump hitbox so that it now behaves like Lilac's Cyclone
		
		Fixed bugs regarding hurt sprite during crystalisation doubling Carol's height.
		
		Fixed bug regarding the CSS loading.
		"		
		
        patch_note_title[i] = "1.69"
        patch_note_text[i++] = 
		"Increased the vertical height gained on Dair after hit, to give Carol an easier time to get to higher platforms.
		
		Added a flag that changes the assist attack index so that it doesn't interfere with Carol's on bike moveset.
		
		Implemented Hyuponia's Changelog Template so that you can view patchnotes in playtest."
		
		
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
        if (room == asset_get("network_char_select") || room == asset_get("workshop_room"))
        { //if in online playtest, or in extramode workshop list playtest
            //thanks to mr nart for heads up on using asset_get for room id's instead!
            pn__online = true; //switch to online view
        }
    }
    if (variable_instance_exists(id,"pn__init"))
    { //this is very unnecessary i just want to be safe to avoid error log
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
        //extramode workshop list playtest is room 72
        //online playtest is room 113
        
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
        if (pn__online)
        {//create online detection later
            var bc_x = clamp( 120, 100, 860 );//i guess this is the "center", bottom center
            var bc_y = clamp( (y + 111), 255, room_height-13 );
            var bc_yA = bc_y;
            var page_h = 190; //page height
        }
        var extendem = (pn__online)?260:0;
        
        //player freezer i hope
        if (pn__open)
        { //(if open)
            state = PS_SPAWN;
            state_timer = 89;
            hitpause = true; hitstop = 2; hitstop_full = 2;
        }
        //offset
        if (pn__opener_timer<pn__opener_timer_max)
        {
            pn__opener_timer++;
        }
        if (pn__select_timer<pn__select_timer_max)
        {
            pn__select_timer++;
        }
        if (pn__open)
        { //(if opened)
            var bc_yA = ease_expoOut( bc_yA-40, bc_y-page_h, pn__opener_timer, pn__opener_timer_max )
        }
        else
        { //(if closed)
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
        if (pn__open)
        { //(if opened)
            var txt_a = ease_expoOut( 0, 1, pn__opener_timer, pn__opener_timer_max )
        }
        else
        { //(if closed)
            var txt_a = ease_expoOut( 1, 0, pn__opener_timer, pn__opener_timer_max )
        }
        
        
        if (pn__open)
        { //(if open)
			//the main page contents
			//list page
			if (pn__displaying == false)
			{
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
				if (pn__open)
				{//scroll stuff n select stuff
					if (up_down)
					{
						if (pn__up_track==false)
						{
							pm__list_select_old = pn__list_select;  pn__list_select--;
							if (pn__list_select<0){pn__list_select = pn__list_max;}
							pn__up_track = true;
							pn__select_timer = 0;
							pn__list_old = "up"
							sound_play(pn__move_sound);
							pn__scroll_did = 0;
						}
					}
					else
					{ 
						pn__up_track = false; 
					};
					if (down_down)
					{
						if (pn__down_track==false)
						{
							pm__list_select_old = pn__list_select;  pn__list_select++;
							if (pn__list_select>pn__list_max){pn__list_select = 0;}
							pn__down_track = true;
							pn__select_timer = 0;
							pn__list_old = "down"
							sound_play(pn__move_sound);
							pn__scroll_did = 0;
						}
					}
					else
					{ 
						pn__down_track = false;
					};
					//list scroll stuff
					if ( ((pn_i*22)+26)+pn__scroll > page_h-20 )
					{//horrible puzzle of maths
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
					if (attack_down)
					{
						pn__displaying = true;
						pn__scroll = 0;
						sound_play(pn__confirm_sound);
					}
				}
				for (var t = 0; t <= pn__list_max; t += 1)
				{
					var x_off = (t==pn_i)?8+l_off_x:0;
					var y_off = (t==pn_i)?(t*22)+l_off_y:t*22;
					var y_loc = 26+pn__scroll-(l_off_y*pn__scroll_did);
					if (t==pn_i)
					{
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
	        if (pn__displaying == true)
	        {
				//txt set
				draw_set_halign(fa_left); draw_set_valign(fa_top);
				draw_set_font(asset_get("fName"));
				//time to draw changelog!!
				//text render is here!
				if (pn__open)
				{//scroll stuff
					var scroll_max = ( string_height_ext(patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem)-113 )*-1//thanks vman for finding this function
					if (up_down)
					{ 
						pn__scroll+=pn__scroll_speed * (shield_down+1);
					} //hold shield to scroll faster
					if (down_down)
					{ 
						pn__scroll-=pn__scroll_speed * (shield_down+1); 
					}
					pn__scroll = clamp( pn__scroll, scroll_max, 0 );
					if (special_down)
					{
						pn__displaying = false;
						pn__scroll = false;
						sound_play(pn__cancel_sound);
					}
				}
				draw_text_ext_transformed_colour(bc_x-96, bc_yA+pn__scroll+12, patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem, 1, 1, 0, pn_txt, pn_txt, pn_txt, pn_txt, txt_a);
			}//changelog over (if pn__displaying == true)
		}//open check over
     
		//taunt hold meter
		if (pn__taunt_timer>0)
		{
			var w_pr = ease_cubeIn( 2, pn__btn_width-2, round(pn__taunt_timer), pn__taunt_max );
			draw_rectangle_colour( bc_x-btn_wh, bc_yA-1, (bc_x-btn_wh)+w_pr, bc_yA, pn_acc,pn_acc,pn_acc,pn_acc, false );
			draw_set_alpha(1);
	    }
	    //checks for taunt being held, or if it's in list view and special is being held
	    if (taunt_down || (pn__open && special_down && pn__displaying == false))
	    {
	        if (pn__taunt_track == false)
	        {
	            pn__taunt_timer++;
	            if (pn__open){ pn__taunt_timer+=0.5; } //1.5x the speed when the panel is already open
	            if (pn__taunt_timer > pn__taunt_max)
	            {
					pn__open = !pn__open; //this toggles it hopefully
					pn__taunt_track = true;
					pn__taunt_timer = 0;
					pn__opener_timer = 0;
					sound_play(pn__swipe_sound);
				}
	        }
		}
		else
	    {
        	pn__taunt_track = false; 
        	pn__taunt_timer = 0; 
        };
        
        //change it back
        draw_set_alpha(a_str); draw_set_valign(fa_top); draw_set_halign(fa_center);
    }
}//testplay check over