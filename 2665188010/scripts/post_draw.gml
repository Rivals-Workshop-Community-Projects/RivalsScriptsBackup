//post-draw

if state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR{
    if attack == AT_USTRONG && image_index > 1 && image_index < 10{
        draw_sprite_ext(sprite_get("ustrong_fire"), image_index-2, x, y, 2*spr_dir, 2,0,c_white, 1);
    }
}