//post-draw
//var c4Sprite = -1;

if(state = PS_WRAPPED)
{
    var spr = 0;
    with (other_player_id) 
    {
        spr = sprite_get("lightning")
    }
        draw_sprite(spr, get_gameplay_time() / 3, x - 48, y - 85);
}


if(stucks >= 10 && needles_hit == true)
{
    var spr = 0;
    with (other_player_id) 
    {
        spr = sprite_get("needler_hit")
    }
        draw_sprite(spr, 1, x - 10, y - char_height / 4);
}


