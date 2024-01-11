//hitbox_init

if attack == AT_FSPECIAL should_pounce = false;
if attack == AT_FTHROW || attack == AT_UTHROW{
	// through_platforms = 10;
    was_reflected = false;
    old_owner = player;
}
if (attack == AT_FTILT || attack == AT_FTHROW || attack == AT_UTHROW || attack == AT_DTHROW){
    if get_player_color(player) == 13 image_index = 1;
    if get_player_color(player) == 12 image_index = 2;
}