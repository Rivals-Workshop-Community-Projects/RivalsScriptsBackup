///

if (state == PS_PRATLAND) {
    
    sprite_index = sprite_get("landinglag");
    image_index = min(state_timer/8,2);
    
}

if (state == PS_PRATFALL) {
    
    if state_timer < 20 {
    sprite_index = sprite_get("doublejump");
    image_index = min(state_timer/4,5);
        
    }
}


if get_gameplay_time() < 50 {
    sprite_index = sprite_get("empty")
} else {
if get_gameplay_time() < 90 {
    sprite_index = sprite_get("crouch")
    image_index = 3
}

if get_gameplay_time() >= 90 &&  get_gameplay_time() < 95{
    sprite_index = sprite_get("crouch")
    image_index = 4
}
}

if invis == false  {
   draw_y = 9999
}
