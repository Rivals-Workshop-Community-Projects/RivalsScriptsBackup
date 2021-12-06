//a
//texture effects for specific alts
/*
if alt_funny_effect {
    //looked at Regigigas's code to see how the slow start masking worked, and after studying blend modes a bit there
    //isn't a whole lot I can really change, the code already works for what it's needed
    //Anyways if you're seeing this shoutouts to harbige12 they're epic and this code made me learn about blending sprites
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(0,0,0,1);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,spr_angle,image_blend,image_alpha);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(1,1,1,1);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true)
    draw_sprite(texture_bg,texture_timer,x,y);
    gpu_set_alphatestenable(false)
    gpu_set_blendmode(bm_normal);
}

