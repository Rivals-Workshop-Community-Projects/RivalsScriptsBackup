//draw_hud.gml
/*
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
        if (is_attacking)
        {
            draw_debug_text(temp_x+mul*0, temp_y+mul*-7, "attack = " + string(attack_names[attack]));
            if (get_window_value(attack, window, AG_WINDOW_LOOP_TIMES) > 0) draw_debug_text(temp_x+mul*7, temp_y+mul*-6, "loops = " + string(window_loops));
        }
        draw_debug_text(temp_x+mul*0, temp_y+mul*-6, "window = " + string(window));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-5, "window_timer = " + string(window_timer));
    }

    draw_debug_text(temp_x+mul*0, temp_y+mul*-2, "x = " + string(x));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-1, "y = " + string(y));

    draw_debug_text(temp_x+mul*5, temp_y+mul*-2, "hsp = " + string(hsp));
    draw_debug_text(temp_x+mul*5, temp_y+mul*-1, "vsp = " + string(vsp));
} /*