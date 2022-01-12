//shader_start();
var col = make_colour_hsv(0, 0, 255-platlifetimer);
draw_sprite_ext( sprite_index, -1, x, y, spr_dir, 1, 0, col, 1 );
//shader_end();


if(platlifetimer > 120){
    var xshake = random_func(0, 10, false) - 5;
    draw_sprite_ext(sprite_index, -1, x + xshake, y, spr_dir, 1, 0, col, 1);
}