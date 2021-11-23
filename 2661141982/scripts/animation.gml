switch(state)
{
    case PS_SPAWN:
        var length = 9; // num of anim frames
        var spd = 6; // in game frames per anim frame
        if (state_timer % spd == 0) introTimer++;
        if(state_timer == 2)
        sound_play(asset_get("sfx_spin")); 
        sprite_index = sprite_get(introTimer<length&&introTimer>=0?"taunt":"idle");
        if (introTimer < 0) image_index = 0;
        else if (introTimer < length) image_index = introTimer;
        break;
}