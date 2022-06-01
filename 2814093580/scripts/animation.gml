switch (state){
    case PS_ROLL_BACKWARD:

    break;
    
    default: break;
}

if (sprite_index == sprite_get("pata") and spr_dir == -1) 
{
    patafx.spr_dir = 1;
}

if(floating == 1){
    if state_timer == 1 
    {
        sound_play( sound_get("wingflap"));
    }
        sprite_index = sprite_get("hover");
        image_index = state_timer / 2;
        sprite_change_offset("hover", 47, 105);
    }
