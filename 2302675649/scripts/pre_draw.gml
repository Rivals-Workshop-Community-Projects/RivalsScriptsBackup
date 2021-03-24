if ("rollArray" in self)
{
	var tempColour = GetColourPlayer(0);
	var tempColour2 = GetColourPlayer(5);
	var outlineColour = make_colour_rgb(outline_color[0],outline_color[1],outline_color[2]);
	// roll vfx
	for (var i = 0; i < 6; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0)
	{
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(sprite_get("roll_forward"), i, rollArray[i].rollX, rollArray[i].rollY, rollArray[i].rollDir, 1, 0, tempColour, rollArray[i].rollAlpha/30);
		gpu_set_fog(0, c_white, 0, 0);
	}

	// jump vfx
	for (var i = 0; i < 10; ++i) if (jsArray[i] != -1 && jsArray[i].jsAlpha > 0 && draw_indicator)
	{
		shader_start();
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(jsArray[i].jsSprite, jsArray[i].jsImage, jsArray[i].jsX, jsArray[i].jsY, jsArray[i].jsDir, 1, 0, tempColour, jsArray[i].jsAlpha/20);
		gpu_set_blendmode(bm_normal);
		shader_end();
	}

	// airdodge effect
	if (state == PS_AIR_DODGE)
	{
		shader_start();
		if (state_timer < 15)
			draw_sprite_ext(sprite_index, image_index, airdodgeStart.x, airdodgeStart.y, spr_dir, 1, 0, c_white, (15-state_timer)/15);
		else
			draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, (state_timer-15)/10);
		shader_end();
	}

	// uspec vfx
	for (var i = 0; i < 10; ++i) if (uspecArray[i] != -1 && uspecArray[i].uspecAlpha > 0)
	{
		gpu_set_fog(1, get_player_color(player)==7?c_aqua:tempColour, 0, 1);
		draw_sprite_ext(get_attack_value(AT_USPECIAL, AG_SPRITE), get_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START), uspecArray[i].uspecX, uspecArray[i].uspecY, uspecArray[i].uspecDir, 1, 0, get_player_color(player)==7?c_aqua:tempColour, uspecArray[i].uspecAlpha/15);
		gpu_set_fog(0, c_white, 0, 0);
	}

	// dspec vfx
	if (dspecImage != -1 && dspecImage.alpha > 0)
	{
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(dspecImage.sprite, dspecImage.image, dspecImage.x, dspecImage.y, dspecImage.spr_dir, 1, 0, tempColour, dspecImage.alpha/10);
		gpu_set_fog(0, c_white, 0, 0);

		draw_set_alpha(dspecImage.alpha/25);
		gpu_set_blendmode(bm_add);
		draw_circle_colour(dspecImage.x, dspecImage.y - floor(char_height/2), floor(20-dspecImage.alpha)*4, c_black, tempColour2, false);
		with (asset_get("obj_article1")) if (player_id == other.id && !isDespawn) 
			draw_circle_colour(x, y, floor(20-other.dspecImage.alpha)*4, c_black, tempColour2, false);
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
	}

	if (object_index!=oTestPlayer&&(get_char_info(player,INFO_STR_NAME)!="L"+/*mao you thought*/"on"+/*ion sk*/"in"||url!="2"+/*420*/"30"+/*69*/"267"+/*621*/"5649"||get_char_info(player,INFO_STR_DESCRIPTION)!="@"/*hikaru_the_kitsune*/+"Fak"/*badword*/+"ieAc"/*why are you still here*/+"idToe"))get_string("D"+"o no"+"t plag"+"iar"+"ise.","");

	// attack
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case AT_NSPECIAL:
				if (window == 2)
				{
					gpu_set_blendmode(bm_add);
					shader_start();
					with (asset_get("obj_article1")) if (player_id == other.id && !isDespawn && replacedCount == 1)
					{
						draw_sprite_ext(sprite_index, image_index, x+random_func(0,3,1)*2, y+random_func(2,3,1)*2, 1, 1, 0, c_fuchsia, 1);
						draw_sprite_ext(sprite_index, image_index, x-random_func(1,3,1)*2, y+random_func(3,3,1)*2, 1, 1, 0, c_aqua, 1);
					}
					draw_sprite_ext(sprite_index, image_index, x+nspecCharge/16+random_func(4,3,1), y+random_func(6,3,1)-1, spr_dir, 1, 0, c_fuchsia, 1);
					draw_sprite_ext(sprite_index, image_index, x-nspecCharge/16-random_func(5,3,1), y+random_func(7,3,1)-1, spr_dir, 1, 0, c_aqua, 1);
					shader_end();
					gpu_set_blendmode(bm_normal);
					if (nspecCharge == nspecMax)
					{
						draw_set_alpha(min(state_timer-nspecMax, 25)/100);
						draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
						draw_set_alpha(1);
					}
				}
				break;

			case AT_USPECIAL:
				if (window == 1)
				{
					var uspecCol = get_player_color(player)==7?c_aqua:tempColour;
					gpu_set_blendmode(bm_add);
					var timerGrow = min(window_timer/uspecStartup, 1);
					shader_start();
					draw_sprite_ext(sprite_get("uspecial_border"), 0, x, floor(y-char_height/2), 2*timerGrow, 2*timerGrow, 0, uspecCol, timerGrow/2);
					shader_end();
					
					var joyDir = {x:x+lengthdir_x(200*timerGrow, spr_dir==1?70:110), y:floor(y-char_height/2)+lengthdir_y(200*timerGrow, spr_dir==1?70:110)};
				    if (!joy_pad_idle)
				    {
				        joyDir.x = x+lengthdir_x(200*timerGrow, joy_dir);
				        joyDir.y = floor(y-char_height/2)+lengthdir_y(200*timerGrow, joy_dir);
				    }
					var offsetWidth = 2;
					var offsetX = lengthdir_x(offsetWidth, (joy_pad_idle?spr_dir==1?70:110:joy_dir)+90);
					var offsetY = lengthdir_y(offsetWidth, (joy_pad_idle?spr_dir==1?70:110:joy_dir)+90);
					draw_set_alpha(timerGrow/2);
					draw_rectangle(x+offsetX, floor(y-char_height/2)+offsetY, x-offsetX, floor(y-char_height/2)-offsetY, joyDir.x+offsetX, joyDir.y+offsetY, joyDir.x-offsetX, joyDir.y-offsetY, uspecCol, uspecCol)
					draw_set_alpha(1);
					draw_circle_colour(joyDir.x, joyDir.y, 8*timerGrow, uspecCol, uspecCol, false);
					gpu_set_blendmode(bm_normal);
				}
				break;

			case AT_FSPECIAL:
				var ropeWidth = 1;
				switch (window)
				{
					case 3:
						if (window_timer < 4) ropeWidth = 2;
						if (fspecX == 0) break;
					case 4:
						ropeWidth += 2;
						draw_rectangle_color(x+fspecPos.x*spr_dir,y-fspecPos.y-ropeWidth,x+(fspecX+fspecPos.x)*spr_dir,y-fspecPos.y+ropeWidth-1,outlineColour,outlineColour,outlineColour,outlineColour,false);
						if (fspecPortalHooked) draw_rectangle_color(portalRef.otherPortal.x,y-fspecPos.y-portalRef.y+portalRef.otherPortal.y-ropeWidth,portalRef.otherPortal.x+fspecX2*spr_dir,y-fspecPos.y-portalRef.y+portalRef.otherPortal.y+ropeWidth-1,outlineColour,outlineColour,outlineColour,outlineColour,false);
						ropeWidth -= 2;
						draw_rectangle_color(x+fspecPos.x*spr_dir,y-fspecPos.y-ropeWidth,x+(fspecX+fspecPos.x)*spr_dir,y-fspecPos.y+ropeWidth-1,tempColour,tempColour,tempColour,tempColour,false);
						if (fspecPortalHooked) draw_rectangle_color(portalRef.otherPortal.x,y-fspecPos.y-portalRef.y+portalRef.otherPortal.y-ropeWidth,portalRef.otherPortal.x+fspecX2*spr_dir,y-fspecPos.y-portalRef.y+portalRef.otherPortal.y+ropeWidth-1,tempColour,tempColour,tempColour,tempColour,false);
						break;
					case 6:
						ropeWidth += 2;
						draw_rectangle_color(x,y-fspecPos.y-ropeWidth,fspecPosX.b+fspecPos.x*spr_dir,y-fspecPos.y+ropeWidth-1,outlineColour,outlineColour,outlineColour,outlineColour,false);
						if (fspecPortalHooked) draw_rectangle_color(portalRef.otherPortal.x,y-fspecPos.y-portalRef.y+portalRef.otherPortal.y-ropeWidth,portalRef.otherPortal.x+fspecX2*spr_dir,y-fspecPos.y-portalRef.y+portalRef.otherPortal.y+ropeWidth-1,outlineColour,outlineColour,outlineColour,outlineColour,false);
						ropeWidth -= 2;
						draw_rectangle_color(x,y-fspecPos.y-ropeWidth,fspecPosX.b+fspecPos.x*spr_dir,y-fspecPos.y+ropeWidth-1,tempColour,tempColour,tempColour,tempColour,false);
						if (fspecPortalHooked) draw_rectangle_color(portalRef.otherPortal.x,y-fspecPos.y-portalRef.y+portalRef.otherPortal.y-ropeWidth,portalRef.otherPortal.x+fspecX2*spr_dir,y-fspecPos.y-portalRef.y+portalRef.otherPortal.y+ropeWidth-1,tempColour,tempColour,tempColour,tempColour,false);
						break;
				}
				break;

			case 49:
				switch (window)
				{
					case 1:
						draw_circle_colour(x, y-floor(char_height/2), floor(ease_backOut(0, 100, window_timer, get_window_value(49, 1, AG_WINDOW_LENGTH), 3)), c_black, c_black, 0);
						break;
					case 2:
						draw_circle_colour(x, y-floor(char_height/2), 100, c_black, c_black, 0);
						break;
					case 3:
						if (window_timer < 20)
							draw_circle_colour(x, y-floor(char_height/2), 100+floor(room_width*window_timer/20), c_black, c_black, 0);
						else if (window_timer < 30)
							draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
						break;
				}
				break;
		}
	}

	// slice vfx
	if (vfxSlice.sliceTimer > 0)
	{
		var offsetTime = 2;
		var lengthdirX = lengthdir_x(400, vfxSlice.sliceAng);
		var lengthdirY = lengthdir_y(400, vfxSlice.sliceAng);
		var offsetWidth = 4 * sin((pi*vfxSlice.sliceTimer)/20);
		var offsetX = lengthdir_x(offsetWidth,vfxSlice.sliceAng+90);
		var offsetY = lengthdir_y(offsetWidth,vfxSlice.sliceAng+90);
		var point1 = {
			x:ease_cubeInOut(floor(vfxSlice.sliceX+lengthdirX), floor(vfxSlice.sliceX-lengthdirX), vfxSlice.sliceTimer+offsetTime, 20),
			y:ease_cubeInOut(floor(vfxSlice.sliceY+lengthdirY), floor(vfxSlice.sliceY-lengthdirY), vfxSlice.sliceTimer+offsetTime, 20)
		};
		var point2 = {
			x:ease_cubeInOut(floor(vfxSlice.sliceX+lengthdirX), floor(vfxSlice.sliceX-lengthdirX), vfxSlice.sliceTimer-offsetTime, 20),
			y:ease_cubeInOut(floor(vfxSlice.sliceY+lengthdirY), floor(vfxSlice.sliceY-lengthdirY), vfxSlice.sliceTimer-offsetTime, 20)
		};
		gpu_set_blendmode(bm_add);
		draw_rectangle(point1.x+offsetX/4, point1.y+offsetY/4, point1.x-offsetX/4, point1.y-offsetY/4, point2.x+offsetX, point2.y+offsetY, point2.x-offsetX, point2.y-offsetY, tempColour, c_white);
		gpu_set_blendmode(bm_normal);
	}

	// trans flag
	if ("transcounter" in self && transcounter != 0 && draw_indicator)
	{
		var mayablue = make_colour_rgb(85, 205, 252);
		var pinkkk = make_colour_rgb(247, 168, 223);
		var drawyyy = y - 30;
		draw_set_alpha(0.5);
	    draw_rectangle_color(x-transcounter,drawyyy-30,x+transcounter,drawyyy-19,mayablue,mayablue,mayablue,mayablue,false);
	    draw_rectangle_color(x-transcounter,drawyyy-18,x+transcounter,drawyyy-7,pinkkk,pinkkk,pinkkk,pinkkk,false);
	    draw_rectangle_color(x-transcounter,drawyyy-6,x+transcounter,drawyyy+5,c_white,c_white,c_white,c_white,false);
	    draw_rectangle_color(x-transcounter,drawyyy+6,x+transcounter,drawyyy+17,pinkkk,pinkkk,pinkkk,pinkkk,false);
	    draw_rectangle_color(x-transcounter,drawyyy+18,x+transcounter,drawyyy+29,mayablue,mayablue,mayablue,mayablue,false);
		draw_set_alpha(1);
	}

	// Trans
	if (get_player_color(player) == 1)
	{
		FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
		FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
		FlagPart(c_white, 1/5, 2/5);
		gpu_set_fog(0, c_white, 0, 0);
	}
}

#define draw_rectangle(x1, y1, x2, y2, x3, y3, x4, y4, colour1, colour2)
{
	draw_triangle_colour(x1, y1, x2, y2, x3, y3, colour1, colour1, colour2, false);
	draw_triangle_colour(x2, y2, x3, y3, x4, y4, colour1, colour2, colour2, false);
}

#define GetColourPlayer(_index)
{
	return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
	
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}