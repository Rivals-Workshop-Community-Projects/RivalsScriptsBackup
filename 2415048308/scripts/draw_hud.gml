user_event(11);
/*
draw_debug_text( temp_x, temp_y - 50, "state: " + get_state_name( state ));
draw_debug_text( temp_x, temp_y - 30, string(state_timer));
draw_debug_text( temp_x - 20, temp_y - 10, string(bar_alpha));

var maddummy = id;
if instance_exists(knife){
    with knife{
        var knife_state = state
        var knife_state_timer = state_timer
        with maddummy{
            draw_debug_text( temp_x, temp_y - 100, string(knife_state));
            draw_debug_text( temp_x, temp_y - 70, string(knife_state_timer));
        }
    }
}
*/

//draw_debug_text( temp_x, temp_y - 70, string(window_timer));
draw_sprite_ext( sprite_get("dummycharge"), dummy_charge, temp_x + 178, temp_y + 6, 1, 1, 0, c_white, 1 );
draw_sprite_ext( sprite_get("knife_hud"), cooldown_rounds_left, temp_x + 130, temp_y - 20, 1, 1, 0, c_white, 1 );
draw_sprite_ext( sprite_get("dummy_hud"), dummy_stage, temp_x + 176, temp_y - 16, 1, 1, 0, c_white, 1 );