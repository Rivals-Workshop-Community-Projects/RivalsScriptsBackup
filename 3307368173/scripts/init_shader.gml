//init_shader.gml

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 0: //default
        break;
    case 5:
	set_shading([1, 1, 1, 1, 0.5, 1, 1, 1])
	break;
    case 9:
	set_shading([1, 1, 1, 1, 1, 1, 0, 1])
	break;
    case 11:
	set_shading([1, 1, 0.5, 1, 1, 1, 1, 1])
	break;
    case 12:
	set_shading([0.5, 0.5, 0.5, 0.5, 1, 1, 1, 1])
	break;
    case 13:
	set_shading([-0.5, 1, 1, 1, 1, 1, 1, 1])
	break;
    case 14:
	set_shading([1, 1, 0.5, 0.5, 1, 1.5, 1.5, 1])
	break;
    case 15:
	set_shading([0.5, 1, 0.5, 1, 1, 1.9, 1, 1])
	break;
    case 16:
	set_shading([1, 1, 1.5, 1, 1.5, 1, 1, 1])
	break;
    case 17:
	set_shading([1, 1, 0.5, 1, 1, 1, 1, 1])
	break;
    case 18:
	set_shading([1, 1, 0.5, 1, 1, 1, 1, 1])
	break;
    case 21:
	set_shading([1, 1, 0.5, 1, 1, 1, 1, 1])
	break;
    case 22:
	set_shading([1, 1, 1.5, 1, 1, 1, 1, 1])
	break;
    case 24:
	set_shading([-20, 2.5, 0.5, 1, 1.5, 1.5, 1, 1])
	break;
    case 25:
	set_shading([1, 1, 0.5, 0.5, 1, 2, 1, 1])
	break;
    case 26:
	set_shading([0.5, 1.6, 0.9, 0.6, 0.6, 0.7, 1.4, 1])
	break;
}

#define set_shading(arr)
for (var i = 0; i < array_length(arr); i++) set_character_color_shading(i, arr[i]);