if (attack = AT_NAIR && hbox_num = 1) {
    x = player_id.x;
    y = player_id.y - 32;
}

if (attack == 49 && hbox_num == 4) {
    if ("anthem_track_player" in self) {
        var x_off = anthem_track_player.x - player_id.x;
        var y_off = (anthem_track_player.y - 24) - player_id.y;
        x_pos = (x_off - player_id.x);
        y_pos = (y_off - player_id.y);
        hsp = anthem_track_player.hsp;
        vsp = anthem_track_player.vsp;
    }
}