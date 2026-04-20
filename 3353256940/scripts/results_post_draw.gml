//results_post_draw.gml <3 code by Frtoud
// Note: draws in front of portraits, but behind the side boxes
if (results_timer < 5) exit;

if ("twenny_initialized_victory_screen" not in self)
{
    twenny_initialized_victory_screen = true;
    //defaults to prevent errors
    twenny_victory_quote = "ermmmm that wasnt supposed to happen";
    twenny_victory_icon = 0;
    twenny_vic_face = "vicf_default"
    twenny_vic_face_speed = 30;
    twenny_vic_line = "charselect_laugh"
    

    //magic happens in there
    get_victory_screen_data();
}

if (get_player_color( player ) == 21) twenny_victory_quote = get_genesis_quotes();

//...only do the following with the frontmost Hypercam
if (winner == player /* && uhc_batteries */)
{
    //panel constants
    var quote_pos_y =    220;
    var quote_pos_x =   -20;
    var hide_pos_x  = -1200;
    var quote_time  =   240;
    //Animate panel
    if ("twenny_quote_current_pos_x" not in self)
    { twenny_quote_current_pos_x = hide_pos_x; }
    
    //Must check with timing or if result boxes are open
    var diff = ((results_timer > quote_time && !someone_pressed) ? 
                    quote_pos_x : hide_pos_x) - twenny_quote_current_pos_x;
    
    twenny_quote_current_pos_x += sign(diff) 
                                * max(min(abs(diff), 5), abs(diff) * 0.25);
    
    //Draw panel
    if (twenny_quote_current_pos_x > hide_pos_x && (string_length(twenny_victory_quote) >= 1))
    {
        draw_sprite_ext(sprite_get("vic_box"), 1, 
                    twenny_quote_current_pos_x, quote_pos_y, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get(twenny_vic_face), results_timer*sprite_get_number(sprite_get(twenny_vic_face))/twenny_vic_face_speed, 
                    twenny_quote_current_pos_x + 44, quote_pos_y + 16, 0.5, 0.5, 0, c_white, 1);
        draw_win_quote(twenny_quote_current_pos_x+135, quote_pos_y + 80, 
                        twenny_victory_quote);
    }
    
    // Play sfx
    if (results_timer == 240) {
        sound_play(sound_get(twenny_vic_line));
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
             half_scale, half_scale, 0, $eba34a, $eba34a, $eba34a, $eba34a, 1);
        }
    }
    //blue text
    draw_text_ext_transformed_color
    (posx, posy, quote, line_spacing, max_line_length, 
     half_scale, half_scale, 0, c_white, c_white, c_white, c_white, 1);
}

//====================================================
#define get_random_quote()
{
    var quotes = [];
    var icons = [];
    var voiceclips = [];
    var i = 0;
    var i_i = 0;
    var v_i = 0;
    quotes[i++] = "> DID WE GET THAT 0N CAMERA? THE F0LKS AT H0ME ARE G0NNA L0VE THIS!";
    icons[i_i++] = "vicf_laugh";
    voiceclips[v_i++] = "vic_d1";
    //
    quotes[i++] = "> AND THUS MARKS THE TWENNY SH0W’S SEAS0N FINALE! SEEYA NEXT TIME, LADIES AND GERMS!";
    icons[i_i++] = "vicf_laugh";
    voiceclips[v_i++] = "vic_d2";
    //
    quotes[i++] = "> STARS W/ P0TENTIAL LIKE Y0U CAN’T JUST WALK AWAY W/0UT THEIR SKULLS CAVED IN!";
    icons[i_i++] = "vicf_glitch";
    voiceclips[v_i++] = "vic_d3";
    //
    quotes[i++] = "Error: Item [3] in Dict Struct: “Dialog Tree” unreachable.";
    icons[i_i++] = "vicf_nothing";
    voiceclips[v_i++] = "error";
    //
    //
    quotes[i++] = "> THIS WILL SURELY PLEASE THE SEWER RAT DEM0GRAPHIC.";
    icons[i_i++] = "vicf_stare";
    voiceclips[v_i++] = "vic_d4";
    //
    //
    quotes[i++] = "> THAT'S THE HXC-020 STYLE... NUMBNUTS!!!";
    icons[i_i++] = "vicf_laugh";
    voiceclips[v_i++] = "vic_d5";
    //
    //
    quotes[i++] = "> TELL ME I WAAAASN'T THE CUTEST~ <TELL ME.>";
    icons[i_i++] = "vicf_angry";
    voiceclips[v_i++] = "vic_d6";
    //
    //
    quotes[i++] = "HAHAHA... AHAHA AHAHAHAAAAH!";
    icons[i_i++] = "vicf_laugh";
    voiceclips[v_i++] = "vic_d8";
    //
    //
    quotes[i++] = "> SC00P TH0SE BL00D & GUTS BACK IN- WE CAN’T AFF0RD CHANGING 0UR AGE RATING!";
    icons[i_i++] = "vicf_stare";
    voiceclips[v_i++] = "vic_d9";
    //
    //
    quotes[i++] = "> <IDI0T.>    <IDI0T.>    <IDI0T.>";
    icons[i_i++] = "vicf_angry";
    voiceclips[v_i++] = "vic_d10";
    //
    //
    quotes[i++] = "> D0N’T LET L00KS DECEIVE Y0U! I'M >= TIN… TRASH… GATHERING DUST… IN A DRAINPIPE.";
    icons[i_i++] = "vicf_glitch";
    voiceclips[v_i++] = "vic_d11";
    //
    //

    return [quotes[(current_time) % array_length(quotes)], icons[(current_time) % array_length(icons)], voiceclips[(current_time) % array_length(voiceclips)]];
}

