//when you hit someone

if (variable_instance_exists(my_hitboxID, "has_hit_someone") && my_hitboxID.player_id == id){
    my_hitboxID.has_hit_someone += 1;
    my_hitboxID.has_hit_someone_id = hit_player_obj;
}

if (my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG){
    sound_play(sfx_gunshot2);
}

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 3 || my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 3 || my_hitboxID.attack == AT_DTHROW && my_hitboxID.hbox_num == 3 || my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1 || hit_player_obj.activated_kill_effect == true){
    cool_factor = max_cool;
}

if (my_hitboxID.type == 1){
    vial_vim += my_hitboxID.damage * 2;
}
ammo_regen_timer += point_distance(0, 9, hit_player_obj.hsp, hit_player_obj.vsp);

//text fx

if (my_hitboxID.player_id == id){
    if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num < 3 || my_hitboxID.attack == AT_NAIR){
        spawn_hit_fx(hit_player_obj.x + 50, hit_player_obj.y - 70, tfx_bop);
    }
    if (my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_DTILT){
        spawn_hit_fx(hit_player_obj.x + 40, hit_player_obj.y - 70, tfx_pow);
    }
    if (my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 3){
        spawn_hit_fx(hit_player_obj.x + 32, hit_player_obj.y + 20, tfx_kick);
    }
    if (my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == AT_FSTRONG_2 || my_hitboxID.attack == AT_DTHROW){
        if (my_hitboxID.hbox_num != 2){
            spawn_hit_fx(hit_player_obj.x + 50, hit_player_obj.y - 30, tfx_thwak);
        }
    }
}