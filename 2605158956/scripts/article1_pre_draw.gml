draw_sprite_ext(sprite_get("arrowbomb"),0, x, y-20, 1, 1, 0, get_player_hud_color(player), 1);

if(collision_circle(x,y,100, player_id, true, false) && (hsp == 0 && vsp == 0 && state == 0))
{
    if(player_id.hsp != 0 || player_id.vsp != 0)
    {
        if(player_id.hsp > 0 && abs(player_id.vsp)/1.5 < abs(player_id.hsp))
            draw_dir = 0;
        else if(player_id.hsp < 0 && abs(player_id.vsp)/1.5 < abs(player_id.hsp))
            draw_dir = 2;
        else if(player_id.vsp > 0 && abs(player_id.hsp) < abs(player_id.vsp))
            draw_dir = 3;
        else if(player_id.vsp < 0 && abs(player_id.hsp) < abs(player_id.vsp))
            draw_dir = 1;

        draw_sprite_ext(sprite_get("bombarrows"),draw_dir,x,y,1,1,0,c_white,0.5);
    }
}