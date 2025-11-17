//USHR INIT SHADER OLD

//default replacement
if (get_player_color( player ) == 0){
	switch(get_synced_var( player )){
		case 0: //A
		break;
		case 1: //B // defB
				set_character_color_slot( 0, 255, 158, 179 ); //green
				set_character_color_slot( 1, 80, 83, 97 ); //hair
				set_character_color_slot( 2, 232, 212, 190 ); //skin
				set_character_color_slot( 3, 236, 240, 245 ); //white
				set_character_color_slot( 4, 61, 63, 74 ); //dark
				set_character_color_slot( 5, 106, 110, 130 ); //gold
				set_character_color_slot( 6, 122, 126, 145 ); //umbrella
				set_character_color_slot( 7, 107, 67, 78 ); //eyes
		break;
		case 2: //C // defC
				set_character_color_slot( 0, 88, 237, 183 ); //green
				set_character_color_slot( 1, 184, 217, 207 ); //hair
				set_character_color_slot( 2, 255, 238, 215 ); //skin
				set_character_color_slot( 3, 247, 255, 254 ); //white
				set_character_color_slot( 4, 48, 61, 58 ); //dark
				set_character_color_slot( 5, 167, 217, 217 ); //gold
				set_character_color_slot( 6, 88, 237, 183 ); //umbrella
				set_character_color_slot( 7, 66, 179, 137 ); //eyes
		break;
		case 3: //D // defD
				set_character_color_slot( 0, 226, 255, 247 ); //green
				set_character_color_slot( 1, 85, 105, 96 ); //hair
				set_character_color_slot( 2, 255, 238, 215 ); //skin
				set_character_color_slot( 3, 71, 112, 99 ); //white
				set_character_color_slot( 4, 29, 226, 135 ); //dark
				set_character_color_slot( 5, 255, 184, 15 ); //gold
				set_character_color_slot( 6, 29, 226, 135 ); //umbrella
				set_character_color_slot( 7, 0, 98, 56 ); //eyes
		break;
		case 4: //E // ushr-E: psasbr
				set_character_color_slot( 0, 0, 255, 146 ); //green
				set_character_color_slot( 1, 41, 56, 55 ); //hair
				set_character_color_slot( 2, 71, 65, 60 ); //skin
				set_character_color_slot( 3, 69, 82, 87 ); //white
				set_character_color_slot( 4, 0, 255, 146 ); //dark
				set_character_color_slot( 5, 87, 77, 47 ); //gold
				set_character_color_slot( 6, 0, 255, 146 ); //umbrella
				set_character_color_slot( 7, 0, 122, 70 ); //eyes
		break;
		default:
		break;
	}
}


//just the shading values
if (get_synced_var( player )==0){//A
	if (get_player_color( player ) == 1){//blue
		set_character_color_shading( 3, 0.5 );
	}
	if (get_player_color( player ) == 2){//red
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 3){//green
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 1, 1.5 );
	}
	if (get_player_color( player ) == 4){//bw
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0.3 );
		set_character_color_shading( 6, 0.4 );
	}
	if (get_player_color( player ) == 5){//purple
		set_character_color_shading( 1, 0.8 );
		set_character_color_shading( 3, 0.6 );
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 6){//abyss
		set_character_color_shading( 6, 1.3 );
	}
	if (get_player_color( player ) == 7){//early
		for (var slot_num = 0; slot_num < 8; slot_num++) {
			set_character_color_shading( slot_num, 0 );
		}
	}
	/*if (get_player_color( player ) == 9){//radialvortex
		set_character_color_shading( 0, 0.3 );
		set_character_color_shading( 2, 0.6 );
		set_character_color_shading( 3, 0.5 );
	}*/
	if (get_player_color( player ) == 9){//champion
		set_character_color_shading( 3, 0.7 );
	}
	if (get_player_color( player ) == 10){//doomsday
		set_character_color_shading( 3, 0.4 );
		set_character_color_shading( 6, 0.5 );
	}
	if (get_player_color( player ) == 11){//lens
		set_character_color_shading( 0, 0.5 );
		set_character_color_shading( 3, 0.5 );
		set_character_color_shading( 5, 0.2 );
	}
	if (get_player_color( player ) == 12){//ranked gold
		set_character_color_shading( 2, 0.6 );
		set_character_color_shading( 7, 3 );
	}
	if (get_player_color( player ) == 14){//lavender
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 0.8 );
	}
	if (get_player_color( player ) == 15){//dusk
		set_character_color_shading( 1, 1.3 );
		set_character_color_shading( 3, 0.5 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 0.6 );
	}
	if (get_player_color( player ) == 16){//ashe
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 6, -0.5 );
	}
	if (get_player_color( player ) == 17){//nb
		set_character_color_shading( 3, 0.6 );
		set_character_color_shading( 6, 0.5 );
	}
	/*
	if (get_player_color( player ) == 8){//sorbet
		if (variable_instance_exists(id, "state")){
			if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
				if (mask_attack<8){
					mask_attack++;
				}
			}else{
				if (mask_attack>0){
					mask_attack--;
				}
			}
			var tst_a = 1-(mask_attack/8);
			set_character_color_slot( 6, 0, 217, 224, tst_a);
		set_character_color_slot( 0, 255, 213, 0, 0 ); //green
		}
	}*/
	if (get_player_color( player ) == 8){//seasonal
		//get_match_setting( SET_SEASON )
		switch(get_match_setting( SET_SEASON )){
			case 1: //spring
			break;
			case 2: //summer
			break;
			case 3: //autumn
				set_character_color_shading( 0, 0.5 );//green
				set_character_color_shading( 1, 0.5 );//hair
				set_character_color_shading( 3, 0.5 );//white
				set_character_color_shading( 6, 0.5 );//umbrella
			break;
			case 4: //winter
			break;
		}
	}
}
if (get_synced_var( player )==1){//B
	if (get_player_color( player ) == 0){//ushr.B
		set_character_color_shading( 1, 0.7 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 1){//verdi
		set_character_color_shading( 1, 1.3 );
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 3){//natkinda
		set_character_color_shading( 5, 0.5 );
	}
	if (get_player_color( player ) == 6){//sara
		set_character_color_shading( 0, 0.5 );
		set_character_color_shading( 3, 0.6 );
		set_character_color_shading( 6, 0.5 );
	}
	if (get_player_color( player ) == 7){//lumina
		set_character_color_shading( 0, -1 );
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0 );
		set_character_color_shading( 6, -1 );
	}
	if (get_player_color( player ) == 9){//paintyourworld
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 10){//shadow
		set_character_color_shading( 1, 0.6 );
		set_character_color_shading( 3, 0.6 );
		set_character_color_shading( 6, 0.6 );
	}
	if (get_player_color( player ) == 11){//paintyourworld
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 12){//hat the kid
		set_character_color_shading( 1, 0.8 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 0.8 );
	}
	if (get_player_color( player ) == 13){//frallan
		set_character_color_shading( 0, 0.7 );
		set_character_color_shading( 1, 0.3 );
		set_character_color_shading( 2, 0.8 );
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0.3 );
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 15){//xlna
		set_character_color_shading( 3, 0.5 );
	}
	if (get_player_color( player ) == 16){//gato
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0.6 );
		set_character_color_shading( 6, 0.8 );
	}
}
if (get_synced_var( player )==2){//C
	if (get_player_color( player ) == 1){//macka
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 2){//celeste
		set_character_color_shading( 3, 0.8 );
	}
	if (get_player_color( player ) == 3){//nautilia
		set_character_color_shading( 0, 0.7 );
		set_character_color_shading( 1, 0.7 );
		set_character_color_shading( 2, 0.7 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 0.8 );
	}
	if (get_player_color( player ) == 4){//maltose
		set_character_color_shading( 0, 0.7 );
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 1.3 );
	}
	if (get_player_color( player ) == 5){//mina
		for (var slot_num = 0; slot_num < 8; slot_num++) {
			set_character_color_shading( slot_num, 0.7 );
		}
	}
	if (get_player_color( player ) == 6){//magitech
		set_character_color_shading( 0, 0.5 );
		set_character_color_shading( 1, 0.6 );
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0.2 );
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 7){//surging fate
		set_character_color_shading( 0, 0.5 );
		set_character_color_shading( 1, 0.7 );
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 0.5 );
	}
	if (get_player_color( player ) == 8){//clockwork fate
		set_character_color_shading( 0, 0.7 );
		set_character_color_shading( 1, 1.2 );
		set_character_color_shading( 3, 0.7 );
	}
	if (get_player_color( player ) == 9){//bell lily
		set_character_color_shading( 1, 1.2 );
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 0.9 );
	}
	if (get_player_color( player ) == 10){//tomokocolor
		set_character_color_shading( 1, 1.3 );
		set_character_color_shading( 3, 0.5 );
		set_character_color_shading( 5, 0.3 );
	}
	if (get_player_color( player ) == 11){//bladewhichreflect
		set_character_color_shading( 0, 0.8 );
		set_character_color_shading( 1, 1.4 );
		set_character_color_shading( 3, 0.5 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 1.1 );
	}
	if (get_player_color( player ) == 12){//windrose
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 13){//brella of the crib
		set_character_color_shading( 0, 0.7 );
		set_character_color_shading( 1, 0.7 );
		set_character_color_shading( 2, 0.7 );
		set_character_color_shading( 6, 1.3 );
	}
	if (get_player_color( player ) == 15){//stith
		set_character_color_shading( 0, 0.7 );
		set_character_color_shading( 1, 0.7 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 0.8 );
	}
	if (get_player_color( player ) == 16){//meimay
		set_character_color_shading( 3, 0.7 );
	}
	if (get_player_color( player ) == 17){//pancake bacon
		set_character_color_shading( 6, 1.2 );
		set_character_color_shading( 7, 1.5 );
	}
}

if (get_synced_var( player )==3){//D
	if (get_player_color( player ) == 0){//ushr-d
		set_character_color_shading( 3, 0.6 );
	}
	if (get_player_color( player ) == 1){//sorbet
		set_character_color_shading( 1, 0.6 );
	}
	if (get_player_color( player ) == 2){//infamous
		set_character_color_shading( 3, 0.7 );
	}
	if (get_player_color( player ) == 3){//steampunk
		set_character_color_shading( 0, 0.5 );
		set_character_color_shading( 3, 0.7 );
		set_character_color_shading( 6, 0.9 );
	}
	if (get_player_color( player ) == 4){//ashveil
		set_character_color_shading( 1, 0.6 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 5){//cora
		set_character_color_shading( 3, 0.5 );
		set_character_color_shading( 5, 0.7 );
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 6){//cocua
		set_character_color_shading( 3, 0.7 );
	}
	if (get_player_color( player ) == 7){//sary
		set_character_color_shading( 0, 0.4 );
		set_character_color_shading( 1, 0.4 );
		set_character_color_shading( 3, 0.6 );
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 8){//kris
		set_character_color_shading( 5, 0.4);
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 9){//godspeed you! you're a determination!
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, -2 );
	}
	
	//---
	
	if (get_player_color( player ) == 11){//otherside
		set_character_color_shading( 1, 1.5 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 12){//supermint
		set_character_color_shading( 0, 0.5 );
		set_character_color_shading( 6, 1.1 );
	}
	if (get_player_color( player ) == 13){//tealeaf
		for (var slot_num = 0; slot_num < 8; slot_num++) {
			set_character_color_shading( slot_num, 0.8 );
		}
	}
	if (get_player_color( player ) == 14){//teapack
		set_character_color_shading( 2, 0.7 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 15){//a written song
		set_character_color_shading( 0, 0.8 );
		set_character_color_shading( 1, 0.5 );
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 17){//acronym e
		set_character_color_shading( 0, 0.8 );
		set_character_color_shading( 1, 0.6 );
		set_character_color_shading( 2, 0.8 );
		set_character_color_shading( 6, 0.8 );
	}
}

if (get_synced_var( player )==4){//EXTRA
	if (get_player_color( player ) == 0){//PSASBR
		for (var slot_num = 0; slot_num < 8; slot_num++) {
			set_character_color_shading( slot_num, 0.3 );
		}
	}
	if (get_player_color( player ) == 2){//champion
		set_character_color_shading( 3, 0.7 );
	}
	if (get_player_color( player ) == 3){//klein bottle
		set_character_color_shading( 6, 1.1 );
	}
	if (get_player_color( player ) == 4){//wish...
		set_character_color_shading( 1, 1.2 );
		set_character_color_shading( 2, 0.8 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 1.1 );
	}
	if (get_player_color( player ) == 5){//wish sunset
		set_character_color_shading( 1, 1.2 );
		set_character_color_shading( 2, 0.8 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 1.1 );
	}
	if (get_player_color( player ) == 6){//steel bamboo
		set_character_color_shading( 0, 0.8 );
		set_character_color_shading( 2, 0.8 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 5, 0.8 );
		set_character_color_shading( 6, 0.7 );
	}
	if (get_player_color( player ) == 7){//scarletlikecinnabarfire
		set_character_color_shading( 1, 1.4 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 6, 1.1 );
	}
	if (get_player_color( player ) == 11){//endofallthings
		set_character_color_shading( 0, 0.5 );
		set_character_color_shading( 1, 1.2 );
		set_character_color_shading( 2, 0.8 );
		set_character_color_shading( 3, 0.5 );
		set_character_color_shading( 5, 0.7 );
		set_character_color_shading( 6, 1.2 );
	}
	if (get_player_color( player ) == 12){//forlorn egodeath
		set_character_color_shading( 1, 0.7 );
		set_character_color_shading( 2, 0 );
		set_character_color_shading( 3, 0.8 );
		set_character_color_shading( 5, 0.5 );
		set_character_color_shading( 6, 0.5 );
	}
	if (get_player_color( player ) == 13){//dilemma
		set_character_color_shading( 0, 0.8 );
		set_character_color_shading( 1, 0.7 );
		set_character_color_shading( 2, 0.8 );
		set_character_color_shading( 3, 0.5 );
		set_character_color_shading( 6, 0.9 );
	}
	if (get_player_color( player ) == 14){//radialvortex
		set_character_color_shading( 0, 0.3 );
		set_character_color_shading( 2, 0.6 );
		set_character_color_shading( 3, 0.5 );
	}
}







//special:
if (get_synced_var( player )==0){//A
	/*if (get_player_color( player ) == 9){//radialvortex
		if (variable_instance_exists(id, "state")){
			set_character_color_slot( 0, 0, 87, 240, 0 );
			set_character_color_slot( 1, 0, 125, 235, 0 );
			set_character_color_slot( 6, 0, 125, 235, 0 );
		}
	}*/
	if (get_player_color( player ) == 9){//champion
		set_character_color_slot( 1, 209, 255, 237, 0.35 ); //hair
		set_character_color_slot( 6, 191, 255, 208, 0.35 ); //umbrella
	
	}
}
if (get_synced_var( player )==2){//C
	if (get_player_color( player ) == 2){//starburst
		if (!variable_instance_exists(id, "ushr_weird_color_timer")){
			ushr_weird_color_timer = 0;
			ushr_weird_color_time_dir = 1;
		}
		var ushr_weird_color_timer_max = 120;
		//a: 90, 194, 242
		//b: 173, 145, 242
		var tmp_col_a_a = make_colour_rgb(90, 194, 242);
		var tmp_col_b_a = make_colour_rgb(173, 145, 242);
		
		var tmp_col_hue = ease_sineInOut( round(colour_get_hue(tmp_col_a_a)*100), round(colour_get_hue(tmp_col_b_a)*100), ushr_weird_color_timer, ushr_weird_color_timer_max )/100
		var tmp_col_sat = ease_sineInOut( round(colour_get_saturation(tmp_col_a_a)*100), round(colour_get_saturation(tmp_col_b_a)*100), ushr_weird_color_timer, ushr_weird_color_timer_max )/100
		var tmp_col_val = ease_sineInOut( round(colour_get_value(tmp_col_a_a)*100), round(colour_get_value(tmp_col_b_a)*100), ushr_weird_color_timer, ushr_weird_color_timer_max )/100
		
		var tmp_col_result = make_colour_hsv(tmp_col_hue, tmp_col_sat, tmp_col_val);
		
		var tmp_col_r = colour_get_red(tmp_col_result);
		var tmp_col_g = colour_get_green(tmp_col_result);
		var tmp_col_b = colour_get_blue(tmp_col_result);
		
		
		if (variable_instance_exists(id, "state")){
		/*	if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
				if (mask_attack<8){
					mask_attack++;
				}
			}else{
				if (mask_attack>0){
					mask_attack--;
				}
			}
		var tst_a = 1-(mask_attack/9);
		var tst_b = 1-(mask_attack/10);
		set_character_color_slot( 0, 214, 245, 255, tst_a ); //green
		set_character_color_slot( 6, 122, 208, 255, tst_b ); //umbrella
		*/
		var hairalpha = 0;
		}else{tst_a=0;tst_b=0;var hairalpha = 1;}
		
		set_character_color_slot( 1, tmp_col_r, tmp_col_g, tmp_col_b, hairalpha ); //hair
		set_character_color_shading( 1, -1 );//shading
		ushr_weird_color_timer+=ushr_weird_color_time_dir;
		if (ushr_weird_color_timer>ushr_weird_color_timer_max){
			ushr_weird_color_time_dir = -1;
		}
		if (ushr_weird_color_timer<0){
			ushr_weird_color_time_dir = 1;
		}
	}
}
if (get_synced_var( player )==3){//D
	if (get_player_color( player ) == 1){//sorbet
		if (variable_instance_exists(id, "state")){
			if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
				if (mask_attack<8){
					mask_attack++;
				}
			}else{
				if (mask_attack>0){
					mask_attack--;
				}
			}
			var tst_a = 1-(mask_attack/8);
			set_character_color_slot( 6, 0, 217, 224, tst_a);
		set_character_color_slot( 0, 255, 213, 0, 0 ); //green
		}
	}
}
if (get_synced_var( player )==4){//EXTRA??
	if (get_player_color( player ) == 1){//ultragenesis
		set_character_color_shading( 0, 0 );//green
		set_character_color_shading( 3, 0.5 );//white
		set_character_color_shading( 4, 0 );//dark
		set_character_color_shading( 5, 0 );//gold
		set_character_color_shading( 6, 0 );//umbrella
		set_character_color_shading( 7, 0 );//eyes
		
		if (variable_instance_exists(id, "state")){
			//print(string(get_player_name( player )))
			if (get_player_name( player )!="KYOUKO"){
				if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
					if (mask_attack<8){
						mask_attack++;
					}
				}else{
					if (mask_attack>0){
						mask_attack--;
					}
				}
			var tst_a = 1-(mask_attack/10);
			
			set_character_color_slot( 0, 255, 77, 77, tst_a);
			//set_character_color_slot( 5, 255, 77, 77, tst_a);
			set_character_color_slot( 6, 255, 77, 77, tst_a);
			
			set_character_color_slot( 1, 128, 26, 26, 0.25);
			set_character_color_slot( 3, 55, 56, 61, 0.4);
			//print("yeah?")
				if (state==PS_HITSTUN||was_parried){
					set_character_color_slot( 0, 255, 77, 77, 0);
					set_character_color_slot( 1, 255, 77, 77, 0);
					set_character_color_slot( 2, 255, 77, 77, 0);
					set_character_color_slot( 3, 255, 77, 77, 0);
					set_character_color_slot( 4, 255, 77, 77, 0);
					set_character_color_slot( 5, 255, 77, 77, 0);
					set_character_color_slot( 6, 255, 77, 77, 0);
					set_character_color_slot( 7, 255, 77, 77, 0);
				}
			}
		}
	}
	if (get_player_color( player ) == 2){//champion
		set_character_color_slot( 1, 209, 255, 237, 0.35 ); //hair
		set_character_color_slot( 6, 191, 255, 208, 0.35 ); //umbrella
	
	}
	if (get_player_color( player ) == 8){//grid
		set_character_color_shading( 3, 0 );//green
		//set_character_color_slot( 1, 34, 29, 66, 0 ); //hair
		if (variable_instance_exists(id, "state")){
			if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
				if (mask_attack<8){
					mask_attack++;
				}
			}else{
				if (mask_attack>0){
					mask_attack--;
				}
			}
			var tst_a = 1-(mask_attack/10);
			set_character_color_slot( 6, 131, 133, 214, tst_a);
		set_character_color_slot( 3, 34, 29, 66, 0 ); //white
		}
	}
	
	if (get_player_color( player ) == 9){//seasonal
		//get_match_setting( SET_SEASON )
		switch(get_match_setting( SET_SEASON )){
			case 1: //spring
			break;
			case 2: //summer
			break;
			case 3: //autumn
				set_character_color_shading( 0, 0.5 );//green
				set_character_color_shading( 1, 0.5 );//hair
				set_character_color_shading( 3, 0.5 );//white
				set_character_color_shading( 6, 0.5 );//umbrella
			break;
			case 4: //winter
			break;
		}
	}
	
	if (get_player_color( player ) == 10){//hymn
		//set_color_profile_slot( 10, 3, 212, 255, 225 ); //white
		//set_color_profile_slot( 10, 4, 0, 112, 55 ); //dark
		//set_color_profile_slot( 10, 5, 255, 222, 74 ); //gold
		//set_color_profile_slot( 10, 6, 0, 255, 123 ); //umbrella
		//set_color_profile_slot( 10, 7, 1, 117, 56 ); //eyes
		if (variable_instance_exists(id, "state")){
			var dmg = get_player_damage( player );
			
			
			var tst_a = clamp(1-(dmg/90),0,1);
			if (get_player_stocks( player )==1){var tst_a = 0}
			//print(string(tst_a))
			
		set_character_color_slot( 1, 245, 192, 85, 0.6+tst_a ); //hair
		set_character_color_slot( 0, 0, 255, 123, 0.2+tst_a ); //green
		set_character_color_slot( 3, 212, 255, 225, 0.7+tst_a ); //white
		set_character_color_slot( 4, 0, 112, 55, 0.6+tst_a ); //dark
		set_character_color_slot( 6, 0, 255, 123, 0.2+tst_a ); //umbrella
		set_character_color_slot( 7, 1, 117, 56, 0.6+tst_a ); //eyes
		}
	}
	
	
	/*
set_color_profile_slot( 29, 0, 127, 135, 129 ); //green
set_color_profile_slot( 29, 1, 242, 255, 247 ); //hair
set_color_profile_slot( 29, 2, 160, 164, 166 ); //skin
set_color_profile_slot( 29, 3, 63, 66, 64 ); //white
set_color_profile_slot( 29, 4, 39, 41, 40 ); //dark
set_color_profile_slot( 29, 5, 79, 84, 81 ); //gold
set_color_profile_slot( 29, 6, 242, 255, 245 ); //umbrella
set_color_profile_slot( 29, 7, 240, 255, 240 ); //eyes
	*/
	
	if (get_player_color( player ) == 11){//endofallthings
		set_character_color_slot( 0, 127, 135, 129, 0.8 ); //green
		//set_character_color_slot( 1, 242, 255, 247, 0.35 ); //hair
		set_character_color_slot( 2, 160, 164, 166, 0.9 ); //skin
		set_character_color_slot( 3, 63, 66, 64, 0.5 ); //white
		set_character_color_slot( 4, 39, 41, 40, 0.3 ); //dark
		set_character_color_slot( 5, 79, 84, 81, 0.6 ); //gold
		//set_character_color_slot( 6, 242, 255, 245, 0.35 ); //umbrella
		//set_character_color_slot( 7, 240, 255, 240, 0.35 ); //eyes
	
	}
	if (get_player_color( player ) == 14){//radialvortex
		if (variable_instance_exists(id, "state")){
			set_character_color_slot( 0, 0, 87, 240, 0 );
			set_character_color_slot( 1, 0, 125, 235, 0 );
			set_character_color_slot( 6, 0, 125, 235, 0 );
		}
	}
}


