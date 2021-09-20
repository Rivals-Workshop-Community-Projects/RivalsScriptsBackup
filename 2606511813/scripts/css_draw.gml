//css-draw

user_event(0)

//munophone
muno_event_type = 6;
user_event(14);

if !("cssTimer" in self) cssTimer = 0;
cssTimer++;

var alt_cur = get_player_color(player);
if alt_cur == 0 {
    set_character_color_slot(6, 255, 255, 255, 1);
    set_character_color_slot(7, 255, 255, 255, 1);
}

init_shader()

//draw_sprite_ext(sprite_get("css_arrow"), 0, x+8, y+8, 2, 2, 0, c_white, 0.5+(dsin(cssTimer*2)+1)/4)