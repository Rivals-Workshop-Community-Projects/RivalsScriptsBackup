for (var i = 0; i < array_length(checked_sprite_names); i++){
	if sprite_index == sprite_get(checked_sprite_names[i]){
		process_form_sprite(checked_sprite_names[i]);
		exit;
	}
}

#define process_form_sprite(sprite)

var num_frames = image_number / num_sprite_sets;
var offset = num_frames * current_sprite_set;

var img_looped = image_index % num_frames + offset;
var img_set_duration = image_index / num_sprite_sets + offset;
var img_set_number = image_index + offset;
var img_one_frame = current_sprite_set;

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
	case "landinglag":
		image_index = img_set_duration;
		break;
		
	case "land":
        if (was_parried && state == PS_PRATLAND){
            image_index = img_set_duration;
            if (image_index >=  num_frames + offset){
                image_index = (image_index % 2) + offset;
            }
        } else {
            image_index = img_set_duration;
        }
    break;
	
	// anims w/ set numbers of frames per window
	case "crouch":
	case "parry":
	case "roll_forward":
	case "roll_backward":
	case "tech":
	case "airdodge":
	//case "jab":
	//case "ftilt":
	//case "utilt":
	//case "dtilt":
	//case "dattack":
	//case "nair":
	//case "fair":
	//case "bair":
	//case "uair":
	//case "dair":
	//case "fstrong":
	//case "ustrong":
	//case "dstrong":
	//case "nspecial":
	//case "nspecial_air":
	case "fspecial":
	case "uspecial":
	case "uspecial_air":
	case "dspecial":
	case "qs_recharge":
	//case "taunt":
		image_index = img_set_number;
		break;
	
	// 1 frame animations
	case "hurt":
	case "hurtground":
	case "bighurt":
	case "uphurt":
	case "downhurt":
	//case "bouncehurt":
		image_index = img_one_frame;
		break;
	
	// walljump
	case "walljump":
		if image_index < 2{
			image_index = img_set_number;
		}
		else{
			image_index = lerp(2, 7, (image_index - 2) / 12) + offset;
		}
		break;
	
	
}
