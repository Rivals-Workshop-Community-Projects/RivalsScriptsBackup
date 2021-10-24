// pre-draw
if (get_player_color(player) == 7)
{
    var bloop = sprite_get("bloop_bite_ea")
}
else
{
    var bloop = sprite_get("bloop_bite")
}

    
if(pikmin = self)
{
    draw_sprite_ext(bloop, pikmin_frame, x - (20 * spr_dir), y - y_offset, spr_dir, 1, 0, -1, 1);
}