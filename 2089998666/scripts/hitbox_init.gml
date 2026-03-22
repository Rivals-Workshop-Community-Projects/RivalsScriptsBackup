//hitbox_init
if attack == AT_FSPECIAL {
	if hbox_num == 1 {
		eggBounce = 0;
		angle = 0;
		
		if player_id.cookieAid {
			hsp *= 1.25;
			vsp *= 1.25;
			eggBounce = 1;
		}
		
	with player_id move_cooldown[AT_FSPECIAL] = 80;
	}
	if hbox_num == 2 {
		kb_angle = 90;
		kb_scale += .25;
	}
	
	if hbox_num != 2 {
	no_absorb = 1;
	proj_reflectable = 1;
	}
}


if attack == AT_NSPECIAL {
	if hbox_num == 1 {
		tongue_state = 0; //0 = flying, 1 = latched, 2 = returning
	}
}

// hitbox_init.gml
if (attack == AT_DSPECIAL && hbox_num == 1) {
	cookie_id = 0; //0 = Flower-esque cookie, 1 = Checkered cookie, 2 = Yoshi-faced cookie
	cookie_state = 0; // 0 = Flying, 1 = Item
	cookie_id = -1;
	last_hbox_id = noone; 
    hit_lockout = 0;

	
	for (var i = 0; i < 3; i++) {
		if (player_id.cookie_inventory[i] != -1) {
			cookie_id = player_id.cookie_inventory[i]; // Get the type (0, 1, or 2)
			player_id.cookie_inventory[i] = -1;        // Empty the slot
			break; // Stop looking after finding one
		}
	}
	
    if (cookie_id == -1) cookie_id = 0;
	
	switch (cookie_id) {
		case 0:					//Flower cookie
			image_index = 0;
			//in hindsight I don't even need to put anything here
		break;
		
		case 1:					//Checker cookie
			image_index = 1;
			hsp = 3*spr_dir;
			vsp = -5;
			kb_angle = 80;
			kb_value = 8;
			kb_scale = .25;
			hitpause = 7;
			damage += 1;
			hit_flipper = 3;
			extra_hitpause = 20;
			sound_effect = asset_get("sfx_blow_medium2");
		break;
		
		case 2:					//Yoshi cookie (as if all the others aren't also yoshi cookies lmao)
			image_index = 2;
			hsp = 7*spr_dir;
			vsp = 0;
			kb_angle = 45;
			kb_value = 7;
			kb_scale = .85;
			hitpause = 9;
			hitpause_growth = .95;
			damage += 2;
			hit_flipper = 3;
			sound_effect = asset_get("sfx_blow_heavy1");
		break;
	}
	
	with player_id {
		move_cooldown[AT_DSPECIAL] = 80;
		
		//angling
		if (!joy_pad_idle) {
			
			var h_influence = 4.5;
			var v_influence = 7.0;
			
			var nudge_x = lengthdir_x(h_influence, joy_dir);
			var nudge_y = lengthdir_y(v_influence, joy_dir);
			
			if (sign(nudge_x) != spr_dir && nudge_x != 0) {
				other.hsp += nudge_x * 1.2;
			} else {
				other.hsp += nudge_x;
			}
			other.vsp += nudge_y;
		}
	}
}

state_timer = 0;