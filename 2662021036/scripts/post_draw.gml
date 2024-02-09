

with (asset_get("oPlayer")){
    
    if (vileplume_poison_effect){
        draw_sprite_ext( other.v_psn_icon, 0, x - 12, y + 8, 1, 1, 0, c_white, 1 );        
    }
    
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == 49){
    
draw_sprite_ext(sprite_get("final_effects_2"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 1);  

    
}


if (state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack == AT_NSPECIAL{
    
if window < 3{
    knot_opacity = lerp(knot_opacity, 0.75, 0.15);
}   

if window > 2{
     knot_opacity = lerp(knot_opacity, 0, 0.25);   
}
    
gpu_set_fog(1, 4188323, 0, 0);    
gpu_set_blendmode(bm_add);     
draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, 4188323, knot_opacity);         
gpu_set_blendmode(bm_normal);           
gpu_set_fog(0, 0, 0, 0);    
        
        
}