//post_draw


/*
draw_debug_text( x, y + 40, string(wblastcharge));


with (asset_get("pHitBox")) {
	if (attack == AT_DSPECIAL && hbox_num == 1) {
			draw_debug_text( x, y + 60, string(state_timer));
	}
}
*/

shader_start();

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	//there's nothing.
}

shader_end();