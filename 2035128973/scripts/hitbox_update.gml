if (get_synced_var(player_id.player)) exit;
if (attack == AT_USPECIAL)
{
    if (grav == 0) proj_angle -= 20*spr_dir;
    else if (free) proj_angle = point_direction(0,0,hsp,vsp)-45*spr_dir;

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
  
    if (!free) // floor
    {
        BoneArticleInit(instance_create(x+floor(hsp*1), y+8, "obj_article3"), false);
        instance_destroy();
        exit;
    }
    else if (lastHsp == -hsp && hsp != 0) // wall
    {
        BoneArticleInit(instance_create(x-spr_dir*6, y-8, "obj_article3"), true);
        instance_destroy();
        exit;
    }
    lastHsp = hsp;
    lastVsp = vsp;
    
    with (pHitBox) if (player_id == other.player_id && !was_parried && attack == AT_NSPECIAL && hbox_num == 2 && sprite_index == asset_get("empty_sprite") && place_meeting(x, y, other))
    {
        other.hsp = hsp*0.7;
        other.vsp = -5;
        other.hitbox_timer = 0;
        //sound_play(asset_get("sfx_ori_energyhit_weak"));
        player_id.boneObj = noone;
        player_id.tutDone[6] = 1;
    }
}
else if (attack == AT_NSPECIAL && hbox_num == 2)
{
    y += sin(hitbox_timer)*2;
}

#define BoneArticleInit(boneArticle, _isWall)
{
    boneArticle.spr_dir = _isWall?-spr_dir:spr_dir;
    var direction = point_direction(0,0,lastHsp,lastVsp);
	boneArticle.image_angle = direction+70*spr_dir;
    var angleDif = abs(angle_difference(direction, _isWall?180:0));
    if (spr_dir==1?angleDif>90:angleDif>=90) boneArticle.image_angle += 180;
    sound_play(asset_get("sfx_land_light"), 0, -4, 4);
    with(boneArticle) spawn_hit_fx(floor(x),floor(y),301);
}