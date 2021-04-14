switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
		sprite_index = sprite_get(state_timer < 12 ? "walk1" : "walk2");
        image_index = floor(image_number*state_timer/(image_number*(state_timer < 12 ? 6 : 9)));
    break;
}

if (state == PS_PRATLAND && was_parried) {
    sprite_index = sprite_get( "parried" );
    image_index = floor(state_timer/2/image_number);

}