//B - Reversals

switch(attack) {
	case AT_NAIR:
		
			if window == 2 or window == 3 or window == 4 {
				if window_timer == 1 && !hitpause {
				print("should be creating nair hitbox now")
				var h = create_hitbox(attack, window-1, x, y + get_hitbox_value(AT_NAIR, window-1, HG_HITBOX_Y));
				
						hologram[window-2, 0] = sprite_get("ring_fx");
						hologram[window-2, 1] = window-2
						hologram[window-2, 2] = floor(h.x)
						hologram[window-2, 3] = floor(h.y)
						hologram[window-2, 4] = 1;
						hologram[window-2, 5] = spr_dir;
						sound_play(get_window_value(attack,window,AG_WINDOW_SFX))
				}
				for (var i = 0; i < maxplanets; i++) {
					orbit_speed = 30;
					if planet[i].orbiting == 1 {
						var d = (get_hitbox_value(attack, i+1, HG_WIDTH)/2)-10
						
						if window == 4 {
							planet[i].overriding += 0.03
						} else {
						planet[i].overriding = 0.8;
						}
						planet[i].x = planet[i].owner.x+lengthdir_x(d, planet[i].orbit_angle)
						planet[i].y = planet[i].owner.y+lengthdir_y(d, planet[i].orbit_angle)+get_hitbox_value(attack, i+1, HG_HITBOX_Y)
						

						
					}
				}	
			}
	break;
	case AT_EXTRA_3:
		if window > 1 && window < 5 {
			invincible = 1;
			invince_time = 1;
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 666 && window_timer == 1 {
		
			sound_play(asset_get("mfx_title_start"))
			sound_play(asset_get("mfx_title_start"), 0, noone, 1, 0.5)
			sound_play(asset_get("sfx_ell_utilt_cannon"), 0, noone, 1, 0.5)
		}
		
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
			shake_camera(4, 20)
		}
		for (var i = 0; i < maxplanets; i++) {
			if planet[i].orbiting == 1 && planet[i].owner == id {
				planet[i].overriding = min(state_timer*0.1, 0.8);
				planet[i].y = lerp(planet[i].y, y-30, planet[i].overriding);
				planet[i].x =  lerp(planet[i].x, x, planet[i].overriding);
				planet[i].depth = depth+1;
			}
		}			
	break;
}
