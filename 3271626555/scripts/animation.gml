//Walk/Dash Step Sounds
{
//	print(step_sound);
//	print(armor_sound);
if (state == PS_WALK){
	dash_cont++;
		if (dash_cont == 10){
			step_sound = random_func( 0, 3, true);
			switch (step_sound){
			    case 0:
			    sound_play(sound_get("armor_walk2"),false,noone,.5);
			    break;
			    case 1:
			    sound_play(sound_get("armor_walk3"),false,noone,.5);
			    break;
			    case 2:
			    sound_play(sound_get("armor_walk6"),false,noone,.5);
			    break;
			}
		}
		if (dash_cont == 40){
			armor_sound = random_func( 0, 3, true);
			switch (armor_sound){
			    case 0:
			    sound_play(sound_get("armor_walk1"),false,noone,.5);
			    break;
			    case 1:
			    sound_play(sound_get("armor_walk4"),false,noone,.5);
			    break;
			    case 2:
			    sound_play(sound_get("armor_walk5"),false,noone,.5);
			    break;
			}
		}
	
	if (dash_cont >= 70) {
		dash_cont = 0;
	}
}

if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN){
	dash_cont++;
		if (dash_cont == floor(1*dash_speed)){
			step_sound = random_func( 0, 3, true);
			switch (step_sound){
			    case 0:
			    sound_play(sound_get("armor_walk2"),false,noone,.5);
			    break;
			    case 1:
			    sound_play(sound_get("armor_walk3"),false,noone,.5);
			    break;
			    case 2:
			    sound_play(sound_get("armor_walk6"),false,noone,.5);
			    break;
			}
		}
		if (dash_cont == floor(4*dash_speed)){
			armor_sound = random_func( 0, 3, true);
			switch (armor_sound){
			    case 0:
			    sound_play(sound_get("armor_walk1"),false,noone,.5);
			    break;
			    case 1:
			    sound_play(sound_get("armor_walk4"),false,noone,.5);
			    break;
			    case 2:
			    sound_play(sound_get("armor_walk5"),false,noone,.5);
			    break;
			}
		}
	
	if (dash_cont >= 40) {
		dash_cont = 0;
	}
}

if (state != PS_WALK && state != PS_DASH){
	dash_cont = 0;
}
}

if ((state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD 
|| state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) && state_timer == 0){
	sound_play(sound_get("armor_roll"),false,noone,.5);
}

if(attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
    if(window == 1 && strong_charge > 0){
        image_index = 2 + (strong_charge / 5) % 3;
    }
}

if (state = PS_RESPAWN){
    sprite_index = sprite_get("crouch"); 
    if (image_index < 2 || image_index > 8) image_index = 2;
    image_index += 0.33;
}

if (stamina >= 29){
	stamina_dash = 1;
	dash_anim_speed = 0.175;
	dash_speed = 5;
} 
else {
	stamina_dash = 0;
	dash_anim_speed = 0.225;
	dash_speed = 5.75;
}

//Animation.gml
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

if (sprite == "dash") image_index = img_looped;
if (sprite == "dashstart") image_index = img_set_duration;
