//

switch(state)
{
    case 0:
        vsp += grav;
            
            
        if (image_index < 4)
        {
            image_index += image_spd;
        }
        
    break;
    case 1:
        vsp += grav;
        if (image_index < 5)
        {
            image_index += image_spd;
        }
    break;
}


step += 1;

if (y > room_height)
{
    instance_destroy(self);
}