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

//instance_destroy(my_hitboxID)