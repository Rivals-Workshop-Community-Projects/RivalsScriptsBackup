if(attack == AT_DSPECIAL)
{
    with(obj_article1)
    {
        if(player_id == other.id)
        {
            with(other)
            {
                if(collision_circle(other.x,other.y-40,30,self,false,false))
                {
                    sfx = spawn_hit_fx(x+hsp,y-20, 194);//FLASH
                    sfx.pause = 8;
                    sfx.depth = -9;
                    sound_play(asset_get("sfx_coin_capture"), false, noone, 0.4, 1.2);
                    window = 1;
                    window_timer = 0;
                    attack = AT_DSPECIAL_2;
                    white_flash_timer = 10;
                    other.y = -999;
                    other.state = 3;
                }
            }
        }
    }
}