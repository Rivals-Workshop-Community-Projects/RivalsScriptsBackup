if ((get_gameplay_time() % 15 == 0 && is_aether_stage())) { 
    with (oPlayer) if (y >= other.y - 40) { take_damage(player, player-1, 1) }
}