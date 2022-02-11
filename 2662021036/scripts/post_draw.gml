// MunoPhone Touch code - don't touch
// should be at TOP of file



with (asset_get("oPlayer")){
    
    if (vileplume_poison_effect){
        draw_sprite_ext( other.v_psn_icon, 0, x - 12, y + 8, 1, 1, 0, c_white, 1 );        
    }
    
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == 49){
    
draw_sprite_ext(sprite_get("final_effects_2"), image_index, x, y, 1 * spr_dir, 1, 0, c_white, 1);  

    
}