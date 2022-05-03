//
/*
if(state = 0){
    var fx_image_index = get_gameplay_time() / 5;
        draw_sprite_ext(sprite_get("cloud_idle"),fx_image_index,x,y,1,1,0,c_gray, intro_trans);
}*/
if(state == 3 || state == 0){
    draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 0, c_gray, intro_trans);
}

//debug
//draw_debug_text(x-12, y + 15,string(proj_sprdir));
//draw_sprite_ext(sprite_get("cloud_hurt"),fx_image_index,x,y,1,1,0,c_white, 0.5);
