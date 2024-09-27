//draw_hud.gml

draw_debug_text(temp_x,temp_y-10, (ink_hold == 0 ? "Red": ink_hold == 1 ?"Blue" :"Yellow") + " Ink")
draw_sprite_ext(sprite_get("hud_ink"), ink_hold, temp_x+110, temp_y-32, 2, 2, 0, c_white, 1);