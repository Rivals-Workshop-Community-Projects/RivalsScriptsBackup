//a
if attack == AT_DAIR && hbox_num == 2 {
    if !free {
        destroyed = true;
    }
    if player_id.left_down {
        hsp += -0.2;
    } else if player_id.right_down {
        hsp += 0.2;
    }
}
if attack == AT_BAIR && hbox_num == 2 {
    if !free {
        destroyed = true;
    }
    if player_id.up_down {
        vsp += -0.2;
    } else if player_id.down_down {
        vsp += 0.2;
    }
}
