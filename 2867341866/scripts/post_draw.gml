//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
//       Playtest Changelog Template by hyuponia. change the code as much you'd like
//       please paste somewhere in "post_draw.gml"!
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
        patch_note_title[i] = "Newest Patch"
        patch_note_text[i++] = 
        "Misc:
-To celebrate RCS's new season and Aurs continued relevance, he now has an Arcade alt! It changes colors between stocks and has custom visual effects!
-To celebrate Mallows 2 Day late Birthday Bash, aur now has a Bad Rats alt, replacing the old Withered alt. It looks like shit. Thanks.
-To celebrate Aur being legal in Riptide, he now has a 'Riptidal Rush' alt! It has a unique water effect.
-Adjusted some animations and sound effects. 

Balance:
-Bug Fix: Aur can no longer grab gold in hitstun.
-Bug Fix: Aur should no longer drop downwards when occasionally hitting an opponent during up special.
-General: Pratland increased, 18 -> 20.
Mostly to match new F-Specials landing anim, but i think it deserved to take a slight tank after the new specials were added.

-Up Air: Base KB increased, 8 -> 9.
-Up Air: Landing lag increased, 6 -> 7 (10 -> 11 on whiff).
 Up Air feels slightly less powerful than I wanted it to be, so giving it a slight boost in knockback to closer match base cast stats will help it perform a bit more in line. It is slightly more punishable, though.

-Back Air: Landing lag increased, 7 -> 9 (11 -> 14 on whiff).
Gives you more time to punish aur for recklessly spamming back air.

-Down Special: Startup increased, 12 -> 13. 
-Down Special (Air): Has slightly less vertical momentum, -8 -> -7.
 This move is a bit overtuned right now, and while its allowed to be strong, I felt like it needed some slight tuning down to make it less of a get out of jail free card in disadvantage.

-Forward Special: Animation redone. Has very slightly less range as a result, though not necessarily noticable.
-Forward Special: Landing during the active frames of this hitbox (if you were in the air), or after a certain amount of time in endlag (on the ground), you will slam into the floor, giving you 20 extra frames of lag. 
-Forward Special: Disjoint slightly increased (Used to be slightly negatively disjoint, now is slightly positively disjointed).
The landing animation should give people time to punish Aur in situations where previously, he would take less lag than he should, in a way that was gimmicky and lame to fight. Particularly, this comes into effect when using the move near the ground, or off a platform above the ground. However, along with this, the move is a little bit harder to trade with.

-Forward Tilt: Hitbox adjusted slightly and made a rounded rectangle.
The move had a weird hitbox.

-Dash Attack: Hitbox moved inside to match visual better.
-Dash Attack: Hit 2 lifetime reduced, 5 -> 2.
-Dash Attack: Now throws Kragg Rock.

Oversight.

-Up Strong: Sourspot damage reduced, 14 -> 12.
-Up Strong: Sweetspot damage increased, 14 -> 15.
Oversight where the sourspot and sweetspot had the same damage.

-Down Strong: Pre-charge startup reduced by 1 frame.
Im tinkering with dstrong buffs because it was heavily nerfed recently, but nowadays it doesn't see much use because ustrong was only slightly slower and way better at coverage. The move might be adjusted later, but I'm not going to re-buff it too much.

v 2.35

-Fixed bug where Up Special would go into normal landing lag and not pratland when landing (Makes the move more punishable.
-Nspecial now has more landing lag when landing during the startup/endlag (4 -> 17).

v 2.36
-Fixed bug where Forward Special would slide off ledges during the landing animation.
-Adjusted colors

"
        
        patch_note_title[i] = "Quick Guide"
        patch_note_text[i++] = 
        "This is a quick overview for Aur that goes in a little more depth in how he plays.
He's a somewhat heavy rushdown character who focuses on large hitboxes that can rush the opponent and create a lot of pressure.
While he's slow normally, his main gimmick, Gold Rush, gives him access to amazing movement, rivalling the fastest in the base game.
He gets Gold Rush in 1 of 2 ways, both of which involving a gem that pops out of the opponent: 
    Hitting neutral special causes a gem to fly out. Run forward to pick it up and activate!
    Down Specials' Dynamite creates a gem you can pick up as well, working on whiff OR hit.
Gold rush makes his general movement faster, by like. A lot.
However, you get a LOT lighter aswell, meaning you have to be careful when using it.
He also gets access to Sliding Strikes, which basically just means if he runs forward and does a strong attack, he'll get a boost
Finally, some notes about his other specials:
    Forward Special can be cancelled into anything on hit. This is about as broken as it sounds. As the core of his moveset, use it to slide around and pressure the opponent in ways most characters can only dream of.
    Up Special has a sweetspot on the Dynamite stick when it explodes, its quite strong at killing.
    Down special boosts you up in the air, giving you some much needed extra momentum.
    Neutral Special is a very active move, and the grounded version is cancellable during the later portion of the endlag if you hit it. Not nearly as volatile as fspecial, but still a great option.
Thanks for reading! Hope you enjoy! You can contact me at mallow#4687 if you need anything."
        
        
        
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