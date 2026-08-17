//results_post_draw.gml <3 code by Frtoud
// Note: draws in front of portraits, but behind the side boxes

//taken from reiga mal with permissison -hy
//it is from frtoud so as such, some things are still hypercam it looks like
if (results_timer < 5) exit;

if ("ushr_initialized_victory_screen" not in self)
{
    ushr_initialized_victory_screen = true;
    //defaults to prevent errors
    ushr_victory_quote = "This is truly the experience of a contemporary guardian angel This is truly the experience of a contemporary guardian angel This is truly the experience of a contemporary guardian angel This is truly the experience of a contemporary guardian angel This is truly the experience of a contemporary guardian angel";
    victoryicon_subimg = 0;
    
    //magic happens in there
    get_victory_screen_data();
}

//...only do the following with the frontmost Hypercam
if (winner == player /* && uhc_batteries */)
{
    //panel constants
    var quote_pos_y =    320;
    var quote_pos_x =   -20;
    var hide_pos_x  = -1200;
    var quote_time  =   240;
    //Animate panel
    if ("ushr_quote_current_pos_x" not in self)
    { ushr_quote_current_pos_x = hide_pos_x; }
    
    //Must check with timing or if result boxes are open
    var diff = ((results_timer > quote_time && !someone_pressed) ? 
                    quote_pos_x : hide_pos_x) - ushr_quote_current_pos_x;
    
    ushr_quote_current_pos_x += sign(diff) 
                                * max(min(abs(diff), 5), abs(diff) * 0.25);
    
    //Draw panel
    if (ushr_quote_current_pos_x > hide_pos_x && (string_length(ushr_victory_quote) >= 1))
    {
        draw_sprite(sprite_get("etc_victory_quote_bg"), 0, 
                    ushr_quote_current_pos_x, quote_pos_y);
		var tmp_icon = victoryicon_subimg;
		if (victoryicon_subimg==66){//string_delete(str, index, count)
			var tmp_str_len = string_length(ushr_victory_quote);
			//print("len: "+string(tmp_str_len));
			ushr_victory_quote = string_delete(ushr_victory_quote, 1, tmp_str_len-10)+string_delete(ushr_victory_quote, tmp_str_len-9, 10);
			var tmp_icon = ord(string_char_at(ushr_victory_quote, 1));
			//print(string(tmp_icon));
		}
        draw_sprite_ext(sprite_get("etc_faceicon"), tmp_icon, 
                    ushr_quote_current_pos_x + 37, quote_pos_y - 46, 3, 3, 0, c_white, 1);
        draw_win_quote(ushr_quote_current_pos_x+46, quote_pos_y+18, 
                        ushr_victory_quote);
    }
}

//debug version
/*
    {
        draw_sprite(sprite_get("victory_quote_bg"), 0, 
                    200, 200);
        draw_win_quote(200+135, 200+15, 
             //quote = "https://www.latlmes.com/ opinion/free-snes-emulator -no-survey-1"; 
                       "lmaoooooo haahahhashahh he said it he said tit im piickle woodmaaaan!!!!11!!");
    }
*/

