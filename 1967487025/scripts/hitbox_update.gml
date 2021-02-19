if player_id.runeL && attack == AT_NSPECIAL && hbox_num == 3 && y == 0 {
    damage *= 1/3;
    grounds = 1;
    walls = 1;
    length = 300;
    through_platforms = 300;
    spr_dir = 1;
    if player_id.hit_player_obj == player_id || player_id.hit_player_obj == -1 {
        with (oPlayer) if id != other.player_id {
            var target_x = x;
            var target_y = floor(y - char_height / 2);
        }
    } else {
        var target_x = player_id.hit_player_obj.x;
        var target_y = floor(player_id.hit_player_obj.y - player_id.hit_player_obj.char_height / 2);
    }

    proj_angle = point_direction(x, y, target_x, target_y);
    hsp = lengthdir_x(20, proj_angle);
    vsp = lengthdir_y(20, proj_angle);
    kb_angle = proj_angle;
}