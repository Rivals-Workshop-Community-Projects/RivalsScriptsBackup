number = obj_stage_main.number
yDisplay = 0

switch(number) {
case 7: sprite_index = sprite_get("wall"); yDisplay = 312;break;  
case 6: sprite_index = sprite_get("seatA"); yDisplay = 30;break;  
case 5: sprite_index = sprite_get("seatB"); yDisplay = 48 ;break;   
case 4: sprite_index = sprite_get("seatC"); yDisplay = 48 ;break;   
case 3: sprite_index = sprite_get("seatD"); yDisplay = 72 ;break;   
case 2: sprite_index = sprite_get("seatE"); yDisplay = 140 ;break;   
case 1: sprite_index = sprite_get("seatF"); yDisplay = 174 ;break;   
case 0: sprite_index = sprite_get("seatG"); yDisplay = 108 ;break;   
}

depth = 34


xScale = 3 	// How Far the pillars will move from eachother
//xPos = 0.765	    // This should stay at 1 or be changed only mildly because this effects the base position judging by the camera
xPos = 0.4	 
yScale = .03    // How Far the pillars will move from eachother
yPos = -.25 	// This should stay at 1 or be changed only mildly because this effects the base position judging by the camera