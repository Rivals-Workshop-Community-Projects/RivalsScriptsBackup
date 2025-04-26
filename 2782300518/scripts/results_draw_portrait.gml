//Most of this code is from Tester by Bar-Kun, an adaptation of a system originall made by Frtoud
var alt_current = get_player_color(player);

//Run timer as proper.
if ("prev_time" not in self) //this bit is used as a sort of psuedo init.gml
{
    prev_time = 0;
}
if (prev_time != results_timer)
{
    prev_time = results_timer;
}


////////////////////////////////////////////////////// WIN QUOTE COMPATIBILITY SYSTEM //////////////////////////////////////////////////////

if (results_timer < 5) exit;

if ("initialized_victory_screen" not in self) 
{
    initialized_victory_screen = true;
    victory_quote = "Aw yeah, in your face!";
    stage_id = noone;
    
    get_victory_screen_data();
}

if (winner == player)
{
    if (results_timer == 5)
    {
        quote_pos_y = 320;
        quote_pos_x = 0;
        hide_pos_x = -1200;
        quote_time = 220;

        quote_type_spd = 0.5;
        quote_drag = 0.07;
        quote_time_skip_offset = 10;
        can_skip_to_quote = true;
        
        a_player_skipped = false;
    }

    if ("quote_current_pos_x" not in self) quote_current_pos_x = hide_pos_x;
    if (results_timer > quote_time) quote_current_pos_x = lerp(quote_current_pos_x, quote_pos_x, quote_drag);
    //draw panel
    if (quote_current_pos_x > hide_pos_x)
    {
        //background
        draw_sprite_ext((alt_current == 5)? sprite_get("win_quote_box_fp2") : sprite_get("win_quote_box"), 
        0, quote_current_pos_x, quote_pos_y, 2, 2, 0, c_white, 1);
        //text
        draw_win_quote(
            quote_current_pos_x + 10, quote_pos_y+6,
            quote_type_spd > 0 ? string_copy(victory_quote, 1, floor((results_timer - quote_time) * quote_type_spd) - 5) : victory_quote
        );
    }
    //quote skip code
    if (can_skip_to_quote && skipped_player != 0 && !a_player_skipped)
    {
        quote_time = results_timer + quote_time_skip_offset;
        a_player_skipped = true;
    }
}

#define use_generic_quote()
{
    var quotes = [];
    var i = 0;
    quotes[i++] = {quote: "Score one for the Carolster"};
    quotes[i++] = {quote: "Ready for Round Two"};
    quotes[i++] = {quote: "Is it over already? I was having so much fun."};
    quotes[i++] = {quote: "Aw yeah, in your face"};
    quotes[i++] = {quote: "All right, who else wants a face full of punchies?"};
    return quotes[(current_time) % array_length(quotes)];
}


#define draw_win_quote(posx, posy, quote)
{
    var text_scale = 2;
    var half_scale = text_scale/2;
    var max_line_length = floor(800 / text_scale);
    var line_spacing = 32;
    draw_set_font(asset_get("roaMBLFont"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    var alt_current = get_player_color(player)
    if (alt_current == 5)
    {
        draw_text_ext_transformed_color(posx, posy, quote, line_spacing, max_line_length, 
        half_scale, half_scale, 0, c_black, c_black, c_black, c_black, 1);
    }
    else
    {
        draw_text_ext_transformed_color(posx + text_scale, posy + text_scale, quote, line_spacing, max_line_length, 
        half_scale, half_scale, 0, c_black, c_black, c_black, c_black, 1);
        var fp_color = make_color_rgb(248, 252, 248);
        var fp_color2 = make_color_rgb(144, 212, 248);
        draw_text_ext_transformed_color(posx, posy, quote, line_spacing, max_line_length, 
            half_scale, half_scale, 0, fp_color, fp_color, fp_color2, fp_color2, 1);
    }
}
#define get_victory_screen_data()
{
    var data_array = noone;
    //relies on unload.gml sending over a persistent hit fx with said data
    //if the unload.gml data isn't passed, it will create an error winquote
    with (hit_fx_obj) if (player == other.winner) //the player check here helps make sure that the winner is indeed the one running this code for the data
    {
        if (string(player_id) in self)
        {
            data_array = variable_instance_get(self, string(player_id));
            other.stage_id = stage;
            break;
        }
    }
    
    if (data_array == noone) return; //no data to take

    //determine who's 2nd, 3rd and 4th by position of their boxes
    with (asset_get("result_screen_box")) data_array[player].order = y;
    
    // Best match:
    // - self if priority >= 2
    // - not on your team
    // - highest priority
    // - highest ranking
    if (string_length(data_array[winner].status_quote) > 1)
    {
        //status messages always take precedence for winner
        victory_quote = data_array[winner].status_quote;
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

        victory_quote = data_array[best_player].quote;

        if (string_length(victory_quote) < 1)
        {
            victory_quote = use_generic_quote().quote;
        }
    }
}