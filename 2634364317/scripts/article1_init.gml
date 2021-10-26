//article init
sprite_index = asset_get("empty_sprite");
chairs_spr = sprite_get("chairs");
depth -= 16;

//list of sprites for audiences
audience_sprs[4] = sprite_get("audience_coolerkoopa");
audience_sprs[3] = sprite_get("audience_koopa");
audience_sprs[2] = sprite_get("audience_goomba");
audience_sprs[1] = sprite_get("audience_toad");
audience_sprs[0] = asset_get("empty_sprite"); //empty seat

var num_audience_types = array_length(audience_sprs) - 1;

chair_width = 92;
back_row_yoffset = 32;

audience_front_row = 11;
audience_back_row = 10;

audience_number = audience_front_row + audience_back_row;

//Rock being thrown
rock_throw_chance = 45; //in percents: otherwise skips chance to throw
rock_throw_timer = 600; // 10 seconds
rock_throw_min_wait = 240; // 4 seconds
rock_throw_max_wait = 960; // 16 seconds
rock_state = 0;
rock_obj = { x:0, y:0, vsp:0, hsp:0,
                timer:0, timer_max:0, 
                target_x:0, target_y:0 
              }
              
rock_held_height = -100;
rock_targetx_min = 100;
rock_targetx_max = 850;
rock_targety_min = 200;
rock_targety_max = 460;

//inputs
//this lets the crowd's randomizer know to use hype animations instead of idles
react_type = 0; //see article1_update
react_timer = 0;

//pre-init the array
for (var i = 0; i < audience_number; i++)
{ audience_array[audience_number - i - 1] = noone; }

var seed = get_audience_seed(); //make this as unique as possible per match

//===========================================================
//checks for unique compatibility audiences
var has_mario = false; //mario in match
var has_luigi = false; //luigi in match
with (oPlayer)
{
    var char_name = get_char_info(player, INFO_STR_NAME);
    char_name = string_lower(char_name);
    if (string_pos("mario", char_name) > 0) has_mario = true;
    if (string_pos("luigi", char_name) > 0) has_luigi = true;
    
    //also check for compat here
    if ("ttyd_audience_sprite" in self)
    {
        var ttyd_spr = ttyd_audience_sprite;
        with (other)
        { create_audience(ttyd_spr, random_func_2(seed++ % 200, audience_number, true)); }
    }
}
//===========================================================

//add luigi (maybe)
//guaranteed to spawn if Mario is playing
//guaranteed NOT to spawn if Luigi is playing
var luigi_chance = 5; //in percents
if !has_luigi && (has_mario || (luigi_chance > random_func_2(seed++ % 200, 100, false)))
{
    create_audience(sprite_get("audience_luigi"), random_func_2(seed++ % 200, audience_number, true));
}

//for more unique audiences
//if (5 > random_func_2(seed++ % 200, 100, false))
//{
//    create_audience(sprite_get("more_audience"), random_func_2(seed++ % 200, audience_number, true));
//}
//===========================================================

// % chance of having audience full of only one type
var fill_audience_with = 0;
var fill_chance = 4;
if (fill_chance >= random_func_2((2 * seed) % 200, 100, false))
{
    fill_audience_with = random_func_2((3 * seed) % 200, num_audience_types, true);
}
//===========================================================

//initialization
for (var i = 0; i < audience_number; i++)
{
    var char_spr = audience_sprs[(fill_audience_with > 0) ? 
                   fill_audience_with : 1 + random_func_2((i * seed) % 200, num_audience_types, true)];
    create_audience(char_spr, i);
}

//===========================================================
//shortcut to create an audience at position i in crowd
#define create_audience(input_sprite, i)
/*
Audience structure:
 - sprite: what to draw
 - subimg: 0 for sitting, 1 for jumping
 - angle: "rotation" of sprite (affects xscale)
 - xscale: (if negative, draws the "face" of the character, image_index +1)
 - x: position offset of character
 - y: position offset of character
 
 - seat_x: position offset of chair
 - seat_y: position offset of chair
 
 - state: what the character is currently doing (missing, nothing, idle1, idle2, jumping, jumptwirl, entering, exiting)
 - state_timer: current counter for this state
 
 - cooldown: time until next idling reaction
 - react_delay: time until going with crowd reaction
 
 - vsp: jump speed
 - can_twirl: if jumptwirl... twirls.
 
 - num: shortcut to seat number, varies randomizer calls a bit
 
*/
if (i < array_length(audience_array)) && (audience_array[i] == noone)
{
    audience_array[i] = 
    {
        x: 15 - random_func_2(i % 200, 30, true), 
        y: 0,
        seat_x: i*chair_width,
        seat_y: 20,
        
        vsp: 0,
        sprite: input_sprite,
        subimg: 0,
        angle: 0, 
        xscale: 1,
        yscale: 1,
        state: 0, 
        state_timer: random_func_2(2*i % 200, 60, true),
        cooldown: random_func_2(3*i % 200, 180, true),
        react_delay: random_func_2(4*i % 200, 20, true),
        can_twirl: false,
        
        num: i
    }
    
    if (i >= audience_front_row)
    {
        audience_array[i].seat_x = (i - audience_front_row + 0.5) * chair_width;
        audience_array[i].seat_y += back_row_yoffset;
    }
}
//===========================================================
//tries to poke at the most values possible to get a good random
#define get_audience_seed()
{
    var seed = 0;
    with (oPlayer)
    {
        seed += player;
        if ("url" in self)
        {
            if is_number(url)
                seed += url;
            else if (string_length(string_digits(url)) > 0)
                seed += real(string_digits(url));
        }
        seed %= 200;
    }
    return abs(seed);
}
