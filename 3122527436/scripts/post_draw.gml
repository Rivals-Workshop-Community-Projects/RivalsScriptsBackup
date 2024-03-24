

shader_start()
    

//intro anim
var intro_time = get_gameplay_time()-12;
var intro_frames = 20;
var intro_length = 80;
var im_index = floor(intro_time/(intro_length/intro_frames))
if intro_time < intro_length {
    draw_sprite_ext(sprite_get("intro"), im_index, intro_x, intro_y, spr_dir, 1, 0, c_white, 1)
}
if intro_time >= 66{
var percent = min(1,shown_divine_charge/1200);
var offset = 60*percent
var color = yellow_color;

draw_sprite(sprite_get("hud_hotbar_small"), charged, x - 30, y - 78 - hud_offset);

if (shown_divine_charge != 0) draw_rectangle_colour(x - 30, y - 76 - hud_offset, x - 30 + offset-1, y - 75 - hud_offset, color,  color, color,   color ,false)
}
shader_end()