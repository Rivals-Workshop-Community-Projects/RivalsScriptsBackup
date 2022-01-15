if(get_player_color(player) == 30)
{
    if(state == PS_IDLE)
    {
        sprite_index = sprite_get("idlegen")
        image_index = state_timer * idle_anim_speed;
    }
}