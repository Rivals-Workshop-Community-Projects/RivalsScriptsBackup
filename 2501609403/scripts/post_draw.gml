//post-draw

if (jackpot_shading == true) 
{
    if(jackpot_timer <= 4 || jackpot_timer >= 8){
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*1,1,0, $00FFFF,1)
    }
} else {
    gpu_set_blendmode(bm_normal);
}

if(funny_dash >= 40 && funny_dash < 80 ){
    //gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*1,1,0, $0000FF, .2)
} else if (funny_dash >= 80 && funny_dash < 120 ){
    //gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*1,1,0, $0000FF, .4)
} else if (funny_dash >= 120){
    //gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*1,1,0, $0000FF, .6)
} else {
    gpu_set_blendmode(bm_normal);
}

user_event(12);  