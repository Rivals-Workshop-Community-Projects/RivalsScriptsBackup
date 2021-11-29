if (attack == AT_USPECIAL)
{
    if (grav == 0) proj_angle -= 20*spr_dir;
    else proj_angle = point_direction(0,0,hsp,vsp)-45*spr_dir;

    if (grav == 0 && player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND)
    {
        instance_destroy();
        exit;
    }

    if (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)
    {
        if (player_id.attack == AT_USPECIAL_2)
        {
            var a = 0;
            with (player_id) a = get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH);  
            if (player_id.window == 3 && a != 6)
            {
                instance_destroy();
                exit;
            }
        }
    }
  
    if (!free)
    {
        var boneArticle = instance_create(x, y+image_yscale*100+4, "obj_article3");
		boneArticle.spr_dir = spr_dir;
		boneArticle.x += hsp*2;
        sound_play(asset_get("sfx_land_light"));
        instance_destroy();
        exit;
    }
    else if (lastHsp == -hsp && hsp != 0)
    {
        var boneArticle = instance_create(x-spr_dir*(image_xscale*100+8), y, "obj_article3");
		boneArticle.spr_dir = -spr_dir;
        sound_play(asset_get("sfx_land_light"));
        instance_destroy();
        exit;
    }
    lastHsp = hsp;
}
else if (attack == AT_NSPECIAL && hbox_num == 2)
{
    y += sin(hitbox_timer)*2;
}