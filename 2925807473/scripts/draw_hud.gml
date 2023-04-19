//draw_hud.gml

if ("char_height" not in self) exit;

if (debug_display)
{
    var mul = 16; //spacing
    
    draw_debug_text(temp_x+mul*0, temp_y+mul*-4, "state = " + string(get_state_name(state)));
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
    draw_debug_text(temp_x+mul*5, temp_y+mul*-3, "angle= " + string(voiceon));
}

//ouroboros
draw_sprite_ext(
    sprite_get("ouroicon"),
    1, //if the cooldown is over 0, this is true, which means the image index is 1 (game maker shenanigans)
    temp_x + 186,
    temp_y - 24,
    .60, //these two... 2s are for the scale of the image, this doubles the scale of the image
    .60,
    0,
    c_white,
    1,
  );
draw_debug_text(
    (!debug_display ? temp_x + 156 : temp_x + 184) + 16,    //debug display alters the position of the hud
    (!debug_display ? temp_y - 24 : temp_y - 50) + 10,      //the +16 and +10 are offsets
    string(floor(chainstocks))
);
muno_event_type = 5;
user_event(14);
	