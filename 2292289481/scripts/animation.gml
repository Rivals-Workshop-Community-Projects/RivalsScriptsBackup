if (state == PS_SPAWN) {
	if (state_timer == 5) {
		sound_play(asset_get("sfx_syl_nspecial_plantgrowth"));
	}
    if (introTimer < 10 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (state == PS_PRATFALL && attack == AT_FSPECIAL) {
    spr_prat2 = sprite_get("pratfall2");
    sprite_index = spr_prat2;
    if (sprite_index == spr_prat2){
    var frames = 4;
    var frame_dur = 5;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
    print(image_index);
}