// got_hit is a script that is called when you get hit.
side_b_used = false;
up_b_used = 0;


if azulaArmor > 0{
    var damageTakenReal = (get_player_damage(player) - prevDamage); // Prev damage is decided before the player is hit
    var damageTaken = min(damageTakenReal, azulaArmor);
    azulaArmor -= damageTaken;
    if azulaArmor < 0 azulaArmor = 0;
    take_damage(player, player, -damageTakenReal); // Heal all damage taken
    take_damage(player, hit_player_obj.player, (damageTakenReal-damageTaken)); // and then put back the damage that the armor couldn't block (if armor becomes 0) done by the opponent.
    
}
