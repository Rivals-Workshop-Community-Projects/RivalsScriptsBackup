//other_post_draw
with (oPlayer)
{
    if (get_char_info( player, INFO_STR_NAME) == "Gawr Gura")
    {   if (get_player_color(player) == 7)
        {
            var bloop = sprite_get("bloop_bite_ea")
        }
        else
        {
            var bloop = sprite_get("bloop_bite")
        }
    }
}

if(other_player_id.pikmin = self)
{
    draw_sprite_ext(bloop, other_player_id.pikmin_frame, x - (20 * spr_dir), y - other_player_id.y_offset, spr_dir, 1, 0, -1, 1);
}