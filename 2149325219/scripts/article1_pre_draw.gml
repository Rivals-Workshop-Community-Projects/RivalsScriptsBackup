

//minibomb
if(state != 100){
if(fuse < fuse_max){
    if(blinkT % 2 == 0){
        draw_sprite_ext(sprite_get("minibomb"), 1, x- 10, y+20, 1, 1, 270, -1, 1 )
    }
    if(blinkT % 2 == 1){
        draw_sprite_ext(sprite_get("minibombr"), 1, x - 10, y+20, 1, 1, 270, -1, 1 )
    }
}
        
        
//miniwick
sparkspot = ceil((fuse*10)/fuse_max)

	switch (sparkspot){
		case 10:
			sparkx = 32;
			sparky = 17;
			sparka = 270;
			break;
		case 9:
			sparkx = 29;
			sparky = 17;
			sparka = 270;
			break;
		case 8:
			sparkx = 26;
			sparky = 15;
			sparka = 270;
			break;
		case 7:
			sparkx = 23;
			sparky = 15;
			sparka = 270;
			break;
		case 6:
			sparkx = 19;
			sparky = 18;
			sparka = 270;
			break;
		case 5:
			sparkx = 16;
			sparky = 17;
			sparka = 270;
			break;
		case 4:
			sparkx = 13;
			sparky = 15;
			sparka = 270;
			break;
		case 3:
			sparkx = 10;
			sparky = 15;
			sparka = 270;
			break;
		case 2:
			sparkx = 7;
			sparky = 17;
			sparka = 270;
			break;
		case 1:
			sparkx = 3;
			sparky = 18;
			sparka = 270;
			break;
			
			
	}

	if(fuse < fuse_max){
    	draw_sprite_part(sprite_get("miniwick"), 1, 0 ,0, ((34/10)*sparkspot)-3, 12, x - 13, y +20 );
    	draw_sprite_ext(sprite_get("lights"), fuse / 5, x + sparkx, y+sparky, 1, 1, sparka,-1,10);
	}
}
