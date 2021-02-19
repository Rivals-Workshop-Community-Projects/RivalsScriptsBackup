
switch (state){
    case PS_RESPAWN:
        sprite_index = sprite_get("crouch_plat");
        image_index = 0;
        
    break;
    case PS_IDLE:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*10));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}