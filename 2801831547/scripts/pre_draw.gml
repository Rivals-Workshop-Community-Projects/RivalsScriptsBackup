if(state == PS_AIR_DODGE){
    gpu_set_fog(true, dodge_trail_color, 0, 0);
    for(var t = 0; t < dodge_trail_size; t++){
        var i = dodge_trail[t];
        if(i.life > 0){
            gpu_set_fog(true, dodge_trail_color, 0, 0);
            draw_sprite_ext(i.sprite_index, i.image_index, i.x, i.y, (1+small_sprites)*i.spr_dir, 1+small_sprites, 0, i.color, (i.life/15)/1.5);
        }
    }
    gpu_set_fog(false, c_white, 0, 0);
}

if(has_wisp_cancel){
    var _col = make_color_rgb(89, 98, 255) 
    gpu_set_fog(true, _col, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x + 2 , y - 2   , spr_dir*2, 2, 0 , c_black , wisp_alpha);
    draw_sprite_ext(sprite_index, image_index, x - 2  , y + 2   , spr_dir*2, 2, 0 , c_black , wisp_alpha);    
        draw_sprite_ext(sprite_index, image_index, x - 2  , y - 2   , spr_dir*2, 2, 0 , c_black , wisp_alpha);   
            draw_sprite_ext(sprite_index, image_index, x + 2  , y + 2   , spr_dir*2, 2, 0 , c_black , wisp_alpha); 
    gpu_set_fog(false, c_white, 0, 0);
}