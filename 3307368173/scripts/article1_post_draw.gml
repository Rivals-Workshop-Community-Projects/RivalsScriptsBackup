//article1_post_draw.gml

//Sarolyn Dspecial 
with(pHitBox)
{
    //draw the sprite for the void.
    if(player_id == other.player_id)
    {
        if(attack == AT_NSPECIAL && hbox_num == 1)
        {
            draw_sprite_ext(sprite_index,image_index,x,y,2*spr_dir,2,0,c_white,1);
        }
        else if(attack == AT_DSPECIAL && hbox_num == 2)
        {
            var dspec_portal = sprite_get("dspecial_hole1");
            switch(dspec_level)
            {
                case 2: dspec_portal = sprite_get("dspecial_hole2");break;
                case 3: dspec_portal = sprite_get("dspecial_hole3");break;
            }
            draw_sprite_ext(dspec_portal,image_index,x,y,2,2,0,c_white,1);
        }
    }
}