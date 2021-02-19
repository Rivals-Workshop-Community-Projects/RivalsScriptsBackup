//article1_update

vsp += 1 - 0.6*free;

animation_timer++;
if (animation_timer >= 30)
    animation_timer = 0;

if (y > get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS))
    detonate = true;

if (bashed)
{
    image_index = 6;
    if (!free || hsp == 0)
        detonate = true;
}
else
{
    if (free)
    {
        image_index = 3 + floor(animation_timer/10);
    }
    else
    {
        image_index = 0 + floor(animation_timer/10);
        hsp = 3 * spr_dir;
    }
}

if (detonate)
{
    player_id.move_cooldown[AT_NSPECIAL] = 60;
    sound_play(asset_get("sfx_ell_uspecial_explode"));
    spawn_hit_fx(x, y, 143);
    create_hitbox( AT_NSPECIAL, 1, x, y);
    player_id.kk_rat = noone;
    instance_destroy();
}