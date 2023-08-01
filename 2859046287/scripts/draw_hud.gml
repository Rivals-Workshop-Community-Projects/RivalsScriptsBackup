//draw_hud.gml
//this script runs pretty much all the time, and simply draws whatever we tell it over the player's UI at the bottom of the screen
//instead of "x" and "y" we use "temp_x" and "temp_y" for proper locations

if ("char_height" not in self) exit;

if (debug_display)
{
    var mul = 16; //spacing
    
    var state_name = get_state_name(state);
    switch (state) //new workshop state names don't actually have a state name for get_state_name
    {
        case PS_FLASHED: state_name = "PS_FLASHED"; break;
        case PS_CRYSTALIZED: state_name = "PS_CRYSTALIZED"; break;
        case PS_BURIED: state_name = "PS_BURIED"; break;
    }

    draw_debug_text(temp_x+mul*0, temp_y+mul*-4, "state = " + string(state_name));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-3, "state_timer = " + string(state_timer));

    if (
        is_attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
        state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE)
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

//TESTER HUD ELEMENTS:
//DSPECIAL ARTICLE - shows player if the article is available or not
draw_sprite_ext(
    sprite_get("hud_dspec"),
    0,
    temp_x + 186,
    temp_y - 24,
    2, //these two... 2s are for the scale of the image, this doubles the scale of the image
    2,
    0,
    move_cooldown[AT_DSPECIAL] > 0 ? c_gray : c_white, //if the cooldown is over 0, this is true, which changes the tint to gray, making it appear darker
    1
);

//NSPECIAL PROJECTILE CHARGE LEVEL - shows player how big of a charge they are currently storing
//sprite drawing
draw_sprite_ext(
    sprite_get("hud_nspec"),
    nspec_charge < nspec_charge_max ? 0 : game_time * 0.25, //explanation below the draw_sprite_ext function
    !debug_display ? temp_x + 156 : temp_x + 184,   //debug display alters the position of the hud
    !debug_display ? temp_y - 24 : temp_y - 50,
    2, //these two... 2s are for the scale of the image, this doubles the scale of the image
    2,
    0,
    c_white,
    1
);
//image index explanation: if the charge is equal or over the max charge value, the sprite flashes
//the timing is controlled with game_time * 0.25
//we multiply the game_time value, which represents the get_gameplay_time function, by 0.25 so it displays 1 image over 4 frames

//text drawing
draw_debug_text(
    (!debug_display ? temp_x + 156 : temp_x + 184) + 16,    //debug display alters the position of the hud
    (!debug_display ? temp_y - 24 : temp_y - 50) + 10,      //the +16 and +10 are offsets
    string(floor(nspec_charge))
);