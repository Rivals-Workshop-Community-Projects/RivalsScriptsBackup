introTime = 0;
set_synced_var(player, 0);
sound_play(sound_get("sfx_explosion"));
sound_play(sound_get("vigi1"));

xL = round(x+12);
yL = round(y+140 - (room == asset_get("network_char_select")) * 15);

button_x = 182;
button_y = 36;
press_delay = 0;

button_pos = [
    x + button_x,
    y + button_y,
    x + button_x + sprite_get_width(sprite_get("skinButton")),
    y + button_y + sprite_get_height(sprite_get("skinButton"))
];

button_state = 0; //0 = normal | 1 = hover | 2 = press
cur_skin = 0; //0 = mute | 1 = EN | 2 = JP