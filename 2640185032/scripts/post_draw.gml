//post draw is drawn
init_shader();
shader_start();
if(attack == AT_NSPECIAL && knives > 0){
    if((sprite_index == sprite_get("nspecial") || sprite_index == sprite_get("nspecial_air")) && image_index > 0 && image_index < 6){
        draw_sprite_ext(sprite_get("nspec_holdknives"),
            image_index - 1 + ((clamp(0, knives, 3) - 1) * 5 ), x, y, spr_dir, 1, 0, c_white, 1);
    }
}


/*with(pHitBox){
    if(attack == AT_NSPECIAL && "focus" in self && focus = true){
        draw_sprite_ext(spr_iceclock_hand_sm, 0, x, y, 2, 2, (freeze * 3), c_white, 0.5 );
    }
}*/
shader_end();