//====================================================
#define draw_win_quote(posx, posy, quote)
{
    var text_scale = 3; //3x3 pixels
    var half_scale = text_scale/2; //font is already 2x2
    var max_line_length = floor(900 / text_scale);//600
    var line_spacing = 20;
    draw_set_font(asset_get("fName"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    //black contour
    for (var i = 0; i < 9; i++)
    {
        if (i != 4) //ignore middle
        {
            var t_x = floor(i / 3 - 1) * text_scale;
            var t_y = floor(i % 3 - 1) * text_scale;
            draw_text_ext_transformed_color
            (posx + t_x, posy + t_y, quote, line_spacing, max_line_length, 
             half_scale, half_scale, 0, c_black, c_black, c_black, c_black, 1);
        }
    }
    //white text
    draw_text_ext_transformed_color
    (posx, posy, quote, line_spacing, max_line_length, 
     half_scale, half_scale, 0, c_white, c_white, c_white, c_white, 1);
}

#define get_victory_screen_data()
{
    var data_array = noone;
    //var data_batteries = true;
    //relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("ushr_victory_screen_array" in self)
    {
        data_array = ushr_victory_screen_array;
        //data_batteries = uhc_batteries;
        break;
    }
    
    if (data_array == noone) return; // no data :(
    
    //uhc_batteries = data_batteries;

    //determine who's 2nd, 3rd and 4th by position of their boxes
    with asset_get("result_screen_box")
    {
        data_array[player].order = y;
    }
    
    // Best match:
    // - Self if priority >= 2
    // - not on your team
    // - highest priority
    // - highest ranking
    
    if (string_length(data_array[winner].status_quote) > 1)
    {
        //Status messages always take precedence for winner Hypercam
        ushr_victory_quote = data_array[winner].status_quote;
        victoryicon_subimg = data_array[best_player].icon;
    }
    else
    {
        var best_player = winner;
        var winning_team = data_array[winner].team;
        var best_is_on_team = true;
        
        for (var p = 1; p <= 4; p++) if is_player_on(p)
        {
            var best = data_array[best_player];
            var curr = data_array[p];
            
            var not_on_team = (curr.team != winning_team);
            var higher_ranking = (curr.order < best.order);
            var higher_priority = (curr.priority > best.priority);
            var same_priority = (curr.priority == best.priority);
            
            if (best_is_on_team && not_on_team)
            || (not_on_team && higher_priority)
            || (not_on_team && same_priority && higher_ranking)
            {
                best_player = p;
                best_is_on_team = (best.team == winning_team);
            }
        }

        ushr_victory_quote = data_array[best_player].quote;
        victoryicon_subimg = data_array[best_player].icon;
		
		/*print("winner is: "+string(winner))
		print("best_player is: "+string(best_player))
		print("best_player special is: "+string(data_array[best_player].special))
		print(string(data_array[1].special)+string(data_array[2].special)+string(data_array[3].special)+string(data_array[4].special))*/
		//special alt color overrides
		switch (data_array[winner].special)
		{
			case 1: // madeonfinale
				ushr_victory_quote = "Go out fighting, go out young... A flash of lightning... Eclipse the sun.";
				victoryicon_subimg = 0;
				break;
			
			case 2: // mightyfallen
				ushr_victory_quote = "Godspeed You! You're a determination!";
				victoryicon_subimg = 3;
				break;
			
			case 3: // littlesparkplasma
				ushr_victory_quote = "Hmph! That was too easy, try better next time, punk. ... Hehe, ahaha! Did that sound cool or did I totally mess it up?";
				victoryicon_subimg = 3;
				break;
			
			case 4: // m0417
				ushr_victory_quote = " ・ ・(bÑム ・h ・C ・1xp ・(*ÙHh& ・1x8 7 ゥ ↑??????????????Ë ・ ・ 2・ 5・ ・＊↑ゥA↑ çdqìïEゥ:    ゲヲa0モm3]T6モEDTモEUEcDU ...ｻ..ｻｪ.ｻｪｪｻｪｪｪ...ｻ..ｻ.ｪｻｪｪｻｪｪùôÝÕÊÃÌÈÉü↑リホツフヤヒナ→'siiq ・ ・nlhqF. ・H..h           >1 ・x.(ÑムHI ・J.1..R0  . ・ ・Cクaクiyi     p9  18  09  1 xQ    p8  0   x x ・モ8  0 ! p9  18..09  1 xQ    p8 0 ・ ・0E ・ ・0E ・ ・0E ・ ・0E ・ ・0T ・ ・ ・S ・ ・ ・C ・ ・ ・0.オ ・oF.H8'8h.I.9H...!ノ ロ ロ ロ ロ ロ ロ ロロロロロロロロロロ ロロロ ロ ロ ロ '9H   0 I# ; ; ; ; ; ; ; ; ; ; ; ; ; ; ; ; : : : : : : : : 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9  ウ 4  ウ 4  ウ 4  ウ 4  ウ 4--------------ミ.. . . . . . . . .w...Ue..UUv.Uev.......f... ・ ・ ・ ・C@3C.D '' 2._.!. ・ ! ・ ・ ・! ・ ・C.1S ・433123.4.3 DTE#UU43>E3#?v=s21Sxhahnms";
				victoryicon_subimg = 66;
				break;
			
			default: break;
		}
    }
    
}

