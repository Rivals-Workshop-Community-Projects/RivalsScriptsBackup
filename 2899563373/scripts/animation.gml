//

if(in_float && (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR || state == PS_WALL_JUMP)){
    if(get_gameplay_time() % 5 == 0){
        nspec_anim_frame++;
        if(nspec_anim_frame > 3) nspec_anim_frame = 0;
    }
    var f = 0
    if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
        f = 4;
    }
    sprite_index = sprite_get("nspecial");
    image_index = nspec_anim_frame + f + 1;
    
}