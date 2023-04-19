//hitbox_update

if (attack==AT_DAIR && (hbox_num==2||hbox_num==3) && !free){
	destroyed = true;
	sound_play(sound_get("click"));
}
if (attack==AT_NSPECIAL && hbox_num==11){
		if (hitbox_timer %3 == 0){
			var dsp_particle_rand = random_func( 0, 2, true )
			if (dsp_particle_rand == 0){
			spawn_hit_fx( x-(20*spr_dir)-16+random_func( 1, 32, true ), y-24+random_func( 4, 48, true ), player_id.particle1 );
			}
			if (dsp_particle_rand == 1){
			spawn_hit_fx( x-(20*spr_dir)-16+random_func( 2, 32, true ), y-24+random_func( 5, 48, true ), player_id.particle2 );
			}
			if (dsp_particle_rand == 2){
			spawn_hit_fx( x-(20*spr_dir)-16+random_func( 3, 32, true ), y-24+random_func( 6, 48, true ), player_id.particle3 );
			}
		}
	if (hitbox_timer==length-1 ){
		destroyed = true;
		if (!was_parried){ sound_play(sound_get("click3")); }
		else{ sound_play(asset_get("sfx_ell_steam_hit")); }
	}
	if (player_id.latest_light_sentry != -4){
		with(player_id){
			if (point_distance(other.x, other.y, latest_light_sentry.x, latest_light_sentry.y) <= 80){ //140?
				if (latest_light_sentry.state == 1){
					if (!was_parried){ sound_play(sound_get("click3")); }
					else{ sound_play(asset_get("sfx_ell_steam_hit")); }
					other.destroyed = true;
					if (other.player != other.orig_player){
					parried_storage = other.player;
					}
					user_event( 0 );
					
				}
			}
		}
	}
}

if (attack==AT_FSPECIAL && hbox_num==1){
				//print("run")
		if (hitbox_timer % 4 == 0){
			var dsp_particle_rand = random_func( 0, 1, true )
			if (dsp_particle_rand == 0){
			spawn_hit_fx( x-12+random_func( 2+(id&10), 24, true ), y-12+random_func( 5+(id&10), 24, true ), player_id.particle2 );
			}
			if (dsp_particle_rand == 1){
			spawn_hit_fx( x-12+random_func( 3+(id&10), 24, true ), y-12+random_func( 6+(id&10), 24, true ), player_id.particle3 );
			}
		}
	/*
	if (hitbox_timer==length-1 || !free){
		destroyed = true;
		sound_play(sound_get("click"));
	}
	*/
	if (hitbox_timer==length-1){
		spawn_hit_fx( x, y, player_id.particle1 );
		destroyed = true;
		with (player_id){sound_play(sound_get("click"));}
	}
	if (gather){
		if (variable_instance_exists(id, "hsp_str")){
			hsp = hsp-hsp_str;
			vsp = vsp-vsp_str;
			if ( sign(hsp)==sign(hsp_str*-1) ){
				hit_priority = 1;
				//print("true")
			}//else{print(string(sign(hsp))+", "+string(sign(hsp_str)))}
		}else{
			hsp_str = sign(hsp)/2;
			vsp_str = sign(vsp)/2;
			print(string(hsp_str)+", "+string(vsp_str));
			x = x + sign(player_id.x - follow.x)
			y = y + sign(player_id.y - follow.y)
		}
	}else{
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
}



