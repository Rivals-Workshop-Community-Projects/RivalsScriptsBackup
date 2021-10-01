
bottle_lifetime--;

image_index = (image_index + 0.5) % 14;

if (bottle_lifetime < 0){
    instance_destroy();
}

    vsp += grav;
    hsp = 3 * spr_dir;

with (asset_get("pHitBox")){
    if (place_meeting(x, y, other)
	&& player_id == other.player_id){

        if (type == 1 ){
            other.vsp = 0;
    		other.hsp = 0;
    		create_hitbox(AT_DSPECIAL_2, 1, other.x + 22 * spr_dir, other.y - 40);
    		create_hitbox(AT_DSPECIAL_2, 2, other.x + 22 * spr_dir, other.y - 40);
    		sound_play(asset_get("sfx_buzzsaw_hit"));
    		sound_play(asset_get("sfx_burnconsume"));
    		slashed = true;
			instance_destroy();
        }		

    }
}

if (bottle_lifetime == 1)
{
            vsp = 0;
    		hsp = 0;
    		create_hitbox(AT_DSPECIAL_2, 1, x + 22 * spr_dir, y - 40);
    		create_hitbox(AT_DSPECIAL_2, 2, x + 22 * spr_dir, y - 40);
    		sound_play(asset_get("sfx_burnconsume"));
}

if (!free)
{
	vsp = - vsp;
}

if (hit_wall)
{
	hsp -= hsp;
}
