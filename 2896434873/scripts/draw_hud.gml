// draw_debug_text(temp_x,temp_y-20, "Ammunition : "+string(ammo) + " / "+string(max_ammo))

shader_start()
draw_sprite_ext(sprite_get("hud_hotbar"),6-ammo,temp_x+24,temp_y-16,1,1,0,-1,1)
draw_sprite_ext(sprite_get("hud_hotbar_gun"),(gun_all_cooldown != 0),temp_x+24,temp_y-16,1,1,0,-1,1)

var percent = min(1,shown_concentration/100);
var offset = 172*percent
var color = gun ? orange_color : c_white;

if depleted color = c_red;

if (shown_concentration != 0) draw_rectangle_colour(temp_x + 26, temp_y-14, temp_x + 26+offset, temp_y-11, color,  color, color,   color ,false)
if (exclamation_show) draw_sprite_ext(sprite_get("exclamation"),exclamation_frame,temp_x-18,temp_y-16,1,1,0,-1,1)

//draw_debug_text(temp_x,temp_y-50,`GUN TIMER: ${can_equip_gun_timer}`)

shader_end()

//draw_debug_text(temp_x,temp_y-50, "Steady aim on: " + string(steady_anim));
//draw_debug_text(temp_x,temp_y-50, "STATE: " + string(get_state_name(state)));
// draw_debug_text(temp_x,temp_y-90, "gun cooldown = " + string( gun_cooldown ));
// draw_debug_text(temp_x,temp_y-110, "manual cooldown = " + string( manual_swap_cooldown ));