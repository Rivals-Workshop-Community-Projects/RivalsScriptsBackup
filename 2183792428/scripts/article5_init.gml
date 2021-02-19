number = 7
yDisplay = -224
sprite_index = obj_stage_main.guiltySprite



switch(obj_stage_main.guiltySprite) {
case 0:
sprite_index = sprite_get("guiltyZet")
break;
case 1:
sprite_index = sprite_get("guiltyOrcane")
break;
case 2:
sprite_index = sprite_get("guiltyBird")
break;
case 3:
sprite_index = sprite_get("guiltyKragg")
break;
case 4:
sprite_index = sprite_get("guiltyFors")
break;
case 5:
sprite_index = sprite_get("guiltyMay")
break;
case 6:
sprite_index = sprite_get("guiltyAbsa")
break;
case 7:
sprite_index = sprite_get("guiltyEtalus")
break;
case 8:
sprite_index = sprite_get("guiltyOri")
break;
case 9:
sprite_index = sprite_get("guiltyRanno")
break;
case 10:
sprite_index = sprite_get("guiltyClairen")
break;
case 11:
sprite_index = sprite_get("guiltySyl")
break;
case 12:
sprite_index = sprite_get("guiltySnake")
break;
case 13:
sprite_index = sprite_get("guiltyShovel")
break;
case -1:
sprite_index = sprite_get("guiltyDefault")
break;
case -2:
sprite_index = sprite_get("guiltySandbert")
break;
case -3:
sprite_index = sprite_get("guiltyGuadua")
break;
}


obj_stage_main.guiltySprite = -4






depth = 35

xScale = 3 	// How Far the pillars will move from eachother
//xPos = 0.765	    // This should stay at 1 or be changed only mildly because this effects the base position judging by the camera
xPos = 0.4	 
yScale = .03    // How Far the pillars will move from eachother
yPos = -.25 	// This should stay at 1 or be changed only mildly because this effects the base position judging by the camera

image_index = 0

