//hit_player
if (hokuto == true) {
    hokutoHolder = round(damageHolder + ((get_player_damage(markedPlayer) - damageHolder) * 1.5));
    set_player_damage(markedPlayer, hokutoHolder);
}

if (attack == AT_FSPECIAL) {
    move_cooldown[AT_FSPECIAL] = 360;
    hokuto = true;
    hit_player_obj.enemyHokuto = true;
    markedPlayer = hit_player_obj.player;
    markedPlayerId = hit_player_obj;
    hokutoTimer = get_gameplay_time();
}