alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

if ("alt_glow_timer" not in self) {
	alt_glow_timer = 0;
}
alt_glow_timer++;
var alt_glow_timer_max = 480;

switch (alt_cur)
{
    case 14: //gameboy / early access - gameboy palletes don't have shading
        for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
		outline_color = [15, 56, 15];
        break;
    case 23: // Galactic
    	set_shading([0.5, 0.5, pingpong(-1, 1, alt_glow_timer, alt_glow_timer_max), 1, pingpong(-1, 1, alt_glow_timer, alt_glow_timer_max), pingpong(-1, 1, alt_glow_timer, alt_glow_timer_max), 1, 1])
    	break;
}

#define set_shading(arr)
for (var i = 0; i < 8; i++) set_character_color_shading(i,arr[i]);

#define pingpong(_s, _e, _time, _time_max)
var dir = 1
if (_time % _time_max >= _time_max / 2)
	dir = -1;
return lerp(_s, _e, (dir == 1 ? (_time % _time_max) / (_time_max / 2) : (_time_max - (_time % _time_max))/ (_time_max / 2)))