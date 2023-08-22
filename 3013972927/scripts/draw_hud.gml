//draw_hud.gml
//this script runs pretty much all the time, and simply draws whatever we tell it over the player's UI at the bottom of the screen
//instead of "x" and "y" we use "temp_x" and "temp_y" for proper locations

if ("char_height" not in self) exit;
/*
if (debug_display)
{
    var mul = 16; //spacing
    
    draw_debug_text(temp_x+mul*0, temp_y+mul*-4, "state = " + string(get_state_name(state)));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-3, "state_timer = " + string(state_timer));

    if (
        is_attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
        state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE) // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    {
        if (is_attacking) draw_debug_text(temp_x+mul*0, temp_y+mul*-7, "attack = " + string(attack_names[attack]));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-6, "window = " + string(window));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-5, "window_timer = " + string(window_timer));
    }

    draw_debug_text(temp_x+mul*0, temp_y+mul*-2, "x = " + string(x));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-1, "y = " + string(y));

    draw_debug_text(temp_x+mul*5, temp_y+mul*-2, "hsp = " + string(hsp));
    draw_debug_text(temp_x+mul*5, temp_y+mul*-1, "vsp = " + string(vsp));
}
*/

draw_debug_text(
    (!debug_display ? temp_x + 86 : temp_x + 124),    //debug display alters the position of the hud
    (!debug_display ? temp_y - 24 : temp_y - 30) + 10,      //the +16 and +10 are offsets
    string(songBPM)
);

draw_sprite_ext(
    assistHud_strip[assist_index],
    move_cooldown[AT_DSPECIAL] > 0,
    temp_x -3,
    temp_y - 40 + (cat_y_offset*.35),
    .25, 
    .25,
    0,
    c_white,
    1
);

if(move_cooldown[AT_NSPECIAL] > 0)
{
    var fillCool_total = 120
    var fillCool = 1 - (move_cooldown[AT_NSPECIAL] / fillCool_total);
    //var fillCoolVis = (move_cooldown[AT_NSPECIAL] / fillCool_total);
draw_sprite_ext(sprite_get("fx_grapple_meter_back"), 0, temp_x + 48, temp_y - 24, 1.5, 1, 0, c_white, .8);
draw_sprite_ext(sprite_get("fx_grapple_meter_mask"), 0, temp_x + 48, temp_y - 24, fillCool*1.5, 1, 0, c_white, .8);
}

if(move_cooldown[AT_DSPECIAL] > 0)
{
    var fillCool1_total = 120
    var fillCool1 = (move_cooldown[AT_DSPECIAL] / fillCool1_total);
draw_sprite_ext(sprite_get("chai_assist_hud_mask_2"), 0, temp_x + 20, temp_y - 32 + (cat_y_offset*.35), .5, .5, 0, c_white, (.6));

}

shader_start();
draw_sprite_ext(
    sprite_get("beat_meter"),
    1, 
    temp_x + 110 ,   
    temp_y - 36,
    1, 
    1,
    0,
    c_white,
    1
);


draw_sprite_ext(
    rhythm_assist_beat_ring_strip[0],
    beat_hit_time, 
    temp_x + 110 ,   
    temp_y - 36,
    1, 
    1,
    0,
    c_white,
    1
);
shader_end();

draw_sprite_ext(
    rhythm_assist_beat_cat_strip[0],
    beat_hit_time, 
    temp_x + 110 ,   
    temp_y - 36 + cat_y_offset,
    1, 
    1,
    0,
    c_white,
    1
);

if(hit_onBeat)
{
    draw_sprite_ext(
        sprite_get("note1v"),
        3, 
        temp_x + 110 ,   
        temp_y - 36,
        1, 
        1,
        0,
        c_white,
        1
    );
}

switch(tut_sound)
{
    case true:
        tut_text = "TUT" // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    break;
    
    case false:
        tut_text = "" // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    break;
}
            
//image index explanation: if the charge is equal or over the max charge value, the sprite flashes
//the timing is controlled with game_time * 0.25
//we multiply the game_time value, which represents the get_gameplay_time function, by 0.25 so it displays 1 image over 4 frames

//text drawing
draw_debug_text(
    (!debug_display ? temp_x + 156 : temp_x + 184) + 16,    //debug display alters the position of the hud
    (!debug_display ? temp_y - 24 : temp_y - 30) + 10,      //the +16 and +10 are offsets
    string(tut_text)
);

muno_event_type = 5; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);