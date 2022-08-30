if (has_rock){
	if (state_cat == SC_HITSTUN || state == PS_PRATFALL){
		sprite_index = sprite_get("rock_hurt");
	}
	if (state == PS_IDLE){
	changeAnim(sprite_get("rock_idle"), sprite_get("idle"));
	var frames = 6;
    var frame_dur = 8;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	}
	if (state == PS_WALK){
	changeAnim(sprite_get("rock_walk"), sprite_get("walk"));
	var frames = 8;
    var frame_dur = 5;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	}
	if (state == PS_WALK_TURN){
	changeAnim(sprite_get("rock_walkturn"), sprite_get("walkturn"));
	var frames = 2;
    var frame_dur = 3;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	}
	if (state == PS_JUMPSQUAT){
	changeAnim(sprite_get("rock_jumpstart"), sprite_get("jumpstart"));
	var frames = 2;
    var frame_dur = 3;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	}
	if (state == PS_FIRST_JUMP){
		
	changeAnim(sprite_get("rock_jumpstart"), sprite_get("jumpstart"));
	changeAnim(sprite_get("rock_jump"), sprite_get("jump"));
	
	if (state_timer > 35){
		image_index = 4;
	}
	}
	if (state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP){
		
	changeAnim(sprite_get("rock_jumpstart"), sprite_get("jumpstart"));
	sprite_index = sprite_get("rock_jump");
	
	if (state_timer > 18){
		image_index = 4;
	}
	}
	if (state == PS_IDLE_AIR){
		changeAnim(sprite_get("rock_jump"), sprite_get("jump"));
		image_index = 4;
	}
	if (state == PS_LAND || state == PS_PRATLAND){
	changeAnim(sprite_get("rock_land"), sprite_get("land"));
	var frames = 3;
    var frame_dur = 3;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	}
}

#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}