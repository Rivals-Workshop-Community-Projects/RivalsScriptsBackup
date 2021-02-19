var heldColour = c_red;
if willExplode && explodeTimer < explodeThreshhold {
    if get_gameplay_time() mod 30 > 15 {
        heldColour = c_yellow;
    }
}
if power >= player_id.compactThreshhold && !getting_bashed {
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, heldColour, 100/(explodeTimer+1));
}