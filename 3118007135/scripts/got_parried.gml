if hit_player_obj.wren_riptide_id == id{
    hit_player_obj.wren_riptide_id = noone;
}

// Detect the attack
if my_hitboxID.attack == AT_FTILT and my_hitboxID.hbox_num == 3{
    // Put into parry stun
    var _dis = floor(point_distance(x, y, hit_player_obj.x, hit_player_obj.y)/4);
    parry_lag = 10 + _dis;
    wren_wave_cooldown = wren_wave_coolmax;
}
if my_hitboxID.attack == AT_NSPECIAL_2 or my_hitboxID.attack == AT_DSPECIAL{
    // Put into parry stun
    var _dis = floor(point_distance(x, y, hit_player_obj.x, hit_player_obj.y)/4);
    parry_lag = 10 + _dis;
    move_cooldown[AT_NSPECIAL] = 10;
    if instance_exists(wren_yoyo){
        if instance_exists(wren_yoyo.hbox){
            wren_yoyo.hbox.destroyed = true;
        }
        instance_destroy(wren_yoyo);
    }
}
if my_hitboxID.attack == AT_DSPECIAL_2{
    // Put into parry stun
    var _dis = floor(point_distance(x, y, hit_player_obj.x, hit_player_obj.y)/4);
    parry_lag = 10 + _dis;
    move_cooldown[AT_NSPECIAL] = 10;
}
if my_hitboxID.attack == AT_USPECIAL_2{
    attack_end();
    destroy_hitboxes();
    set_state(PS_PRATFALL);
    if instance_exists(wren_yoyo.hbox){
        wren_yoyo.hbox.destroyed = true;
    }
    wren_yoyo.state = 15;
    wren_yoyo.state_timer = 0;
}

if instance_exists(wren_yoyo) and my_hitboxID.type == 1{
    wren_yoyo.state = 15;
    wren_yoyo.state_timer = 0;
}