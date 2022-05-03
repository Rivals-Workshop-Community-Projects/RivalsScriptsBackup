if(hbox_owner != -1)
{
    for(i = -2; i < 3; i++)
        for(j = -2; j < 3; j++)
            draw_sprite_ext(sprite_get("dice-outline"),image_index,x-i,y-j,spr_dir==1?spr_dir:1,1*spr_dir,0,get_player_hud_color(hbox_owner),1);
}