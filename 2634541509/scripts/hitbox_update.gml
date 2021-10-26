if(attack == AT_FSPECIAL && hbox_num == 2){
    player_id.hboxx = x;
    player_id.hboxy = y;
    player_id.spawn_mail = false;
}

if(attack == AT_FSPECIAL && hitbox_timer >= 299){
    player_id.car_amount = 0;
    destroyed = true;
}
if(destroyed && attack == AT_FSPECIAL){
    player_id.car_amount = 0;
    sound_play(sound_get("explosion"));
}