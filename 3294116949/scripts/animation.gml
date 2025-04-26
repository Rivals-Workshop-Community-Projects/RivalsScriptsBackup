switch (state) {
        case PS_WALL_JUMP:
            if clinging {
                image_index = clamp(floor(state_timer/6), 0, 1)
            } else if state_timer > 4 {
                image_index = 2 + floor(walljump_timer/6)
            }
        break;
        case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
        if(attack == AT_USPECIAL){
            if has_hit_player sprite_index = sprite_get("uspecial") else sprite_index = sprite_get("uspecial_miss");
        }
        break;
}

if(axeless)
{
    var spr_indx = array_find_index(with_axe_sprites, sprite_index);
    if(spr_indx >= 0)
    {
        var prev_img_indx = image_index;
        sprite_index = no_axe_sprites[spr_indx];
        if prev_img_indx > sprite_get_number(sprite_index) image_index = prev_img_indx%sprite_get_number(sprite_index);
    }
}