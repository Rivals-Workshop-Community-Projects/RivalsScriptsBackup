if((attack == AT_NSPECIAL or attack == AT_DSPECIAL)and hbox_num == 1){
    through_platforms = 10;
} else if(attack == AT_USTRONG and hbox_num == 1){
    cur_vsp = 0;
    cur_hsp = 0;
    stop_time = 0;
    multihit = noone;
    hit_count = 0;
}

if(attack == AT_DSPECIAL){
    sound_lockout = 0;
    reversed = false;
    prev_reversed = false;
    color = c_blue;
    prev_vsp = vsp;
    prev_hsp = hsp;
    queue_pos = 0;
    for(var i = 0; i < 9; i++){
        trail_array[i] = {x:x, y:y, life:12, rot:proj_angle}
    }
}