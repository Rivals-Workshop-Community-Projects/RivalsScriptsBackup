set_player_damage(hit_player_obj.player, get_player_damage(hit_player_obj.player) + aware * (attack == AT_NAIR || attack == AT_FAIR? (has_rune("J")? 2: 1): (has_rune("J")? 6: 3)));

if(my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_AIR) && my_hitboxID.hbox_num == 1 && !hit_player_obj.super_armor && !instance_exists(grabp){
    grabp = hit_player_obj;
    grabp.state = PS_WRAPPED;
    grabp.wrap_time = 10000;
}

if(my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_AIR) && my_hitboxID.hbox_num == 2 && timingt{
    hitstop = 70;
    grabp.hitstop = 70;
    shake_camera(20, 70);
    sound_stop(sound_get("chase"));
}

hit_aw = my_hitboxID.damage * 6;

if(hit_player_obj.emmi_fr || hit_player_obj.emmi_st){
    if hit_player_obj.emmi_fr spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height / 2, 158);
    hit_player_obj.emmi_fr = 0;
    hit_player_obj.emmi_st = 0;
}

if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && !hit_player_obj.emmi_fr){
    hit_player_obj.emmi_fr = 1;
    hit_player_obj.state = PS_WRAPPED;
    hit_player_obj.wrap_time = 70 + (has_rune("N")? 100: 0);
    hit_player_obj.y -= 2;
    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height / 2, 199);
}

if((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_AIR) && !hit_player_obj.emmi_st){
    if attack == AT_DSPECIAL_AIR hit_player_obj.emmi_st = 80 + my_hitbox_id.orb_lv_hb * 10;
    else hit_player_obj.emmi_st = 40 + 30 * my_hitboxID.orb_lv_hb + (has_rune("N")? 100: 0);
    print(my_hitboxID.orb_lv_hb)
}