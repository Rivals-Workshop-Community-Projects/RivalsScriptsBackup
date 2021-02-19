// draw_hud
if "fuse" not in self exit;
shader_start();

//hudbomb
if(blinkT % 2 == 1){
	if(fuse >120){
		draw_sprite_ext(sprite_get("hudbomb"), 1, temp_x - 21, temp_y-18, 1, 1, 0,-1,10);
	}
	else{
		draw_sprite_ext(sprite_get("hudbombw"), 1, temp_x - 21, temp_y-18, 1, 1, 0,-1,10);
		
	}
}
if(blinkT % 2 == 0){
	draw_sprite_ext(sprite_get("hudbombr"), 1, temp_x - 21, temp_y-18, 1, 1, 0,-1,10);
}

//hudwick
if(fuse < fuse_max && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USPECIAL)){
	draw_sprite_part(sprite_get("hudwick"), 1, 0 ,0, ((150/10) * sparkspot)-15, 20, temp_x + 13, temp_y - 24 );
}

//hudspark

if(fuse < fuse_max && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USPECIAL)){
	sparkspot = ceil((fuse*10)/fuse_max)
	draw_sprite_ext(sprite_get("light"), sparktimer / 5, temp_x + sparkx, temp_y-sparky, 1, 1, sparka,-1,10);
	switch (sparkspot){
		case 10:
			sparkx = 145;
			sparky = 12;
			sparka = 300;
			break;
		case 9:
			sparkx = 130;
			sparky = 18;
			sparka = 240;
			break;
		case 8:
			sparkx = 115;
			sparky = 10;
			sparka = 300;
			break;
		case 7:
			sparkx = 100;
			sparky = 18;
			sparka = 240;
			break;
		case 6:
			sparkx = 85;
			sparky = 10;
			sparka = 270;
			break;
		case 5:
			sparkx = 70;
			sparky = 15;
			sparka = 300;
			break;
		case 4:
			sparkx = 55;
			sparky = 15;
			sparka = 240;
			break;
		case 3:
			sparkx = 40;
			sparky = 10;
			sparka = 300;
			break;
		case 2:
			sparkx = 25;
			sparky = 22;
			sparka = 270;
			break;
		case 1:
			sparkx = 15;
			sparky = 12;
			sparka = 300;
			break;
			
			
	}
	
	
	
}

if(attack == AT_USPECIAL && window == 1){
	draw_sprite_ext(sprite_get("light"), fuse / 5, temp_x + 15, temp_y-12, 1, 1, 300,-1,10);
}


shader_end()