if (!instance_exists(self)) // Holograms will sometimes throw errors when being destroyed; this prevents it
    exit;
switch (state){
    case PS_SPAWN:
        sprite_index = sprite_get("spawn");
        break;
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
        break;
    case PS_PRATLAND:
        sprite_index = anim_landinglag;
        image_index = 0;
    break;
    
    default: break;
}
if (custom_clone)
{
    draw_y = -1000000;
}