//hitbox_update
if (attack == AT_FSPECIAL){
if (hbox_num == 1){
        hsp = clamp(hsp, -9, 9);
        
        if(hitbox_timer == 53)
            spr_dir = -spr_dir;
        
        if (spr_dir == 1)
            hsp -= 0.15*(hitbox_timer>50?-1:1);
        else
            hsp += 0.15*(hitbox_timer>50?-1:1);

        //let it multihit
        if(get_gameplay_time() % 11 == 0)
            create_hitbox(AT_FSPECIAL, 2, x, y);
        
    }
}

//and now destroying the hitboxes if they hit the ground
if (attack == AT_FSPECIAL) {

    if (!free) = true {
        if hbox_num == 1 {
            destroyed = true;
            }
        }
}

if (attack == AT_NSPECIAL) {

    if (!free) = true {
        if hbox_num == 1 || hbox_num == 2 || hbox_num == 3 {
            destroyed = true;
            }
        }
}
