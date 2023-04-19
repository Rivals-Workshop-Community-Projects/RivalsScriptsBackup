/*give beem 2 hsp on starup state 1
//if attack == AT_NSPECIAL {
    if hbox_num = 5{
    hsp = (2) * spr_dir;
    }
//}

//then right after, slow it down
//if attack == AT_NSPECIAL {
    if hbox_num = 5 && hsp <= 2 {
        hsp -= 0.4 * spr_dir;
    }
//}
// mid way slow it down again to match beem
//if attack == AT_NSPECIAL {
    if hbox_num = 5 && hitbox_timer > 130 {
        hsp -= .4 * spr_dir;
    }
//}
// slow it to almost a stop to match beem
//if attack == AT_NSPECIAL {
    if hbox_num = 5 && hitbox_timer > 190 {
        hsp -= .6 * spr_dir;
    }
//}
//if attack == AT_NSPECIAL {
    if hbox_num = 5 && hitbox_timer > 290 {
        hsp -= .3 * spr_dir;
    }
}*/



if attack == AT_FTILT {
    if hbox_num = 1 {
       if hbox_num = 1 && hitbox_timer > 18{
        hsp += 1
        destroyed = true;
       }
    }
}

if attack == AT_DSTRONG {
    if hbox_num = 1 {
       if hbox_num = 1 && hitbox_timer > 80{
        destroyed = true;
       }
    }
}
//#define beemspeed{
if attack == AT_NSPECIAL {
    if !free { 
        if hbox_num = 5 {
            hsp = 2 * spr_dir;
        }
        if hbox_num = 5 && hitbox_timer > 50 {
            hsp -= .9 * spr_dir;
        }
        if hbox_num = 5 && hitbox_timer > 100 {
        hsp -= 1 * spr_dir;
        }
        if hbox_num = 5 && hitbox_timer > 150 {
        destroyed = true;
        }
    }
    if free {
        if hbox_num = 5 {
            hsp = 2 * spr_dir;
        }
        if hbox_num = 5 && hitbox_timer > 10 {
            hsp -= 2 * spr_dir;
        }
        if hbox_num = 5 && hitbox_timer > 20 {
            destroyed = true;
        }
    }
}




//if attack == AT_NSPECIAL {
 //   if hbox_num = 5 && hsp <= 2 {
 //       hsp += 0.8;
 //   }
//}

#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause