//results_post_draw.gml
//code by Frtoud
// Note: draws in front of portraits, but behind the side boxes
if (results_timer < 5) exit;

if ("initialized_victory_screen" not in self)
{
    initialized_victory_screen = true;
    //defaults to prevent errors
    bar_victory_quote = "You... Didn't code this properly, did you?";
    emote = 3;
    stage_id = noone;
    
    //magic happens in there
    get_victory_screen_data();
}

//...only do the following with the frontmost char
if (winner == player)
{
    //panel constants
    if (results_timer == 5)
    {
        quote_pos_y =   320;
        quote_pos_x =   0;
        hide_pos_x  =   -1200;
        quote_time  =   240;
        a_player_skipped = false;
    }
    //player skip check
    if (skipped_player != 0 && !a_player_skipped)
    {
        quote_time = results_timer;
        a_player_skipped = true;
    }


    //Animate panel
    if ("quote_current_pos_x" not in self) quote_current_pos_x = hide_pos_x;
    
    //Must check with timing or if result boxes are open
    var diff = ((results_timer > quote_time) ? quote_pos_x : hide_pos_x) - quote_current_pos_x;
    
    quote_current_pos_x += sign(diff) * max(min(abs(diff), 5), abs(diff) * 0.25);
    
    //Draw panel
    if (quote_current_pos_x > hide_pos_x)
    {
        draw_sprite(sprite_get("win_quote_bg"), 0, quote_current_pos_x, quote_pos_y);
        draw_win_quote(quote_current_pos_x+117, quote_pos_y+7, bar_victory_quote);

        draw_sprite(sprite_get("win_quote_emote"), emote, quote_current_pos_x+12, quote_pos_y+9)
    }
}

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
    draw_text_ext_transformed_color(
        posx, posy, quote, line_spacing, max_line_length, 
        half_scale, half_scale, 0, c_white, c_white, c_white, c_white, 1
    );
}

//====================================================
#define get_random_quote()
{
    var quotes = [];
    var i = 0;
    quotes[i++] = {quote: "Maybe don't try to tick me off next time!", emote: 1};
    quotes[i++] = {quote: "Are we done here?", emote: 0};
    quotes[i++] = {quote: "Glad it's over already, I have places to be.", emote: 3};
    quotes[i++] = {quote: "I don't think you knew what you were dealing with here.", emote: 3};
    quotes[i++] = {quote: "If this didn't teach you - next time you won't be so lucky, mark my words.", emote: 6};
    quotes[i++] = {quote: "I will put an end to the demons' terror, one way or another!", emote: 6};
    return quotes[(current_time) % array_length(quotes)];
}

//====================================================
#define get_victory_screen_data()
{
    var data_array = noone;
    //relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox"))
    {
        if ("bar_victory_screen_array" in self)
        {
            data_array = bar_victory_screen_array;
            other.stage_id = stage;
            break;
        }
    }
    
    if (data_array == noone) return; // no data :(

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
        //Status messages always take precedence for winner bar
        bar_victory_quote = data_array[winner].status_quote;
        emote = data_array[winner].status_emote;
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

        bar_victory_quote = data_array[best_player].quote;
        emote = data_array[best_player].emote;

        if (string_length(bar_victory_quote) < 1)
        {
            bar_victory_quote = get_random_quote().quote;
            emote = get_random_quote().emote;
        }
    }
}