if (floating && state != PS_ATTACK_AIR){
    sprite_index = sprite_get("float");
    image_index = float_anim_timer * float_anim_speed;
    
    float_anim_timer++
}

switch (state) {
    case PS_WALK:
        var walk_start_time = 4;
        
        if (state_timer < walk_start_time) {
            sprite_index = sprite_get("walkstart")
        }
    break;
}
