//got_parried.gml
if(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1){
    window = 3;
    window_timer = 0;
    k_stun_timer = k_max_stun_time;
}
if(hit_player_obj.k_poison_timer){
    hit_player_obj.k_poison_timer = 0;
}