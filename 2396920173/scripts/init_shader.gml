//init-shader

var alt_cur = get_player_color(player);
/*
//triple colour
var col1 = undefined
var col2 = undefined
var col3 = undefined

switch alt_cur {
	case 9:
	col1 = [
		[253,183,1],
		[207,104,25],
		[253,218,129],
		[255,255,255]
	]
	col2 = [
		[1,199,217],
		[1,109,186],
		[180,240,147],
		[255,255,255]
	]
	col3 = [
		[216,93,1],
		[140,35,0],
		[255,174,69],
		[255,231,199]
	]
	break;
}

if col1 != undefined {
	if variable_instance_exists(self, "timer") && !(state == PS_PARRY && window == 1) {
		var slot = undefined
		switch piece {
			case "P":
			case "Q":
			slot = col1;
			break;
			
			case "N":
			case "B":
			slot = col2;
			break;
			
			case "R":
			case "K":
			slot = col3;
			break;
		}
	    set_character_color_slot(0, slot[0][0], slot[0][1], slot[0][2], 1);
	    set_character_color_slot(1, slot[1][0], slot[1][1], slot[1][2], 1);
	    set_character_color_slot(2, slot[2][0], slot[2][1], slot[2][2], 1);
	    set_character_color_slot(3, slot[3][0], slot[3][1], slot[3][2], 1);
	    
	    with obj_article1 if player_id == other.id {
	    	var articleslot = undefined
	    	switch piece {
				case "P":
				case "Q":
				articleslot = col1;
				break;
				
				case "N":
				case "B":
				articleslot = col2;
				break;
				
				case "R":
				case "K":
				articleslot = col3;
				break;
			}
			with other {
				set_article_color_slot(0, articleslot[0][0], articleslot[0][1], articleslot[0][2], 1);
			    set_article_color_slot(1, articleslot[1][0], articleslot[1][1], articleslot[1][2], 1);
			    set_article_color_slot(2, articleslot[2][0], articleslot[2][1], articleslot[2][2], 1);
			    set_article_color_slot(3, articleslot[3][0], articleslot[3][1], articleslot[3][2], 1);
			}
		}
	}
}
*/