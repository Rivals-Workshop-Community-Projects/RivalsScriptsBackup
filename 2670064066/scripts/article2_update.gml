
//snipe_lifetime--;
if (player_id.window = 2)
{
        if (!player_id.joy_pad_idle){
            hsp += lengthdir_x(1, player_id.joy_dir);
            vsp += lengthdir_y(1, player_id.joy_dir);
        } else {
            hsp *= 0.3;
            vsp *= 0.3;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);        
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, player_id.joy_dir);
            vsp = lengthdir_y(max_speed, player_id.joy_dir);
        }

}        
     

if (player_id.window = 2 && player_id.special_pressed)
{
	player_id.window = 3;
player_id.window_timer = 0;
    vsp = 0;
    hsp = 0;
    create_hitbox(AT_DSTRONG_2, 1, x + 49 * spr_dir, y + 36);
    sound_play(sound_get("snipe"));
    instance_destroy();

}

if (player_id.state == PS_HITSTUN || player_id.state == PS_RESPAWN || player_id.state == PS_JUMPSQUAT || player_id.state == PS_PARRY_START || player_id.state == PS_DOUBLE_JUMP)
{
	instance_destroy();
}