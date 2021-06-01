if (state == PS_SPAWN) {
    if (introTimer < 90 && introTimer >= 0) {
        sprite_index = asset_get("empty_sprite");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = asset_get("empty_sprite");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    
    
    if(get_gameplay_time() == 95){
		blaster_anim = 1;
        blaster_anim_frame = 0;
	}

if(get_gameplay_time() == 113){
		spawn_hit_fx( blaster.x+30*spr_dir, blaster.y-45, blaster_smoke_1);
		sound_play(sound_get("blaster_smb3"));
		spawn_hit_fx( x, y, blaster_intro);
	}
    
}

