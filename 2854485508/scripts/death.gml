sound_play(sound_get("death"));

with (oPlayer) {
    if (("mamizou_mark_id" in self) && mamizou_mark_id != noone) {
        if (mamizou_mark_id == other.id)
        mamizou_mark_id = noone;
    }
}


with (obj_article2) {
    if (player_id == other.id) {
        hitpoints = 0;
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