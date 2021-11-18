//User Event 4 - runs compatibility code
//Why is it Event 4? Because it was in Neo Mario, and I feel nostalgic when I think about
//the unbelievable mess that was Neo's User Event 4
if(event4_phase == "init") {
	//Identify boss stages
	switch(get_stage_data(SD_ID)) {
		case "t\383980\2132275518": //Dracula stage
		case "t\383980\2100440312": //Eye of Cthulhu stage
		case "t\383980\2112551050": //Sans boss battle (are you out of your mind?)
		case "t\383980\2181953463": //Daroach stage
		case "t\383980\2251699784": //Reznor stage
		case "t\383980\2037688418": //Bowser's castle stage
		case "t\383980\2221161672": //Shadow City stage
		case "t\383980\2397174385": //Fog Island stage
		
			stage_boss = true;
		break;
	}
	
	//Agent 4 compat
	if("agent4_data" not in self) agent4_data = undefined;
	
	//Final Smash
	// fs_char_chosen_final_smash = "custom";
	// fs_char_chosen_trigger = "custom";
	// fs_char_is_attack_grid = false; fs_using_final_smash = false;
	// fs_force_fs = true;
	// fs_charge_mult = 6;
}
else if(event4_phase == "update") {
	//Identify boss characters
	with(oPlayer) if(id != other && "url" in self) {
		switch(url) {
			case "1976183668": //Zetta
			case "2219755812": //Mayu
			case "1928599994": //Godkarmachine o Inary
			case "2099418807": //Colosso
			case "2208624452": //Master Hand
			case "1869814191": //Sans (is he really a boss? does it matter?)
			case "1968648848": //Abyss Hime
			case "2037682193": //King Bowser
			case "2272591153": //ONI-MIKO-ZERO (if you somehow manage to beat her, you get the castle victory theme. nice)
				other.enemy_boss = true;
			break;
		}
	}
}
