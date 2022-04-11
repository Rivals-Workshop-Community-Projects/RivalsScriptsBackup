//post-draw

if (cookieAid) {
		draw_sprite(sprite_get("glow"), glowAnim*.8, x, y);		
}

if (move_cooldown[AT_DSPECIAL] > 0 && cookieAid == 0) {
		draw_sprite_ext(sprite_get("arrow2"), (move_cooldown[AT_DSPECIAL])*.2, x-28*(spr_dir), y-72, 1, 1, 0, c_white, (move_cooldown[AT_DSPECIAL])/16);
}

shader_start();

if bossmode = 1 {

	if bdefeat > 0 {
	draw_debug_text(x + 100 ,y - 100, "!!! BOSS CLEARED !!!");	
	if bdefeat <= 300 {
	draw_debug_text(x + 100 ,y - 85, "Attacks countered: " + string(fparry));	
	}
	if bdefeat <= 280 {
	draw_debug_text(x + 100 ,y - 70, "Health collected:    " + string(fheal));
	}
	if bdefeat <= 260 {
	draw_debug_text(x + 100 ,y - 55, "Stocks Bonus:       " + string(bscore));
	}
	
	if bdefeat <= 240 {
	draw_debug_text(x + 100 ,y - 40, "Total                  " + string(bscore + fparry + fheal));
	}
	
	if bdefeat <= 120 {
		if bscore+fparry+fheal >= 1400 {
			draw_debug_text(x + 140 ,y - 10, "RANK S" )
		}
		if bscore+fparry+fheal < 1400 && bscore+fparry+fheal >= 1200 {
			draw_debug_text(x + 140 ,y - 10, "RANK A" )
		}
		if bscore+fparry+fheal < 1200 && bscore+fparry+fheal >= 1000 {
			draw_debug_text(x + 140 ,y - 10, "RANK B" )
		}
		if bscore+fparry+fheal < 1000 && bscore+fparry+fheal >= 800 {
			draw_debug_text(x + 140 ,y - 10, "RANK C" )
		}
		if bscore+fparry+fheal < 800 {
			draw_debug_text(x + 140 ,y - 10, "RANK D" )
		}
		
	}
	
	}
draw_sprite(sprite_get("bosshud"), 1, x - 130, y + 10 );
draw_sprite(sprite_get("bosshud"), 4, x - 130, y + 10 );
draw_sprite_part(sprite_get("bosshud"), 0, 0, 0, (300 - get_player_damage(player)) * 0.85, 50, x - 130, y + 10)
draw_sprite_part(sprite_get("bosshud2"), 0, 0, 0, bsta * 2.4, 100 , x - 130, y + 10)



}

	
	if (attack == AT_TAUNT_2 or attack == AT_TAUNT) && bossmode = 1 && down_down {
		 draw_debug_text(x - 150 ,y - 220, "You ran into a rare Boss!Yoshi NPC, how lucky.");
		 draw_debug_text(x - 150 ,y - 200, "You have 1 chance, then this boss will auto leave.");
		 draw_debug_text(x - 150 ,y - 170, "You have Super Shield with 3 seconds cooldown.");
		 draw_debug_text(x - 150 ,y - 155, "You can cancel any attack into your Super Shield.");
		 draw_debug_text(x - 150 ,y - 140, "Super Shield blocking effect last for a whole second.");
         draw_debug_text(x - 150 ,y - 100, "If you win, screenshot your score with #Boss_Yoshi");
         draw_debug_text(x + 60 ,y - 20, "Taunt when ready");
	}
shader_end();