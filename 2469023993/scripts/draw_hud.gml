//draw_hud oh god - the x position of your HUD element is 48*(i-1)

var temp_color1 = c_white;
if (nitrus == 0){
	draw_sprite_ext(sprite_get("boxhud"), 0, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
}
if (nitrus == 1){
	draw_sprite_ext(sprite_get("boxhud"), 1, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
}
if (nitrus == 2){
	if (swift_timer = 0){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+200, temp_y-24, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 1){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+180, temp_y-24, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 2){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+180, temp_y-12, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 3){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+200, temp_y-12, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 4){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+200, temp_y-12, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 5){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+195, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 6){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+195, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 7){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-22, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 8){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-22, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer = 9){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+185, temp_y-20, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 10){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 20){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 30){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 40){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 50){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 60){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 70){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 80){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 90){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 100){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 110){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 120){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 130){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 140){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 150){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 160){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 170){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 180){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 190){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 200){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 210){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 220){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 230){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 240){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 250){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 260){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 270){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 280){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 290){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 300){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 310){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 320){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 330){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 340){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 350){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 360){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 370){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 380){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 390){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 400){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 410){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 420){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 430){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 440){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 450){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 460){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 470){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 480){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 490){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 500){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 510){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 520){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 530){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 540){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 550){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 560){
		draw_sprite_ext(sprite_get("boxhud"), 4, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 570){
		draw_sprite_ext(sprite_get("boxhud"), 5, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 580){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 590){
		draw_sprite_ext(sprite_get("boxhud"), 6, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 600){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 610){
		draw_sprite_ext(sprite_get("boxhud"), 7, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 620){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 630){
		draw_sprite_ext(sprite_get("boxhud"), 2, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 640){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 650){
		draw_sprite_ext(sprite_get("boxhud"), 3, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 660){
		draw_sprite_ext(sprite_get("boxhud"), 8, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 670){
		draw_sprite_ext(sprite_get("boxhud"), 8, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 680){
		draw_sprite_ext(sprite_get("boxhud"), 9, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
	if (swift_timer >= 690){
		draw_sprite_ext(sprite_get("boxhud"), 9, temp_x+190, temp_y-18, 2, 2, 0, temp_color1, 1);
	}
}
	


if training {
	draw_debug_text(temp_x - 7,temp_y - 13,"Crouch+Taunt = InstaSwift");
}