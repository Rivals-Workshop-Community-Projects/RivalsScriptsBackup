/*
if (sage_mode == 1)
{
    var life = get_player_damage(player);
    var add_damage = round(enemy_hitboxID.damage / 3);
    set_player_damage(player, life+add_damage);
}
*/

sage_meter -= (round(enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60)));//1.1
if (has_hit_player == false)
{
    mark_meter = 0;
}

