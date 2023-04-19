var alt = get_player_color("ofix" in self ? ofix : player);
switch(alt) {
    case 20:
        set_character_color_shading(2,1.5);
        set_character_color_shading(6,3);
        //set_character_color_shading(5,8);
    break;
    case 22:
        set_character_color_shading(2, 1.1);
        set_character_color_shading(5, 2.1);
        set_character_color_shading(6, 2);
    break;
    case 23:
        set_shading([1, 1, 1, 1, 1, 1, -5, 1]);
    break;
}
#define set_shading(arr)
for (var i = 0; i < array_length(arr); i++) {
    set_character_color_shading(i, arr[i]);
}