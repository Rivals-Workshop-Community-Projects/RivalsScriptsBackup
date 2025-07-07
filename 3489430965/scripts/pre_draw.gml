if (lethal_hit_timer >= 0)
{
    draw_sprite_ext(sprite_get("lethal_hit_bg"), 0, view_get_xview(), view_get_yview(), 1, 1, 0, c_white,ease_linear(1, 0, lethal_hit_timer-15, 75));
    
    if(instance_exists(hit_player_obj))
        depth = hit_player_obj.depth + 1;
}

if (lava_attack_timer >= 0)
{
    draw_sprite_ext(sprite_get("lava_attack_bg"), 0, view_get_xview(), view_get_yview(), 1, 1, 0, c_white,ease_linear(1, 0, lava_attack_timer, 45));
    
    if(instance_exists(hit_player_obj))
        depth = hit_player_obj.depth + 1;
}