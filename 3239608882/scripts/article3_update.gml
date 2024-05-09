image_index = (image_index + 0.15) % 100; 
voltorb_lifetime--;


depth = -6;

//code for making voltorb blow up
with (pHitBox) if (attack != AT_NSPECIAL and hbox_num != 7) 
{ 
	if (place_meeting(x, y, other) and player_id == other.player_id)
	{
		with other
		{
	sound_play(asset_get("sfx_blow_medium1"));		
    sound_play(asset_get("sfx_ell_dspecial_explosion_3"));
    spawn_hit_fx(x + (3 * spr_dir), y - 30, 143);
    create_hitbox(AT_NSPECIAL, 8, x + (3 *spr_dir), y - 30);    
    instance_destroy();
		}
	destroyed = true;	
	}
}

with (oPlayer)
{
	if (place_meeting(x, y, other) && player != other.player)
	{
		with other
		{		
			voltorb_lifetime = 0;
		}
	}
}


//blow up when lifetime expires
if (voltorb_lifetime <= 0)
{
    sound_play(asset_get("sfx_ell_dspecial_explosion_3"));
    spawn_hit_fx(x + (3 * spr_dir), y - 30, 143);
    create_hitbox(AT_NSPECIAL, 8, x + (3 *spr_dir), y - 30);    
    instance_destroy();
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
    if (hsp * spr_dir <= 0)
    {
        sprite_index = sprite_get("voltorb_rest2");
        mask_index = sprite_get("voltorb_rest2");
    }    
    
    hsp *= 0.3 * spr_dir;
    vsp -= v_bounces;
    //h_bounces += 1;
    v_bounces -= 1;
    
if (vsp < 0)
{
    sound_play(sound_get("pokeball_bounce"));
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

//switch sprites
if (voltorb_lifetime < 20)
{
sprite_index = sprite_get("voltorb_ready");
mask_index = sprite_get("voltorb_ready");
}

if (voltorb_lifetime == 15)
{
    sound_play(asset_get("sfx_zetter_shine_charged"));        
}


//destroy voltorb if it goes offscreen
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
var stage_side = get_stage_data(SD_SIDE_BLASTZONE);
var stage_bot = get_stage_data(SD_BOTTOM_BLASTZONE);

if (y > stage_bot + stage_y or x < stage_x- stage_side or x > room_width + stage_x+ stage_side)
{
    instance_destroy();      
}