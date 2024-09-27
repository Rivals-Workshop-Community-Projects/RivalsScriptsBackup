// Drawing article. It draws the things.

with (pHitBox)
{
    //draw over sprites that use ink lol
    if(player_id == other.player_id)
    {
        draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,image_angle,c_white,1);
    }
}