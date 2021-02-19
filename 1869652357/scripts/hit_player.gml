//hit_player - called when one of your hitboxes hits a player

if (my_hitboxID.attack == AT_FSPECIAL)
{
	if (djumps = 1)
	{
		djumps = 0;
		can_jump = true;
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
		fspecial_jump = 1;
	}
}

//cancel chance
if (my_hitboxID.attack == AT_FSPECIAL) && (window == 5) && get_player_color(player) != 3
{
	spawn_hit_fx( x, y, cancel_chance );
}

if (my_hitboxID.attack == AT_FSTRONG) && (window = 3) && get_player_color(player) != 3 {
    spawn_hit_fx( x, y, cancel_chance );
}

//mac cancel chance
if (my_hitboxID.attack == AT_FSPECIAL) && (window == 5) && get_player_color(player) == 3
{
	spawn_hit_fx( x, y, cancel_chance2 );
}

if (my_hitboxID.attack == AT_FSTRONG) && (window = 3) && get_player_color(player) == 3 {
    spawn_hit_fx( x, y, cancel_chance2 );
}

//dizzy effect
if (my_hitboxID.attack == AT_FSTRONG) && (window == 3)
{
	spawn_hit_fx( hit_player_obj.x, hit_player_obj.y, dizzy );
}


	