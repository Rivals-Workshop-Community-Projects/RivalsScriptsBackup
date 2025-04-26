//results_post_draw.gml <3 code by Frtoud
// Note: draws in front of portraits, but behind the side boxes
if (results_timer < 5) exit;

if ("blueybot_initialized_victory_screen" not in self)
{
    blueybot_initialized_victory_screen = true;
    //defaults to prevent errors
    blueybot_victory_quote = "> lmao u got an error";
    blueybot_victory_icon = 2;
    
    //magic happens in there
    get_victory_screen_data();
}

//...only do the following with the frontmost Hypercam
if (winner == player /* && uhc_batteries */)
{
    //panel constants
    var quote_pos_y =    310;
    var quote_pos_x =   -20;
    var hide_pos_x  = -1200;
    var quote_time  =   240;
    //Animate panel
    if ("blueybot_quote_current_pos_x" not in self)
    { blueybot_quote_current_pos_x = hide_pos_x; }
    
    //Must check with timing or if result boxes are open
    var diff = ((results_timer > quote_time && !someone_pressed) ? 
                    quote_pos_x : hide_pos_x) - blueybot_quote_current_pos_x;
    
    blueybot_quote_current_pos_x += sign(diff) 
                                * max(min(abs(diff), 5), abs(diff) * 0.25);
    
    //Draw panel
    if (blueybot_quote_current_pos_x > hide_pos_x && (string_length(blueybot_victory_quote) >= 1))
    {
        draw_sprite(sprite_get("victory_quote_bg"), 0, 
                    blueybot_quote_current_pos_x, quote_pos_y);
        draw_sprite_ext(sprite_get("stockicon"), blueybot_victory_icon, 
                    blueybot_quote_current_pos_x + 33, quote_pos_y - 6, 1.5, 1.5, 0, c_white, 1);
        draw_win_quote(blueybot_quote_current_pos_x+135, quote_pos_y+8, 
                        blueybot_victory_quote);
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
    var line_spacing = 18;
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
    quotes[i++] = "> what";
	quotes[i++] = "> bruh";
    quotes[i++] = "> lmao";
	quotes[i++] = "> bruh";
    quotes[i++] = "> ok";
    quotes[i++] = "> wtf";
    quotes[i++] = "> h";
	quotes[i++] = "> e";
	quotes[i++] = "> mid";
	quotes[i++] = "> whatever floats your boat";
	quotes[i++] = "> hmmm okay cool!";
	quotes[i++] = "> sounds great. where do we begin";
	quotes[i++] = "> i cannot feel my lungs";
	quotes[i++] = "> what did you say. it's too dark, i cant hear you";
	quotes[i++] = "> okay you can shut up now";
	quotes[i++] = "> okay. Okay!";
	quotes[i++] = "> that's incredibly sad";
	quotes[i++] = "> wow! it's fricking nothing!";
	quotes[i++] = "> bofa deez nuts";
	quotes[i++] = "> disagree";
	quotes[i++] = "> is this bait";
	quotes[i++] = "> you talk too much";
	quotes[i++] = "> what EVEN does that mean";
	quotes[i++] = "> you will make a fine addition to my cringe compilation";
	quotes[i++] = "> i'm a bot and even i think that is incredibly stupid by sapient being standards";
	quotes[i++] = "> i do not care";
	quotes[i++] = "> you like compost? cause i will compost your face if you keep up with your antics";
	quotes[i++] = "> do your parents know what do you do in the internet";
	quotes[i++] = "> you were warned.";
	quotes[i++] = "> do you think what you're about to say twice before saying it";
	quotes[i++] = "> go cry to mom about it then you controller face";
	quotes[i++] = "> at least i'm not an egg";
	quotes[i++] = "> what are you even saying";
	quotes[i++] = "> i'm tired of this chat";
	quotes[i++] = "> if you continue to reply to me i'm going to";
	quotes[i++] = "> i like this talk. we can continue in dms if you wish";
	quotes[i++] = "> intellectual statement you got there buddy";
	quotes[i++] = "> notice of meme acquisition";
	quotes[i++] = "> wow";
	quotes[i++] = "> holy crap";
	quotes[i++] = "> bite my shiny metal...NOSE";
	quotes[i++] = "> ah. i see. i understand. very well.";
	quotes[i++] = "> here's a schematic for ya: PINCH";
	quotes[i++] = "> have you even brushed your teeth this week dude";
	quotes[i++] = "> oi get the heck back here i can see you hanging on the ceiling";
	quotes[i++] = "> touch the electric fence...that's all I ask";
	quotes[i++] = "> shut up";
	quotes[i++] = "> mhm. continue then";
	quotes[i++] = "> you will make a fine addition to my cringe compilation";
	quotes[i++] = "> please don't pry in my personal matters";
	quotes[i++] = "> that is actually pretty stupid";
    return quotes[(current_time) % array_length(quotes)];
}

#define get_victory_screen_data()
{
    var data_array = noone;
    //var data_batteries = true;
    //relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("blueybot_victory_screen_array" in self)
    {
        data_array = blueybot_victory_screen_array;
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
        blueybot_victory_quote = data_array[winner].status_quote;
        blueybot_victory_icon = data_array[best_player].icon;
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

        blueybot_victory_quote = data_array[best_player].quote;
        blueybot_victory_icon = data_array[best_player].icon;
        if (string_length(blueybot_victory_quote) < 1)
        { blueybot_victory_quote = get_random_quote(); 
          blueybot_victory_icon = 2;    
        }
    }
    
}

