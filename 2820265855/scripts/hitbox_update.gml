if (attack == AT_NSPECIAL_2 && hbox_num == 1 && hitbox_timer == 59) destroyed = 1;


//zap
if (attack == AT_EXTRA_3){
    if (hitbox_timer == 1){
        vsp = -3
    }
}

if (attack == AT_EXTRA_3){
    if (hitbox_timer == 10){
        vsp = -9
        hsp = -2*spr_dir
    }
}

if (attack == AT_EXTRA_3){
    if (hitbox_timer == 20){
        vsp = -3
        hsp = 9*spr_dir
    }
}