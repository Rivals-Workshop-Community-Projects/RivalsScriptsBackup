




if (!instance_exists(player_id.peacock_article_doom_id) || attack == AT_DSPECIAL) exit;
with (player_id.peacock_article_doom_id) {
    if (state < 21 || state > 32) exit;
    for(var i = 0; i < 5; i++) {
        other.can_hit[i] = !(grabbed_player_id_array[i]);
    }
}