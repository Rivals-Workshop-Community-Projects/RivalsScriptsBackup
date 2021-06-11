var POWER_BAR_X = temp_x + 68;
var POWER_BAR_Y = temp_y - 20;
var POWER_ICON_X = temp_x;
var POWER_ICON_Y = temp_y - 24;

//Bar BG
var bar_bg_color = SLOWSTART_BAR_BG_COLOR[slowstart_state];
draw_sprite_ext(slowstart_ui_bg, 0, POWER_BAR_X, POWER_BAR_Y, 2, 2, 0, c_white, 1);

//Bar
var bar_color = SLOWSTART_BAR_BG_COLOR[slowstart_state];
var bar_length = sprite_get_width(slowstart_ui_bar) * (slowstart_timer / slowstart_duration);
draw_sprite_part_ext(slowstart_ui_bar, 0, 0, 0, bar_length, sprite_get_height(slowstart_ui_bar), POWER_BAR_X + 6, POWER_BAR_Y + 6, 2, 2, SLOWSTART_BAR_COLOR, 1);

//Icons
draw_sprite_ext(slowstart_ui_powerdown, slowstart_state == SLOWSTART_STATE_OFF ? 1 : 0, POWER_ICON_X, POWER_ICON_Y, 2, 2, 0, c_white, 1)

//Training toggle message
if (training_toggle) {
    draw_debug_text(POWER_BAR_X, POWER_BAR_Y - 20, "Taunt to toggle Slow Start");
}