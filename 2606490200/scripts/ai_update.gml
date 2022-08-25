/*
if state == PS_IDLE {
    spr_dir *= -1
    set_attack(AT_FSPECIAL)
    window = 1
    window_timer = 0
}



x = room_width/2

with oPlayer {
    if state_cat != SC_HITSTUN {
        x = room_width/2
    }
}

