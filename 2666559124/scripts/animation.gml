switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

// And so I must copy the Squidward code again... *sniffs*...
if (use_ex_sprites) {
	// Grounded Animations
	changeAnim(sprite_get("idle_ex"), sprite_get("idle"));
	changeAnim(sprite_get("crouch_ex"), sprite_get("crouch"));
	changeAnim(sprite_get("walk_ex"), sprite_get("walk"));
	changeAnim(sprite_get("walkturn_ex"), sprite_get("walkturn"));
	changeAnim(sprite_get("dash_ex"), sprite_get("dash"));
	changeAnim(sprite_get("dashstart_ex"), sprite_get("dashstart"));
	changeAnim(sprite_get("dashstop_ex"), sprite_get("dashstop"));
	changeAnim(sprite_get("dashturn_ex"), sprite_get("dashturn"));
	
	// Aerial Animations
	changeAnim(sprite_get("jumpstart_ex"), sprite_get("jumpstart"));
	changeAnim(sprite_get("jump_ex"), sprite_get("jump"));
	changeAnim(sprite_get("doublejump_ex"), sprite_get("doublejump"));
	changeAnim(sprite_get("walljump_ex"), sprite_get("walljump"));
	changeAnim(sprite_get("pratfall_ex"), sprite_get("pratfall"));
	changeAnim(sprite_get("land_ex"), sprite_get("land"));
	changeAnim(sprite_get("landinglag_ex"), sprite_get("landinglag"));
	
	// Defensive Animations
	changeAnim(sprite_get("parry_ex"), sprite_get("parry"));
	changeAnim(sprite_get("roll_forward_ex"), sprite_get("roll_forward"));
	changeAnim(sprite_get("roll_backward_ex"), sprite_get("roll_backward"));
	changeAnim(sprite_get("airdodge_ex"), sprite_get("airdodge"));
	changeAnim(sprite_get("waveland_ex"), sprite_get("waveland"));
	changeAnim(sprite_get("tech_ex"), sprite_get("tech"));
	
	// Hurt Animations
	changeAnim(sprite_get("hurt_ex"), sprite_get("hurt"));
	changeAnim(sprite_get("hurtground_ex"), sprite_get("hurtground"));
	changeAnim(sprite_get("bighurt_ex"), sprite_get("bighurt"));
	changeAnim(sprite_get("uphurt_ex"), sprite_get("uphurt"));
	changeAnim(sprite_get("spinhurt_ex"), sprite_get("spinhurt"));
	changeAnim(sprite_get("downhurt_ex"), sprite_get("downhurt"));
	changeAnim(sprite_get("bouncehurt_ex"), sprite_get("bouncehurt"));
	
	// Attack Animations
	changeAnim(sprite_get("jab_ex"), sprite_get("jab"));
	changeAnim(sprite_get("dattack_ex"), sprite_get("dattack"));
	changeAnim(sprite_get("ftilt_ex"), sprite_get("ftilt"));
	changeAnim(sprite_get("utilt_ex"), sprite_get("utilt"));
	changeAnim(sprite_get("dtilt_ex"), sprite_get("dtilt"));
	changeAnim(sprite_get("nair_ex"), sprite_get("nair"));
	changeAnim(sprite_get("fair_ex"), sprite_get("fair"));
	changeAnim(sprite_get("bair_ex"), sprite_get("bair"));
	changeAnim(sprite_get("uair_ex"), sprite_get("uair"));
	changeAnim(sprite_get("dair_ex"), sprite_get("dair"));
	changeAnim(sprite_get("fstrong_ex"), sprite_get("fstrong"));
	changeAnim(sprite_get("ustrong_ex"), sprite_get("ustrong"));
	changeAnim(sprite_get("dstrong_ex"), sprite_get("dstrong"));
	changeAnim(sprite_get("nspecial_ex"), sprite_get("nspecial"));
	changeAnim(sprite_get("fspecial_ex"), sprite_get("fspecial"));
	changeAnim(sprite_get("uspecial_ex"), sprite_get("uspecial"));
	changeAnim(sprite_get("dspecial_ex"), sprite_get("dspecial"));
	changeAnim(sprite_get("taunt_ex"), sprite_get("taunt"));
	changeAnim(sprite_get("taunt_old_ex"), sprite_get("taunt_old"));
}

if (sprite_index == sprite_get("idle_ex")) {
    var frames = 6;
    var frame_dur = 7;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}

if (sprite_index == sprite_get("walk_ex")) {
    var frames = 8;
    var frame_dur = 5;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}

if (sprite_index == sprite_get("dash_ex")) {
    var frames = 8;
    var frame_dur = 5;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}

#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}
