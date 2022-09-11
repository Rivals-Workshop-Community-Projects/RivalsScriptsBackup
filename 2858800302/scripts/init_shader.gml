//gameboy alt
if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
        outline_color = [35, 67, 49];
    }
}

//headspace outline
if (headspace_outline){
    outline_color = [55, 0, 141];
}

var flash_time = 50;

//fspec full charge indicator;
if (should_attack){
	if (!(flash_time && flash_timer % flash_time < flash_time/2)){
	    outline_color = [104, 19, 137];
	}
	else if (!headspace_outline){
	    outline_color = [0, 0, 0];
	}
	if (flash_timer == flash_time * 2000){
	    flash_timer = 1;
	}
}

/*
if (state == PS_ATTACK_GROUND){
    if (boosted){
        if (attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG){
            set_character_color_slot( 5, 255, 0, 0, 1);
            set_character_color_slot( 4, 255, 158, 0, 1);
        }
    }
}
*/

/*
commenting this out because idk how to update the shader right away

//dattack eye color change
if (state == PS_ATTACK_GROUND){
    if (attack == AT_DATTACK){
        if (window == 1){
            set_character_color_slot( 5, 255, 0, 0, 1);
            set_character_color_slot( 4, 255, 158, 0, 1);
        }
    }
}

*/