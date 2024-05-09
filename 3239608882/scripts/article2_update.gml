
ironball_lifetime--;

image_xscale = spr_dir*article_xscale; //ensure direction is correct at all times, flips mask.
image_yscale = article_yscale;


if (ironball_lifetime < 0){
    instance_destroy();
}

if (!free)
{
    shake_camera(20,12);
    sound_play(asset_get("sfx_blow_heavy2"));
    create_hitbox(AT_NSPECIAL, 6, x + (25 *spr_dir), y - 28);
    spawn_hit_fx(x + (20 * spr_dir), y - 10, 153);
    instance_destroy();
}

if (free)
{
    hsp = 4 * spr_dir;
    vsp += grav;
    //fallSpeed *= 10;
    //bucketground = false;
}

if (vsp < 0)
{


if (ironball_lifetime > 0) {
    create_hitbox(AT_NSPECIAL, 2, x + (30 *spr_dir), y - 38);
}
}

if (vsp > 0)
{


if (ironball_lifetime > 0) {
    create_hitbox(AT_NSPECIAL, 3, x + (30 *spr_dir), y - 38);
}
}

//destroy the trap if it goes offscreen
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
var stage_side = get_stage_data(SD_SIDE_BLASTZONE);
var stage_bot = get_stage_data(SD_BOTTOM_BLASTZONE);

if (y > stage_bot + stage_y or x < stage_x- stage_side or x > room_width + stage_x+ stage_side)
{
    instance_destroy();      
}


