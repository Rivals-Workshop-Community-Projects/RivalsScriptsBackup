///
shader_start();

if flashbang > 0 {
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,-1, 1 - (300 - flashbang)/30)
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,-1, 1 - (flashbang)/30)
}

if attacking && attack == AT_USPECIAL {
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("uspecial"),1,x,y + 1000,spr_dir*(1.2 + random_func(1,100,true)/1000),20,0,-1, min(.15,state_timer/120))
    gpu_set_blendmode(bm_normal);
}

if attacking && attack == AT_UTHROW && flashbang <= 0{
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_black,0.6)
}

if attacking && attack == AT_NSPECIAL && flashbang <= 30{
    draw_sprite_ext(sprite_index,1,x + fangle/1.22*spr_dir + 2*spr_dir,y - 22 - fangle/5,spr_dir,1,fangle*2*spr_dir + fangled*2*spr_dir,-1,1 - (flashbang/30))
}


if stamina < 120 {
    draw_sprite_ext(sprite_get("sweat"),(get_gameplay_time()/5)%3,x,y - 6 - draw_y,1,1,0,-1,1)
    draw_sprite_ext(sprite_get("sweat"),(get_gameplay_time()/5)%3,x,y - 6 - draw_y,-1,1,0,-1,1)
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_black,0.15)
}

if stamina < 60 {
    draw_sprite_ext(sprite_get("sweat"),(get_gameplay_time()/3)%3 + 3,x,y - 6 - draw_y,1,1,0,-1,1)
    draw_sprite_ext(sprite_get("sweat"),(get_gameplay_time()/3)%3 + 3,x,y - 6 - draw_y,-1,1,0,-1,1)
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_black,0.3)
}


 shader_end() 
