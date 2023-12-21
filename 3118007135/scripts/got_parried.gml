if hit_player_obj.wren_riptide_id == id{
    hit_player_obj.wren_riptide_id = noone;
}

// Detect the attack
/*
if my_hitboxID.attack == AT_FTILT and my_hitboxID.hbox_num == 3{
    if instance_exists(wren_wave){
        wren_wave_cooldown = wren_wave_coolmax;
        if instance_exists(wren_wave.hbox){
            instance_destroy(wren_wave.hbox);
        }
        wren_wave.state = 0;
        wren_wave.state_timer = 0;
        wren_wave.hsp *= -1.25;
        wren_wave.spr_dir *= -1;
        wren_wave.player_id = hit_player_obj.id;
    }
}*/
if my_hitboxID.attack == AT_NSPECIAL_2 or my_hitboxID.attack == AT_DSPECIAL_2{
    if instance_exists(wren_yoyo){
        instance_destroy(wren_yoyo);
    }
}