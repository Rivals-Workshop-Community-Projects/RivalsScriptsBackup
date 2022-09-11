if(attack == AT_DSPECIAL and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and image_index == 8){
    if(dspecial_index == 2 or dspecial_index == 5){
    draw_sprite_ext(sprite_get("dspecial_objects"), dspecial_index, x, y, 1, 1, 0, c_white, 1);
    } else {
    draw_sprite_ext(sprite_get("dspecial_objects"), dspecial_index, x, y, spr_dir, 1, 0, c_white, 1);
    }
}

