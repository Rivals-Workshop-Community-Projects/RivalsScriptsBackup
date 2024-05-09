image_index = (image_index + 0.15) % 100; 
gem_lifetime--;


depth = -6;

if (gem_lifetime <= 0)
{
    sound_play(asset_get("sfx_ell_dspecial_explosion_3"));
    spawn_hit_fx(x + (3 * spr_dir), y - 30, 143);
    create_hitbox(AT_NSPECIAL, 8, x + (3 *spr_dir), y - 30);    
    instance_destroy();
    player_id.trick = false;
}

    if (v_bounces < 0)
    {
        v_bounces = 0;
    }     


if (free == false) // on the ground
{
    if (hsp * spr_dir <= 0)
    {
        hsp = 0;
    }
    
    hsp *= 0.3 * spr_dir;
    vsp -= v_bounces;
    //h_bounces += 1;
    v_bounces -= 1;
    bounces += 1;
    
if (vsp < 0 and bounces < 5)
{
    sound_play(asset_get("sfx_coin_collect"));
}

}

if (free == true) // in the air
{
hsp = 2 * spr_dir;    
vsp += grav;

if vsp > grav_max
{
    vsp = grav_max;
}     
}
if (bounces >= 4)
{
    sprite_index = sprite_get("gem_crack");
    mask_index = sprite_get("gem_crack");
}


if (bounces >= 5)
{
    sound_play(asset_get("sfx_ice_shatter"));
    spawn_hit_fx( x - (3 * spr_dir), y - 10, 310);
    player_id.trick = false;
    instance_destroy();    
}


//destroy the trap if it goes offscreen
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
var stage_side = get_stage_data(SD_SIDE_BLASTZONE);
var stage_bot = get_stage_data(SD_BOTTOM_BLASTZONE);

if (y > stage_bot + stage_y or x < stage_x- stage_side or x > room_width + stage_x+ stage_side)
{
    player_id.trick = false;
    instance_destroy();      
}

    var PX = x;
    var PY = y;

if (player_id.attack == AT_USPECIAL_2) //trick teleport
{

    if (player_id.window == 2 && player_id.window_timer == 1)
    {
        	player_id.x = PX;
        	player_id.y = PY;
            instance_destroy(); 
    }

}



