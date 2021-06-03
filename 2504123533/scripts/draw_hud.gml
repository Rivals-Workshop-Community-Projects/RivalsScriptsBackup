//A lot of values are hardcoded
//don't touch this unless u know what ur doing

//set up values
//use anchor to get base point
if "canDraw" in self && canDraw && !custom_clone
{

	anchorX = temp_x-16;
	anchorY = temp_y+6;

	shader_start();

	//Draw bar
	var sprW = sprite_get_width(sprite_get("hudBar"));
	var sprH = sprite_get_height(sprite_get("hudBar"));
	var barTarget = (1-(barPoints/(barNumber*barAmount)))*sprW;
	if barWidth == -99
		barWidth = barTarget;
	else
		barWidth = floor(lerp(barWidth,barTarget,0.2));
	var barAnchorX = anchorX+16;
	var barAnchorY = anchorY-26;
	draw_sprite_part_ext(sprite_get("hudBar"), 0, barWidth, 0, sprW, sprH, barAnchorX+barWidth*2, barAnchorY, 2, 2, c_white, 1);

	//Draw end bars
	draw_sprite_ext(sprite_get("hudEnd"),get_gameplay_time()/10,barAnchorX+(barWidth*2)-2,barAnchorY,2,2,0,c_white,1);
	if(barPoints >= barAmount*barNumber)
	{
		draw_sprite_ext(sprite_get("hudEnd2"),get_gameplay_time()/10,anchorX+16,anchorY-28,2,2,0,c_white,1);
	}

	shader_end();

	//Draw Base
	draw_sprite_ext(sprite_get("hudBase"),0,anchorX,anchorY, 2, 2, 0, get_player_hud_color( player ), 1);

	shader_start();

	//Draw Bubbles
	var bubbleAnchorX = anchorX + 184;
	var bubbleAnchorY = anchorY - 30;
	var bubbleDist = 42;
	for(var i=0; i<clamp(floor(barPoints/barAmount),0,barNumber-1); i++)
	{
		var oscillation = 1;//higher = more wavy
		var yOffset = round(sin(get_gameplay_time()/10+i)*oscillation);
		draw_sprite_ext(sprite_get("hudBubble"),0,bubbleAnchorX-(bubbleDist*i),bubbleAnchorY + yOffset,2,2,0,c_white,1);
	}
	
	//Draw equipped potion
	draw_sprite_ext(sprite_get("tiny"+potNames[potionType-1]),0,anchorX+220,anchorY-32,2,2,0,c_white,1);

	shader_end();

}