if get_gameplay_time() > 220 && 900 > get_gameplay_time()  {
switch(obj_stage_main.rngCheck) {
case 1: draw_debug_text(room_width / 2 - 620, 10,  "It's Up for Debate (DR Mix)" );
break;
case 2: draw_debug_text(room_width / 2 - 620, 10,  "V3 Discussion - HEAT UP -" );
break;
case 3: draw_debug_text(room_width / 2 - 620, 10,  "DANGANRONPA [2nd GIG]" );
break;
case 4: draw_debug_text(room_width / 2 - 620, 10,  "V3 Discussion - PANIC -" );
break;
case 5: draw_debug_text(room_width / 2 - 620, 10,  "V3 Discussion - SCRUM -" );
break;
case 6: draw_debug_text(room_width / 2 - 620, 10,  "It's a Monokuma World" );
break;
case 7: draw_debug_text(room_width / 2 - 620, 10,  "DIVE DRIVE" );
break;
case 8: draw_debug_text(room_width / 2 - 620, 10,  "Closing Argument" );
break;
}
}



//COMMENT THESE OUT IF YOU DON'T WANT THEM
//draw_debug_text(room_width / 2 - 220 - 80 , 80 - 30,  string(obj_stage_main.rngCheck));

//draw_debug_text(room_width / 2 - 220 - 80 , 80 - 50,  string(obj_stage_main.musicSelect));



//The List

/* if get_gameplay_time() > 220 && 900 > get_gameplay_time()  {
switch(obj_stage_main.rngCheck) {
case 1: draw_debug_text(room_width / 2 - 220 - 80 , 80,  "It's Up for Debate" );
break;
case 2: draw_debug_text(room_width / 2 - 220 - 80 , 80,  "Discussion - HEAT UP -" );
break;
case 3: draw_debug_text(room_width / 2 - 220 - 80 , 80,  "Discussion - SCRUM -" );
break;
case 4: draw_debug_text(room_width / 2 - 220 - 80 , 80,  "Discussion - PANIC -" );
break;
case 5: draw_debug_text(room_width / 2 - 220 - 80 , 80,  "It's a Monokuma World" );
break;
case 6: draw_debug_text(room_width / 2 - 220 - 80 , 80,  "DIVE DRIVE" );
break;
case 7: draw_debug_text(room_width / 2 - 220 - 80 , 80,  "DANGANRONPA [2nd GIG]" );
break;
case 8: draw_debug_text(room_width / 2 - 220 - 80 , 80,  "Closing Argument/Climax Reasoning" );
break;
}
}*/