//draw_debug_text(temp_x, temp_y-40, `Wrath Meter: ${wrath_meter}`)
//draw_debug_text(temp_x, temp_y-30, `Wrath Delay: ${crouch_check}`)
//draw_debug_text(temp_x, temp_y-80, `Fury Delay: ${focused_fury_delay}`)
//draw_debug_text(temp_x, temp_y-60, `Focused Fury: ${focused_fury_timer}`)

shader_start()
draw_sprite_ext(sprite_get("hud_hotbar"),charged,temp_x+26,temp_y-16,1,1,0,-1,1)

var percent = focused_fury ? min(1,shown_wrath_meter/focused_fury_max):min(1,shown_wrath_meter/40);
var offset = 171*percent
var color = focused_fury ? c_white: blood_color;

if (shown_wrath_meter > 1) draw_rectangle_colour(temp_x + 26, temp_y-14, temp_x + 26+offset, temp_y-11, color,  color, color,   color ,false)
if(focused_fury == 1) draw_sprite_ext(sprite_get("hud_hotbar_vfx"),exclamation_frame,temp_x-18,temp_y-16,1,1,0,-1,1)


//draw_debug_text(temp_x,temp_y-50,`GUN TIMER: ${can_equip_gun_timer}`)

shader_end()