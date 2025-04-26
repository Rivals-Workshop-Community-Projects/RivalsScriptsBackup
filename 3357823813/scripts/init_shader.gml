//
set_victory_portrait(sprite_get("portrait_full"));

var alt = get_player_color(player);
//color map
if alt == 0 {
	set_character_color_slot(2, get_color_profile_slot_r(alt,0), get_color_profile_slot_g(alt,0), get_color_profile_slot_b(alt,0));
	set_character_color_slot(5, 203, 203, 177);
	set_article_color_slot(2, get_color_profile_slot_r(alt,0), get_color_profile_slot_g(alt,0), get_color_profile_slot_b(alt,0));
	set_article_color_slot(5, 203, 203, 177);
}

var so_retro = [0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0];
if so_retro[alt] == 1 {
	var i = 0;
	repeat(8){
		set_character_color_shading(i, 0);
		i++;
	}
}

switch alt {
	case 0: //Symphony of The Night
		set_character_color_slot(2, get_color_profile_slot_r(alt,0), get_color_profile_slot_g(alt,0), get_color_profile_slot_b(alt,0));
		set_character_color_slot(5, 203, 203, 177);
		set_article_color_slot(2, get_color_profile_slot_r(alt,0), get_color_profile_slot_g(alt,0), get_color_profile_slot_b(alt,0));
		set_article_color_slot(5, 203, 203, 177);
		break;
	case 1: //Death
		set_character_color_shading(2, 1.25);
		break;
	case 2: //Lords of Shadow
		set_character_color_shading(5, .5);
		break;
	case 3:	//Mathias Cronqvuist
		set_character_color_shading(6, 1.5);
		break;
	case 4:	//Castlevania Chronicles
		set_character_color_shading(2, 5);
		set_character_color_shading(5, .5);
		break;
	case 5:	//True Form Dracula COTM
		break;
	case 6: //Abyss
		set_character_color_shading(2, 1.5);
		break;
	case 7: //Early Access
		outline_color = [35,67,49];
		break;
	case 8: //Super Castlevania IV
		set_character_color_shading(0, 3);
		set_character_color_shading(6, 2);
		break;
	case 9: //Rondo of Blood
		set_character_color_shading(0, 3);
		set_character_color_shading(6, 2);
		break;
	case 10: //Dracula X
		set_character_color_shading(0, 4);
		set_character_color_shading(5, 3);
		set_character_color_shading(6, 3);
		break;
	case 11: //Alucard
		break;
	case 12: //Soma
		set_character_color_shading(0, 1.3);
		break;
	case 13:	
		//Malus
		set_character_color_shading(0, 2);
		break;
	case 14:	
		//Kid Dracula
		set_character_color_shading(2, 2);
		break;
	case 15:	
		//Portrait of Ruin
		break;
	case 16:	
		//Haunted Castle Revisited
		break;
	case 20:	
		//Carmilla
		break;
	case 21:	
		//Olrox
		set_character_color_shading(5, .6);
		break;
	case 22:	
		//Erzsebet
		set_character_color_shading(2, .35);
		set_character_color_shading(5, .6);
		break;
	case 23:	
		//Drolta
		set_character_color_shading(5, -1);
		break;
	case 24:	
		//Stella Lecarde
		set_character_color_shading(2, .5);
		set_character_color_shading(5, .5);
		break;
	case 25:	
		//Walter Bernhard
		set_character_color_shading(2, 1.35);
		break;
	case 26:	
		//DIO
		break;
	case 27:	
		//Warakiya
		break;
	case 28:	
		//Demitri Maximoff
		set_character_color_shading(2, 2);
		break;
	case 29:	
		//Grimm
		set_character_color_shading(6, 3);
		break;
	case 30:	
		//Yuli
		set_character_color_shading(2, 2);
		set_character_color_shading(3, 2);
		set_character_color_shading(4, 2);
		break;
	case 31:	
		//Zephyr
		set_character_color_shading(0, 2);
		set_character_color_shading(1, 2);
		break;
}

/*
//shading
switch alt {
	case 1:	
		//Castlevania : Rondo of Blood
		set_character_color_shading(0, 3);
		set_character_color_shading(6, 2);
		break;
	case 2:	
		//Castlevania Chronicles
		set_character_color_shading(2, 3);
		set_character_color_shading(5, .5);
		break;
	case 3: 
		//Super Castlevania IV
		set_character_color_shading(0, 3);
		set_character_color_shading(6, 2);
		break;
	case 4:	
		//Castlevania : Circle of the Moon
		set_character_color_shading(0, .5);
		break;
	case 5:	
		//Haunted Castle Revisited
		set_character_color_shading(5, 2);
		set_character_color_shading(5, 2);
		break;
	case 8:	
		//Castlevania : Lords of Shadow
		set_character_color_shading(5, .5);
		break;
	case 9:	
		//Alucard
		break;
	case 10:	
		//Soma Cruz
		set_character_color_shading(0, 1.3);
		break;
	case 11:	
		//Malus
		set_character_color_shading(0, 2);
		break;
	case 12:	
		//Mathias Cronqvuist
		break;
	case 29:	
		//Castlevania NES
		set_character_color_shading(6, 3);
		break;
	case 30: 
		//Castlevania II : Simon's Quest
		set_character_color_shading(0, 1.5);
		set_character_color_shading(2, 3);
		set_character_color_shading(6, 3);
		break;
	case 31: 
		//Castlevania III : Dracula's Curse
		set_character_color_shading(6, 3);
		break;
}
*/