//hitbox_update

if (attack == AT_NSPECIAL){
	if (hitbox_timer==length-1){
		destroyed = true;
		spawn_hit_fx( x+hsp, y, player_id.stardecay_hfx )
	}else{
		if (get_gameplay_time()%3==0){
			var nsprand = random_func( 2, 6, true )//0-5
			var nsprand2 = random_func( 3, 16, true )//0-5
			if (nsprand <= 2){ spawn_hit_fx( x, (y-8)+(8-nsprand2), player_id.sparkles3 ); };
			if (nsprand >= 3){ spawn_hit_fx( x, (y-8)+(8-nsprand2), player_id.sparkles2 ); };
		}
	}
}