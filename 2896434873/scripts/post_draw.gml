shader_start()
var percent = min(1,shown_concentration/100);
var offset = 60*percent
var color = gun ? orange_color : c_white;

if depleted color = c_red;

draw_sprite(sprite_get("hud_hotbar_small"), max_ammo-ammo, x - 30, y - 78 - hud_offset);

if (shown_concentration != 0) draw_rectangle_colour(x - 30, y - 78 - hud_offset, x - 30 + offset-1, y - 77 - hud_offset, color,  color, color,   color ,false)

shader_end()