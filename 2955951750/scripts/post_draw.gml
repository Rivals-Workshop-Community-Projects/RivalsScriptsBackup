//crash prevention line

shader_start();
if(attack == AT_FSPECIAL && sprite_index == sprite_get("fspecial2_base")){
    if(window < 3){
        draw_sprite_ext(sprite_get("fspec_arrow"), image_index, x, y - 24,
        1, 1, fspec_angle, c_white, 1 );
    }
    if(image_index > 5 && image_index < 13){
        draw_sprite_ext(sprite_get("fspecial2_kick"), image_index, x, y - 24,
        2 * spr_dir, 2, fspec_angle + (-90 * (spr_dir - 1)), c_white, 1 );
    }
}

if(attack == AT_NSPECIAL_2 && free && nspec_air_frame > -1 && sprite_index == sprite_get("nspecial")){
    draw_sprite_part_ext(sprite_get("bolt"), nspec_air_frame, 0, 0, 190, nspec_air_limit, x - (10*spr_dir), y - 46, spr_dir, 1, c_white, 1);
}

if(attack == AT_DSTRONG && sprite_index == sprite_get("dstrong")){
    //im sorry im tired
    if(image_index == 3){
        draw_sprite(sprite_get("dstrong_charge"), 0, x, y - 72);
    }else if(image_index == 4){
        draw_sprite(sprite_get("dstrong_charge"), 1, x - (4 * spr_dir), y - 68);
    }else if(image_index == 5){
        draw_sprite(sprite_get("dstrong_charge"), 2 + dstrong_frame, x - (8 * spr_dir), y - 66);
    }else if(image_index == 6){
        if(dstrong_timer < 4){
            draw_sprite(sprite_get("dstrong_charge"), 6, x - (12 * spr_dir), y - 64);
        }else{
            draw_sprite(sprite_get("dstrong_charge"), 7 + dstrong_frame, x - (12 * spr_dir), y - 64);
        }
    }
}

shader_end();