user_event(9);

var team_attack = get_match_setting(SET_TEAMATTACK);
with (pHitBox) {
    if (object_index == oPlayer) continue;
    //Windboxes
    if (player_id == other.id && attack == AT_UTILT && (hbox_num == 1 || hbox_num == 2))
    {
        var player_list = ds_list_create();
 
        var num = instance_place_list(floor(x), floor(y), oPlayer, player_list, false); 
        if (num >= 1) {
            for (var i = 0; i < ds_list_size(player_list); i++) {
                var hplayer = player_list[|i]
            	if (hitbox_timer % 6 == 0 && instance_exists(hplayer) && hplayer.player != orig_player && (get_player_team(hplayer.player) != get_player_team(orig_player) || team_attack) && !hplayer.invincible) {
            		hplayer.hsp += lengthdir_x(kb_value, get_hitbox_angle(id));
            		hplayer.vsp += lengthdir_y(kb_value, get_hitbox_angle(id));
            	}
            }
        }
        ds_list_destroy(player_list);
    }
}