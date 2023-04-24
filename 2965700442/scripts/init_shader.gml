//#region Local Variables
//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);
//#endregion

switch (alt_cur)
{
    case 14: //gameboy / early access - gameboy palletes don't have shading
        for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
		outline_color = [15, 56, 15];
        break;
    case 22: //lumi
    	set_shading([1, 1, 0.5, 0.5, 1, 1, -4, 0.5, 1])
    	break;
    case 23: // uh
    	set_shading([1, 1, 0.6, 0, 0.4, 1, 0, 0.5, 1])
    	break;
    case 24: // flow
    	set_shading([1, 1, 0.5, -1, 1, 1, -2, 0.8, 1])
    	break;
    case 25: // Zero
    	set_shading([1, 1, 1, 0.8, 1.3, 1, 0.3, 1, 1])
    	break;
    case 26: // Mint
    	set_shading([1, 1, 0.5, 0.4, 1, 0.5, 0.5, 0.5, 1])
    	break;
    case 27: // Sakura Blossom
    	set_shading([1, 1, 1, 0.5, 1, 1, -1, 0.5, 1])
    	break;
    case 28: // Lakers
    	set_shading([1, 1, 0.8, 1, 1, 1, 1, 1, 1])
    	break;
}

#define set_shading(arr)
for (var i = 0; i < 8; i++) set_character_color_shading(i,arr[i]);

#define pingpong(_s, _e, _time, _time_max)
var dir = 1
if (_time % _time_max >= _time_max / 2)
	dir = -1;
return lerp(_s, _e, (dir == 1 ? (_time % _time_max) / (_time_max / 2) : (_time_max - (_time % _time_max))/ (_time_max / 2)))
