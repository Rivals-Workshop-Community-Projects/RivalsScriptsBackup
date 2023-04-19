current_sprite_set = gun;

if (state == PS_SPAWN)
{
	var t = sprite_get("intro");
	draw_indicator = false;
	switch (get_player_color(player))
	{
		case 1:
		case 5:
		case 10:
		case 12:
		case 16:
		case 17:
		case 21:
		case 25:
		case 26:
		case 27:
		case 29:
			t = sprite_get("intro_ex1")
		break;
		case 28:
			t = sprite_get("intro_ex2")
		break;
		case 30:
			t = sprite_get("intro_ex3")
		break;
		case 31:
			t = sprite_get("intro_ex4")
		break;
	}
	sprite_index = t;
	var num = sprite_get_number(t);
    image_index = clamp(introTimer, 0, num);
    
    if image_index == num
    {
    	sprite_index = sprite_get("idle");
    	draw_indicator = true;
    }	
}
else
{
	draw_indicator = true;
}


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
	case "fair":
	case "bair":
	case "uair":
	case "dair":
	case "nspecial":
	case "nspecial_air":
	case "holster":
	case "fspecial":
	case "fspecial_air":
	case "uspecial":
	case "dspecial":
	case "dspecial_air":
		image_index = img_set_number;
		break;
	
	// 1 frame animations
	case "hurt":
	case "hurtground":
	case "bighurt":
	case "uphurt":
	case "downhurt":
	case "bouncehurt":
		image_index = img_one_frame;
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