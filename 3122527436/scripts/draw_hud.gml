shader_start()
draw_sprite_ext(sprite_get("hud_hotbar"),charged,temp_x+26,temp_y-16,1,1,0,-1,1)

var percent = min(1,shown_divine_charge/1200);
var offset = 171*percent
var color = yellow_color;

if (shown_divine_charge != 0) draw_rectangle_colour(temp_x + 26, temp_y-14, temp_x + 26+offset, temp_y-11, color,  color, color,   color ,false)

//draw_debug_text(temp_x,temp_y-50,`GUN TIMER: ${can_equip_gun_timer}`)

shader_end()