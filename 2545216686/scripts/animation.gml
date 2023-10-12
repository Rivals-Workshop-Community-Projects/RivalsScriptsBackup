//animation.gml

//sprite_index = sprite_get("empty_sprite")

// Intro
if (state == PS_SPAWN) {
	if (playIntroAnim){
		if (!shouldPlayLandingIntroAnim){
			sprite_index = sprite_get("empty_sprite");
		} else {
			sprite_index = sprite_get("intro");
			image_index = introImgLandTimer + 13;
		}
	} else {
		sprite_index = sprite_get("idle");
	}
}

if (state == PS_WAVELAND || state == PS_TECH_GROUND){
	sprite_index = sprite_get("landinglag")
}

if (aerialattack == 1 && state == PS_PRATFALL){
	sprite_index = sprite_get("jump")
	image_index = 12
} else if (aerialattack == 0 && state == PS_PRATFALL){
	sprite_index = sprite_get("pratfall")
}

if (image_index == sprite_get("jump")){
	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
}

if (attack == AT_FSPECIAL_2 || attack == AT_FSPECIAL_AIR){
	//hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	hurtboxID.sprite_index = hurtbox_spr;
}

/*
if (attack == AT_USPECIAL){
	print(free);
	if (window == 1){
		if (window_timer == 0){
			print("AAA")
			sprDirCarry = spr_dir;
		}
		spr_dir = sprDirCarry;
	}
}
*/

if (attack == AT_EXTRA_1 && state == PS_ATTACK_GROUND){
    hurtboxID.sprite_index = sprite_get("fspec_landinglag");
}