if debug_toggle {
draw_debug_text(temp_x, temp_y - 58, get_state_name(state));
draw_debug_text(temp_x, temp_y - 38, "TD: " + string(their_dmg));
draw_debug_text(temp_x, temp_y - 19, "LN: " + string(debug_last_knock));

draw_debug_text(temp_x + 170, temp_y - 19, "T: " + string(window_timer));
draw_debug_text(temp_x + 170, temp_y - 38, "W: " + string(window));
}


/*
 * Power Indicator
*/
// Variables
POWER_BAR_X = temp_x + 60;
POWER_BAR_Y = temp_y - 20;

POWER_BAR_DOT_X = temp_x + 68;
POWER_BAR_DOT_Y = temp_y - 12;

POWER_ICON_UP_X = temp_x + 151
POWER_ICON_UP_Y = temp_y - 26

POWER_ICON_DOWN_X = temp_x + 22
POWER_ICON_DOWN_Y = temp_y - 26

POWER_BAR_X += sin(icon_shake)*icon_shake

POWER_BAR_DOT_X += sin(icon_shake)*icon_shake

// Bar BG
var bar_colour = power_keep ? state_colour[power_state] : POWER_BAR_COLOUR_OFF;
draw_sprite_ext(spr_power_bar_bg, 1, POWER_BAR_X, POWER_BAR_Y, 2, 2, 0, bar_colour, 1);

// Bar dots
for (i = 0; i < power_dots; i++) {
    var dot_colour = state_colour[power_dot_type];

    if (power_dot_type == POWER_STATE_UP) {
        draw_sprite_ext(spr_power_bar_dot, 1, POWER_BAR_DOT_X + (12 * i), POWER_BAR_DOT_Y, 2, 2, 0, dot_colour, 1);
    } else {
        draw_sprite_ext(spr_power_bar_dot, 1, POWER_BAR_DOT_X + (12 * 5) - (12 * i), POWER_BAR_DOT_Y, 2, 2, 0, dot_colour, 1);
    }
}

// Icons
up_icon = power_state == POWER_STATE_UP ? spr_power_icon_up_1 : spr_power_icon_up_0
down_icon = power_state == POWER_STATE_DOWN ? spr_power_icon_down_1 : spr_power_icon_down_0

draw_sprite_ext(up_icon, 1, POWER_ICON_UP_X, POWER_ICON_UP_Y, 2, 2, 0, c_white, 1)
draw_sprite_ext(down_icon, 1, POWER_ICON_DOWN_X, POWER_ICON_DOWN_Y, 2, 2, 0, c_white, 1)
