
//intro
switch(state)
{
    case PS_SPAWN:
        var length = 14; // num of anim frames
        var spd = 5; // in game frames per anim frame
        if (state_timer % spd == 0) introTimer++;
        if(state_timer == 2)
        sound_play(asset_get("sfx_ice_ftilt")); 
        if(state_timer == 40)
        sound_play(asset_get("sfx_shop_buy")); 
        sprite_index = sprite_get(introTimer<length&&introTimer>=0?"taunt":"idle");
        if (introTimer < 0) image_index = 0;
        else if (introTimer < length) image_index = introTimer;
        break;
    case PS_IDLE:
        if(random_func(4, 100, false) > 90 && get_player_color(player) == 11)
            image_index -= 1+random_func(1, 4, true);
}


#define basic_animations()
/// Run this after changing the sprite_index.
// Corrects certain animations to be how they normally would be.
switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = state_timer*idle_anim_speed;
    break;
    case PS_WALK:
        image_index = state_timer*walk_anim_speed;
    break;
    case PS_DASH:
        image_index = state_timer*dash_anim_speed;
    break;
}
