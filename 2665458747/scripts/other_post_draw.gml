//other post draw

if croagpoison >= 1 && croagpoison <= 25
{
    with (other_player_id)
    {
        draw_sprite_ext(sprite_get("poison_post_indicator"), 0, other.x, 
        other.y+22, 1, 1, 0, c_white, 1)
    }
}
else if croagpoison >= 25 && croagpoison <= 50
{
    with (other_player_id)
    {
        draw_sprite_ext(sprite_get("poison_post_indicator"), 1, other.x, 
        other.y+22, 1, 1, 0, c_white, 1)
    }
}
else if croagpoison >= 50 && croagpoison <= 75
{
    with (other_player_id)
    {
        draw_sprite_ext(sprite_get("poison_post_indicator"), 2, other.x, 
        other.y+22, 1, 1, 0, c_white, 1)
    }
}
else if croagpoison >= 75
{
    with (other_player_id)
    {
        draw_sprite_ext(sprite_get("poison_post_indicator"), 3, other.x, 
        other.y+22, 1, 1, 0, c_white, 1)
    }
}
else
{
    
}

