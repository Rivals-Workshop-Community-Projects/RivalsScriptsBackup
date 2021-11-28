//other pre draw

if croagpoison >= 1
{
    with (other_player_id)
    {
        draw_sprite_ext(sprite_get("poison_pre_indicator"), get_gameplay_time()/4, round(other.x+(other.croagpoison*0.14)), 
        other.y+38, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("poison_pre_indicator"), get_gameplay_time()/7, other.x, 
        other.y+38, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("poison_pre_indicator"), get_gameplay_time()/4, round(other.x-(2+other.croagpoison*0.14)), 
        other.y+38, 2, 2, 0, c_white, 1)
    }
}