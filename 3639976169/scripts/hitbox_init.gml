//hitbox_init
//print("hi im hitbox");
if (attack == AT_USPECIAL && hbox_num == 1)
{
    if (!player_id.custom_clone)
    {
        if (!player_id.joy_pad_idle)
        {
            hsp = dcos(player_id.joy_dir) * -5;
            if (hsp != 0)
                spr_dir = sign(hsp);
        }
    }
    player_id.meteor_fx_obj = self;
    proj_angle = point_direction(0, 0, hsp, vsp) + 90;
    through_platforms = length + 5;
}