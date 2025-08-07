//results_post_draw.gml <3 code by Frtoud
// Note: draws in front of portraits, but behind the side boxes
if (results_timer < 5) exit;

if ("mal_initialized_victory_screen" not in self)
{
    mal_initialized_victory_screen = true;
    //defaults to prevent errors
    mal_victory_quote = "ermmmm that wasnt supposed to happen";
    victoryicon_subimg = 0;
    
    //magic happens in there
    get_victory_screen_data();
}

//...only do the following with the frontmost Hypercam
if (winner == player /* && uhc_batteries */)
{
    //panel constants
    var quote_pos_y =    288;
    var quote_pos_x =   -20;
    var hide_pos_x  = -1200;
    var quote_time  =   240;
    //Animate panel
    if ("mal_quote_current_pos_x" not in self)
    { mal_quote_current_pos_x = hide_pos_x; }
    
    //Must check with timing or if result boxes are open
    var diff = ((results_timer > quote_time && !someone_pressed) ? 
                    quote_pos_x : hide_pos_x) - mal_quote_current_pos_x;
    
    mal_quote_current_pos_x += sign(diff) 
                                * max(min(abs(diff), 5), abs(diff) * 0.25);
    
    //Draw panel
    if (mal_quote_current_pos_x > hide_pos_x && (string_length(mal_victory_quote) >= 1))
    {
        draw_sprite(sprite_get("victory_quote_bg"), 0, 
                    mal_quote_current_pos_x, quote_pos_y);
        draw_sprite_ext(sprite_get("stockicon"), victoryicon_subimg, 
                    mal_quote_current_pos_x + 46, quote_pos_y + 10, 1.5, 1.5, 0, c_white, 1);
        draw_win_quote(mal_quote_current_pos_x+135, quote_pos_y+6, 
                        mal_victory_quote);
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
    var max_line_length = floor(600 / text_scale);
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
    with (asset_get("pHitBox")) if ("mal_victory_screen_array" in self)
    {
        data_array = mal_victory_screen_array;
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
        mal_victory_quote = data_array[winner].status_quote;
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

        mal_victory_quote = data_array[best_player].quote;
        victoryicon_subimg = data_array[best_player].icon;
    }
    
}

