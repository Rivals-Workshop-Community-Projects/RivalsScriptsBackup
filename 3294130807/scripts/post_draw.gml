
//color = make_colour_rgb(0,0,255);
//draw_sprite_ext(sprite_get(sprite), image_index, x, y-64, spr_dir, 1, 0, color, 1);

// draw_sprite_ext(sprite_get(sprite), imageIndex, x+32, y, spr_dir, 1, 0, c_white, 1);
// draw_sprite_ext(sprite_get(sprite), imageIndex, x, y, spr_dir, 1, 0, c_white, 1);

var spriteLength = sprite_get_number(sprite_index);
if(waiting)
{
    // var waitFrameLength = anim_speed*100;
    // var waitLength = waitFrameLength*spriteLength;
    // if(state_timer > waitFrameLength * 3 && state_timer < waitLength - waitFrameLength * 4)
        draw_sprite_ext(sprite_get("sleepVfx"), image_index, x, y, 1, 1, 0, c_white, 1);
}