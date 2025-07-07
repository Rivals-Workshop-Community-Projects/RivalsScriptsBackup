timer++;

vsp = vsp+grv;

if(position_meeting(x, y, asset_get("par_block")))
{
    sound_play(sound_get("teleport"));
    player_id.x = x;
    player_id.y = y;
    player_id.move_cooldown[AT_FSPECIAL] = 0;
    instance_destroy();
}


if(timer >= timer_total || y >= 1500)
{
    player_id.move_cooldown[AT_FSPECIAL] = 0;
    instance_destroy();
}


