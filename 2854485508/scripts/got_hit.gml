if (instance_exists(follower_held) && follower_held != noone && hitstun > 0) {
	spawn_hit_fx(round(follower_held.x), round(follower_held.y), hfx_leaf );
	instance_destroy(follower_held);
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_DSPECIAL && (window == 2 || window == 3 || window == 4) && hit_player_obj.orig_knock >= 10) {
		set_attack(AT_DSPECIAL);
		window = 7;
		window_timer = 0;
		hitstop = 8;
	    hitstop_full = hitstop;
	    old_vsp = 0;
	    old_hsp = 0;
	    hitpause = true;
		hit_player_obj.has_hit_player = false;
		hit_player_obj.hitstop = hitstop;
		hit_player_obj.hitstop *= 2;
		hit_player_obj.hitstop_full *= hit_player_obj.hitstop;
		hit_player_obj.hitpause = true;
		hit_player_obj.old_vsp = 0;
		hit_player_obj.old_hsp = 0;	
	    spr_dir = hit_player_obj.x < x ? -1 : 1;
		sound_play(asset_get("sfx_zetter_shine_charged"));
		sound_play(asset_get("sfx_gus_land"));
		shake_camera(4, 8);
	}
}