// // make the nametag go higher while ustrong's fist is raised
// if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2){
// 	hud_offset = lerp(hud_offset, 180, 0.5);
// }

// // fix weird jittering that can happen when it tries to return to 0
// if abs(hud_offset) < 1{
// 	hud_offset = 0;
// }

//parry code
if state == PS_PARRY{
    if state_timer == 0 and parry_spam_cancel == false{
        sound_play(sound_get("pizza_parry"));
        rand_parry_sprite = random_func( 0, 9, true);
        parry_spam_cancel = true;
    }
    image_index = rand_parry_sprite;
} else{
    parry_spam_cancel = false;
}

if attack == AT_EXTRA_1{
	if (window >= 11){
		image_index = 9;
	}
}

//plays the correct animation for if he has metal on dspecial
if attack == AT_DSPECIAL_AIR or state == PS_LANDING_LAG{
	if oh_crap_we_dont_have_enough_metal_go_back == true{
		sprite_index = sprite_get("dspecial_air2");
		if state == PS_ATTACK_GROUND{
			sprite_index = sprite_get("dspecial_air2");
		}
	}
}

//fspecial animation
if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL{
	// if window == 1{
		if metal_count >= 50{
			switch(free){
				case 0:
					sprite_index = sprite_get("fspecial2");
				break;
				default:
					sprite_index = sprite_get("fspecial2air");
				break;
			}
			// if free != true{
			// 	sprite_index = sprite_get("fspecial2");
			// }
			// if free == true{
			// 	sprite_index = sprite_get("fspecial2air");
			// }
		} else{
			switch(free){
				case 0:
					sprite_index = sprite_get("fspecial");
				break;
				default:
					sprite_index = sprite_get("fspecialair");
				break;
			}
			// if free != true{
			// 	sprite_index = sprite_get("fspecial");
			// } 
			// if free == true{
			// 	sprite_index = sprite_get("fspecialair");
			// }
		}
	// }
}

//dspecial animation
if state == PS_ATTACK_GROUND && attack == AT_DSPECIAL{
	if window == 1 && window_timer < 8{
		if metal_count >= 25 and rat_alive == false{
			sprite_index = sprite_get("dspecial");
		} else{
			sprite_index = sprite_get("dspecial2");
		}
	}
	if window == 1 && window_timer >= 8{
		if rat_alive == true{
			if stupid_rat.tool_state > 0{
				sprite_index = sprite_get("dspecial2");
			}
		} else if metal_count < 25{
			sprite_index = sprite_get("dspecial2");
		}
	}
}