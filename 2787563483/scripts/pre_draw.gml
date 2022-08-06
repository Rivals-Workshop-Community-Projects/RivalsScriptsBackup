//pre_draw
if "duplicate_buddy" not in self exit
if get_match_setting(SET_PRACTICE){
    if !duplicate_buddy && barrier_enabled{
        var alpha_shimmer = ( cos( get_gameplay_time() / 30 ) / 8 ) + 0.5
        //print(alpha_shimmer)
        depth = 30
        draw_sprite_stretched_ext(barrier_tile, 1, owner.left_wall, 0, owner.right_wall - owner.left_wall, owner.bottom_wall, c_aqua, alpha_shimmer)
    }
}