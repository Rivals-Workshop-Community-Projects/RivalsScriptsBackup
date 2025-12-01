
if (my_hitboxID.attack == AT_NSPECIAL) {
    with (pHitBox) {
		if (player_id == other.id && attack == other.my_hitboxID.attack && id != other.my_hitboxID) { 
            reflected = true;
            was_parried = true;
            player = other.hit_player_obj.player;
            hsp *= -1;
            vsp *= -1;
            spr_dir *= -1;
            if ("mako_bounce_timer" in self) {
                mako_bounce_timer = -1;
            }
		}
    }
    if ("mako_bounce_timer" in my_hitboxID) {
        mako_bounce_timer = -1;
    }
}