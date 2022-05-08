// called when the character gets KO'd
missile_amount += (has_rune("H")? 50: 25);
power_bomb_amount = (power_bomb_amount > 2? (has_rune("H")? power_bomb_amount + 5: power_bomb_amount): 2);