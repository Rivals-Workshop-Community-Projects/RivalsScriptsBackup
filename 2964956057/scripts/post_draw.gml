
//Genesis Glitch effect by Giik

if genesis && random_func_2(69, 4, 1) == 1 {
    // var col = ((random_func_2(49, 6, 1) == 3) ? c_red : c_white); // random red glitches
    var col = c_white; // glitch particles always match flowey's base color
    shader_start();
    var fs = random_func(0, sprite_height -1, 1);
    draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir*2, y+fs*2 - sprite_get_yoffset(sprite_index)*2, spr_dir*2, 2, col, 1);
    shader_end();
}

//Genesis shockwaveVFX

if("genesis_shockwave_vfx" in self && genesis_shockwave_vfx && genesis){
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x, y + ((char_height/2 - 0) * random_func_2((sprite_index%200), 2, false) * (attack == AT_UAIR || attack == AT_FAIR)), image_xscale + (0.5 + random_func_2((sprite_index%200), 2, false)) * spr_dir, image_yscale + 0.5 + random_func_2((sprite_index%200), 2, false), image_angle, c_red, 1 - (hitstop_full-hitstop)/hitstop_full/2);
    shader_end();
}

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
        patch_note_title[i] = "Creator Credits"
        patch_note_text[i++] = 
        "Creator Credits
Main spriter and creative director: Soka
Main coder: Reaver of Souls
Main sound source: Undertale
Additional spriters: Rosar78, Zard, Delta Parallax, Camostar34
Additional coders: Delta Parallax, DarkDakurai, V_force, Krispy Korpse
Victory theme musician: lock_wisp"
        
        patch_note_title[i] = "Version 1.0"
        patch_note_text[i++] = 
        "Version 1.0
+ The character released."

        patch_note_title[i] = "Version 1.1"
        patch_note_text[i++] = 
        "Version 1.1
+ Multiple sprites polished.
+ All sprites now recolor properly."

        patch_note_title[i] = "Version 1.2"
        patch_note_text[i++] = 
        "Version 1.2
+ DSpecial Air no longer loops near a wall.
+ Rudimentary AI restored."

        patch_note_title[i] = "Version 1.3"
        patch_note_text[i++] = 
        "Version 1.3
+ Final Strong fully implemented."

        patch_note_title[i] = "Version 1.4"
        patch_note_text[i++] = 
        "Version 1.4
+ Fixed compatibilities.
+ New victory theme by lock_wisp.
= Using Side Special on SAVEs now grapples.
- Grapples have diminishing returns in one airtime."

        patch_note_title[i] = "Version 1.5"
        patch_note_text[i++] = 
        "Version 1.5
+ Up Air's launcher knockback scaling 0.7 -> 0.8.
= Up Special now has a 10-frame cooldown after SAVE to minimize accidental LOADs.
- Flowey now goes into pratLAND for 20 frames when landing after LOAD.
+ Added champion alts.
+ Added alt customizer.
+ Added Down Taunt (sprites by Camostar34)."

        patch_note_title[i] = "Version 1.6"
        patch_note_text[i++] = 
        "Version 1.6
+ Pratland does not occur if Flowey is hit or dies before landing.
- Friendliness Pellet no longer gives Flowey parry invincibility.
+ Fixed alt customizer."

        patch_note_title[i] = "Version 1.7"
        patch_note_text[i++] = 
        "Version 1.7
General:
= Genesis alt added
= Added intro animation
+ Increased waveland adj 1.1 -> 1.3
= Potentially fixed issue keeping update from running
= Fixed issue where selecting the custom color alt in the CSS then switching to the true form alt changed the alt’s face to a random color
Jab:
- Increased jab 1 end lag 9 -> 14
+ Jab 1 hitstun multiplier normalized .85 -> 1
== Changes made to keep jab 1 from true comboing into itself
Fair:
= Spike hitpause adjusted 18/.9 -> 14/1.4
+ Extra camera shake added to spike
Ftilt:
+ Hitstun mult normalized .8 -> 1
== V_fork why did you leave this in here
- Kb decreased to compensate 7/.75 -> 7/.7
Ustrong:
== Fixed issue where grab code was applied to the launcher rather than the scoop hit
Dstrong:
== Hitbox shape adjusted to better fit the animation
Dair:
== Adjusted whiff sfx timing
Nspecial:
== Fixed issue where pellet homed onto dead opponents
Dspecial:
- Aerial start up increased 18 -> 20
+ Aerial fall speed increased 10 -> 16
= Adjusted sfx"

        patch_note_title[i] = "Version 1.7.1"
        patch_note_text[i++] = 
        "Version 1.7.1
