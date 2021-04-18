//article1_update

if (last_state != state)
{
    last_state = state;
    state_timer = 0;
}
state_timer += 1;

switch(state)
{
    case 0:
        sprite_index = sprite_get("kappamobile_takeoff");
        image_index += image_spd;
        if (image_index >= 19)
        {
            state = 1;
            sprite_index = sprite_get("kappamobile_idle");
        }
    if (image_index == 1 ) or (image_index == 2 ) or (image_index == 3 )
    {
        sound_play(sound_get("kappamobile_slide"))
    }
    if (image_index == 6)
    {
        sound_play(sound_get("kappamobile_close"))
    }

    if (image_index == 15)
    {
        sound_play(sound_get("kappamobile_burst"))
    }
    
    
        
    break;
    case 1:
        sprite_index = sprite_get("kappamobile_idle");
        image_index += image_spd;
        
        if (state_timer >= 12)
        {
            if (vsp_fake > -7)
            {
                vsp_fake += (-7 - vsp_fake) / 35
            }
            
            //if (abs(hsp) < 3 )
            {
                hsp_fake += ((3 * spr_dir) - hsp_fake) / 30 
            }
        }
    break;
}

x_pos += hsp_fake;
y_pos += vsp_fake;

if (y < -200)
{
    instance_destroy(self);
}
