if (attack == AT_NSPECIAL){
    if(hbox_num == 1){
        if(hitbox_timer = 29){
            destroyed = true;
        }
    }
}

if (attack == AT_NSPECIAL){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
        }
    } 
}



if (attack == AT_NAIR){
    if(hbox_num == 7){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
	        sound_play(sound_get("hoop_break"));
            destroyed = true;
        }
    } 
}


if (attack == AT_NSPECIAL){
    if(hbox_num == 1 && hitbox_timer == 4){
            create_hitbox(AT_NSPECIAL, 2, x, y-17);
    }
    if(hbox_num == 1 && hitbox_timer == 8){
            create_hitbox(AT_NSPECIAL, 2, x, y-12);
    }
    if(hbox_num == 1 && hitbox_timer == 12){
            create_hitbox(AT_NSPECIAL, 3, x, y-18);
    }
    if(hbox_num == 1 && hitbox_timer == 16){
            create_hitbox(AT_NSPECIAL, 2, x, y-11);
    }
    if(hbox_num == 1 && hitbox_timer == 20){
            create_hitbox(AT_NSPECIAL, 3, x, y-16);
    }
    if(hbox_num == 1 && hitbox_timer == 24){
            create_hitbox(AT_NSPECIAL, 2, x, y-3);
    }
    if(hbox_num == 1 && hitbox_timer == 28){
            create_hitbox(AT_NSPECIAL, 2, x, y-17);
    }
    if(hbox_num == 1 && hitbox_timer == 32){
            create_hitbox(AT_NSPECIAL, 3, x, y-12);
    }
    if(hbox_num == 1 && hitbox_timer == 36){
            create_hitbox(AT_NSPECIAL, 2, x, y-3);
    }
    if(hbox_num == 1 && hitbox_timer == 40){
            create_hitbox(AT_NSPECIAL, 3, x, y-16);
    }
    if(hbox_num == 1 && hitbox_timer == 44){
            create_hitbox(AT_NSPECIAL, 2, x, y-15);
    }
    if(hbox_num == 1 && hitbox_timer == 48){
            create_hitbox(AT_NSPECIAL, 2, x, y-14);
    }
}


if (attack == 49 && spr_dir = 1){
    if(hbox_num == 3 && hitbox_timer == 2){
            create_hitbox(49, 1, x-52, y-80);
    }
    if(hbox_num == 3 && hitbox_timer == 6){
            create_hitbox(49, 4, x+38, y-29);
    }
    if(hbox_num == 3 && hitbox_timer == 10){
            create_hitbox(49, 1, x+50, y-90);
    }
    if(hbox_num == 3 && hitbox_timer == 14){
            create_hitbox(49, 1, x-15, y+12);
    }
    if(hbox_num == 3 && hitbox_timer == 18){
            create_hitbox(49, 1, x-74, y-31);
    }
    if(hbox_num == 3 && hitbox_timer == 22){
            create_hitbox(49, 1, x+61, y-4);
    }
    if(hbox_num == 3 && hitbox_timer == 24){
            create_hitbox(49, 4, x+30, y-80);
    }
    if(hbox_num == 3 && hitbox_timer == 29){
            create_hitbox(49, 1, x-18, y-70);
    }
}
if (attack == 49 && spr_dir = -1){
    if(hbox_num == 3 && hitbox_timer == 2){
            create_hitbox(49, 2, x-52, y-80);
    }
    if(hbox_num == 3 && hitbox_timer == 6){
            create_hitbox(49, 5, x+38, y-29);
    }
    if(hbox_num == 3 && hitbox_timer == 10){
            create_hitbox(49, 2, x+50, y-90);
    }
    if(hbox_num == 3 && hitbox_timer == 14){
            create_hitbox(49, 2, x-15, y+12);
    }
    if(hbox_num == 3 && hitbox_timer == 18){
            create_hitbox(49, 2, x-74, y-31);
    }
    if(hbox_num == 3 && hitbox_timer == 22){
            create_hitbox(49, 2, x+61, y-4);
    }
    if(hbox_num == 3 && hitbox_timer == 24){
            create_hitbox(49, 5, x+30, y-80);
    }
    if(hbox_num == 3 && hitbox_timer == 29){
            create_hitbox(49, 2, x-18, y-70);
    }
}
