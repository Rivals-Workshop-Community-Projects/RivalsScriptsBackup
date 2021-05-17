//draw_hud - the x position of your HUD element is 48*(i-1)
/*draw_sprite_ext(sprite_get("hud_clone_alive"), 0, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);


if (clone_alive = false){
    draw_sprite_ext(sprite_get("hud_icon"), 0, temp_x-7, temp_y-32, 2, 2, 0, c_white, 1);
}

if (clone_alive = true){
    draw_sprite_ext(sprite_get("hud_icon"), 1, temp_x-7, temp_y-32, 2, 2, 0, c_white, 1);
}

if (clone_died = true){
    draw_sprite_ext(sprite_get("hud_icon"), 2, temp_x-7, temp_y-32, 2, 2, 0, c_white, 1);
}


if (clone_timer_hud > -1 && clone_died = false){
    if (clone_timer_hud > -1 && clone_timer_hud <= 10){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 0, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 10 && clone_timer_hud <= 20){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 1, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 20 && clone_timer_hud <= 30){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 2, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 30 && clone_timer_hud <= 40){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 3, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 40 && clone_timer_hud <= 50){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 4, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 50 && clone_timer_hud <= 60){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 5, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 60 && clone_timer_hud <= 70){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 6, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 70 && clone_timer_hud <= 80){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 7, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 80 && clone_timer_hud <= 90){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 8, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 90 && clone_timer_hud <= 100){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 9, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 100 && clone_timer_hud <= 110){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 10, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 110 && clone_timer_hud <= 120){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 11, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 120 && clone_timer_hud <= 130){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 12, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 130 && clone_timer_hud <= 140){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 13, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 140 && clone_timer_hud <= 150){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 14, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 150 && clone_timer_hud <= 160){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 15, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 160 && clone_timer_hud <= 170){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 16, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 170 && clone_timer_hud <= 180){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 17, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 180 && clone_timer_hud <= 190){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 18, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 190 && clone_timer_hud <= 200){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 19, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 200 && clone_timer_hud <= 210){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 20, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 210 && clone_timer_hud <= 220){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 21, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 220 && clone_timer_hud <= 230){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 22, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 230 && clone_timer_hud <= 240){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 23, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 240 && clone_timer_hud <= 250){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 24, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 250 && clone_timer_hud <= 260){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 25, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 260 && clone_timer_hud <= 270){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 26, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 270 && clone_timer_hud <= 280){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 27, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 280 && clone_timer_hud <= 290){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 28, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 290 && clone_timer_hud <= 300){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 29, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 300){
        draw_sprite_ext(sprite_get("hud_clone_alive"), 30, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    
    
    
}

if (clone_timer_hud > -1 && clone_died = true){
    if (clone_timer_hud > -1 && clone_timer_hud <= 10){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 0, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 10 && clone_timer_hud <= 20){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 1, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 20 && clone_timer_hud <= 30){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 2, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 30 && clone_timer_hud <= 40){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 3, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 40 && clone_timer_hud <= 50){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 4, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 50 && clone_timer_hud <= 60){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 5, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 60 && clone_timer_hud <= 70){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 6, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 70 && clone_timer_hud <= 80){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 7, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 80 && clone_timer_hud <= 90){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 8, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 90 && clone_timer_hud <= 100){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 9, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 100 && clone_timer_hud <= 110){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 10, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 110 && clone_timer_hud <= 120){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 11, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 120 && clone_timer_hud <= 130){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 12, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 130 && clone_timer_hud <= 140){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 13, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 140 && clone_timer_hud <= 150){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 14, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 150 && clone_timer_hud <= 160){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 15, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 160 && clone_timer_hud <= 170){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 16, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 170 && clone_timer_hud <= 180){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 17, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 180 && clone_timer_hud <= 190){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 18, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 190 && clone_timer_hud <= 200){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 19, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 200 && clone_timer_hud <= 210){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 20, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 210 && clone_timer_hud <= 220){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 21, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 220 && clone_timer_hud <= 230){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 22, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 230 && clone_timer_hud <= 240){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 23, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 240 && clone_timer_hud <= 250){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 24, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 250 && clone_timer_hud <= 260){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 25, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 260 && clone_timer_hud <= 270){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 26, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 270 && clone_timer_hud <= 280){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 27, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 280 && clone_timer_hud <= 290){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 28, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 290 && clone_timer_hud <= 300){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 29, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    if (clone_timer_hud > 300){
        draw_sprite_ext(sprite_get("hud_clone_dead"), 30, temp_x+27, temp_y-23, 3, 3, 0, c_white, 1);
    }
    
    
    
}
*/


shader_start();
    draw_sprite_ext(sprite_get("clone_hud"), 0, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);


if (move_cooldown[AT_NSPECIAL] != 0){
    if (move_cooldown[AT_NSPECIAL] <= 500 && move_cooldown[AT_NSPECIAL] > 280){
        draw_sprite_ext(sprite_get("clone_hud"), 14, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 280 && move_cooldown[AT_NSPECIAL] > 240){
        draw_sprite_ext(sprite_get("clone_hud"), 14, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 240 && move_cooldown[AT_NSPECIAL] > 220){
        draw_sprite_ext(sprite_get("clone_hud"), 13, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 220 && move_cooldown[AT_NSPECIAL] > 200){
        draw_sprite_ext(sprite_get("clone_hud"), 12, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 200 && move_cooldown[AT_NSPECIAL] > 180){
        draw_sprite_ext(sprite_get("clone_hud"), 11, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 180 && move_cooldown[AT_NSPECIAL] > 160){
        draw_sprite_ext(sprite_get("clone_hud"), 10, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 160 && move_cooldown[AT_NSPECIAL] > 140){
        draw_sprite_ext(sprite_get("clone_hud"), 9, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 140 && move_cooldown[AT_NSPECIAL] > 120){
        draw_sprite_ext(sprite_get("clone_hud"), 8, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 120 && move_cooldown[AT_NSPECIAL] > 100){
        draw_sprite_ext(sprite_get("clone_hud"), 7, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 100 && move_cooldown[AT_NSPECIAL] > 80){
        draw_sprite_ext(sprite_get("clone_hud"), 6, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 80 && move_cooldown[AT_NSPECIAL] > 60){
        draw_sprite_ext(sprite_get("clone_hud"), 5, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 60 && move_cooldown[AT_NSPECIAL] > 40){
        draw_sprite_ext(sprite_get("clone_hud"), 4, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 40 && move_cooldown[AT_NSPECIAL] > 20){
        draw_sprite_ext(sprite_get("clone_hud"), 3, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 20 && move_cooldown[AT_NSPECIAL] > 10){
        draw_sprite_ext(sprite_get("clone_hud"), 2, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
    if (move_cooldown[AT_NSPECIAL] <= 10 && move_cooldown[AT_NSPECIAL] > 0){
        draw_sprite_ext(sprite_get("clone_hud"), 1, temp_x+27, temp_y+9, 1, 1, 0, c_white, 1);
    }
}

shader_end();

if "shadow_clone" in self{

with (shadow_clone) {
	var leeway = 0;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = y < view_get_yview() - leeway;
	var off_d = y > view_get_yview() + view_get_hview() + leeway;
	
	var margin = 34;
	var idx = noone;
	
	if off_l{
		idx = 0;
		if off_u idx = 1;
		if off_d idx = 7;
	}
	else if off_r{
		idx = 4;
		if off_u idx = 3;
		if off_d idx = 5;
	}
	else if off_u idx = 2;
	else if off_d idx = 6;
	
	if idx != noone{
		draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
		with other shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 8, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}

}

user_event(11);







