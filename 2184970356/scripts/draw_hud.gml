//draw hud

shader_start();

if (move_cooldown[AT_FSPECIAL] > 0){
	draw_sprite(sprite_get("HUD_off_cloud"), 1, temp_x + 180, temp_y - 15);
}

if (move_cooldown[AT_FSPECIAL] == 0){
	draw_sprite(sprite_get("HUD_on_cloud"), 1, temp_x + 180, temp_y - 15);
}

if (move_cooldown[AT_DSPECIAL] > 0){
	draw_sprite(sprite_get("HUD_off_substitute"), 1, temp_x + 150, temp_y - 18);
}

if (move_cooldown[AT_DSPECIAL] == 0){
	draw_sprite(sprite_get("HUD_on_substitute"), 1, temp_x + 150, temp_y - 18);
}

shader_end();

if ("attackLock" in self && attackLock == 1){

	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){

		if (attack == AT_DAIR || attack == AT_UTILT || attack == AT_UAIR){
			draw_debug_text(temp_x, temp_y - 10, "Icicle Spear");
		}

		if (attack == AT_FAIR || attack == AT_BAIR){
			draw_debug_text(temp_x, temp_y - 10, "Fairy Wind");
		}

		if (attack == AT_DATTACK){
			draw_debug_text(temp_x, temp_y - 10, "Bug Buzz");
		}

		if (attack == AT_NAIR){
			draw_debug_text(temp_x, temp_y - 10, "Struggle Bug");
		}

		if (attack == AT_FTILT){
			draw_debug_text(temp_x, temp_y - 10, "Bug Bite");
		}

		if (attack == AT_FSTRONG){
			draw_debug_text(temp_x, temp_y - 10, "Max Hailstorm");
		}

		if (attack == AT_USTRONG){
			draw_debug_text(temp_x, temp_y - 10, "Max Starfall");
		}

		if (attack == AT_DTILT){
			draw_debug_text(temp_x, temp_y - 10, "Facade");
		}

		if (attack == AT_NSPECIAL){
			draw_debug_text(temp_x, temp_y - 10, "Rest");
		}

		if (attack == AT_NSPECIAL_2){
			draw_debug_text(temp_x, temp_y - 10, "Snore");
		}

		if (attack == AT_FSPECIAL){
			draw_debug_text(temp_x, temp_y - 10, "Powder Snow");
		}

		if (attack == AT_DSTRONG){
			draw_debug_text(temp_x, temp_y - 10, "Mirror Coat");
		}

		if (attack == AT_USPECIAL || attack == AT_USPECIAL_2){
			draw_debug_text(temp_x, temp_y - 10, "Icy Wind");
		}

		if (attack == AT_JAB){
			draw_debug_text(temp_x, temp_y - 10, "Round");
		}

		if (attack == AT_TAUNT){
			draw_debug_text(temp_x, temp_y - 10, "Attract");
		}

		if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
			draw_debug_text(temp_x, temp_y - 10, "Substitute");
		}
	}

	if (state == PS_PARRY){
		draw_debug_text(temp_x, temp_y - 10, "Protect");
	}
	
	if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
		draw_debug_text(temp_x, temp_y - 10, "Skitter Smack");
	}
}

// Move Showcase
if (state == PS_SPAWN || was_reloaded){
	if (spawn_timer < 100 && attackLock == 0){
		draw_debug_text(temp_x + 3, temp_y - 35, "Press Attack + Jump");
		draw_debug_text(temp_x + 5, temp_y - 15, " to display moveset");
	}
}