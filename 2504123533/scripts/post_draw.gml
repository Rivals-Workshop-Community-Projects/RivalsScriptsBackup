//display potion change ui
shader_start();
if(attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{	
	if window == 2
	{
		//Draw the Base
		var xOff = 0;// <-- these denote the center of the wheel. this is important to align properly with potions later
		var yOff = -48;
		draw_sprite_ext(sprite_get("uiWheel"),0,x+xOff,y+yOff,2,2,0,c_white,1);
		
		//Draw Potions
		for(var i=0; i<5; i++)
		{
			var dir = 180 + (i*180/4);
			var len = 70;
			var px = lengthdir_x(len,dir);
			var py = lengthdir_y(len,dir);
			var pXOff = 0;
			var pYOff = 16;
			var oscillation = 2;//higher = more wavy
			var yOsc = 0
			var pSpr = potNames[i];
			var pType = "tiny";//"potion";
			
			//special effects if potion is the one selected
			if (potionType == i+1)
			{
				pType = "potion";
				pYOff += pYOff/2;
				yOsc = round(sin(get_gameplay_time()/5+i)*oscillation);
			}
			
			//draw potion
			draw_sprite_ext(sprite_get(pType+pSpr),0,x+xOff+px+pXOff,y+yOff+py+pYOff+yOsc,2,2,0,c_white,1);
			
			//draw arrow
			if potionType == i+1
			{
				var len = 70+40;
				var px = lengthdir_x(len,dir);
				var py = lengthdir_y(len,dir);
				var pYOff = 8;
				draw_sprite_ext(sprite_get("uiArrow"),i,x+xOff+px+pXOff,y+yOff+py+pYOff,2,2,0,c_white,1);
			}
		}
	}
	
	else if window == 3
	{
		draw_sprite_ext(sprite_get("potion" + potNames[potionType-1]),0,x,y-64-potionDrawYOffset,2,2,0,c_white,1);
	}
}
shader_end();