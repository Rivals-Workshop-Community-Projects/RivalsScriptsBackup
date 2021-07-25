//article10
// YUkari


switch(state)
{
    case 0:// coming
    
        image_index += image_spd;
        
        if (image_index > 8)
        {
            state = 1;
            stay_timer = (6 + (random_func( 10, 24, true))) * 60
        }
        
    break;
    case 1:// staying
    
        stay_timer -= 1;
        if (stay_timer <= 0)
        {
            state = 2;
        }
        
    break;
    case 2:// leaving
    
        image_index += image_spd;
        
        if (image_index > image_number - 1)
        {
            state = 3;
            wait_timer = (40 + (random_func( 10, 200, true))) * 60;
        }
        
    break;
    case 3:// waiting
        image_index = image_number - 1;
        wait_timer -= 1
        
        if (wait_timer <= 0)
        {
            state = 0;
            image_index = 0;
            
            x = (room_width / 2) + (200 +(random_func( 10, 180, true))) * (random_func( 10, 2, true) * 2- 1);
            y = (y_ref + random_func( 11, 70, true))
            
            if(x > room_width / 2 )
            {
                spr_dir = -1;
            }
            else
            {
                spr_dir = 1;
            }
        }
        
    break;
}








