image_index = (image_index + 0.20) % 14;

//orb_lifetime++;


if (player_id.window = 2)
{
        if (!player_id.joy_pad_idle){
            hsp += lengthdir_x(2, player_id.joy_dir);
        } else {
            hsp *= 0;
            vsp *= 0;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);        
        var max_speed = 10;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, player_id.joy_dir);
            vsp = 0;
        }

} 



if (player_id.window = 4)
{
	spawn_hit_fx( x + (1 * spr_dir), y, 193);
	sound_play(asset_get("sfx_kragg_spike"));	
	create_hitbox(AT_DSPECIAL_2, 2, x + 1 * spr_dir, y - 5);
    instance_destroy();
}



if (player_id.state == PS_HITSTUN || player_id.state == PS_RESPAWN)
{
	instance_destroy();
}

if (!position_meeting(x + 5 * hsp, y + 1, asset_get("par_block")) && (!position_meeting(x + 5 * hsp, y + 1, asset_get("par_jumpthrough"))))
{
	hsp = 0;
}

if (player_id.state == PS_HITSTUN || player_id.state == PS_RESPAWN || player_id.state == PS_JUMPSQUAT || player_id.state == PS_PARRY_START || player_id.state == PS_DOUBLE_JUMP)
{
	instance_destroy();
}
