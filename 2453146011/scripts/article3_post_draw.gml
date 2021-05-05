// a3 post draw
// Calculate trajectory angle


draw_sprite(sprite_get("dspecial_proj_2"),clock_timer * 18 / teleport_time,x,y);

gpu_set_blendmode(bm_add);
if(charged)draw_sprite(sprite_get("charged"),(get_gameplay_time()%(12*4))/4,x,y);
gpu_set_blendmode(bm_normal);