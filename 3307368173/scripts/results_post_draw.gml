//results_post_draw.gml//results_post_draw.gml <3 code by Frtoud
// Note: draws in front of portraits, but behind the side boxes
if (results_timer < 5) exit;

if ("sarolyn_initialized_victory_screen" not in self)
{
    sarolyn_initialized_victory_screen = true;
    //defaults to prevent errors
    sarolyn_victory_quote = "Help! I can't talk cause someone didn't code right!";
    victoryicon_subimg = 0;
    
    //magic happens in there
    get_victory_screen_data();
}

//...only do the following with the frontmost sarolyn
if (winner == player /* && uhc_batteries */)
{
    //panel constants
    if (results_timer == 5)
    {
        quote_pos_y =   310;
        quote_pos_x =   -20;
        hide_pos_x  =   -1200;
        quote_time  =   220;
        a_player_skipped = false;
    }
    //player skip check
    if (skipped_player != 0 && !a_player_skipped)
    {
        quote_time = results_timer;
        a_player_skipped = true;
    }

    //player skip check
    if (skipped_player != 0 && !a_player_skipped)
    {
        quote_time = results_timer;
        a_player_skipped = true;
    }

    //Animate panel
    if ("sarolyn_quote_current_pos_x" not in self)
    { sarolyn_quote_current_pos_x = hide_pos_x; }
    
    //Must check with timing or if result boxes are open
    var diff = ((results_timer > quote_time && !someone_pressed) ? 
                    quote_pos_x : hide_pos_x) - sarolyn_quote_current_pos_x;
    
    sarolyn_quote_current_pos_x += sign(diff) 
                                * max(min(abs(diff), 5), abs(diff) * 0.25);
    
    //Draw panel
    if (sarolyn_quote_current_pos_x > hide_pos_x && (string_length(sarolyn_victory_quote) >= 1))
    {
        draw_sprite(sprite_get("victory_quote_bg"), 0, 
                    sarolyn_quote_current_pos_x, quote_pos_y);
	draw_sprite_ext(sprite_get("stockicon"), victoryicon_subimg, 
                    sarolyn_quote_current_pos_x + 32, quote_pos_y + 10, 3, 3, 0, c_white, 1);
        draw_win_quote(sarolyn_quote_current_pos_x+135, quote_pos_y+8, 
                        sarolyn_victory_quote);
    }
}

//debug version
/*
    {
        draw_sprite(sprite_get("victory_quote_bg"), 0, 
                    200, 200);
        draw_win_quote(200+135, 200+15, 
             //quote = "Heyo! Name's sarolyn and I'm testing my voice!"; 
                       "Yoooo-whoooo, anyone there?");
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

//====================================================
#define get_random_quote()
{
    var quotes = [];
    var i = 0;
    quotes[i++] = "Pathetic scum.";
    quotes[i++] = "Hmph. What a joke.";
    quotes[i++] = "......";
    quotes[i++] = "Tch. Such a waste of my time.";
    quotes[i++] = "Congratulations. You let your own fear kill you instead.";
    quotes[i++] = "My blade didn't even deserve to touch such a weak minded fool.";
    quotes[i++] = "Next time, think before you act.";
    quotes[i++] = "You mean nothing to me. Now perish.";
    quotes[i++] = "Bask in the midnight's frigid darkness.";
    quotes[i++] = "Fool. You brought this upon yourself.";
    quotes[i++] = "I want to see you die fighting. You're far too lax.";
    return quotes[(current_time) % array_length(quotes)];
}

//====================================================
#define get_victory_screen_data()
{
    var data_array = noone;
    //var data_batteries = true;
    //relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("sarolyn_victory_screen_array" in self)
    {
        data_array = sarolyn_victory_screen_array;
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
        //Status messages always take precedence for winner sarolyn
        sarolyn_victory_quote = data_array[winner].status_quote;
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

        sarolyn_victory_quote = data_array[best_player].quote;
	victoryicon_subimg = data_array[best_player].icon;
        if (string_length(sarolyn_victory_quote) < 1)
        { sarolyn_victory_quote = get_random_quote(); }
    }
    
}

