if(hit_wait > 0)
{
    hit_wait--;
    if(hit_wait <= 0 && cooked)
    {
        hsp = cooked_hsp*spr_dir;
        vsp = cooked_vsp;
    }
}
else if(cooked)
{
    timer++;
    image_index = (1+(timer*0.5))%8;

    hsp = cooked_hsp*spr_dir;
    vsp = vsp+grv;

    create_hitbox(AT_USPECIAL, 4, round(x+hsp), round(y+vsp-32));

    if(timer >= timer_total || y >= 1500)
    {
        instance_destroy();
    }
}
else
{
    timer++;
    image_index = (timer*0.25)%4;

    hsp = walk_hsp*spr_dir;
    vsp = vsp+grv;

    if(position_meeting(x+(22*spr_dir), y-16, asset_get("par_block")))
    {
        spr_dir = -spr_dir;
    }

    if(position_meeting(x, y, asset_get("par_block")) || position_meeting(x, y, asset_get("par_jumpthrough")))
    {
        vsp = 0;
        for(var i = 0; i < 20; i++)
        {
            if(position_meeting(x, y-1, asset_get("par_block")) || position_meeting(x, y-1, asset_get("par_jumpthrough")))
            {
                y -= 1;
            }
            else {i = 999}
        }
    }
    else
    {
        vsp = vsp+grv;
    }

    create_hitbox(AT_USPECIAL, 3, round(x+hsp), round(y+vsp-29));

    if(timer >= timer_total || y >= 1500)
    {
        player_id.move_cooldown[AT_USPECIAL] = 0;
        instance_destroy();
    }
}




