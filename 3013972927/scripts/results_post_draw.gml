//results_post_draw.gml
//we use this script to draw over the player's portrait, similarly to the normal post_draw.gml

if (results_timer < 5) exit;

if ("chai_initialized_victory_screen" not in self)
{
    chai_initialized_victory_screen = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    //defaults to prevent errors
    chai_victory_quote = "Some kind of ERROR?? Eh... whatever"; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    
    //magic happens in there
    get_victory_screen_data();
}

if (winner == player)
{

    //panel constants
    var quote_pos_y =    320;
    var quote_pos_x =   -20;
    var hide_pos_x  = -1200;
    var quote_time  =   240;
    //Animate panel
    if ("chai_quote_current_pos_x" not in self)
    { chai_quote_current_pos_x = hide_pos_x; }
    
    //Must check with timing or if result boxes are open
    var diff = ((results_timer > quote_time && !someone_pressed) ? 
                    quote_pos_x : hide_pos_x) - chai_quote_current_pos_x;
    
    chai_quote_current_pos_x += sign(diff)  // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                                * max(min(abs(diff), 5), abs(diff) * 0.25);
    
    //Draw panel
    if (chai_quote_current_pos_x > hide_pos_x)
    {
       
        draw_sprite(sprite_get("victory_quote_bg"), 0, 
                    chai_quote_current_pos_x, quote_pos_y);
        draw_win_quote(chai_quote_current_pos_x+135, quote_pos_y+15, 
                        chai_victory_quote);
    }
}
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

#define get_random_quote()
{
    var quotes = [];
    var i = 0;
    quotes[i++] = "Huh, everyone's starting to look at me like I know what I'm doing.";
    quotes[i++] = "That's MR. Chai to you!";
    quotes[i++] = "Keep the rhythm up! Heh... that always makes me laugh!";
    quotes[i++] = "OK, I THINK I know what I'm doing now";
    quotes[i++] = "And the crowd goes wild!!";
    quotes[i++] = "(whispering) Chai... Chai... Chai... Thank you, thank yooou!";
    print(quotes[(current_time) % array_length(quotes)]);
    return quotes[(current_time) % array_length(quotes)];
}

#define get_victory_screen_data()
{
    var data_array = noone;
    //var data_batteries = true;
    //relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("chai_victory_screen_array" in self)
    {
        data_array = chai_victory_screen_array;
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
    chai_victory_quote = get_random_quote(); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    
    if (string_length(data_array[winner].status_quote) > 1)
    {
        //Status messages always take precedence for winner Chai
        chai_victory_quote = data_array[winner].status_quote; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
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

        chai_victory_quote = data_array[best_player].quote; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        if (string_length(chai_victory_quote) < 1)
        { chai_victory_quote = get_random_quote(); }
    }
    chai_victory_quote = get_random_quote(); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    
}