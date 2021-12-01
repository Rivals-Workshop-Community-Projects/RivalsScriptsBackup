// hitbox_update is a script called every frame for each of your character's hitboxes. Always from the prespective of the hitbox.

if attack == AT_USPECIAL {
	hsp *= 0.998
	if hitbox_timer == length { 
		switch image_index {
			case 0: spawn_hit_fx(x, y, player_id.vfx_bubbles_large); break;
			case 1: spawn_hit_fx(x, y, player_id.vfx_bubbles_med); break;
			case 2: spawn_hit_fx(x, y, player_id.vfx_bubbles_small); break;
		}
	}
}