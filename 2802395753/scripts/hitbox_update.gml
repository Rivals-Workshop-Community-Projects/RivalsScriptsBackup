if(attack == AT_FSTRONG && hbox_num == 1){
    if(was_parried){
        destroyed = true;
    }
    if(strong_charged != 60 && ((!loop && hitbox_timer > 15) || (loop && hitbox_timer > 70)) && kb_value > 2){
        kb_value -= .2 + strong_charged/400;
        if(kb_value < 2){
            kb_value = 2;
        }
    }
    if(loop){
        if(hitbox_timer > 10 && hitbox_timer < 53){
            move_angle -= .15 * spr_dir;
            proj_angle += 8.77 * spr_dir;
            vsp = sin(move_angle) * magnitude;
            hsp = cos(move_angle) * magnitude;
            if(hsp * spr_dir > 0){
                kb_angle = 45;
            } else {
                kb_angle = 135;
            }
        } else if(hitbox_timer == 53){
            vsp = -1;
            grav = .05;
            proj_angle = 0;
        } else if(hitbox_timer > 53) {
            grounds = 0;
            walls = 0;
            if(!free){
                destroyed = true;
            }
        }
    } else {
        grounds = 0;
        walls = 0;
        if(!free){
            destroyed = true;
        }
    }
}
