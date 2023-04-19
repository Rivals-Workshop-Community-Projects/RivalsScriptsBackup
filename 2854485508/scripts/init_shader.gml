if ("alt_glow_timer" not in self) {
	alt_glow_timer = 0;
}

var alt_glow_timer_max = 480;

alt_cur = get_player_color("online_fix" in self ? online_fix : player) //sprite_get_xoffset(sprite_get("alts"));
switch (alt_cur) {
    case 7:
    case 21:
        for(i = 0; i <= 7; i++){
            set_character_color_shading(i, 0);
        }
    break;
    case 8:
    	set_shading([0.5, 1, 1, 1, 2, 1, 1]);
    break;
    case 9:
    	set_shading([1, 1, 1, 1.4, 1, 1, 1]);
    break;
    case 10:
    	set_shading([1, 1, 1, 1, 1.5, 1, 1]);
    break;
    case 11:
    	set_shading([1, 0.5, 1, 0.7, 1.3, 1, 1]);
    break;
    case 14:
    	set_shading([1, 1, 1, 0.6, 1, 1, 1]);
    break;
    case 15:
    	set_shading([1, 1, 1, 2.5, 3, 1, 1]);
    break;
    case 16:
    	set_shading([1, 1, 1, pingpong(-1.5, 1.5, alt_glow_timer, alt_glow_timer_max), 0, 1, 1]);
    break;
    case 17:
    	set_shading([1, 1, 1, pingpong(-2, 2, alt_glow_timer, alt_glow_timer_max), pingpong(-2.9, 2.9, alt_glow_timer, alt_glow_timer_max), 1, 1]);
    break;
    case 18:
    	set_shading([0.3, 1.3, 1, 1.5, 1, 1, 0.5]);
    break;
    case 19:
    	set_shading([1, 0.5, 1, 0, 0, 1, 1]);
    break;
    case 20:
    	set_shading([0, 0, 0, 0, 0, 0, 0]);
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
