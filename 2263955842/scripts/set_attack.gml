//set_attack

//Bad apple taunt
if (attack == AT_TAUNT) and (up_down)
{
    attack = AT_TAUNT_2;

}

//Vertical Ofuda Shot

if(attack == AT_NSPECIAL){
    var is_yinyang = false;
    with (obj_article2){
        if(player_id == other){
            // inside the article
            is_yinyang = true;
        }
    }
    if(is_yinyang){
        attack = AT_NSPECIAL_2;
    }
}



if (attack == AT_FSPECIAL)
{
    fspe_stall += 1;
    
    for (var i = 2; i < 6; i += 1)
    {
        switch(fspe_stall + 1)
        {
            case 1:
                set_window_value(AT_FSPECIAL, i, AG_WINDOW_VSPEED_TYPE, 1);
                set_window_value(AT_FSPECIAL, i, AG_WINDOW_CUSTOM_GRAVITY, 1);
            break;
            case 2:
                set_window_value(AT_FSPECIAL, i, AG_WINDOW_VSPEED_TYPE, 0);
                set_window_value(AT_FSPECIAL, i, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
            break;
            case 3:
                set_window_value(AT_FSPECIAL, i, AG_WINDOW_VSPEED_TYPE, 0);
                set_window_value(AT_FSPECIAL, i, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
            break;
        }
    }
   
}


if (attack == AT_USPECIAL)
{
    if (!move_cooldown[AT_USPECIAL])
    {
        has_used_uspecial = true;
    }
}

if (attack == AT_DSPECIAL)
{
    if (!move_cooldown[AT_DSPECIAL])
    {
        has_used_dspecial = true;
    }
}



if (attack == AT_UAIR){
    if (left_down){
        spr_dir = -1;
    }
    if (right_down){
        spr_dir = 1;
    }
}


// resetting rot
if (attack == AT_NSPECIAL_2)
{
    nspe2_rot = 0 - (spr_dir == -1) * 180;
}






