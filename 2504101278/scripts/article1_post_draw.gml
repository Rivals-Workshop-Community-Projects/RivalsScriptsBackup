if instance_exists(hitbox) and state == 0 and state_timer > (hitbox.length/2)
{   
    gpu_push_state();
    var ratio, alpha;
    ratio = (state_timer/hitbox.length);
    alpha = (0.5 * ratio)*(1 + sin(get_gameplay_time() / (6*(1-ratio)) ));
    
    //print(alpha)
    
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,image_yscale,0,c_white, alpha);
    gpu_set_blendmode(bm_normal);
    gpu_pop_state();
}