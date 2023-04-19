//
if (get_player_color(player) = 0)
{
    set_character_color_slot(1, 186, 184, 180)
}
switch(get_player_color(player))
{
    case 0:
        set_shading([1, 1, 1, 1, 1, 1, 1, 1])
        break;
    case 1:
        set_shading([1, 1.4, 1.4, 1, 1, 1.4, 1, 1])
        break;
    case 2:
        set_shading([1, 0.7, 1.4, 1, 1, 1.4, 1, 1])
        break;
    case 3:
        set_shading([1, 1, 1.7, 1, 1, 1, 1, 1])
        break;
    case 4:
        set_shading([1, 1, 1.4, 1, 1, 1.4, 1, 1])
        break;
    case 5:
        set_shading([1, 1.5, 1.8, 1, 1, 1, 1, 1])
        break;
    case 6:
        set_shading([1, 1.4, 1, 1, 1, 1, 1, 1])
        break;
    case 7:
        set_shading([1, 0.7, 1.4, 1, 1, 0.7, 1, 1])
        break;
    case 8:
        set_shading([1, 1.3, 1.4, 1, 1, 1.4, 1, 1])
        break;
    case 9:
        set_shading([1, 1, 1.7, 1, 1, 1, 1, 1])
        break;
    case 10:
        set_shading([0.8, 1, 1, 1, 1, 1.5, 1, 0.6])
        break;
    case 11:
        set_shading([0.5, 1.5, 1, 1, 0.7, 0.7, 1, 0.5])
        break;
}
#define set_shading(arr)
for (var i = 0; i < array_length(arr); i++) {
    set_character_color_shading(i, arr[i]);
}