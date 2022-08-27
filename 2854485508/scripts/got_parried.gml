if (("mamizou_mark_id" in hit_player_obj) && hit_player_obj.mamizou_mark_id != noone) {
    if (hit_player_obj.mamizou_mark_id == id)
    hit_player_obj.mamizou_mark_id = noone;
}

with (enemy_hitboxID) {
    if ("follower_owner" in self && player_id == other.id && type == 1) {
        follower_owner.percent += 999;
		follower_owner.state_timer = 2;
		follower_owner.hitstop = hit_player_obj.hitstop;
		follower_owner.next_state = PS_HITSTUN;
		follower_owner.kb_dir = 45;
		follower_owner.orig_knock = 8;
		follower_owner.state_timer = 0;
		follower_owner.spr_dir = -hit_player_obj.spr_dir;
    }
}