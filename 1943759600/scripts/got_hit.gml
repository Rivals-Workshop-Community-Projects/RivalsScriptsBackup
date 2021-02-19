//==============================================================================
//                          Abyss Rune Code
//==============================================================================
if runeK && (attack == AT_TAUNT || attack == AT_TAUNT_2)  && super_armor == true {
    take_damage(player,-1,floor(enemy_hitboxID.damage*-0.5));
    rune_revengebuff++;
    window = 3;
    window_timer = 4;
    if rune_revengebuff >= 5 rune_revengebuff = 5;
    rune_hit_em = true;
}
//==============================================================================