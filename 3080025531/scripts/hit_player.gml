var hit_att = my_hitboxID.attack;
var hit_num = my_hitboxID.hbox_num;

switch (hit_att) {
    case AT_FTILT:
        if (hit_num == 2) {
            hit_player_obj.grabbed = 1;
			grabbed_id = hit_player_obj;
			grabbed_id.ungrab = 0;
            ftilt_grab = true;
        }
        break;
    case AT_FAIR:
        if (hit_num == 1 || hit_num == 2) {
            hit_player_obj.grabbed = 1;
			grabbed_id = hit_player_obj;
			grabbed_id.ungrab = 0;
            fair_grab = true;
        }
        break;
    case AT_DSTRONG:
        if (hit_num == 1 && grabbed_id == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone) {
            hit_player_obj.grabbed = 1;
			grabbed_id = hit_player_obj;
			grabbed_id.ungrab = 0;
        }
        break;
}