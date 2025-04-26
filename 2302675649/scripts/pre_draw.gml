if ("rollArray" in self)
{
	var tempColour = GetColourPlayer(0);
	if (get_player_color(player)==26)
	{
		var color_rgb1=make_color_rgb(255, 255, 128);
		tempColour = make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1));
	}
	var tempColour2 = GetColourPlayer(5);
	var tempColour3 = GetColourPlayer(3);
	var outlineColour = make_colour_rgb(outline_color[0],outline_color[1],outline_color[2]);
	// roll vfx
	for (var i = 0; i < 6; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0)
	{
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(sprite_get(isFurry?"rollFur":"roll_forward"), i, rollArray[i].rollX, rollArray[i].rollY, rollArray[i].rollDir*2, 2, 0, tempColour, rollArray[i].rollAlpha/30);
		gpu_set_fog(0, c_white, 0, 0);
	}

	// jump vfx
	for (var i = 0; i < 10; ++i) if (jsArray[i] != -1 && jsArray[i].jsAlpha > 0 && draw_indicator)
	{
		shader_start();
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(jsArray[i].jsSprite, jsArray[i].jsImage, jsArray[i].jsX, jsArray[i].jsY, jsArray[i].jsDir*2, 2, 0, tempColour, jsArray[i].jsAlpha/20);
		gpu_set_blendmode(bm_normal);
		shader_end();
	}

	// airdodge effect
	if (state == PS_AIR_DODGE)
	{
		shader_start();
		if (state_timer < 15)
			draw_sprite_ext(sprite_index, image_index, airdodgeStart.x, airdodgeStart.y, spr_dir*2, 2, 0, c_white, (15-state_timer)/15);
		else
			draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*2, 2, 0, c_white, (state_timer-15)/10);
		shader_end();
	}

	// aura meter
	if (canAura && (state == PS_SPAWN || (state == PS_ATTACK_GROUND && (attack == AT_TAUNT || attack == AT_TAUNT_2) && !aura)) && auraMeter != -1 && state_timer < 68 && state_timer > 1)
	{
		draw_rectangle_color(x - 104, y - 124, x + 104, y - 96, c_black, c_black, c_black, c_black, false);
		draw_rectangle_color(x - 100, y - 120, x - 100 + 200*(auraMeter/67), y - 100, c_white, c_white, c_white, c_white, false);
		draw_debug_text(x - 60, y - 114, "Void Dragon Mode");
	}

	// uspec vfx
	for (var i = 0; i < 10; ++i) if (uspecArray[i] != -1 && uspecArray[i].uspecAlpha > 0)
	{
		gpu_set_fog(1, get_player_color(player)==7?c_aqua:tempColour, 0, 1);
		draw_sprite_ext(isFurry?sprite_get("uspecialFur"):get_attack_value(AT_USPECIAL, AG_SPRITE), get_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START), uspecArray[i].uspecX, uspecArray[i].uspecY, uspecArray[i].uspecDir*2, 2, 0, get_player_color(player)==7?c_aqua:tempColour, uspecArray[i].uspecAlpha/15);
		gpu_set_fog(0, c_white, 0, 0);
	}

	// dspec vfx
	if (dspecImage != -1 && dspecImage.alpha > 0)
	{
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(dspecImage.sprite, dspecImage.image, dspecImage.x, dspecImage.y, dspecImage.spr_dir*2, 2, 0, tempColour, dspecImage.alpha/10);
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
						draw_sprite_ext(sprite_index, image_index, x+random_func(0,3,1)*2, y+random_func(2,3,1)*2, 2, 2, 0, c_fuchsia, 1);
						draw_sprite_ext(sprite_index, image_index, x-random_func(1,3,1)*2, y+random_func(3,3,1)*2, 2, 2, 0, c_aqua, 1);
					}
					draw_sprite_ext(sprite_index, image_index, x+nspecCharge/16+random_func(4,3,1), y+random_func(6,3,1)-1, spr_dir*2, 2, 0, c_fuchsia, 1);
					draw_sprite_ext(sprite_index, image_index, x-nspecCharge/16-random_func(5,3,1), y+random_func(7,3,1)-1, spr_dir*2, 2, 0, c_aqua, 1);
					shader_end();
					gpu_set_blendmode(bm_normal);
					if (nspecCharge == nspecMax)
					{
						draw_set_alpha(min(state_timer-(aura?0:nspecMax), 25)/100);
						draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
						draw_set_alpha(1);
					}
				}
				break;

			case AT_USPECIAL:
				if (window <= 2)
				{
					var uspecCol = window==1?(get_player_color(player)==7?c_aqua:tempColour):tempColour3;
					gpu_set_blendmode(bm_add);
					var timerGrow = window==1?ease_backOut(0, 1, min(window_timer,uspecStartup), uspecStartup, 2):1;
					shader_start();
					draw_sprite_ext(sprite_get("uspecial_border"), 0, x, floor(y-char_height/2), 2*timerGrow, 2*timerGrow, 0, uspecCol, timerGrow/2);
					shader_end();
					var joyDir = {x:x+lengthdir_x(200*timerGrow, spr_dir==1?70:110), y:floor(y-char_height/2)+lengthdir_y(200*timerGrow, spr_dir==1?70:110)};
					if (!uspecSpeed.joy_pad_idle)
					{
						joyDir.x = x+lengthdir_x(200*timerGrow, uspecSpeed.joy_dir);
						joyDir.y = floor(y-char_height/2)+lengthdir_y(200*timerGrow, uspecSpeed.joy_dir);
					}
					var offsetWidth = 2;
					var offsetX = lengthdir_x(offsetWidth, (uspecSpeed.joy_pad_idle?spr_dir==1?70:110:uspecSpeed.joy_dir)+90);
					var offsetY = lengthdir_y(offsetWidth, (uspecSpeed.joy_pad_idle?spr_dir==1?70:110:uspecSpeed.joy_dir)+90);
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

	switch (get_player_color(player))
	{
		// Trans
		case 1:
			FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
			FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
			FlagPart(c_white, 1/5, 2/5);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// BLM
		case 17:
			FlagPart(c_black, 1/3, 0);
			FlagPart(c_white, 1/3, 1/3);
			FlagPart(make_colour_rgb(251, 238, 31), 1/3, 2/3); // yellow
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// Enby
		case 29:
			FlagPart(make_colour_rgb(255, 244, 51), 1/4, 0);
			FlagPart(c_white, 1/4, 1/4);
			FlagPart(make_colour_rgb(155, 89, 208), 1/4, 2/4);
			FlagPart(make_colour_rgb(43, 43, 43), 1/4, 3/4);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// Ace
		case 30:
			FlagPart(c_black, 1/4, 0);
			FlagPart(make_colour_rgb(164, 164, 164), 1/4, 1/4);
			FlagPart(c_white, 1/4, 2/4);
			FlagPart(make_colour_rgb(129, 0, 129), 1/4, 3/4);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// aura
		default:
			if (aura)
			{
				var color_rgb=make_color_rgb(255, 0, 255);
				var color_hsv=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb),color_get_value(color_rgb));
				FlagPart(color_hsv, 1, 0);
				gpu_set_fog(0, c_white, 0, 0);
			}
			break;
	}

	// Genesis
	if (genesisEffect > 0)
	{
		gpu_set_blendenable(false); gpu_set_colorwriteenable(false,false,false,true); draw_set_alpha(0); draw_rectangle_color(0,0,room_width,room_height,c_white,c_white,c_white,c_white,false); draw_set_alpha(1);
		draw_set_alpha(genesisAlpha);
		draw_circle_colour(x, y, genesisEffect, c_white, c_white, false);
		draw_set_alpha(1);
		gpu_set_colorwriteenable(true,true,true,true); gpu_set_blendenable(true); gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha); gpu_set_alphatestenable(true);
		var genStage = GenesisStageList();
		with (asset_get("par_block"))
		{
			var xScale = genStage?1:range_finder(get_instance_x(self),get_instance_y(self),0,other.room_width,self,1,0)/32;
			var yScale = genStage?1:range_finder(get_instance_x(self),get_instance_y(self),270,other.room_height,self,1,0)/32;
			draw_sprite_ext(asset_get("solid_32x32"),0,get_instance_x(self),get_instance_y(self),xScale,yScale,0,c_white,1);
		}
		with (asset_get("par_jumpthrough"))
		{
			var xScale = genStage?1:range_finder(get_instance_x(self),get_instance_y(self),0,other.room_width,self,1,0)/32;
			var yScale = genStage?1:range_finder(get_instance_x(self),get_instance_y(self),270,other.room_height,self,1,0)/32;
			draw_sprite_ext(asset_get("jumpthrough_32x32"),0,get_instance_x(self),get_instance_y(self),xScale,yScale,0,c_white,1);
		}
		gpu_set_blendmode(bm_normal); gpu_set_alphatestenable(false);
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

