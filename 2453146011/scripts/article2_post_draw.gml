// a2 post draw

gpu_set_blendmode(bm_add);
if(charged)draw_sprite(sprite_get("charged"),(get_gameplay_time()%(12*4))/4,x - 15*spr_dir,y+10);
gpu_set_blendmode(bm_normal);