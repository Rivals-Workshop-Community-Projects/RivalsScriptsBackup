//article_platform_pre_draw
// Geyser



switch(state)
{
    case 0:
        var y_pos = y_rising;
        var x_pos = x_rising;
    break;
    default:
        var y_pos = y;
        var x_pos = x;
    break;
    
}


while(y_pos < room_height)
{
    draw_sprite(sprite_get("water_column"),image_index,x_pos,y_pos)
    y_pos += sprite_get_height(sprite_get("water_column"));
}

switch(state)
{
    case 0:
        draw_sprite(sprite_index,image_index,x_rising,y_rising)
    break;
}
