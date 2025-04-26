if (floating && state_cat == SC_AIR_NEUTRAL){
    sprite_index = sprite_get("hover");
	var frames = 3;
    var frame_dur = 7;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}

if (!has_mech){
    if (state == PS_IDLE_AIR){
	changeAnim(sprite_get("mechless_jump"), sprite_get("jump"));
	image_index = 3;
    }
    if (state_cat == SC_HITSTUN || state == PS_TUMBLE || state == PS_PRATFALL){
	sprite_index = (sprite_get("hurt_mechless"));
    }
    if (state == PS_AIR_DODGE){
	changeAnim(sprite_get("airdodge_mechless"), sprite_get("airdodge"));
    }
	if (state == PS_WALL_JUMP || state == PS_WALL_TECH){
		changeAnim(sprite_get("mechless_jump"), sprite_get("walljump"));
	var frames = 4;
    var frame_dur = 8;
	    if (image_index < 3){
	    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	    } else image_index = 3;
	}
}
#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}