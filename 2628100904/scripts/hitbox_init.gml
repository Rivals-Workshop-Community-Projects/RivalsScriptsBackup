//hitbox_init

//upsmash recoil
if (attack == AT_USTRONG){
    if(hbox_num == 3){
        can_hit_self = true;
    }
    if(hbox_num == 2){
        vsp = -8 - player_id.strong_charge/20;
    }
}

//weedsplosion
if (attack == AT_DSPECIAL){
    spr_dir = 1;
    draw_xscale = 1;
    if(hbox_num == 7){
        can_hit_self = true;
        for(var i = 0; i < 20; i++){
            can_hit[i] = (i == player_id.player);
        }
        if(player_id.left_down && player_id.right_down){
            kb_angle = 90;
        } else if(player_id.right_down){
            kb_angle = 60;
        } else if(player_id.left_down){
            kb_angle = 120;
        } else {
            kb_angle = 90;
        }
    }
}
