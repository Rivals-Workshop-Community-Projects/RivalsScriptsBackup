//hitbox_update

if (attack==AT_DAIR && (hbox_num==2||hbox_num==3) && !free){
	destroyed = true;
	sound_play(sound_get("click"));
}
if (attack==AT_NSPECIAL && hbox_num==11){
	if (hitbox_timer==length-1 ){
		destroyed = true;
		sound_play(sound_get("click3"));
	}
	if (player_id.latest_light_sentry != -4){
		with(player_id){
			if (point_distance(other.x, other.y, latest_light_sentry.x, latest_light_sentry.y) <= 80){ //140?
				if (latest_light_sentry.state == 1){
					sound_play(sound_get("click3"));
					other.destroyed = true;
					user_event( 0 );
				}
			}
		}
	}
}

if (attack==AT_FSPECIAL && hbox_num==1){
	if (hitbox_timer==length-1 || !free){
		destroyed = true;
		sound_play(sound_get("click"));
	}
	if (vsp > 0){
	vsp = vsp * (0.98);
	}else if (vsp < 0){
	vsp = vsp * (0.98);   //+ 0.04;
	}
	hsp = clamp( hsp + (0.4 * spr_dir), -10, 10 );
	if (sign(hsp) == spr_dir){
		hit_priority = 1;
	}
}