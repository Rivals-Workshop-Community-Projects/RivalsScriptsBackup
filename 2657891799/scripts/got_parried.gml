//got-parried

with my_hitboxID {
    if attack == AT_NSPECIAL {
        hitbox_timer = 0
        hsp *= 1.5
        
        if hbox_num ==  4 { //multihits
            with pHitBox if player_id == other.player_id && attack == AT_NSPECIAL && hbox_num == 3 {
                hsp *= -1.5
                hitbox_timer = 0
                multihit_counter = 0
                was_parried = true
                spr_dir *= -1
            }
        }
    }
}

shuriken_charge = 0

ss_start = 0
ss_timer = 0