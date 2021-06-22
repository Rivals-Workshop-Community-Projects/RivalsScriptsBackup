//THIS IS A MODIFIED VERSION OF NATE'S ARTICLE 2 CODE

hsp = 0;
vsp = 0;
free = false;

if (displayFront == 1) {
	depth = 0;
} else {
	depth = 30;
}

lifetime--;
if (lifetime <= 0) {instance_destroy();}

switch (displayMove) {
	case 0:
		sprite_index = sprite_get("fx_ustrong");
		my_max = 10;
		if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_USTRONG) {
			image_index = player_id.image_index;
			my_image_index = player_id.image_index;
		} else {
			connected = false;
		}
		if (connected == false) {
			obj_timer++;
			if (obj_timer % 4 == 0) {
				if (fall_forward == true) {
					image_index++;
				} else {
					image_index--;
				}
			}
		} else {
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
		}
		break;

	case 1:
		sprite_index = sprite_get("fx_utilt");
		my_max = 10;
		if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_DTILT) {
			image_index = player_id.image_index;
			my_image_index = player_id.image_index;
		} else {
			connected = false;
		}
		if (connected == false) {
			obj_timer++;
			if (obj_timer % 4 == 0) {
				if (fall_forward == true) {
					image_index++;
				} else {
					image_index--;
				}
			}
		} else {
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
		}
		break;
	case 2:
		sprite_index = sprite_get("fx_red_utilt");
		my_max = 10;
		if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_DTILT) {
			image_index = player_id.image_index;
			my_image_index = player_id.image_index;
		} else {
			connected = false;
		}
		if (connected == false) {
			obj_timer++;
			if (obj_timer % 4 == 0) {
				if (fall_forward == true) {
					image_index++;
				} else {
					image_index--;
				}
			}
		} else {
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
		}
		break;
}


if (image_index < 0 || image_index > my_max) {
	player_id.construct = noone;
	instance_destroy();
}
