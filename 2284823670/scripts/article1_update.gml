//

switch(state){
	case 0: //dead
		sprite_index = asset_get("empty_sprite");
		mask_index = asset_get("empty_sprite");
		break;
	case 1: //idle
		sprite_index = sprite_get("platforms");
		image_index = plat_num - 1;
		mask_index = sprite_get("platform_mask");
		if (died >= plat_num) setState(2);
		break;
	case 2: //cracking
		sprite_index = sprite_get("platforms");
		image_index = plat_num - 1;
		mask_index = sprite_get("platform_mask");
		var s_t_max = 30 + 3 * plat_num * all_breaking;
		crack_img = min(lerp(0, 3, state_timer / s_t_max), 2);
		if (state_timer >= s_t_max){
			setState(3);
			sound_play(sound_get("minecraft_place_plank"));
		}
		break;
	case 3: //particles
		sprite_index = asset_get("empty_sprite");
		mask_index = asset_get("empty_sprite");
		var s_t_max = 30;
		crack_img = min(lerp(0, 6, state_timer / s_t_max), 5);
		if (state_timer >= s_t_max) setState(0);
		break;
}

image_alpha = lerp(image_alpha, 1, 0.2);

state_timer++;



#define setState(n_s)

state = n_s;
state_timer = 0;