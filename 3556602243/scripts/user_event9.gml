//Lang Swap
switch(ror_language) {
	default:
	case "En":
	case "English":
		items_commons = [];
		items_rares = [];
		items_epics = [];
		items_legends = [];
		
		user_event(1) //Commons
		user_event(2) //Rares
		user_event(3) //Epics
		user_event(4) //Legendary
		
		//Tests
		//card_common_luck.translated_name = "Suerte Loca";
		//card_common_luck.translated_name = "你好";
		//card_common_luck.desc = "你好 你好 你好 你 好 好 你";
	break;
}