#define range_finder(x,y,dir,range,object,prec,notme)
{
	var ox,oy,dir,range,object,prec,notme,dx,dy,sx,sy,distance,ox2,oy2;
	ox = argument0;
	oy = argument1;
	dir = argument2;
	range = argument3;
	object = argument4;
	prec = argument5;
	notme = argument6;
	sx = lengthdir_x(range,dir);
	sy = lengthdir_y(range,dir);
	dx = ox + sx;
	dy = oy + sy;
	ox2 = argument0;
	oy2 = argument1;
	if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
		distance = 0;
	}else{
		while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
			sx /= 2;
			sy /= 2;
			if (collision_line(ox2,oy2,dx,dy,object,prec,notme) < 0) {
				ox2 -= sx;
				oy2 -= sy;
			}else{
				ox2 += sx;
				oy2 += sy;
			}
		}
		distance = point_distance(ox,oy,ox2,oy2);
	}
	return distance;
}

#define GenesisStageList()
{
	// true: default to scale 2
	switch (get_stage_data(SD_ID))
	{
		default:
			return true;
		case 1://"Sylvan Radiance";
		case 23://"Lovers Encore";
		case 16:
		case 26://"Neon Universe EX";
		case 19://"Howl of the Forest";
		case 24://"In the Halls of the Usurper (Rivals Ver.)";
		case 22://"Tutorial Session";
			return true;
		case 2://"Fiery Ambitions";
		case 3://"Fight and Flight";
		case 4://"The Earthen Division";
		case 5://"Oceanic Breeze";
		case 7://"Moonlight Inferno";
		case 8://"Luna Ascension EX";
		case 9://"Lightning Pandemonium";
		case 10://"Glacial Bastion";
		case 11://"Decisive Encounter";
		case 12://"Formless Onslaught";
		case 14://"The Earthen Division (Main Event Ver.)";
		case 15://"Ori and the Blind Forest Medley";
		case 17://"Fire's Last Hope";
		case 18://"Elusive Master of Toxin";
		case 20://"Full Steam Vengeance!!";
		case 21://"Shovel Knight Medley";
		case 25://"Nihil Redux";
		case 27://"The Earthen Division (Main Event Ver.)";
		case 29://"Tetherball Versus";
		case 32://"Embers of a Burning Dystopia";
		case 33://"The King of Onsen";
		case 34://"Dazzling Dark Future";
		case 35://"Luminous Impactor";
		case 36://"Tactical Evolution EX ~ Creatures Medley";
			return false;
	}
}