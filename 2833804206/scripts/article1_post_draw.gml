//article1_post_draw
var w = obj_w
var h = 10
//draw_sprite_ext(sprite_get("oil_slick"), 0, x, obj_y, 1, 1, 0, c_white, 1)
draw_sprite_part_ext(sprite_get("oil_slick"), 0, room_width/2, 0, obj_w, 32, obj_l, surface_y, 1, 1, c_white, 1)
//draw_rectangle_color(obj_l,obj_y,obj_r,obj_y+h,c_black,c_black,c_black,c_black,false)
//draw_rectangle_color(obj_l,obj_y,obj_r,obj_y+h,c_white,c_white,c_white,c_white,true)
//draw_debug_text(x, y+10, string(obj_w))