= Fixed issue where nspecial instantly obliterated everyone if it didn't have a homing target.
= Fixed issue where nspecial still homed on players taunting on respawn plat."
        
        //these are optional things that you can change if you'd like, but probably best to keep as-is
        pn__bg_col = make_colour_rgb( 0,0,0 ); //bg color. // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__txt_col = make_colour_rgb( 255,255,255 ); //text color. // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__acc_col = get_player_hud_color( player ); //accent color. // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__btn_txt = "hold TAUNT: changelog"; //button text // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__btn_width = 176; //button width in pixels, change it accordingly to text // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__guide_txt = "use ATTACK / SPECIAL"; //select list guide text // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__swipe_sound = asset_get("mfx_result_expand"); //sound for when changelog is opened/closed with taunt // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__move_sound = asset_get("mfx_input_key"); //sound for moving between list entries // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__confirm_sound = asset_get("mfx_forward"); //sound for confirming a list entry // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__cancel_sound = asset_get("mfx_return_cursor"); //sound for cancelling out of a list entry // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__scroll_speed = 3; //the speed of which how fast you scroll up/down in text display // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        
        //*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
        //*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
        
        //below are the actual patch note rendering and stuff.
        //if you're not trying to do in-depth stuff, you dont have to touch these
        //these are permanent variables just so we only have to run them once
        //pn__ standing for Patch Note (double underscore cause i dont think anyone would do this, avoiding overlaps)
        pn__init = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__list_select = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pm__list_select_old = pn__list_select; //remember old selection for transition anim direction purposes // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__list_max = i-1; //print(string(pn__list_max)); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__taunt_track = 0; //after activated, checks if taunt has been unpressed before timer starts counting up again // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__taunt_timer = 0; //track how long taunt is being held // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__taunt_max = 50; //how long taunt should be held until its open // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__open = false; //is it open or not // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__opener_timer_max = 30; //opening timer max // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__opener_timer = pn__opener_timer_max; //timer for opening // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__displaying = false; //is it in the text screen (true) or in the list screen (false) // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__scroll = 0; //current amount of scroll // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__up_track = 0; //same with taunt track for list selection // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__down_track = 0; //yes // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__list_old = 0; //list selection storage // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__select_timer_max = 16; //selection transition timer max // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__select_timer = pn__select_timer_max; //selection transition timer // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__scroll_did = 0; //niche storage for if list has scrolled or not // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            pn__online = false; //set // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        if (room == asset_get("network_char_select") || room == asset_get("workshop_room")){ //if in online playtest, or in extramode workshop list playtest
            //thanks to mr nart for heads up on using asset_get for room id's instead!
            pn__online = true; //switch to online view // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
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
            state = PS_SPAWN; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            state_timer = 89; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            hitpause = true; hitstop = 2; hitstop_full = 2; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
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
                        pm__list_select_old = pn__list_select;  pn__list_select--; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        if (pn__list_select<0){pn__list_select = pn__list_max;}
                        pn__up_track = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        pn__select_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        pn__list_old = "up" // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        sound_play(pn__move_sound);
                        pn__scroll_did = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    }
                }else{ pn__up_track = false; };
                if (down_down){
                    if (pn__down_track==false){
                        pm__list_select_old = pn__list_select;  pn__list_select++; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        if (pn__list_select>pn__list_max){pn__list_select = 0;}
                        pn__down_track = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        pn__select_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        pn__list_old = "down" // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        sound_play(pn__move_sound);
                        pn__scroll_did = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    }
                }else{ pn__down_track = false; };
                
                //list scroll stuff
                if ( ((pn_i*22)+26)+pn__scroll > page_h-20 ){//horrible puzzle of maths
                    //print("true, down")
                    pn__scroll = clamp( (pn_i*-22)+81, -9000, 0 ); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    if (pn__online){ pn__scroll = clamp( (pn_i*-22)+132, -9000, 0 ); }
                    pn__scroll_did = 2; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                }
                if ( ((pn_i*22)+26)+pn__scroll < 26 ){
                    //print("true, up")
                    pn__scroll = clamp( (pn_i*-22)+6, -9000, 0 ); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__scroll_did = 2; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                }
                //print(string(pn__scroll))
                
                if (attack_down){
                    pn__displaying = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__scroll = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
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
            pn__scroll = clamp( pn__scroll, scroll_max, 0 ); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            if (special_down){
                pn__displaying = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                pn__scroll = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
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
                    pn__open = !pn__open; //this toggles it hopefully // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__taunt_track = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__taunt_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__opener_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    sound_play(pn__swipe_sound);
                }
            }
        }else{pn__taunt_track = false; pn__taunt_timer = 0; };
        
        //change it back
        draw_set_alpha(a_str); draw_set_valign(fa_top); draw_set_halign(fa_center);
    }
    
    
}//testplay check over