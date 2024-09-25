//hitbox_update

//nspecial projectile spawns a marker at the end of it if it doesn't hit anything
if (attack == AT_NSPECIAL && hbox_num == 2)
{
    //creation spark effect
    if (hitbox_timer == 1)
    {
        var fx_spark_create = spawn_hit_fx(x, y, player_id.fx_nspec_shoot);
        fx_spark_create.depth = -10;
    }
    
    //place afterimages
    if (hitbox_timer < length-1)
    {
        var afterimage = spawn_hit_fx(x, y, fx_nspec_proj_afterimage);
        afterimage.draw_angle = proj_angle;
        afterimage.depth = 0;
    }

    //if the projectile didn't hit, spawn the stilleto
    if (hitbox_timer == length || length == -1 || self == oPlayer.bashed_proj)
    {
        if (!instance_exists(player_id.artc_marker))
        {
            player_id.artc_marker = instance_create(x, y, "obj_article1");
            player_id.artc_marker.state = 1;
            player_id.artc_marker.state_timer = 0;
            player_id.nspec_cd_start = true;
            sound_play(sound_get("sfx_stilleto_spawn"));
        }
    }
}

//destroy the d-spec afterimage if it was parried
if (attack == AT_DSPECIAL && hbox_num == 1)
{
    if (was_parried) destroyed = true;
}

if (attack == AT_FSTRONG)
{
    in_hitpause = player_id.hitpause;
    if (!player_id.has_hit && has_hit) player_id.has_hit = true;
    if (!player_id.has_hit_player && has_hit_player) player_id.has_hit_player = true;
}