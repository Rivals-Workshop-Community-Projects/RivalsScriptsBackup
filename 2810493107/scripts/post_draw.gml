//post-draw
if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    if (attack == AT_NAIR){
        draw_sprite(sprite_get("nairfx"), image_index, x-132, y-150);
    }
}