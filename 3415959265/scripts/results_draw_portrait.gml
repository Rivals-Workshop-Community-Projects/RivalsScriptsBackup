//results_draw_portrait.gml
//draws sprites over the results but under everything that's in results_post_draw.gml

if ("is_sparking" not in self) //this bit is used as a sort of psuedo init.gml


//for some reason, the results screen runs twice per frame, making timers run twice as fast
//so this forces it to only check it once for a constant speed
if ("prev_time" not in self) //this bit is used as a sort of psuedo init.gml
{
    prev_time = 0;
}
if (prev_time != results_timer) //rainbow alts application code in the results screen
{
    if (get_player_color(player) == 11 || get_player_color(player) == 12) user_event(0);
    prev_time = results_timer;
}


////////////////////////////////////////////////////// WIN QUOTE COMPATIBILITY SYSTEM //////////////////////////////////////////////////////

if (results_timer < 5) exit;

if ("initialized_victory_screen" not in self) //set up the win quotes right before using them
{
    initialized_victory_screen = true;
    victory_quote = "Error. The win quote system was not installed correctly.";
    victory_emote = 0;
    stage_id = noone;
    
    get_victory_screen_data(); //applies all the data for the win quotes
}

if (winner == player) //win quote textbox drawing, should only run from the perspective of this player if they are the ones drawing the win screen
{
    //panel variables
    //feel free to tweak the stats here to your liking
    if (results_timer == 5)
    {
        quote_pos_y =   320;            //y position of the textbox
        quote_pos_x =   0;              //final x position of the textbox
        hide_pos_x  =   -1200;          //textbox x starting position
        quote_time  =   220;            //the amount of time it takes for the quote to appear

        quote_type_spd = 0.5;           //decides how many letters per frame are advancing (0 = no typewriter effect | 1 = one letter per frame)
        quote_drag = 0.07;              //how long it takes for the textbox to reach it's position, make sure the value is between 0 and 1, as 1 will just make it spawn instantly
        quote_time_skip_offset = 10;    //when the win screen is skipped once, this is how many frames it will take for the quote to appear
        can_skip_to_quote = true;       //if true, will allow the players to skip the animation for the victory screen to see the win quotes sooner

        a_player_skipped = false;       //if a player skipped the results screen this will initiate the code below to show the textbox sooner
    }
    //below this point you should't need to tweak anything


    //panel animation
    if ("quote_current_pos_x" not in self) quote_current_pos_x = hide_pos_x;
    if (results_timer > quote_time) quote_current_pos_x = lerp(quote_current_pos_x, quote_pos_x, quote_drag);
    //draw panel
    if (quote_current_pos_x > hide_pos_x)
    {
        //background
        draw_sprite_ext(sprite_get("wsc_win_quote_bg"), 0, quote_current_pos_x, quote_pos_y, 2, 2, 0, c_white, 1);
        //emote
        draw_sprite_ext(sprite_get("win_quote_emote"), victory_emote, quote_current_pos_x-2, quote_pos_y-10, 2, 2, 0, c_white, 1);
        //text
        draw_win_quote(
            quote_current_pos_x+150, quote_pos_y+30,
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

//inside this function, you write your generic win quotes for characters without compatibilities
#define use_generic_quote()
{
    var quotes = [];
    var i = 0;
    quotes[i++] = {quote: "Heh, you're pretty good!", emote: 0};
    quotes[i++] = {quote: "Not here either, I have to keep looking...", emote: 14};
    quotes[i++] = {quote: "That was great, maybe we can spar again sometime!", emote: 3};
    quotes[i++] = {quote: "Sorry, I have somewhere to be, I can't get distracted here.", emote: 14};
    /*quotes[i++] = {quote: "Let's go at it again some time!", emote: 5};
    quotes[i++] = {quote: "I'm feeling awkward..", emote: 5};
    quotes[i++] = {quote: "I'm surprised!", emote: 6};
    quotes[i++] = {quote: "I'm confounded...", emote: 7};*/
    return quotes[(current_time) % array_length(quotes)];
}


//you don't need to do anything with these defines, just make sure they exist
//these functions basically just draw the quote text and collect the data from unload.gml
#define draw_win_quote(posx, posy, quote)
{
    var text_scale = 1.4;
    var half_scale = text_scale/2; //font is already 2x2
    var max_line_length = floor(600 / text_scale);
    var line_spacing = 32;
    draw_set_font(asset_get("roaMBLFont"));
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
#define get_victory_screen_data()
{
    var data_array = noone;
    //relies on unload.gml sending over a persistent hit fx with said data
    //if the unload.gml data isn't passed, it will create an error winquote
    with (hit_fx_obj)
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
    // - Self if priority >= 2
    // - not on your team
    // - highest priority
    // - highest ranking
    if (string_length(data_array[winner].status_quote) > 1)
    {
        //status messages always take precedence for winner
        victory_quote = data_array[winner].status_quote;
        victory_emote = data_array[winner].status_emote;
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
        victory_emote = data_array[best_player].emote;

        if (string_length(victory_quote) < 1)
        {
            victory_quote = use_generic_quote().quote;
            victory_emote = use_generic_quote().emote;
        }
    }
}