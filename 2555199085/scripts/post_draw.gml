if (attack == AT_NSPECIAL && window == 2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	if stickDir == 1 {
		draw_sprite_ext( sprite_get("plantSeeds"), 0, (x - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo), (y - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo) - (char_height / 2), 1.5, 1.5, 0, c_white, plantMenuOpacity)	
	} else {
		draw_sprite_ext( sprite_get("plantSeeds"), 0, (x - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo), (y - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo) - (char_height / 2), 1, 1, 0, c_white, plantMenuOpacityTwo)	
	}
	if stickDir == 2 {
		draw_sprite_ext( sprite_get("plantSeeds"), 1, (x), (y - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing) - (char_height / 2), 1.5, 1.5, 0, c_white, plantMenuOpacity)
	} else {
		draw_sprite_ext( sprite_get("plantSeeds"), 1, (x), (y - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing) - (char_height / 2), 1, 1, 0, c_white, plantMenuOpacityTwo)	
	}
	if stickDir == 3 {
		draw_sprite_ext( sprite_get("plantSeeds"), 2, (x + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo), (y - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo) - (char_height / 2), 1.5, 1.5, 0, c_white, plantMenuOpacity)
	} else {
		draw_sprite_ext( sprite_get("plantSeeds"), 2, (x + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo), (y - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo) - (char_height / 2), 1, 1, 0, c_white, plantMenuOpacityTwo)	
	}
	if stickDir == 4 {
		draw_sprite_ext( sprite_get("plantSeeds"), 3, (x + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing), (y) - (char_height / 2), 1.5, 1.5, 0, c_white, plantMenuOpacity)	
	} else {
		draw_sprite_ext( sprite_get("plantSeeds"), 3, (x + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing), (y) - (char_height / 2), 1, 1, 0, c_white, plantMenuOpacityTwo)	
	}
	if stickDir == 5 {
		draw_sprite_ext( sprite_get("plantSeeds"), 4, (x + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo), (y + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo) - (char_height / 2), 1.5, 1.5, 0, c_white, plantMenuOpacity)
	} else {
		draw_sprite_ext( sprite_get("plantSeeds"), 4, (x + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo), (y + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo) - (char_height / 2), 1, 1, 0, c_white, plantMenuOpacityTwo)
	}
	if stickDir == 6 {
		draw_sprite_ext( sprite_get("plantSeeds"), 5, (x), (y + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing) - (char_height / 2), 1.5, 1.5, 0, c_white, plantMenuOpacity)
	} else {
		draw_sprite_ext( sprite_get("plantSeeds"), 5, (x), (y + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing) - (char_height / 2), 1, 1, 0, c_white, plantMenuOpacityTwo)
	}
	if stickDir == 7 {
		draw_sprite_ext( sprite_get("plantSeeds"), 6, (x - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo), (y + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo) - (char_height / 2), 1.5, 1.5, 0, c_white, plantMenuOpacity)
	} else {
		draw_sprite_ext( sprite_get("plantSeeds"), 6, (x - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo), (y + (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing * platnMenuSpacingTwo) - (char_height / 2), 1, 1, 0, c_white, plantMenuOpacityTwo)
	}
	if stickDir == 8 {
		draw_sprite_ext( sprite_get("plantSeeds"), 7, (x - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing), (y) - (char_height / 2), 1.5, 1.5, 0, c_white, plantMenuOpacity)
	} else {
		draw_sprite_ext( sprite_get("plantSeeds"), 7, (x - (nspecialTimer * plantMenuSpacingThree) * plantMenuSpacing), (y) - (char_height / 2), 1, 1, 0, c_white, plantMenuOpacityTwo)
	}
}

if plant[0] != -4 {
draw_sprite_ext( sprite_get("hudArrow"), 0, plant[0].x, plant[0].y - 60, 1, 1, 0, hud_color, 1)
}
