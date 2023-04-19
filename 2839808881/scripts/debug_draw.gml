//draw_debug_text(x,y + 20,"timer = " +string(	inhale_sound_timer));

//Ability Select Stuff
if(attack == AT_TAUNT && window == 5){
	draw_debug_text(x-64,y-120,"(Training Mode Only)");
	draw_debug_text(x-42,y-95,"Ability Select");

	var yOffsetText = 68;
	
	switch(tauntAbilitySelectMenuCurr){
		case 0: 		
			draw_debug_text(x-30,y-yOffsetText,"No Ability");
		break;
		case 1: 		
			draw_debug_text(x-14,y-yOffsetText,"Fire");
		break;
		case 2: 		
			draw_debug_text(x-16,y-yOffsetText,"Beam");
		break;
		case 3: 		
			draw_debug_text(x-22,y-yOffsetText,"Ranger");
		break;
		case 4: 		
			draw_debug_text(x-24,y-yOffsetText,"Fighter");
		break;
		case 5: 		
			draw_debug_text(x-22,y-yOffsetText,"Sword");
		break;
		case 6: 		
			draw_debug_text(x-22,y-yOffsetText,"Water");
		break;
		case 7: 		
			draw_debug_text(x-14,y-yOffsetText,"Leaf");
		break;
		case 8: 		
			draw_debug_text(x-12,y-yOffsetText,"Ice");
		break;
		case 9: 		
			draw_debug_text(x-26,y-yOffsetText,"Tornado");
		break;
		case 10: 		
			draw_debug_text(x-16,y-yOffsetText,"Bomb");
		break;
		case 11: 		
			draw_debug_text(x-16,y-yOffsetText,"Mike");
		break;
		case 12: 		
			draw_debug_text(x-18,y-yOffsetText,"Abyss");
		break;
		case 13: 		
			draw_debug_text(x-12,y-yOffsetText,"ESP");
		break;
		case 14: 		
			draw_debug_text(x-14,y-yOffsetText,"Drill");
		break;
		case 15: 		
			draw_debug_text(x-20,y-yOffsetText,"Spark");
		break;
	}
	
	draw_debug_text(x-48,y+16,"Attack: Confirm");
	draw_debug_text(x-60,y+32,"Special/Parry: Exit");
}