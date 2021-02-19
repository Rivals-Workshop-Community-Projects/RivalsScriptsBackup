///

if attack == AT_DSPECIAL && hbox_num == 1 {
    player_id.AClone = self
}

if attack == AT_NSPECIAL && hbox_num == 7 {
     can_hit_self = true	
     for (var i = 0; i < 20; i++) can_hit[i] = i == player;
}

