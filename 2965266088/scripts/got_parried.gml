//got_parried.gml

if (my_grab_id != noone) my_grab_id = noone;

if (dark_target == hit_player_obj || dark_target == self) dark_state = 2;

if (my_hitboxID.attack == AT_FSPECIAL)
{
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}