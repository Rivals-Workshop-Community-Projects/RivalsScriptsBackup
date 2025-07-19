// For whatever reason, Gamemaker Hexadecimal swaps the R and B.

switch(get_player_color(player)){
    case 0:
        // Default
        set_character_color_slot(1, 117, 10, 87);
        set_character_color_slot(7, 11, 11, 59);
        set_character_color_shading(7, .5);
        stronghit_col = $9010d9; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 1:
        //Lancer
        set_character_color_shading(2, .5);
        stronghit_col = $ffffff // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 2:
        // Susie
        stronghit_col = $cdeb1e // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 3:
        // Ralsei
        set_character_color_shading(3, 1.5);
        stronghit_col = $51a605 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 4:
        // Jevil
        stronghit_col = $1de6b5 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 5:
        // Scarlet Forest
        stronghit_col = $d677f3 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 7:
    	set_character_color_shading(4, -1);
        // Overworld / Chara
        stronghit_col = $ffffff // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 11:
        // Seasonal (Changes)
        switch(get_match_setting(SET_SEASON)) {
            case 1: // Valentine's Day
                set_character_color_slot( 0, 227, 113, 196 ); //Sword
                set_character_color_slot( 1, 255, 79, 130 ); //Hilt
                set_character_color_slot( 2, 242, 65, 166 ); //Cape
                set_character_color_slot( 3, 120, 24, 42 ); //Hair
                set_character_color_slot( 4, 236, 210, 230 ); //Skin
                set_character_color_slot( 5, 224, 179, 207 ); //Armor 1
                set_character_color_slot( 6, 168, 67, 138 ); //Armor 2
                set_character_color_slot( 7, 199, 46, 189 ); //Suit
                stronghit_col = $4418de // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                break;
            case 2: // Summer
            	set_character_color_slot( 0, 145, 217, 255 ); //Sword
				set_character_color_slot( 1, 255, 148, 94 ); //Hilt
				set_character_color_slot( 2, 222, 97, 33 ); //Cape
				set_character_color_slot( 3, 59, 61, 158 ); //Hair
				set_character_color_slot( 4, 130, 185, 236 ); //Skin
				set_character_color_slot( 5, 255, 194, 186 ); //Armor 1
				set_character_color_slot( 6, 186, 114, 128 ); //Armor 2
				set_character_color_slot( 7, 25, 40, 117 ); //Suit
				stronghit_col = $116eff // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                break;
            case 3: // Halloween
                set_character_color_slot( 0, 168, 184, 160 ); //Sword
                set_character_color_slot( 1, 0, 56, 56 ); //Hilt
                set_character_color_slot( 2, 36, 36, 40 ); //Cape
                set_character_color_slot( 3, 32, 40, 80 ); //Hair
                set_character_color_slot( 4, 184, 184, 160 ); //Skin
                set_character_color_slot( 5, 120, 136, 112 ); //Armor 1
                set_character_color_slot( 6, 44, 79, 44 ); //Armor 2
                set_character_color_slot( 7, 116, 125, 116 ); //Suit
                stronghit_col = $004eff // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                break;
            case 4: // Christmas
                set_character_color_slot(0, 228, 246, 255 ); //Sword
                set_character_color_slot(1, 0, 255, 0 ); //Hilt
                set_character_color_slot(2, 222, 72, 72 ); //Cape
                set_character_color_slot(3, 97, 154, 62 ); //Hair
                set_character_color_slot(4, 141, 236, 130 ); //Skin
                set_character_color_slot(5, 255, 252, 252 ); //Armor 1
                set_character_color_slot(6, 222, 186, 186 ); //Armor 2
                set_character_color_slot(7, 62, 117, 62 ); //Suit
                stronghit_col = $4848de // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                break;
        }
        break;
    case 10:
        // Champion
        stronghit_col = $ffffff // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 12:
        // Gameboy/Early Access
        outline_color = [ 15, 56, 15 ]; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        stronghit_col = $9ae2d3; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        for(i = 0; i < 8; i++){
                set_character_color_shading(i, 0);
        }
        break;
    case 13:
        // Abyss
        stronghit_col = $ff71d9 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 14:
        // Frisk
        set_character_color_shading(4, -1);
        stronghit_col = $0005ff // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 15:
        // Masked Man
        set_character_color_shading(3, 2);
        set_character_color_shading(7, -1);
        stronghit_col = $00f8f8 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 16:
        // Slime
        stronghit_col = $00f8f8 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 17:
        // Ztatic
        stronghit_col = $00f8f8 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 18:
        // Golden
        stronghit_col = $00f8f8 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 19:
    case 26:
        // Stardrop
        set_character_color_slot(0, 255,255,255, 0);
        //set_character_color_slot(2, 255,255,255, 0);
        stronghit_col = $d677f3 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        break;
    case 20:	// Legend
    	set_character_color_shading(4, 0);
    	stronghit_col = $d677f3 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    	break;
    case 21:	// Rudebuster
    	stronghit_col = $4418de // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    	break;
    case 22:	// Discarded Vessel
    	stronghit_col = $d677f3 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    	break;
    case 23:
    	break;
    case 24:
    	stronghit_col = make_color_rgb(get_color_profile_slot_r(24, 1), get_color_profile_slot_g(24, 1), get_color_profile_slot_b(24, 1)) // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    	break;
    case 25:	// Goober Baby
    	stronghit_col = $d677f3 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    	set_character_color_shading(3, 2);
    	break;
}

if object_index != oPlayer exit;

// Actually apply the shading
if classicshading{
	// Apply Shading
	set_character_color_shading(1, 0);	// Hilt
	set_character_color_shading(2, 0);	// Cape
	set_character_color_shading(3, 0);	// Hair
	set_character_color_shading(5, 0);	// Armor 1
	set_character_color_shading(7, 0);	// Suit
}

if get_player_color(player) != 26{
	switch(get_player_name(player)){
		case "DTRMN":
			soul_col = make_color_rgb(255,0,0); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "BRVRY":
			soul_col = make_color_rgb(252,166,0); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "INTGRT":
			soul_col = make_color_rgb(0,60,255); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "PTINCE":
			soul_col = make_color_rgb(66,252,255); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "PRSVRN":
			soul_col = make_color_rgb(213,53,217); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "JSTICE":
			soul_col = make_color_rgb(255,255,0); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "KINDNS":
			soul_col = make_color_rgb(0,192,0); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "MNSTER":
			soul_col = make_color_rgb(255,255,255); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "B00B69":
			soul_col = make_color_rgb(176,11,105); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		case "LOTTIE":
		case "EQUI":
		case "しゆんぶん":
		case "69DICC":
			soul_col = make_color_rgb(105,209,204); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
		default:
			soul_col = get_player_hud_color(player); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
			break;
	}
}