if attack == AT_EXTRA_3 && hbox_num != 1 {
	
	if !free {
		destroyed = 1 
		sound_play(sound_get("slicel"));
	}
	
}

if attack == AT_NSPECIAL && hbox_num == 1 {
	
	if hitbox_timer == 34 {
		spawn_hit_fx(x + hsp,y + hsp,14)
		sound_play(asset_get("sfx_swipe_weak1"),false,noone,.6,0.6);
	}
	
	if !free && hitbox_timer < 30 {
		hitbox_timer = 60 
		spawn_hit_fx(x + hsp,y + vsp,14)
		sound_play(asset_get("sfx_swipe_weak1"),false,noone,.6,0.6);
	}
	
}