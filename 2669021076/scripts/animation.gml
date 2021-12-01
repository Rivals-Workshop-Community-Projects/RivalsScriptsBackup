// Sprite set handler (with permission from Muno)
for (var i = 0; i < array_length(checked_sprite_names); i++){
	if sprite_index == sprite_get(checked_sprite_names[i]){
		process_form_sprite(checked_sprite_names[i]);
		exit;
	}
}



#define process_form_sprite(sprite)

var num_frames = image_number / 2;
var offset = num_frames * claws_broken;

var img_looped = image_index % num_frames + offset;
var img_set_duration = image_index / 2 + offset;
var img_set_number = image_index + offset;
var img_one_frame = claws_broken;

switch(sprite){
	
	// looping anims
	case "idle":
	case "walk":
	case "dash":
	case "pratfall":
	case "spinhurt":
		image_index = img_looped;
		break;
	
	// anims w/ a set duration
	case "walkturn":
	case "dashstart":
	case "dashstop":
	case "dashturn":
	case "waveland":
	case "jumpstart":
	case "jump":
	case "doublejump":
	case "land":
	case "landinglag":
		image_index = img_set_duration;
		break;
	
	// anims w/ set numbers of frames per window
	case "crouch":
	case "parry":
	case "roll_forward":
	case "roll_backward":
	case "tech":
	case "airdodge":
	case "jab":
	case "ftilt":
	case "utilt":
	case "dtilt":
	case "dattack":
	case "nair":
	//case "fair":
	//case "bair":
	//case "uair":
	case "dair":
	//case "fstrong":
	//case "ustrong":
	//case "dstrong":
	//case "nspecial":
	//case "fspecial":
	case "uspecial":
	case "dspecial":
	case "taunt":
	//case "phone_open":
		image_index = img_set_number;
		break;
	
	// 1 frame animations
	case "hurt":
	//case "hurtground":
	//case "bighurt":
	//case "uphurt":
	//case "downhurt":
	//case "bouncehurt":
		image_index = img_one_frame;
		break;
	
	// anims that don't have ssj variants
	case "intro":
		break;
	
	// walljump
	case "walljump":
		if image_index < 2{
			image_index = img_set_number;
		}
		else{
			image_index = lerp(2, 7, (image_index - 2) / 21) + offset;
		}
		break;
	
}