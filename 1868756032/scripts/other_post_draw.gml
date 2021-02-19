if other_player_id.current_ability == 5{
if (ds_list_find_index(other_player_id.marked_list, self.id) != -1) {
    draw_sprite(asset_get("fer_leaf_spr"), 0, x-48+(get_gameplay_time() mod 38.4)*2.5, y-char_height*.5);
}
}