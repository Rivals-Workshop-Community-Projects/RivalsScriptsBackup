// article_init is used when the article object is created.

var hbox = enemy_hitboxID;
if get_player_team(hbox.player) != get_player_team(player) should_die = true;

if should_die {
    with hbox.player_id {
        sound_play(get_hitbox_value(hbox.attack, hbox.hbox_num, HG_HIT_SFX));
    }
    with player_id {
        sound_stop(asset_get("sfx_ori_energyhit_medium"));
        sound_play(asset_get("sfx_ori_energyhit_medium"));
        spawn_hit_fx(other.x, other.y, bubble_fx);
    }
    instance_destroy(self);
} else {
    with hbox.player_id if (get_hitbox_value(hbox.attack, hbox.hbox_num, HG_HITBOX_TYPE) != 2) hbox.player_id.bubble_hitpause_timer = 1;
}