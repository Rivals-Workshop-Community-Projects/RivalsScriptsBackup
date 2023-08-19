if ds_list_size(hit_player_obj.roke_mark_id) > 0 {
    with hit_player_obj {
        var ind = ds_list_find_index(roke_mark_id,other.id);
        while ind != -1 {
            ds_list_delete(roke_mark_id,ind);
            roke_mark--;
            ind = ds_list_find_index(roke_mark_id,other.id);
        }
    }
}

if my_hitboxID.attack == AT_NSPECIAL && hbox_num == 1 {
    move_cooldown[AT_NSPECIAL] = 30;
}
if (my_hitboxID.type == 2 && my_hitboxID.hits_tag == 2) {
    
    was_parried = true;
    parry_lag = 40;
    hitpause = true;
    old_vsp = vsp;
    old_hsp = hsp;
    hitstop_full = my_hitboxID.hitpause + get_player_damage(hit_player_obj.player) * get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITPAUSE_SCALING) * 0.05;
    hitstop = hitstop_full;
    
    hitpause = true;
    hit_player_obj.hitstop_full = hitstop_full;
    hit_player_obj.hitstop = hit_player_obj.hitstop_full;
}
//instance_destroy(my_hitboxID)