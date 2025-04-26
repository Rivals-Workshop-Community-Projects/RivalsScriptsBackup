shader_start()
var intro_time = get_gameplay_time()-12;
var intro_frames = 20;
var intro_length = 100;
var im_index = floor(intro_time/(intro_length/intro_frames))
if intro_time < intro_length {
    draw_sprite_ext(sprite_get("intro"), im_index, intro_x, intro_y, spr_dir, 1, 0, c_white, 1)
}
shader_end()