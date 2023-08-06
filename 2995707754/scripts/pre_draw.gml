//pre_draw
shader_start();
if !free {
	if !(state == PS_CROUCH && state_timer > 2) {
		if grounded_dust_timer < 34 {
			draw_sprite( sprite_get("dust_fx_idle_grow"), grounded_dust_timer*.15, x, y ); 
		} else {
			draw_sprite( sprite_get("dust_fx_idle"), grounded_dust_timer*.15, x, y ); 
		}
	}
}

if state == PS_RESPAWN { draw_sprite_ext( sprite_get("respawn_horus"), floor(horus_anim), x, y, 2*spr_dir, 2, 0, c_white, 1 ); }
if state == PS_ATTACK_GROUND && attack == AT_TAUNT { draw_sprite_ext( sprite_get("horus"), -1, x, y, 1*spr_dir, 1, 0, c_white, 1 ); }
shader_end();