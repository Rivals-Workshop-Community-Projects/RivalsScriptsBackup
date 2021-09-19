if(attack == AT_USPECIAL)
{
    hit_player_obj.x = lerp(hit_player_obj.x, x + (44*spr_dir), 0.5)
    hit_player_obj.y = lerp(hit_player_obj.y, y - 10, 0.5)
}