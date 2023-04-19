//Creating Chaos

if(eust_chaosPresent){
	draw_sprite_ext( sprite_get("taunt_ballin_omegablur"), eust_chaosBallBlur, x, y, spr_dir, 1, 0, c_white, 1 );
}



// FINAL SMASH ANIMATIONS

if (eust_isSmashing > 0){		// so this only has to check for one If statement until a Final Smash is detected

shader_start()

// ALPHA VARIANT

if (eust_isSmashing == 1){					// Phase 1: Jump Away
	if (eust_FSTimer <= 30){				// Letting attack register
		draw_sprite_ext( sprite_get("finalsmash_alpha1"), 5, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 30 && eust_FSTimer <= 60){		// Winding up the jump
		draw_sprite_ext( sprite_get("crouch"), eust_FSTimer > 33 ? (eust_FSTimer > 36 ? 2 : 1): 0, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 60){					// Jumping away
		draw_sprite_ext( sprite_get("jump"), eust_FSTimer <= 65 ? 0 : 1, eust_baseX, eust_baseY - 24*(eust_FSTimer - 60), eust_baseF, 1, 0, c_white, 1 );
	}
}
if (eust_isSmashing == 2){
	if (eust_FSTimer > 30 && eust_FSTimer <= 90){		// Begin drawing 24 * 60 pixels away from the target location
		draw_sprite_ext( sprite_get("finalsmash_alpha3"), 0, eust_uhOhX, eust_uhOhY - 1440 + 24*(eust_FSTimer - 30), eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 90 && eust_FSTimer <= 120){		// Begin drawing 18 * 60 pixels away from the target location
		draw_sprite_ext( sprite_get("finalsmash_alpha3"), eust_FSTimer > 94 ? (eust_FSTimer > 98 ? 3 : 2) : 1, eust_uhOhX, eust_uhOhY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 120 && eust_FSTimer <= 150){		// Windup
		draw_sprite_ext( sprite_get("finalsmash_alpha3"), eust_FSTimer > 124 ? 5 : 4, eust_uhOhX, eust_uhOhY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 150 && eust_FSTimer <= 240){		// Wry
		draw_sprite_ext( sprite_get("finalsmash_alpha3"), floor(((eust_FSTimer - 150)/5)%2) + 6, eust_uhOhX, eust_uhOhY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 240 && eust_FSTimer <= 270){		// Windup
		draw_sprite_ext( sprite_get("finalsmash_alpha3"), eust_FSTimer > 244 ? 9 : 8, eust_uhOhX, eust_uhOhY, eust_baseF, 1, 0, c_white, 1 );
	}
}
if (eust_isSmashing == 3){
	// begin the muda
	draw_sprite_ext( sprite_get("finalsmash_alpha3"), floor((eust_FSTimer/3)%6) + 10, eust_uhOhX, eust_uhOhY, eust_baseF, 1, 0, c_white, 1 );

	if (eust_FSTimer > 117 && eust_FSTimer <= 120){		// flash the screen
		draw_sprite_ext( sprite_get("whiteout"), 0, view_get_xview(), view_get_yview(), 32, 32, 0, c_white, 1 );
	}
}


// BETA VARIANT

if (eust_isSmashing == 5){
	if (eust_FSTimer <= 30){				// Letting attack register
		draw_sprite_ext( sprite_get("finalsmash_beta"), 0, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 30 && eust_FSTimer <= 120){		// Folicle pop
		draw_sprite_ext( sprite_get("finalsmash_beta"), eust_FSTimer < 45 ? ((floor(eust_FSTimer - 30)/3)%6 + 1) : 6, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 120 && eust_FSTimer <= 150){		// Grab Mirror
		draw_sprite_ext( sprite_get("finalsmash_beta"), eust_FSTimer < 130 ? ((floor(eust_FSTimer - 120)/5)%3 + 7) : 9, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 150 && eust_FSTimer <= 200){		// Look at Mirror
		draw_sprite_ext( sprite_get("finalsmash_beta"), eust_FSTimer < 165 ? ((floor(eust_FSTimer - 150)/5)%4 + 11) : 13, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 200 && eust_FSTimer <= 300){		// Gawk
		draw_sprite_ext( sprite_get("finalsmash_beta"), eust_FSTimer < 206 ? 15 : (eust_FSTimer < 236 ? 16 : (eust_FSTimer < 242 ? 17 : 18)), eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 300 && eust_FSTimer <= 360){		// Droop
		draw_sprite_ext( sprite_get("finalsmash_beta"), eust_FSTimer < 310 ? ((floor(eust_FSTimer - 300)/5)%2 + 19) : (eust_FSTimer < 322 ? ((floor(eust_FSTimer - 310)/3)%4 + 21) : 24), eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 360 && eust_FSTimer <= 420){		// Shock
		draw_sprite_ext( sprite_get("finalsmash_beta"), eust_FSTimer < 365 ? 25 : 26, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
}

if (eust_isSmashing == 6){
	if (eust_FSTimer <= 3){					// Flash
		draw_sprite_ext( sprite_get("finalsmash_beta"), 27, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
	}
	if (eust_FSTimer > 3 && eust_FSTimer <= 150){		// Babyrage
		draw_sprite_ext( sprite_get("finalsmash_beta"), floor(eust_FSTimer/4)%2 + 28, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_white, 1 );
		draw_sprite_ext( sprite_get("finalsmash_beta"), floor(eust_FSTimer/4)%2 + 28, eust_baseX, eust_baseY, eust_baseF, 1, 0, c_red, eust_FSTimer / 150 );
	}
	if (eust_FSTimer > 147 && eust_FSTimer <= 150){		// flash the screen
		draw_sprite_ext( sprite_get("whiteout"), 0, view_get_xview(), view_get_yview(), 32, 32, 0, c_white, 1 );
	}
}

shader_end()


}