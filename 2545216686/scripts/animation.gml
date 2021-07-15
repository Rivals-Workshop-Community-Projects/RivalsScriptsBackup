//animation.gml

//sprite_index = sprite_get("empty_sprite")

if (state == PS_WAVELAND){
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

if (attack == AT_FSPECIAL_2){
	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
}