if (variable_instance_exists(id, "switch_pal_let")){
if (switch_pal_let){

//any other
switch(get_synced_var( player )){
	case 0: //A
		// blue
		set_color_profile_slot( 1, 0, 140, 168, 255 ); //green
		set_color_profile_slot( 1, 1, 116, 138, 247 ); //hair
		set_color_profile_slot( 1, 2, 242, 230, 213 ); //skin
		set_color_profile_slot( 1, 3, 47, 71, 194 ); //white
		set_color_profile_slot( 1, 4, 9, 9, 89 ); //dark
		set_color_profile_slot( 1, 5, 102, 139, 255 ); //gold
		set_color_profile_slot( 1, 6, 173, 185, 255 ); //umbrella
		set_color_profile_slot( 1, 7, 17, 43, 117 ); //eyes

		// red
		set_color_profile_slot( 2, 0, 230, 30, 62 ); //green
		set_color_profile_slot( 2, 1, 184, 48, 57 ); //hair
		set_color_profile_slot( 2, 2, 255, 217, 196 ); //skin
		set_color_profile_slot( 2, 3, 250, 178, 192 ); //white
		set_color_profile_slot( 2, 4, 79, 13, 27 ); //dark
		set_color_profile_slot( 2, 5, 255, 157, 0 ); //gold
		set_color_profile_slot( 2, 6, 153, 44, 44 ); //umbrella
		set_color_profile_slot( 2, 7, 130, 19, 19 ); //eyes

		// green
		set_color_profile_slot( 3, 0, 130, 224, 0 ); //green
		set_color_profile_slot( 3, 1, 219, 255, 122 ); //hair
		set_color_profile_slot( 3, 2, 217, 179, 114 ); //skin
		set_color_profile_slot( 3, 3, 245, 255, 217 ); //white
		set_color_profile_slot( 3, 4, 58, 102, 23 ); //dark
		set_color_profile_slot( 3, 5, 119, 106, 158 ); //gold
		set_color_profile_slot( 3, 6, 128, 209, 15 ); //umbrella
		set_color_profile_slot( 3, 7, 88, 150, 1 ); //eyes

		// bw
		set_color_profile_slot( 4, 0, 237, 255, 250 ); //green
		set_color_profile_slot( 4, 1, 100, 125, 163 ); //hair
		set_color_profile_slot( 4, 2, 217, 205, 190 ); //skin
		set_color_profile_slot( 4, 3, 95, 117, 140 ); //white
		set_color_profile_slot( 4, 4, 176, 207, 199 ); //dark
		set_color_profile_slot( 4, 5, 51, 66, 63 ); //gold
		set_color_profile_slot( 4, 6, 168, 194, 255 ); //umbrella
		set_color_profile_slot( 4, 7, 32, 41, 38 ); //eyes

		// purple
		set_color_profile_slot( 5, 0, 226, 173, 255 ); //green
		set_color_profile_slot( 5, 1, 104, 99, 138 ); //hair
		set_color_profile_slot( 5, 2, 255, 233, 222 ); //skin
		set_color_profile_slot( 5, 3, 134, 117, 217 ); //white
		set_color_profile_slot( 5, 4, 252, 255, 252 ); //dark
		set_color_profile_slot( 5, 5, 253, 252, 255 ); //gold
		set_color_profile_slot( 5, 6, 89, 63, 153 ); //umbrella
		set_color_profile_slot( 5, 7, 90, 76, 135 ); //eyes

		// abyss
		set_color_profile_slot( 6, 0, 218, 99, 255 ); //green
		set_color_profile_slot( 6, 1, 98, 79, 135 ); //hair
		set_color_profile_slot( 6, 2, 169, 173, 209 ); //skin
		set_color_profile_slot( 6, 3, 193, 203, 235 ); //white
		set_color_profile_slot( 6, 4, 74, 33, 87 ); //dark
		set_color_profile_slot( 6, 5, 117, 96, 171 ); //gold
		set_color_profile_slot( 6, 6, 233, 161, 255 ); //umbrella
		set_color_profile_slot( 6, 7, 128, 59, 150 ); //eyes

		// EA
		set_color_profile_slot( 7, 0, 83, 122, 62 ); //green
		set_color_profile_slot( 7, 1, 167, 186, 74 ); //hair
		set_color_profile_slot( 7, 2, 211, 226, 154 ); //skin
		set_color_profile_slot( 7, 3, 211, 226, 154 ); //white
		set_color_profile_slot( 7, 4, 35, 67, 49 ); //dark
		set_color_profile_slot( 7, 5, 167, 186, 74 ); //gold
		set_color_profile_slot( 7, 6, 167, 186, 74 ); //umbrella
		set_color_profile_slot( 7, 7, 83, 122, 62 ); //eyes

		// seasonal in testing...
		if (get_match_setting( SET_SEASON )==1){
			// valentines
			set_color_profile_slot( 8, 0, 247, 86, 114 ); //green
			set_color_profile_slot( 8, 1, 255, 196, 248 ); //hair
			set_color_profile_slot( 8, 2, 255, 220, 176 ); //skin
			set_color_profile_slot( 8, 3, 255, 163, 238 ); //white
			set_color_profile_slot( 8, 4, 161, 26, 26 ); //dark
			set_color_profile_slot( 8, 5, 75, 176, 77 ); //gold
			set_color_profile_slot( 8, 6, 255, 245, 252 ); //umbrella
			set_color_profile_slot( 8, 7, 173, 42, 63 ); //eyes
		}else if(get_match_setting( SET_SEASON )==2){
			// summer
			set_color_profile_slot( 8, 0, 255, 248, 158 ); //green
			set_color_profile_slot( 8, 1, 99, 226, 230 ); //hair
			set_color_profile_slot( 8, 2, 235, 194, 136 ); //skin
			set_color_profile_slot( 8, 3, 101, 224, 156 ); //white
			set_color_profile_slot( 8, 4, 181, 80, 11 ); //dark
			set_color_profile_slot( 8, 5, 127, 107, 255 ); //gold
			set_color_profile_slot( 8, 6, 255, 248, 158 ); //umbrella
			set_color_profile_slot( 8, 7, 120, 53, 7 ); //eyes
		}else if(get_match_setting( SET_SEASON )==3){
			// halloween
			set_color_profile_slot( 8, 0, 57, 64, 60 ); //green
			set_color_profile_slot( 8, 1, 57, 64, 60 ); //hair
			set_color_profile_slot( 8, 2, 0, 0, 0 ); //skin
			set_color_profile_slot( 8, 3, 57, 64, 60 ); //white
			set_color_profile_slot( 8, 4, 184, 189, 184 ); //dark
			set_color_profile_slot( 8, 5, 184, 189, 184 ); //gold
			set_color_profile_slot( 8, 6, 57, 64, 60 ); //umbrella
			set_color_profile_slot( 8, 7, 255, 255, 255 ); //eyes
		}else if(get_match_setting( SET_SEASON )==4){
			// christmas
			set_color_profile_slot( 8, 0, 255, 245, 245 ); //green
			set_color_profile_slot( 8, 1, 247, 245, 245 ); //hair
			set_color_profile_slot( 8, 2, 247, 209, 178 ); //skin
			set_color_profile_slot( 8, 3, 235, 66, 82 ); //white
			set_color_profile_slot( 8, 4, 54, 122, 20 ); //dark
			set_color_profile_slot( 8, 5, 61, 212, 34 ); //gold
			set_color_profile_slot( 8, 6, 48, 171, 28 ); //umbrella
			set_color_profile_slot( 8, 7, 20, 122, 23 ); //eyes
		}//yes i know i shoulda done a switch() here or something but i didnt remember if switch() within switch() worked or not and i didnt want to test it out

		// Radial Vortex
		/*set_color_profile_slot( 9, 0, 0, 87, 240 ); //green
		set_color_profile_slot( 9, 1, 0, 125, 235 ); //hair
		set_color_profile_slot( 9, 2, 156, 120, 86 ); //skin
		set_color_profile_slot( 9, 3, 45, 59, 64 ); //white
		set_color_profile_slot( 9, 4, 104, 240, 0 ); //dark
		set_color_profile_slot( 9, 5, 104, 240, 0 ); //gold
		set_color_profile_slot( 9, 6, 0, 125, 235 ); //umbrella
		set_color_profile_slot( 9, 7, 255, 223, 41 ); //eyes
		*/
		// champion
		set_color_profile_slot( 9, 0, 158, 255, 190 ); //green
		set_color_profile_slot( 9, 1, 209, 255, 237 ); //hair
		set_color_profile_slot( 9, 2, 128, 145, 138 ); //skin
		set_color_profile_slot( 9, 3, 128, 145, 138 ); //white
		set_color_profile_slot( 9, 4, 158, 255, 190 ); //dark
		set_color_profile_slot( 9, 5, 191, 255, 208 ); //gold
		set_color_profile_slot( 9, 6, 191, 255, 208 ); //umbrella
		set_color_profile_slot( 9, 7, 56, 252, 120 ); //eyes

		// doomsday forever
		set_color_profile_slot( 10, 0, 0, 255, 129 ); //green
		set_color_profile_slot( 10, 1, 0, 255, 129 ); //hair
		set_color_profile_slot( 10, 2, 99, 91, 120 ); //skin
		set_color_profile_slot( 10, 3, 58, 89, 72 ); //white
		set_color_profile_slot( 10, 4, 37, 26, 64 ); //dark
		set_color_profile_slot( 10, 5, 189, 130, 255 ); //gold
		set_color_profile_slot( 10, 6, 138, 117, 199 ); //umbrella
		set_color_profile_slot( 10, 7, 1, 150, 75 ); //eyes

		// bw.2
		set_color_profile_slot( 11, 0, 113, 230, 119 ); //green
		set_color_profile_slot( 11, 1, 245, 255, 255 ); //hair
		set_color_profile_slot( 11, 2, 145, 124, 104 ); //skin
		set_color_profile_slot( 11, 3, 93, 128, 133 ); //white
		set_color_profile_slot( 11, 4, 23, 54, 29 ); //dark
		set_color_profile_slot( 11, 5, 51, 49, 59 ); //gold
		set_color_profile_slot( 11, 6, 245, 255, 255 ); //umbrella
		set_color_profile_slot( 11, 7, 92, 186, 97 ); //eyes

		// ranked gold
		set_color_profile_slot( 12, 0, 255, 207, 13 ); //green
		set_color_profile_slot( 12, 1, 255, 217, 66 ); //hair
		set_color_profile_slot( 12, 2, 128, 87, 67 ); //skin
		set_color_profile_slot( 12, 3, 247, 252, 255 ); //white
		set_color_profile_slot( 12, 4, 123, 122, 191 ); //dark
		set_color_profile_slot( 12, 5, 114, 113, 168 ); //gold
		set_color_profile_slot( 12, 6, 255, 217, 66 ); //umbrella
		set_color_profile_slot( 12, 7, 146, 138, 224 ); //eyes

		// orange
		set_color_profile_slot( 13, 0, 255, 106, 0 ); //green
		set_color_profile_slot( 13, 1, 255, 110, 51 ); //hair
		set_color_profile_slot( 13, 2, 255, 238, 222 ); //skin
		set_color_profile_slot( 13, 3, 240, 244, 255 ); //white
		set_color_profile_slot( 13, 4, 64, 45, 32 ); //dark
		set_color_profile_slot( 13, 5, 255, 202, 28 ); //gold
		set_color_profile_slot( 13, 6, 255, 151, 102 ); //umbrella
		set_color_profile_slot( 13, 7, 138, 57, 0 ); //eyes

		// lavender
		set_color_profile_slot( 14, 0, 203, 139, 232 ); //green
		set_color_profile_slot( 14, 1, 193, 165, 204 ); //hair
		set_color_profile_slot( 14, 2, 255, 253, 237 ); //skin
		set_color_profile_slot( 14, 3, 236, 224, 255 ); //white
		set_color_profile_slot( 14, 4, 95, 64, 110 ); //dark
		set_color_profile_slot( 14, 5, 119, 85, 148 ); //gold
		set_color_profile_slot( 14, 6, 172, 152, 181 ); //umbrella
		set_color_profile_slot( 14, 7, 111, 77, 127 ); //eyes

		// dusk
		set_color_profile_slot( 15, 0, 168, 115, 255 ); //green
		set_color_profile_slot( 15, 1, 255, 248, 176 ); //hair
		set_color_profile_slot( 15, 2, 155, 112, 81 ); //skin
		set_color_profile_slot( 15, 3, 81, 86, 122 ); //white
		set_color_profile_slot( 15, 4, 102, 30, 46 ); //dark
		set_color_profile_slot( 15, 5, 138, 57, 75 ); //gold
		set_color_profile_slot( 15, 6, 102, 30, 46); //umbrella
		set_color_profile_slot( 15, 7, 30, 18, 48 ); //eyes

		// ASH
		set_color_profile_slot( 16, 0, 255, 201, 89 ); //green
		set_color_profile_slot( 16, 1, 59, 59, 138 ); //hair
		set_color_profile_slot( 16, 2, 244, 212, 255 ); //skin
		set_color_profile_slot( 16, 3, 134, 90, 184 ); //white
		set_color_profile_slot( 16, 4, 106, 126, 232 ); //dark
		set_color_profile_slot( 16, 5, 255, 201, 89 ); //gold
		set_color_profile_slot( 16, 6, 138, 179, 255 ); //umbrella
		set_color_profile_slot( 16, 7, 214, 83, 208 ); //eyes

		// hymnbook
		set_color_profile_slot( 17, 0, 247, 247, 255 ); //green
		set_color_profile_slot( 17, 1, 144, 106, 158 ); //hair
		set_color_profile_slot( 17, 2, 235, 210, 180 ); //skin
		set_color_profile_slot( 17, 3, 144, 106, 158 ); //white
		set_color_profile_slot( 17, 4, 255, 223, 61 ); //dark
		set_color_profile_slot( 17, 5, 255, 223, 61 ); //gold
		set_color_profile_slot( 17, 6, 78, 65, 89 ); //umbrella
		set_color_profile_slot( 17, 7, 48, 38, 5 ); //eyes
	break;
	case 1: //B
		// verdi
		set_color_profile_slot( 1, 0, 255, 102, 173 ); //green
		set_color_profile_slot( 1, 1, 155, 235, 150 ); //hair
		set_color_profile_slot( 1, 2, 255, 246, 201 ); //skin
		set_color_profile_slot( 1, 3, 155, 235, 150 ); //white
		set_color_profile_slot( 1, 4, 29, 94, 48 ); //dark
		set_color_profile_slot( 1, 5, 255, 102, 173 ); //gold
		set_color_profile_slot( 1, 6, 73, 168, 100 ); //umbrella
		set_color_profile_slot( 1, 7, 43, 82, 54 ); //eyes

		// meek
		set_color_profile_slot( 2, 0, 8, 255, 189 ); //green
		set_color_profile_slot( 2, 1, 63, 204, 167 ); //hair
		set_color_profile_slot( 2, 2, 247, 244, 240 ); //skin
		set_color_profile_slot( 2, 3, 143, 174, 186 ); //white
		set_color_profile_slot( 2, 4, 35, 43, 43 ); //dark
		set_color_profile_slot( 2, 5, 255, 46, 109 ); //gold
		set_color_profile_slot( 2, 6, 122, 255, 170 ); //umbrella
		set_color_profile_slot( 2, 7, 5, 133, 105 ); //eyes

		// natkinda
		set_color_profile_slot( 3, 0, 105, 96, 166 ); //green
		set_color_profile_slot( 3, 1, 75, 81, 130 ); //hair
		set_color_profile_slot( 3, 2, 255, 211, 143 ); //skin
		set_color_profile_slot( 3, 3, 255, 245, 204 ); //white
		set_color_profile_slot( 3, 4, 222, 62, 97 ); //dark
		set_color_profile_slot( 3, 5, 105, 96, 166 ); //gold
		set_color_profile_slot( 3, 6, 255, 199, 237 ); //umbrella
		set_color_profile_slot( 3, 7, 39, 36, 61 ); //eyes

		// rana
		set_color_profile_slot( 4, 0, 255, 218, 97 ); //green
		set_color_profile_slot( 4, 1, 128, 44, 23 ); //hair
		set_color_profile_slot( 4, 2, 255, 226, 201 ); //skin
		set_color_profile_slot( 4, 3, 27, 171, 72 ); //white
		set_color_profile_slot( 4, 4, 240, 87, 157 ); //dark
		set_color_profile_slot( 4, 5, 255, 218, 97 ); //gold
		set_color_profile_slot( 4, 6, 156, 252, 184 ); //umbrella
		set_color_profile_slot( 4, 7, 19, 89, 85 ); //eyes

		// absinthe past
		set_color_profile_slot( 5, 0, 181, 82, 235 ); //green
		set_color_profile_slot( 5, 1, 181, 82, 235 ); //hair
		set_color_profile_slot( 5, 2, 235, 224, 200 ); //skin
		set_color_profile_slot( 5, 3, 145, 191, 145 ); //white
		set_color_profile_slot( 5, 4, 72, 40, 110 ); //dark
		set_color_profile_slot( 5, 5, 204, 41, 65 ); //gold
		set_color_profile_slot( 5, 6, 204, 41, 65 ); //umbrella
		set_color_profile_slot( 5, 7, 125, 27, 42 ); //eyes

		// sara
		set_color_profile_slot( 6, 0, 235, 251, 255 ); //green
		set_color_profile_slot( 6, 1, 217, 76, 201 ); //hair
		set_color_profile_slot( 6, 2, 255, 245, 235 ); //skin
		set_color_profile_slot( 6, 3, 74, 217, 224 ); //white
		set_color_profile_slot( 6, 4, 35, 166, 176 ); //dark
		set_color_profile_slot( 6, 5, 255, 191, 228 ); //gold
		set_color_profile_slot( 6, 6, 235, 251, 255 ); //umbrella
		set_color_profile_slot( 6, 7, 140, 63, 217 ); //eyes

		// lumina
		set_color_profile_slot( 7, 0, 255, 208, 0 ); //green
		set_color_profile_slot( 7, 1, 227, 93, 32 ); //hair
		set_color_profile_slot( 7, 2, 255, 236, 224 ); //skin
		set_color_profile_slot( 7, 3, 96, 124, 224 ); //white
		set_color_profile_slot( 7, 4, 255, 208, 0 ); //dark
		set_color_profile_slot( 7, 5, 255, 208, 0 ); //gold
		set_color_profile_slot( 7, 6, 255, 226, 99 ); //umbrella
		set_color_profile_slot( 7, 7, 40, 42, 48 ); //eyes

		// nisaekinda
		set_color_profile_slot( 8, 0, 232, 86, 110 ); //green
		set_color_profile_slot( 8, 1, 122, 84, 65 ); //hair
		set_color_profile_slot( 8, 2, 235, 207, 162 ); //skin
		set_color_profile_slot( 8, 3, 247, 250, 255 ); //white
		set_color_profile_slot( 8, 4, 47, 47, 77 ); //dark
		set_color_profile_slot( 8, 5, 255, 0, 81 ); //gold
		set_color_profile_slot( 8, 6, 222, 44, 95 ); //umbrella
		set_color_profile_slot( 8, 7, 127, 48, 61 ); //eyes

		// paintyourworld
		set_color_profile_slot( 9, 0, 23, 214, 255 ); //green
		set_color_profile_slot( 9, 1, 255, 156, 222 ); //hair
		set_color_profile_slot( 9, 2, 255, 207, 204 ); //skin
		set_color_profile_slot( 9, 3, 194, 255, 148 ); //white
		set_color_profile_slot( 9, 4, 31, 98, 207 ); //dark
		set_color_profile_slot( 9, 5, 235, 73, 126 ); //gold
		set_color_profile_slot( 9, 6, 230, 236, 255 ); //umbrella
		set_color_profile_slot( 9, 7, 41, 25, 30 ); //eyes

		// shadow
		set_color_profile_slot( 10, 0, 201, 164, 89 ); //green
		set_color_profile_slot( 10, 1, 67, 112, 85 ); //hair
		set_color_profile_slot( 10, 2, 232, 225, 209 ); //skin
		set_color_profile_slot( 10, 3, 103, 100, 130 ); //white
		set_color_profile_slot( 10, 4, 210, 217, 200 ); //dark
		set_color_profile_slot( 10, 5, 177, 176, 191 ); //gold
		set_color_profile_slot( 10, 6, 69, 42, 150 ); //umbrella
		set_color_profile_slot( 10, 7, 79, 60, 22 ); //eyes

		// cytherean
		set_color_profile_slot( 11, 0, 104, 87, 166 ); //green
		set_color_profile_slot( 11, 1, 255, 212, 125 ); //hair
		set_color_profile_slot( 11, 2, 255, 239, 222 ); //skin
		set_color_profile_slot( 11, 3, 242, 255, 250 ); //white
		set_color_profile_slot( 11, 4, 230, 110, 138 ); //dark
		set_color_profile_slot( 11, 5, 230, 110, 138 ); //gold
		set_color_profile_slot( 11, 6, 252, 194, 227 ); //umbrella
		set_color_profile_slot( 11, 7, 125, 45, 93 ); //eyes

		// hat the kid
		set_color_profile_slot( 12, 0, 217, 247, 255 ); //green
		set_color_profile_slot( 12, 1, 130, 82, 58 ); //hair
		set_color_profile_slot( 12, 2, 255, 229, 207 ); //skin
		set_color_profile_slot( 12, 3, 119, 100, 189 ); //white
		set_color_profile_slot( 12, 4, 240, 188, 0 ); //dark
		set_color_profile_slot( 12, 5, 119, 100, 189 ); //gold
		set_color_profile_slot( 12, 6, 96, 208, 252 ); //umbrella
		set_color_profile_slot( 12, 7, 17, 92, 122 ); //eyes

		// frallan
		set_color_profile_slot( 13, 0, 63, 67, 89 ); //green
		set_color_profile_slot( 13, 1, 70, 74, 102 ); //hair
		set_color_profile_slot( 13, 2, 194, 138, 72 ); //skin
		set_color_profile_slot( 13, 3, 214, 81, 81 ); //white
		set_color_profile_slot( 13, 4, 225, 239, 245 ); //dark
		set_color_profile_slot( 13, 5, 63, 67, 89 ); //gold
		set_color_profile_slot( 13, 6, 225, 239, 245 ); //umbrella
		set_color_profile_slot( 13, 7, 59, 23, 87 ); //eyes

		// starlove
		set_color_profile_slot( 14, 0, 255, 87, 219 ); //green
		set_color_profile_slot( 14, 1, 255, 225, 125 ); //hair
		set_color_profile_slot( 14, 2, 255, 219, 196 ); //skin
		set_color_profile_slot( 14, 3, 255, 204, 249 ); //white
		set_color_profile_slot( 14, 4, 186, 65, 136 ); //dark
		set_color_profile_slot( 14, 5, 37, 186, 104 ); //gold
		set_color_profile_slot( 14, 6, 108, 207, 152 ); //umbrella
		set_color_profile_slot( 14, 7, 150, 52, 129 ); //eyes

		// xlna
		set_color_profile_slot( 15, 0, 50, 36, 240 ); //green
		set_color_profile_slot( 15, 1, 94, 51, 222 ); //hair
		set_color_profile_slot( 15, 2, 255, 244, 237 ); //skin
		set_color_profile_slot( 15, 3, 122, 140, 222 ); //white
		set_color_profile_slot( 15, 4, 37, 36, 77 ); //dark
		set_color_profile_slot( 15, 5, 59, 217, 245 ); //gold
		set_color_profile_slot( 15, 6, 61, 226, 255 ); //umbrella
		set_color_profile_slot( 15, 7, 49, 29, 84 ); //eyes

		// gato
		set_color_profile_slot( 16, 0, 255, 48, 115 ); //green
		set_color_profile_slot( 16, 1, 181, 76, 126 ); //hair
		set_color_profile_slot( 16, 2, 255, 224, 212 ); //skin
		set_color_profile_slot( 16, 3, 158, 126, 184 ); //white
		set_color_profile_slot( 16, 4, 40, 40, 76 ); //dark
		set_color_profile_slot( 16, 5, 84, 84, 143 ); //gold
		set_color_profile_slot( 16, 6, 209, 50, 124 ); //umbrella
		set_color_profile_slot( 16, 7, 150, 29, 69 ); //eyes

		// trigonomatrix op
		set_color_profile_slot( 17, 0, 130, 215, 255 ); //green
		set_color_profile_slot( 17, 1, 130, 215, 255 ); //hair
		set_color_profile_slot( 17, 2, 255, 245, 235 ); //skin
		set_color_profile_slot( 17, 3, 240, 251, 255 ); //white
		set_color_profile_slot( 17, 4, 224, 150, 171 ); //dark
		set_color_profile_slot( 17, 5, 166, 53, 125 ); //gold
		set_color_profile_slot( 17, 6, 130, 215, 255 ); //umbrella
		set_color_profile_slot( 17, 7, 112, 47, 66 ); //eyes
	break;
	case 2://C
		// macka
		set_color_profile_slot( 1, 0, 255, 218, 92 ); //green
		set_color_profile_slot( 1, 1, 190, 199, 194 ); //hair
		set_color_profile_slot( 1, 2, 255, 239, 222 ); //skin
		set_color_profile_slot( 1, 3, 133, 222, 199 ); //white
		set_color_profile_slot( 1, 4, 57, 77, 94 ); //dark
		set_color_profile_slot( 1, 5, 255, 218, 92 ); //gold
		set_color_profile_slot( 1, 6, 181, 145, 115 ); //umbrella
		set_color_profile_slot( 1, 7, 45, 54, 45 ); //eyes

		// celeste_codehair
		set_color_profile_slot( 2, 0, 214, 245, 255 ); //green
		//set_color_profile_slot( 2, 1, 90, 194, 242 ); //hair
		set_color_profile_slot( 2, 2, 255, 238, 219 ); //skin
		set_color_profile_slot( 2, 3, 122, 164, 207 ); //white
		set_color_profile_slot( 2, 4, 29, 51, 61 ); //dark
		set_color_profile_slot( 2, 5, 214, 245, 255 ); //gold
		set_color_profile_slot( 2, 6, 122, 208, 255 ); //umbrella
		set_color_profile_slot( 2, 7, 110, 96, 201 ); //eyes

		// nautilia
		set_color_profile_slot( 3, 0, 89, 74, 135 ); //green
		set_color_profile_slot( 3, 1, 94, 68, 45 ); //hair
		set_color_profile_slot( 3, 2, 153, 115, 77 ); //skin
		set_color_profile_slot( 3, 3, 202, 192, 209 ); //white
		set_color_profile_slot( 3, 4, 89, 74, 135 ); //dark
		set_color_profile_slot( 3, 5, 171, 85, 237 ); //gold
		set_color_profile_slot( 3, 6, 131, 105, 181 ); //umbrella
		set_color_profile_slot( 3, 7, 212, 181, 62 ); //eyes

		// maltose
		set_color_profile_slot( 4, 0, 140, 99, 46 ); //green
		set_color_profile_slot( 4, 1, 255, 198, 64 ); //hair
		set_color_profile_slot( 4, 2, 217, 169, 111 ); //skin
		set_color_profile_slot( 4, 3, 250, 176, 87 ); //white
		set_color_profile_slot( 4, 4, 64, 105, 64 ); //dark
		set_color_profile_slot( 4, 5, 117, 87, 44 ); //gold
		set_color_profile_slot( 4, 6, 255, 222, 122 ); //umbrella
		set_color_profile_slot( 4, 7, 255, 229, 92 ); //eyes

		// 'mina'.E
		set_color_profile_slot( 5, 0, 255, 238, 138 ); //green
		set_color_profile_slot( 5, 1, 255, 152, 115 ); //hair
		set_color_profile_slot( 5, 2, 255, 250, 235 ); //skin
		set_color_profile_slot( 5, 3, 154, 109, 199 ); //white
		set_color_profile_slot( 5, 4, 154, 109, 199 ); //dark
		set_color_profile_slot( 5, 5, 255, 238, 138 ); //gold
		set_color_profile_slot( 5, 6, 255, 238, 138 ); //umbrella
		set_color_profile_slot( 5, 7, 43, 28, 28 ); //eyes

		// magitech
		set_color_profile_slot( 6, 0, 93, 96, 102 ); //green
		set_color_profile_slot( 6, 1, 94, 34, 36 ); //hair
		set_color_profile_slot( 6, 2, 255, 230, 217 ); //skin
		set_color_profile_slot( 6, 3, 191, 212, 255 ); //white
		set_color_profile_slot( 6, 4, 25, 25, 112 ); //dark
		set_color_profile_slot( 6, 5, 61, 62, 66 ); //gold
		set_color_profile_slot( 6, 6, 110, 60, 176 ); //umbrella
		set_color_profile_slot( 6, 7, 66, 35, 35 ); //eyes

		// surging fate
		set_color_profile_slot( 7, 0, 142, 237, 226 ); //green
		set_color_profile_slot( 7, 1, 99, 56, 41 ); //hair
		set_color_profile_slot( 7, 2, 235, 199, 157 ); //skin
		set_color_profile_slot( 7, 3, 175, 143, 181 ); //white
		set_color_profile_slot( 7, 4, 105, 39, 79 ); //dark
		set_color_profile_slot( 7, 5, 88, 209, 195 ); //gold
		set_color_profile_slot( 7, 6, 142, 237, 226 ); //umbrella
		set_color_profile_slot( 7, 7, 61, 38, 25 ); //eyes

		// clockwork fate
		set_color_profile_slot( 8, 0, 159, 171, 179 ); //green
		set_color_profile_slot( 8, 1, 242, 123, 32 ); //hair
		set_color_profile_slot( 8, 2, 255, 239, 212 ); //skin
		set_color_profile_slot( 8, 3, 128, 80, 73 ); //white
		set_color_profile_slot( 8, 4, 242, 123, 32 ); //dark
		set_color_profile_slot( 8, 5, 242, 123, 32 ); //gold
		set_color_profile_slot( 8, 6, 255, 186, 89 ); //umbrella
		set_color_profile_slot( 8, 7, 148, 73, 17 ); //eyes

		// bell lily
		set_color_profile_slot( 9, 0, 217, 204, 255 ); //green
		set_color_profile_slot( 9, 1, 208, 201, 255 ); //hair
		set_color_profile_slot( 9, 2, 191, 167, 129 ); //skin
		set_color_profile_slot( 9, 3, 133, 127, 227 ); //white
		set_color_profile_slot( 9, 4, 36, 71, 44 ); //dark
		set_color_profile_slot( 9, 5, 77, 138, 85 ); //gold
		set_color_profile_slot( 9, 6, 106, 207, 145 ); //umbrella
		set_color_profile_slot( 9, 7, 59, 78, 145 ); //eyes

		// tomokocolor
		set_color_profile_slot( 10, 0, 255, 204, 110 ); //green
		set_color_profile_slot( 10, 1, 200, 210, 247 ); //hair
		set_color_profile_slot( 10, 2, 117, 81, 66 ); //skin
		set_color_profile_slot( 10, 3, 89, 82, 138 ); //white
		set_color_profile_slot( 10, 4, 27, 30, 38 ); //dark
		set_color_profile_slot( 10, 5, 58, 64, 79 ); //gold
		set_color_profile_slot( 10, 6, 100, 210, 232 ); //umbrella
		set_color_profile_slot( 10, 7, 96, 114, 140 ); //eyes

		// bladewhichreflect
		set_color_profile_slot( 11, 0, 47, 222, 150 ); //green
		set_color_profile_slot( 11, 1, 255, 242, 140 ); //hair
		set_color_profile_slot( 11, 2, 255, 245, 230 ); //skin
		set_color_profile_slot( 11, 3, 96, 127, 143 ); //white
		set_color_profile_slot( 11, 4, 11, 82, 52 ); //dark
		set_color_profile_slot( 11, 5, 35, 173, 117 ); //gold
		set_color_profile_slot( 11, 6, 117, 250, 255 ); //umbrella
		set_color_profile_slot( 11, 7, 39, 156, 161 ); //eyes

		// windrose
		set_color_profile_slot( 12, 0, 248, 247, 255 ); //green
		set_color_profile_slot( 12, 1, 248, 247, 255 ); //hair
		set_color_profile_slot( 12, 2, 194, 192, 207 ); //skin
		set_color_profile_slot( 12, 3, 248, 247, 255 ); //white
		set_color_profile_slot( 12, 4, 255, 206, 54 ); //dark
		set_color_profile_slot( 12, 5, 255, 206, 54 ); //gold
		set_color_profile_slot( 12, 6, 135, 135, 148 ); //umbrella
		set_color_profile_slot( 12, 7, 248, 247, 255 ); //eyes

		// brella of the crib
		set_color_profile_slot( 13, 0, 117, 240, 255 ); //green
		set_color_profile_slot( 13, 1, 53, 64, 112 ); //hair
		set_color_profile_slot( 13, 2, 107, 71, 61 ); //skin
		set_color_profile_slot( 13, 3, 240, 96, 102 ); //white
		set_color_profile_slot( 13, 4, 192, 51, 54 ); //dark
		set_color_profile_slot( 13, 5, 87, 237, 255 ); //gold
		set_color_profile_slot( 13, 6, 161, 13, 255 ); //umbrella
		set_color_profile_slot( 13, 7, 13, 1, 1 ); //eyes

		// jen
		set_color_profile_slot( 14, 0, 240, 242, 255 ); //green
		set_color_profile_slot( 14, 1, 102, 61, 55 ); //hair
		set_color_profile_slot( 14, 2, 255, 234, 217 ); //skin
		set_color_profile_slot( 14, 3, 189, 64, 78 ); //white
		set_color_profile_slot( 14, 4, 31, 38, 31 ); //dark
		set_color_profile_slot( 14, 5, 181, 114, 40 ); //gold
		set_color_profile_slot( 14, 6, 240, 242, 255 ); //umbrella
		set_color_profile_slot( 14, 7, 55, 60, 125 ); //eyes

		// stith
		set_color_profile_slot( 15, 0, 79, 104, 214 ); //green
		set_color_profile_slot( 15, 1, 80, 84, 107 ); //hair
		set_color_profile_slot( 15, 2, 235, 232, 252 ); //skin
		set_color_profile_slot( 15, 3, 235, 244, 255 ); //white
		set_color_profile_slot( 15, 4, 46, 57, 79 ); //dark
		set_color_profile_slot( 15, 5, 109, 136, 186 ); //gold
		set_color_profile_slot( 15, 6, 107, 130, 214 ); //umbrella
		set_color_profile_slot( 15, 7, 70, 93, 194 ); //eyes

		// meimay
		set_color_profile_slot( 16, 0, 176, 51, 51 ); //green
		set_color_profile_slot( 16, 1, 49, 184, 155 ); //hair
		set_color_profile_slot( 16, 2, 255, 246, 209 ); //skin
		set_color_profile_slot( 16, 3, 235, 115, 166 ); //white
		set_color_profile_slot( 16, 4, 102, 30, 30 ); //dark
		set_color_profile_slot( 16, 5, 49, 184, 155 ); //gold
		set_color_profile_slot( 16, 6, 40, 201, 147 ); //umbrella
		set_color_profile_slot( 16, 7, 112, 39, 39 ); //eyes

		// pancake bacon
		set_color_profile_slot( 17, 0, 58, 184, 242 ); //green
		set_color_profile_slot( 17, 1, 255, 66, 139 ); //hair
		set_color_profile_slot( 17, 2, 255, 231, 196 ); //skin
		set_color_profile_slot( 17, 3, 255, 211, 66 ); //white
		set_color_profile_slot( 17, 4, 255, 66, 139 ); //dark
		set_color_profile_slot( 17, 5, 255, 66, 139 ); //gold
		set_color_profile_slot( 17, 6, 255, 211, 66 ); //umbrella
		set_color_profile_slot( 17, 7, 26, 118, 161 ); //eyes
	break;
	case 3://D
		// sorbet
		set_color_profile_slot( 1, 0, 255, 213, 0 ); //green
		set_color_profile_slot( 1, 1, 54, 69, 117 ); //hair
		set_color_profile_slot( 1, 2, 255, 243, 224 ); //skin
		set_color_profile_slot( 1, 3, 236, 166, 255 ); //white
		set_color_profile_slot( 1, 4, 142, 74, 161 ); //dark
		set_color_profile_slot( 1, 5, 0, 217, 224 ); //gold
		set_color_profile_slot( 1, 6, 0, 217, 224 ); //umbrella
		set_color_profile_slot( 1, 7, 166, 97, 0 ); //eyes

		// infamous
		set_color_profile_slot( 2, 0, 255, 105, 220 ); //green
		set_color_profile_slot( 2, 1, 103, 95, 176 ); //hair
		set_color_profile_slot( 2, 2, 224, 194, 166 ); //skin
		set_color_profile_slot( 2, 3, 103, 95, 176 ); //white
		set_color_profile_slot( 2, 4, 0, 230, 120 ); //dark
		set_color_profile_slot( 2, 5, 194, 232, 255 ); //gold
		set_color_profile_slot( 2, 6, 51, 255, 242 ); //umbrella
		set_color_profile_slot( 2, 7, 51, 255, 242 ); //eyes

		// steampunk
		set_color_profile_slot( 3, 0, 0, 135, 112 ); //green
		set_color_profile_slot( 3, 1, 64, 214, 176 ); //hair
		set_color_profile_slot( 3, 2, 168, 142, 115 ); //skin
		set_color_profile_slot( 3, 3, 124, 135, 135 ); //white
		set_color_profile_slot( 3, 4, 84, 60, 50 ); //dark
		set_color_profile_slot( 3, 5, 224, 152, 101 ); //gold
		set_color_profile_slot( 3, 6, 179, 112, 75 ); //umbrella
		set_color_profile_slot( 3, 7, 212, 212, 212 ); //eyes

		//ashveil
		set_color_profile_slot( 4, 0, 255, 221, 99 ); //green
		set_color_profile_slot( 4, 1, 79, 76, 84 ); //hair
		set_color_profile_slot( 4, 2, 255, 240, 217 ); //skin
		set_color_profile_slot( 4, 3, 176, 80, 74 ); //white
		set_color_profile_slot( 4, 4, 47, 72, 92 ); //dark
		set_color_profile_slot( 4, 5, 153, 149, 163 ); //gold
		set_color_profile_slot( 4, 6, 245, 245, 255 ); //umbrella
		set_color_profile_slot( 4, 7, 224, 224, 224 ); //eyes

		// cora
		set_color_profile_slot( 5, 0, 64, 76, 247 ); //green
		set_color_profile_slot( 5, 1, 53, 63, 204 ); //hair
		set_color_profile_slot( 5, 2, 255, 240, 222 ); //skin
		set_color_profile_slot( 5, 3, 83, 86, 94 ); //white
		set_color_profile_slot( 5, 4, 147, 159, 219 ); //dark
		set_color_profile_slot( 5, 5, 171, 53, 73 ); //gold
		set_color_profile_slot( 5, 6, 171, 53, 73 ); //umbrella
		set_color_profile_slot( 5, 7, 45, 56, 61 ); //eyes

		// cocua
		set_color_profile_slot( 6, 0, 146, 255, 51 ); //green
		set_color_profile_slot( 6, 1, 135, 79, 73 ); //hair
		set_color_profile_slot( 6, 2, 219, 186, 127 ); //skin
		set_color_profile_slot( 6, 3, 167, 154, 186 ); //white
		set_color_profile_slot( 6, 4, 60, 54, 74 ); //dark
		set_color_profile_slot( 6, 5, 60, 54, 74 ); //gold
		set_color_profile_slot( 6, 6, 163, 255, 15 ); //umbrella
		set_color_profile_slot( 6, 7, 173, 33, 33 ); //eyes

		// sary
		set_color_profile_slot( 7, 0, 59, 61, 59 ); //green
		set_color_profile_slot( 7, 1, 59, 61, 59 ); //hair
		set_color_profile_slot( 7, 2, 232, 242, 255 ); //skin
		set_color_profile_slot( 7, 3, 158, 43, 43 ); //white
		set_color_profile_slot( 7, 4, 232, 201, 62 ); //dark
		set_color_profile_slot( 7, 5, 232, 242, 255 ); //gold
		set_color_profile_slot( 7, 6, 255, 255, 201 ); //umbrella
		set_color_profile_slot( 7, 7, 79, 22, 22 ); //eyes

		// kris
		set_color_profile_slot( 8, 0, 255, 249, 56 ); //green
		set_color_profile_slot( 8, 1, 117, 42, 34 ); //hair
		set_color_profile_slot( 8, 2, 255, 200, 0 ); //skin
		set_color_profile_slot( 8, 3, 151, 199, 48 ); //white
		set_color_profile_slot( 8, 4, 69, 37, 24 ); //dark
		set_color_profile_slot( 8, 5, 94, 51, 33 ); //gold
		set_color_profile_slot( 8, 6, 255, 255, 250 ); //umbrella
		set_color_profile_slot( 8, 7, 148, 43, 36 ); //eyes

		// asayzll
		set_color_profile_slot( 9, 0, 75, 139, 166 ); //green
		set_color_profile_slot( 9, 1, 125, 81, 94 ); //hair
		set_color_profile_slot( 9, 2, 204, 155, 138 ); //skin
		set_color_profile_slot( 9, 3, 235, 173, 70 ); //white
		set_color_profile_slot( 9, 4, 22, 51, 97 ); //dark
		set_color_profile_slot( 9, 5, 29, 63, 117 ); //gold
		set_color_profile_slot( 9, 6, 255, 133, 33 ); //umbrella
		set_color_profile_slot( 9, 7, 161, 126, 0 ); //eyes

		// twinleaf
		set_color_profile_slot( 10, 0, 191, 255, 194 ); //green
		set_color_profile_slot( 10, 1, 106, 161, 107 ); //hair
		set_color_profile_slot( 10, 2, 250, 226, 192 ); //skin
		set_color_profile_slot( 10, 3, 108, 166, 109 ); //white
		set_color_profile_slot( 10, 4, 36, 79, 60 ); //dark
		set_color_profile_slot( 10, 5, 235, 247, 131 ); //gold
		set_color_profile_slot( 10, 6, 223, 247, 178 ); //umbrella
		set_color_profile_slot( 10, 7, 29, 46, 31 ); //eyes

		// otherside
		set_color_profile_slot( 11, 0, 135, 255, 207 ); //green
		set_color_profile_slot( 11, 1, 97, 255, 173 ); //hair
		set_color_profile_slot( 11, 2, 255, 244, 212 ); //skin
		set_color_profile_slot( 11, 3, 48, 179, 129 ); //white
		set_color_profile_slot( 11, 4, 7, 92, 59 ); //dark
		set_color_profile_slot( 11, 5, 247, 245, 94 ); //gold
		set_color_profile_slot( 11, 6, 247, 235, 146 ); //umbrella
		set_color_profile_slot( 11, 7, 66, 87, 17 ); //eyes

		// supermint
		set_color_profile_slot( 12, 0, 242, 255, 253 ); //green
		set_color_profile_slot( 12, 1, 81, 153, 124 ); //hair
		set_color_profile_slot( 12, 2, 255, 246, 232 ); //skin
		set_color_profile_slot( 12, 3, 154, 250, 175 ); //white
		set_color_profile_slot( 12, 4, 81, 153, 124 ); //dark
		set_color_profile_slot( 12, 5, 242, 255, 253 ); //gold
		set_color_profile_slot( 12, 6, 252, 255, 253 ); //umbrella
		set_color_profile_slot( 12, 7, 116, 189, 131 ); //eyes

		// tealeaf
		set_color_profile_slot( 13, 0, 137, 207, 8 ); //green
		set_color_profile_slot( 13, 1, 104, 130, 65 ); //hair
		set_color_profile_slot( 13, 2, 84, 70, 50 ); //skin
		set_color_profile_slot( 13, 3, 237, 250, 220 ); //white
		set_color_profile_slot( 13, 4, 82, 102, 51 ); //dark
		set_color_profile_slot( 13, 5, 145, 121, 64 ); //gold
		set_color_profile_slot( 13, 6, 196, 163, 86 ); //umbrella
		set_color_profile_slot( 13, 7, 156, 121, 28 ); //eyes

		// teapack
		set_color_profile_slot( 14, 0, 255, 229, 112 ); //green
		set_color_profile_slot( 14, 1, 232, 203, 25 ); //hair
		set_color_profile_slot( 14, 2, 163, 124, 89 ); //skin
		set_color_profile_slot( 14, 3, 207, 146, 66 ); //white
		set_color_profile_slot( 14, 4, 82, 112, 0 ); //dark
		set_color_profile_slot( 14, 5, 82, 112, 0 ); //gold
		set_color_profile_slot( 14, 6, 238, 255, 160 ); //umbrella
		set_color_profile_slot( 14, 7, 42, 87, 26 ); //eyes

		// a written song
		set_color_profile_slot( 15, 0, 21, 158, 34 ); //green
		set_color_profile_slot( 15, 1, 69, 43, 43 ); //hair
		set_color_profile_slot( 15, 2, 117, 75, 68 ); //skin
		set_color_profile_slot( 15, 3, 165, 207, 182 ); //white
		set_color_profile_slot( 15, 4, 189, 75, 53 ); //dark
		set_color_profile_slot( 15, 5, 232, 103, 35 ); //gold
		set_color_profile_slot( 15, 6, 66, 255, 183 ); //umbrella
		set_color_profile_slot( 15, 7, 181, 97, 52 ); //eyes
		
		// what's a phd?
		set_color_profile_slot( 16, 0, 225, 231, 245 ); //green
		set_color_profile_slot( 16, 1, 115, 63, 36 ); //hair
		set_color_profile_slot( 16, 2, 245, 189, 147 ); //skin
		set_color_profile_slot( 16, 3, 225, 231, 245 ); //white
		set_color_profile_slot( 16, 4, 65, 79, 94 ); //dark
		set_color_profile_slot( 16, 5, 255, 74, 61 ); //gold
		set_color_profile_slot( 16, 6, 225, 231, 245 ); //umbrella
		set_color_profile_slot( 16, 7, 6, 89, 130 ); //eyes

		// ACronym E
		set_color_profile_slot( 17, 0, 145, 123, 141 ); //green
		set_color_profile_slot( 17, 1, 79, 66, 76 ); //hair
		set_color_profile_slot( 17, 2, 237, 182, 133 ); //skin
		set_color_profile_slot( 17, 3, 242, 235, 255 ); //white
		set_color_profile_slot( 17, 4, 154, 0, 179 ); //dark
		set_color_profile_slot( 17, 5, 154, 0, 179 ); //gold
		set_color_profile_slot( 17, 6, 154, 0, 179 ); //umbrella
		set_color_profile_slot( 17, 7, 134, 0, 156 ); //eyes
	break;
	case 4://secret extra palette
		// ULTRAGENESIS
		set_color_profile_slot( 1, 0, 255, 77, 77 ); //green
		set_color_profile_slot( 1, 1, 128, 26, 26 ); //hair
		set_color_profile_slot( 1, 2, 217, 215, 215 ); //skin
		set_color_profile_slot( 1, 3, 94, 97, 105 ); //white
		set_color_profile_slot( 1, 4, 201, 197, 197 ); //dark
		set_color_profile_slot( 1, 5, 255, 77, 77 ); //gold
		set_color_profile_slot( 1, 6, 255, 77, 77 ); //umbrella
		set_color_profile_slot( 1, 7, 255, 77, 77 ); //eyes

		// champion
		set_color_profile_slot( 2, 0, 158, 255, 190 ); //green
		set_color_profile_slot( 2, 1, 209, 255, 237 ); //hair
		set_color_profile_slot( 2, 2, 128, 145, 138 ); //skin
		set_color_profile_slot( 2, 3, 128, 145, 138 ); //white
		set_color_profile_slot( 2, 4, 158, 255, 190 ); //dark
		set_color_profile_slot( 2, 5, 191, 255, 208 ); //gold
		set_color_profile_slot( 2, 6, 191, 255, 208 ); //umbrella
		set_color_profile_slot( 2, 7, 56, 252, 120 ); //eyes

		// klein bottle
		set_color_profile_slot( 3, 0, 179, 181, 255 ); //green
		set_color_profile_slot( 3, 1, 240, 250, 255 ); //hair
		set_color_profile_slot( 3, 2, 255, 243, 237 ); //skin
		set_color_profile_slot( 3, 3, 240, 250, 255 ); //white
		set_color_profile_slot( 3, 4, 255, 66, 66 ); //dark
		set_color_profile_slot( 3, 5, 179, 181, 255 ); //gold
		set_color_profile_slot( 3, 6, 163, 178, 255 ); //umbrella
		set_color_profile_slot( 3, 7, 255, 66, 66 ); //eyes

		// wish...
		set_color_profile_slot( 4, 0, 48, 232, 240 ); //green
		set_color_profile_slot( 4, 1, 255, 216, 99 ); //hair
		set_color_profile_slot( 4, 2, 235, 246, 255 ); //skin
		set_color_profile_slot( 4, 3, 235, 246, 255 ); //white
		set_color_profile_slot( 4, 4, 4, 113, 143 ); //dark
		set_color_profile_slot( 4, 5, 255, 216, 99 ); //gold
		set_color_profile_slot( 4, 6, 255, 216, 99 ); //umbrella
		set_color_profile_slot( 4, 7, 3, 76, 105 ); //eyes

		// wish sunset
		set_color_profile_slot( 5, 0, 255, 80, 74 ); //green
		set_color_profile_slot( 5, 1, 255, 176, 74 ); //hair
		set_color_profile_slot( 5, 2, 249, 242, 255 ); //skin
		set_color_profile_slot( 5, 3, 235, 232, 255 ); //white
		set_color_profile_slot( 5, 4, 173, 30, 0 ); //dark
		set_color_profile_slot( 5, 5, 255, 176, 74 ); //gold
		set_color_profile_slot( 5, 6, 255, 176, 74 ); //umbrella
		set_color_profile_slot( 5, 7, 143, 41, 0 ); //eyes

		// steel bamboo
		set_color_profile_slot( 6, 0, 99, 247, 205 ); //green
		set_color_profile_slot( 6, 1, 162, 191, 185 ); //hair
		set_color_profile_slot( 6, 2, 245, 255, 254 ); //skin
		set_color_profile_slot( 6, 3, 162, 191, 185 ); //white
		set_color_profile_slot( 6, 4, 198, 255, 140 ); //dark
		set_color_profile_slot( 6, 5, 158, 255, 195 ); //gold
		set_color_profile_slot( 6, 6, 81, 201, 168 ); //umbrella
		set_color_profile_slot( 6, 7, 37, 115, 92 ); //eyes

		// scarlet like cinnabar fire
		set_color_profile_slot( 7, 0, 255, 94, 18 ); //green
		set_color_profile_slot( 7, 1, 255, 138, 41 ); //hair
		set_color_profile_slot( 7, 2, 255, 221, 161 ); //skin
		set_color_profile_slot( 7, 3, 186, 42, 20 ); //white
		set_color_profile_slot( 7, 4, 59, 145, 90 ); //dark
		set_color_profile_slot( 7, 5, 91, 224, 139 ); //gold
		set_color_profile_slot( 7, 6, 255, 139, 31 ); //umbrella
		set_color_profile_slot( 7, 7, 59, 145, 90 ); //eyes

		// grid
		set_color_profile_slot( 8, 0, 184, 186, 219 ); //green
		set_color_profile_slot( 8, 1, 184, 186, 219 ); //hair
		set_color_profile_slot( 8, 2, 244, 245, 252 ); //skin
		set_color_profile_slot( 8, 3, 34, 29, 66 ); //white
		set_color_profile_slot( 8, 4, 184, 186, 219 ); //dark
		set_color_profile_slot( 8, 5, 184, 186, 219 ); //gold
		set_color_profile_slot( 8, 6, 131, 133, 214 ); //umbrella
		set_color_profile_slot( 8, 7, 86, 86, 128 ); //eyes

		// seasonal in testing...
		if (get_match_setting( SET_SEASON )==1){
			// valentines
			set_color_profile_slot( 9, 0, 247, 86, 114 ); //green
			set_color_profile_slot( 9, 1, 255, 196, 248 ); //hair
			set_color_profile_slot( 9, 2, 255, 220, 176 ); //skin
			set_color_profile_slot( 9, 3, 255, 163, 238 ); //white
			set_color_profile_slot( 9, 4, 161, 26, 26 ); //dark
			set_color_profile_slot( 9, 5, 75, 176, 77 ); //gold
			set_color_profile_slot( 9, 6, 255, 245, 252 ); //umbrella
			set_color_profile_slot( 9, 7, 173, 42, 63 ); //eyes
		}else if(get_match_setting( SET_SEASON )==2){
			// summer
			set_color_profile_slot( 9, 0, 255, 248, 158 ); //green
			set_color_profile_slot( 9, 1, 99, 226, 230 ); //hair
			set_color_profile_slot( 9, 2, 235, 194, 136 ); //skin
			set_color_profile_slot( 9, 3, 101, 224, 156 ); //white
			set_color_profile_slot( 9, 4, 181, 80, 11 ); //dark
			set_color_profile_slot( 9, 5, 127, 107, 255 ); //gold
			set_color_profile_slot( 9, 6, 255, 248, 158 ); //umbrella
			set_color_profile_slot( 9, 7, 120, 53, 7 ); //eyes
		}else if(get_match_setting( SET_SEASON )==3){
			// halloween
			set_color_profile_slot( 9, 0, 57, 64, 60 ); //green
			set_color_profile_slot( 9, 1, 57, 64, 60 ); //hair
			set_color_profile_slot( 9, 2, 0, 0, 0 ); //skin
			set_color_profile_slot( 9, 3, 57, 64, 60 ); //white
			set_color_profile_slot( 9, 4, 184, 189, 184 ); //dark
			set_color_profile_slot( 9, 5, 184, 189, 184 ); //gold
			set_color_profile_slot( 9, 6, 57, 64, 60 ); //umbrella
			set_color_profile_slot( 9, 7, 255, 255, 255 ); //eyes
		}else if(get_match_setting( SET_SEASON )==4){
			// christmas
			set_color_profile_slot( 9, 0, 255, 245, 245 ); //green
			set_color_profile_slot( 9, 1, 247, 245, 245 ); //hair
			set_color_profile_slot( 9, 2, 247, 209, 178 ); //skin
			set_color_profile_slot( 9, 3, 235, 66, 82 ); //white
			set_color_profile_slot( 9, 4, 54, 122, 20 ); //dark
			set_color_profile_slot( 9, 5, 61, 212, 34 ); //gold
			set_color_profile_slot( 9, 6, 48, 171, 28 ); //umbrella
			set_color_profile_slot( 9, 7, 20, 122, 23 ); //eyes
		}//yes i know i shoulda done a switch() here or something but i didnt remember if switch() within switch() worked or not and i didnt want to test it out

		// hy
		set_color_profile_slot( 10, 0, 0, 255, 123 ); //green
		set_color_profile_slot( 10, 1, 245, 192, 85 ); //hair
		set_color_profile_slot( 10, 2, 255, 244, 237 ); //skin
		set_color_profile_slot( 10, 3, 212, 255, 225 ); //white
		set_color_profile_slot( 10, 4, 0, 112, 55 ); //dark
		set_color_profile_slot( 10, 5, 255, 222, 74 ); //gold
		set_color_profile_slot( 10, 6, 0, 255, 123 ); //umbrella
		set_color_profile_slot( 10, 7, 1, 117, 56 ); //eyes

		// it's the end of all things
		set_color_profile_slot( 11, 0, 127, 135, 129 ); //green
		set_color_profile_slot( 11, 1, 242, 255, 247 ); //hair
		set_color_profile_slot( 11, 2, 160, 164, 166 ); //skin
		set_color_profile_slot( 11, 3, 63, 66, 64 ); //white
		set_color_profile_slot( 11, 4, 39, 41, 40 ); //dark
		set_color_profile_slot( 11, 5, 79, 84, 81 ); //gold
		set_color_profile_slot( 11, 6, 242, 255, 245 ); //umbrella
		
		// forlorn egodeath
		set_color_profile_slot( 12, 0, 234, 255, 222 ); //green
		set_color_profile_slot( 12, 1, 87, 61, 54 ); //hair
		set_color_profile_slot( 12, 2, 255, 255, 255 ); //skin
		set_color_profile_slot( 12, 3, 156, 122, 112 ); //white
		set_color_profile_slot( 12, 4, 234, 255, 222 ); //dark
		set_color_profile_slot( 12, 5, 77, 153, 96 ); //gold
		set_color_profile_slot( 12, 6, 82, 89, 85 ); //umbrella
		set_color_profile_slot( 12, 7, 255, 255, 255 ); //eyes

		// dilemma
		set_color_profile_slot( 13, 0, 125, 179, 154 ); //green
		set_color_profile_slot( 13, 1, 77, 60, 112 ); //hair
		set_color_profile_slot( 13, 2, 194, 183, 176 ); //skin
		set_color_profile_slot( 13, 3, 77, 60, 112 ); //white
		set_color_profile_slot( 13, 4, 154, 117, 191 ); //dark
		set_color_profile_slot( 13, 5, 255, 205, 54 ); //gold
		set_color_profile_slot( 13, 6, 154, 117, 191 ); //umbrella
		set_color_profile_slot( 13, 7, 255, 231, 54 ); //eyes
		
		// Radial Vortex
		set_color_profile_slot( 14, 0, 0, 87, 240 ); //green
		set_color_profile_slot( 14, 1, 0, 125, 235 ); //hair
		set_color_profile_slot( 14, 2, 156, 120, 86 ); //skin
		set_color_profile_slot( 14, 3, 45, 59, 64 ); //white
		set_color_profile_slot( 14, 4, 104, 240, 0 ); //dark
		set_color_profile_slot( 14, 5, 104, 240, 0 ); //gold
		set_color_profile_slot( 14, 6, 0, 125, 235 ); //umbrella
		set_color_profile_slot( 14, 7, 255, 223, 41 ); //eyes

		// unnamed alt palette
		set_color_profile_slot( 15, 0, 128, 0, 128 ); //green
		set_color_profile_slot( 15, 1, 128, 0, 128 ); //hair
		set_color_profile_slot( 15, 2, 128, 0, 128 ); //skin
		set_color_profile_slot( 15, 3, 128, 0, 128 ); //white
		set_color_profile_slot( 15, 4, 128, 0, 128 ); //dark
		set_color_profile_slot( 15, 5, 128, 0, 128 ); //gold
		set_color_profile_slot( 15, 6, 128, 0, 128 ); //umbrella
		set_color_profile_slot( 15, 7, 128, 0, 128 ); //eyes

		// unnamed alt palette
		set_color_profile_slot( 16, 0, 128, 0, 128 ); //green
		set_color_profile_slot( 16, 1, 128, 0, 128 ); //hair
		set_color_profile_slot( 16, 2, 128, 0, 128 ); //skin
		set_color_profile_slot( 16, 3, 128, 0, 128 ); //white
		set_color_profile_slot( 16, 4, 128, 0, 128 ); //dark
		set_color_profile_slot( 16, 5, 128, 0, 128 ); //gold
		set_color_profile_slot( 16, 6, 128, 0, 128 ); //umbrella
		set_color_profile_slot( 16, 7, 128, 0, 128 ); //eyes

		// unnamed alt palette
		set_color_profile_slot( 17, 0, 128, 0, 128 ); //green
		set_color_profile_slot( 17, 1, 128, 0, 128 ); //hair
		set_color_profile_slot( 17, 2, 128, 0, 128 ); //skin
		set_color_profile_slot( 17, 3, 128, 0, 128 ); //white
		set_color_profile_slot( 17, 4, 128, 0, 128 ); //dark
		set_color_profile_slot( 17, 5, 128, 0, 128 ); //gold
		set_color_profile_slot( 17, 6, 128, 0, 128 ); //umbrella
		set_color_profile_slot( 17, 7, 128, 0, 128 ); //eyes
	break;
	
}
	switch_pal_let = false;
}//switch_pal_let
}//switch_pal_let exist
