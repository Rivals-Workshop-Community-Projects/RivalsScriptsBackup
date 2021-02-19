with oPlayer if y >= other.y && free{
	if (state == PS_PRATFALL) set_state(PS_IDLE_AIR);
	if (state_cat != SC_HITSTUN){
		vsp = min(vsp, 0);
		y = lerp(y, other.y, 0.3);
		do_a_fast_fall = false;
	}
	djumps = 0;
	has_airdodge = 1;
	has_walljump = 1;
	bear_uspecial = 1;
	if (state == PS_ATTACK_AIR && state_timer >= 300){
		attack_end();
		set_state(PS_IDLE_AIR);
	}
}