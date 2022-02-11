if(attack == AT_NSPECIAL){
    if(hitbox_timer > 2)
    {
        collision_sprite = sprite_index;
        grounds = 0;
        walls = 0;
    }
    through_platforms = 999;
    if(!free)
        destroyed = true;
}