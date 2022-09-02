if (("mamizou_mark_id" in hit_player_obj) && hit_player_obj.mamizou_mark_id != noone) {
    if (hit_player_obj.mamizou_mark_id == id)
    hit_player_obj.mamizou_mark_id = noone;
}


with (obj_article2) {
    if (player_id == other.id) {
        percent += 999;
    	hitstun = 60;
    	hitstun_full = 60;
    	state_timer = 2;
    	hitstop = 0;
    	next_state = PS_HITSTUN;
    	kb_dir = 45;
    	orig_knock = 8;
    	state_timer = 0;
    }
}
