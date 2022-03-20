
hit_player_obj.slow_hit = true;

if !(hit_player_obj.time_slowed){
hit_player_obj.time_draw_timer = 0;
//hit_counter++; //3 hit passive
}

//3hit passive
// if (!hit_player_obj.time_slowed) && (my_hitboxID.attack != AT_NSPECIAL &&
//     my_hitboxID.attack != AT_DSPECIAL &&
//     my_hitboxID.attack != AT_FSPECIAL){

//     if (hit_counter == 3){
//     hit_player_obj.slow_timer = passive_slow_length;
//     hit_counter = 0;
//     hit_player_obj.time_slowed = true;
//     hit_player_obj.slow_owner = player;
//     slowed_player = hit_player_obj;
//     sound_play(sound_get("time_trigger1"));
//     }
// }
if (my_hitboxID.type == 1)
ball_check = false;

if (!hit_player_obj.time_slowed) && (my_hitboxID.attack == AT_NSPECIAL){
    hit_player_obj.slow_timer = ball_slow_length;
    hit_player_obj.slow_timer_full = ball_slow_length;
    hit_player_obj.time_slowed = true;
    hit_player_obj.slow_owner = player;
    slowed_player = hit_player_obj;
    sound_stop(ball_humm);
}

if (!hit_player_obj.time_slowed) && (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_DSPECIAL){
    hit_player_obj.slow_timer = blink_slow_length;
    hit_player_obj.slow_timer_full = blink_slow_length;
    hit_player_obj.time_slowed = true;
    hit_player_obj.slow_owner = player;
    slowed_player = hit_player_obj;

}

if (!hit_player_obj.time_slowed) && (my_hitboxID.attack == AT_DSPECIAL){
    hit_player_obj.slow_timer = rc_length;
    hit_player_obj.slow_timer_full = rc_length;
    hit_player_obj.time_slowed = true;
    hit_player_obj.slow_owner = player;
    slowed_player = hit_player_obj;

}







if (attack == AT_USPECIAL)
{
    if (my_hitboxID.hbox_num == 3 && !ball_check){
        window = 4;
        window_timer = -1;
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
    else{
        old_hsp = -2 * spr_dir;
        old_vsp = -5;
    }
}

if (attack == AT_DAIR)
{
    old_vsp = -5;
    old_hsp /= 2;
}