///
shader_start();

if attacking && attack == AT_USPECIAL {
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("uspecial"),1,x,y + 1000,spr_dir*(1.2 + random_func(1,100,true)/1000),20,0,-1, min(.15,state_timer/120))
    gpu_set_blendmode(bm_normal);
}

if attacking && attack == AT_UTHROW {
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_black,0.5)
}

if attacking && attack == AT_NSPECIAL {
    draw_sprite_ext(sprite_index,1,x + fangle/1.22 + 2*spr_dir,y - 20 - fangle/5,spr_dir,1,fangle*2,-1,1)
}

 shader_end() 
