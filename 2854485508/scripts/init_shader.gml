var alt_cur = get_player_color("online_fix" in self ? online_fix : player) //sprite_get_xoffset(sprite_get("alts"));
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
    	set_shading([1, 1, 1, -1.5, 0, 1, 1]);
    break;
    case 17:
    	set_shading([1, 1, 1, -2, -2.9, 1, 1]);
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

#define set_shading(arr)
for (var ix = 0; ix < array_length(arr); ix++) 
	set_character_color_shading(ix, arr[ix]);
