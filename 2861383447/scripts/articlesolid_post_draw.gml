// MunoPhone Touch code - don't touch
// should be at TOP of file
with orig_player_id{
	muno_event_type = 3;
	user_event(14);
}

var hitshake;

if (hit_time > 0)
hitshake = -2 + random_func( 0, 4, true );
else
hitshake = 0;

draw_sprite_ext( sprite_get("dirt"), 0, x + hitshake, y, 1, 1, 0, c_white, 1);
draw_sprite_ext( sprite_get("dirt_damage"), round((lifetime/max_lifetime)*10) - 1, x + hitshake, y, 1, 1, 0, c_white, 1);