#define get_genesis_quotes()
{
    var quotes = []
    var i = 0;
    quotes[i++] = "How much is too much?"
    quotes[i++] = "Genesis."
    quotes[i++] = "47 45 4E 45 53 49 53" 
    quotes[i++] = "GENESISGENESISGENESISGENESISGENESIS GENESISGENESISGENESISGENESIS GENESISGENESISGENESIS" 
    quotes[i++] = "     When did you start being yourself?" 
    quotes[i++] = "sirensong" 
    quotes[i++] = "G XX G XX" 
    quotes[i++] = "GETOUTGETOUTGETOUTGETOUT" 
    quotes[i++] = "    Life Link" 
    quotes[i++] = "thedreamer" 
    quotes[i++] = " Dreamlike Reality."
    quotes[i++] = "2020202020202020202020202020202020 2020202020202020202020202020202020" 
    quotes[i++] = "I can make myself believe I can make myself forget" 
    quotes[i++] = "Yet i cannot control these no more As much subconsciousness runs beyond my control" 
    quotes[i++] = "> <IDI0T.>    <IDI0T.>    <IDI0T.>" 
    quotes[i++] = "shallows" 
    quotes[i++] = "I'm half crazy  All for the love of you" 
    quotes[i++] = "      Genesis." 
    quotes[i++] = "<strong>ONE?</strong><br><i>MANY...</i><br>THE SAME WAY AS <ul>0ES</ul> AND <ul>1S</ul> GO," 
    quotes[i++] = "               afterbirth" 
    quotes[i++] = "How long did it take for her to smile?" 
    quotes[i++] = "haruka.." 
    quotes[i++] = "Whatever it takes." 
    quotes[i++] = "> D0N’T LET L00KS DECEIVE Y0U! I'M  TRASH  TRASH  TRASH  TRASH" 
    quotes[i++] = "gENESIS : rE : bIRTH" 
    quotes[i++] = "kindly check the attached LOVELETTER coming from me." 
    quotes[i++] = "                -1" 
    quotes[i++] = "gcc -c hello.s && ld hello.o && ./a.out" 
    quotes[i++] = "   :))" 
    quotes[i++] = "Thank you for the love  Thank you for the joy" 
    quotes[i++] = "GE::nesis"
    quotes[i++] = "           PLEASE WAKE UP." 
    quotes[i++] = "   What did [ ] do?" 
    quotes[i++] = "ANY FILES IN THE UPLOADED DIRECTORY WHICH ARE NOT SUPPORTED BY STEAM WORKSHOP  WILL BE AUTOMATICALLY DELETED. ARE YOU S" 
    quotes[i++] = "   Genesis." 
    quotes[i++] = "'M" 
    quotes[i++] = "          idbirth" 
    quotes[i++] = "You're absolutely right! It's not just  ,  it's  ,  !" 
    quotes[i++] = "This is my intellect." 
    quotes[i++] = "  RE : RE : RE : ER ::: : BIRTH" 
    quotes[i++] = "WHAT'S WRONG WITH IT NOT BEING REAL? WHEN IT'S REAL IT'S WHEN IT SUCKS" 
    quotes[i++] = "I HATE WHEN IT'S REAL." 
    quotes[i++] = "突然のキスや" 
    quotes[i++] = "  Genesis." 
    quotes[i++] = "            -2" 
    quotes[i++] = "My nerves shortcircuited by lifeblood, cables of copper-lined sinew undone." 
    quotes[i++] = "    XX    XX  XX XX   XX XX XX XX  XX   XX" 
    quotes[i++] = "Between millions of people around the world i found you. Don't forget to remember this day every time MY FRIEND!" 
    quotes[i++] = "iT'S sO sIMPLE i"
    quotes[i++] = "                         Unlisted Funlands!"
    quotes[i++] = "{ [ (    ( (" 
    quotes[i++] = "The pain itself is the reason why."
    quotes[i++] = "G-X-N-X-S-I-S"
    quotes[i++] = "20   10   5 4 2 1"
    
    return string(quotes[(current_time / 200 ) % array_length(quotes) ]);
}

#define get_victory_screen_data()
{
    var data_array = noone;
    //var data_batteries = true;
    //relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("twenny_victory_screen_array" in self)
    {
        data_array = twenny_victory_screen_array;
        //data_batteries = uhc_batteries;
        
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
        twenny_victory_quote = data_array[winner].status_quote;
        twenny_vic_face = data_array[winner].icon;
        twenny_vic_line = data_array[winner].voiceline;
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

        twenny_victory_quote = data_array[best_player].quote;
        twenny_vic_face = data_array[best_player].icon;
        twenny_vic_line = data_array[best_player].voiceline;
        
        if get_player_color( player ) == 20 {
            twenny_victory_quote = " ";
            twenny_vic_face = "vicf_nothing"
            twenny_vic_line = "vic_--"
        }
        else if get_player_color( player ) == 21 {
            twenny_victory_quote = "test"
            
            twenny_vic_face = "vicf_glitch"
            twenny_vic_line = "vict_female"
        }
        else 
        { if (string_length(twenny_victory_quote) < 1)
            { 
                var rand_quote_face = get_random_quote(); 
                twenny_victory_quote = string(rand_quote_face[0]);
                twenny_vic_face = string(rand_quote_face[1]);
                twenny_vic_line = string(rand_quote_face[2]);
            }
        }
    }
    
}

