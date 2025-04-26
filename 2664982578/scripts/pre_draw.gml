if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if(attack == AT_USPECIAL){
        if(window == 1){
         draw_sprite_ext(sprite_get("wonder_trade_start"), (window_timer/2), x, y-10, 1, 1,0,-1,1);
    }if(window == 2){
         draw_sprite_ext(sprite_get("wonder_trade"), (window_timer/8), x, y-10, 1, 1,0,-1,1);
    }
    }
}

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if(attack == AT_EXTRA_1){
    if(window == 1 && window_timer = 17){
    	if(champ_skin == false){
        snd_rng = random_func(0, 8, true);
        if (snd_rng == 0) {
            shiny = 0;
    }if (snd_rng == 1) {
            shiny = 1;
    }if (snd_rng == 2) {
            shiny = 2;
    }if (snd_rng == 3) {
            shiny = 3;
    }if (snd_rng == 4) {
            shiny = 4;
    }if (snd_rng == 5) {
            shiny = 5;
    }if (snd_rng == 6) {
            shiny = 6;
    }if (snd_rng == 7) {
            shiny = 7;
    }
    	}if(champ_skin == true){
    	if(get_player_color(player)== 18){
    		shiny = 9;
    	}if(get_player_color(player)== 23){
    		shiny = 8;
    	}if(get_player_color(player)== 24 || get_player_color(player)== 28){
    		shiny = 10;
    	}if(get_player_color(player)== 25){
    		shiny = 11;
    	}if(get_player_color(player)== 26){
    		shiny = 12;
    	}if(get_player_color(player)== 27){
    		shiny = 13;
    	}
    	}
        }if(window == 3 || window == 4 || window == 5){
         draw_sprite_ext(sprite_get("shiny_hatched"), shiny, x, y, 2 * spr_dir, 2,0,-1,1);
    }if(window == 6 && window_timer < 5){
         draw_sprite_ext(sprite_get("shiny_hatched"), shiny, x, y, 2 * spr_dir, 2,0,-1,1);
    }
	}
}

if(trans_outline == true){
	FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
	FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
	FlagPart(c_white, 1/5, 2/5);
	gpu_set_fog(0, c_white, 0, 0);
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}

// YO LUKA HERE
// IF YOU'RE TAKING MY CODE PLEEEEAAAASSSSEEEE CREDIT ME

//ok luka I will :)