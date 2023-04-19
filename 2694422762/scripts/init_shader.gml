//GB Alt
if ("alt_glow_timer" not in self) {
	alt_glow_timer = 0;
}

var alt_glow_timer_max = 480;

alt_cur = get_player_color("online_fix" in self ? online_fix : player) //sprite_get_xoffset(sprite_get("alts"));
switch (alt_cur) {
    case 11:
    case 14:
        for(i = 0; i <= 7; i++){
            set_character_color_shading(i, 0);
        }
    break;
    case 29:
    	var glow = pingpong(-1, 1, alt_glow_timer, alt_glow_timer_max)
    	set_shading([glow, glow, glow, 1, 1, 1, 1, 1]);
    break;
}


#define pingpong(_s, _e, _time, _time_max)
var dir = 1
if (_time % _time_max >= _time_max / 2)
	dir = -1;
return lerp(_s, _e, (dir == 1 ? (_time % _time_max) / (_time_max / 2) : (_time_max - (_time % _time_max))/ (_time_max / 2)))

#define set_shading(arr)
for (var ix = 0; ix < array_length(arr); ix++) 
	set_character_color_shading(ix, arr[ix]);
