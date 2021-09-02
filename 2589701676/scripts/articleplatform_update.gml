//articleP_update

if(destruction_count_down!=-1){
    vsp=0;
    destruction_count_down--;
    if(destruction_count_down==0){
        player_id.my_jail = noone;
        instance_destroy();
    }
    return;
}

if (y>room_bot_blast){
    vsp = -1 * my_speed;
    fall_time = -2;
}

if (((y < room_top_blast || fall_time <=-450)&&fall_time<60) ){//|| player_id.my_key.current_owner_id!=player_id.id){
    destruction_count_down=30;
    vsp=0;
    return;
}

if (vsp <=1 && fall_time<0){
    if (player_id.free){
        vsp = 0;
    }
    else {
        if (fall_time == -1 && y+15<get_stage_data(SD_Y_POS)){vsp = 1;}
        else {vsp = -1 * my_speed;}
    }
}
else if (vsp == 0 && !ignores_walls && !hit_wall){
    ignores_walls = true;
    y += 10;
}
if (hit_wall){vsp = my_speed;}
fall_time--;