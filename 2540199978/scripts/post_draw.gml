if ("rollArray" in self)
{
	// attacks
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	{
		switch (attack)
		{
			case AT_USPECIAL:
				if (window == 2 && window_timer <= 4)
				{
					gpu_set_fog(1, c_white, 0, 1);
					draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir*2, 2, spr_angle, c_white, 1);
					gpu_set_fog(0, c_white, 0, 0);
				}
				break;
			case AT_NSPECIAL:
				for (var i = 0; i < 5; ++i)
				{
					var opacity = window==3?1-window_timer/get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH):min(GetNeedleCharge(i), state_timer)/30;
					var angle = GetNeedleCharge(i)*7.2;
					var lerpAmount = ease_backIn(40, 20, floor(min(min(GetNeedleCharge(i), state_timer)/30*100, 100)), 100, 5);
					var offsetX = lengthdir_x(lerpAmount, angle+lerpAmount*2);
					var offsetY = lengthdir_y(lerpAmount, angle+lerpAmount*2);
					shader_start();
					draw_sprite_ext(sprite_get("nspecialCharge"), 0, x-30*spr_dir+offsetX, y-18+offsetY, 2*spr_dir, 2, angle, IcicleTint(i), opacity);
					shader_end();
				}
				break;
			case AT_NAIR:
				for (var i = 0; i < 3; ++i)
				{
					var opacity = 1;
					var angle = state_timer*12+i*120;
					var offsetX = 0;
					var offsetY = 0;

					switch (window)
					{
						case 1:
							opacity = window_timer/get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH);
							var lerpAmt = ease_cubeOut(0, 40, window_timer, get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180-lerpAmt);
							offsetY = lengthdir_y(lerpAmt, angle+180-lerpAmt);
							break;
						case 2:
							var lerpAmt = ease_cubeIn(40, 50, window_timer, get_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180);
							offsetY = lengthdir_y(lerpAmt, angle+180);
							break;
						case 3:
							var lerpAmt = ease_cubeIn(50, 30, window_timer, get_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180);
							offsetY = lengthdir_y(lerpAmt, angle+180);
							break;
						case 4:
							opacity = 1-window_timer/get_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH);
							var lerpAmt = ease_cubeIn(30, 1, window_timer, get_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180);
							offsetY = lengthdir_y(lerpAmt, angle+180);
							break;
					}

					shader_start();
					draw_sprite_ext(sprite_get("nspecialCharge"), 0, x+4*spr_dir+offsetX, y-30+offsetY, 2*spr_dir, 2, angle, IcicleTint(i), opacity);
					shader_end();
				}
				break;
			case AT_DATTACK:
				for (var i = 0; i < 3; ++i)
				{
					var opacity = 1;
					var angle = state_timer*12+i*120;
					var offsetX = 0;
					var offsetY = 0;

					switch (window)
					{
						case 1:
							opacity = window_timer/get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH);
							var lerpAmt = ease_cubeOut(0, 30, window_timer, get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH));
							var lerpX = spr_dir*ease_cubeOut(-40, 10, window_timer, get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180-lerpAmt)/2+lerpX;
							offsetY = lengthdir_y(lerpAmt, angle+180-lerpAmt);
							break;
						case 2:
							var lerpAmt = ease_cubeIn(30, 20, window_timer, get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180)/2;
							offsetY = lengthdir_y(lerpAmt, angle+180);
							break;
						case 3:
							opacity = 1-window_timer/get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH);
							var lerpAmt = ease_cubeIn(20, 1, window_timer, get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH));
							var lerpX = spr_dir*ease_cubeOut(0, -10, window_timer, get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180)/2+lerpX;
							offsetY = lengthdir_y(lerpAmt, angle+180);
							break;
					}

					shader_start();
					draw_sprite_ext(sprite_get("nspecialCharge"), 0, x+36*spr_dir+offsetX, y-32+offsetY, -2*spr_dir, 2, 90*spr_dir, IcicleTint(i), opacity);
					shader_end();
				}
				break;
			case AT_JAB:
				for (var i = 0; i < 5; ++i)
				{
					var opacity = 1;
					var cycleDist = 100;
					var cycleOffset = cycleDist/3;
					var offsetX = (state_timer*8+i*cycleOffset)%cycleDist;
					var offsetY = i*11;

					switch (window)
					{
						case 1:
							opacity = window_timer/get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH);
							break;
						case 2:
							break;
						case 3:
							opacity = 1-window_timer/get_window_value(AT_JAB, 3, AG_WINDOW_LENGTH);
							break;
					}
							
					opacity -= abs(cos(offsetX/cycleOffset));
					opacity = clamp(opacity, 0, 1);

					shader_start();
					draw_sprite_ext(sprite_get("nspecialCharge"), 0, x+(-10+offsetX)*spr_dir, y-48+offsetY, -2*spr_dir, 2, 90*spr_dir, IcicleTint(i), opacity);
					shader_end();
				}
				break;
			case AT_USTRONG:
				for (var i = 0; i < 5; ++i)
				{
					var opacity = 1;
					var angle = state_timer*7+i*72;
					var offsetX = 0;
					var offsetY = 0;

					switch (window)
					{
						case 1:
							opacity = window_timer/get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH);
							var lerpAmt = ease_cubeOut(80, 50, window_timer, get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH));
							var lerpY = ease_cubeOut(-30, 30, window_timer, get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180-lerpAmt);
							offsetY = lengthdir_y(lerpAmt, angle+180-lerpAmt)/2+lerpY;
							break;
						case 2:
							var lerpAmt = ease_cubeIn(50, 30, window_timer, get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH));
							var lerpY = ease_cubeOut(30, 0, window_timer, get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180);
							offsetY = lengthdir_y(lerpAmt, angle+180)/2+lerpY;
							break;
						case 3:
							var lerpY = ease_cubeOut(0, -10, window_timer, get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(30, angle+180);
							offsetY = lengthdir_y(30, angle+180)/2+lerpY;
							break;
						case 4:
							opacity = 1-window_timer/get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
							var lerpAmt = ease_cubeIn(30, 80, window_timer, get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH));
							var lerpY = ease_cubeOut(-10, -50, window_timer, get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180);
							offsetY = lengthdir_y(lerpAmt, angle+180)/2+lerpY;
							break;
					}

					shader_start();
					draw_sprite_ext(sprite_get("nspecialCharge"), 0, x+offsetX, y-90+offsetY, -2*spr_dir, 2, 180*spr_dir+offsetX/2, IcicleTint(i), opacity);
					shader_end();
				}
				break;
			case AT_FSTRONG:
				for (var i = 0; i < 5; ++i)
				{
					var opacity = 1;
					var angle = (state_timer*6+i*72)*spr_dir;
					var offsetX = 0;
					var offsetY = 0;

					switch (window)
					{
						case 1:
							opacity = window_timer/get_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH);
							var lerpAmt = ease_cubeOut(80, 20, window_timer, get_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(lerpAmt, angle+180-lerpAmt);
							offsetY = lengthdir_y(lerpAmt, angle+180-lerpAmt);
							break;
						case 2:
							var tempAngle = angle;
							angle = ease_cubeOut(angle, 90, window_timer, get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH));
							offsetX = lengthdir_x(20, tempAngle+180)+ease_cubeOut(0, -20, window_timer, get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH))*spr_dir;
							offsetY = lengthdir_y(20, tempAngle+180);
							break;
						case 3:
							angle = 90;
							var tempAngle = (i+3)*72*spr_dir;
							offsetX = lengthdir_x(20, tempAngle)+ease_cubeOut(60, 40, window_timer, get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH))*spr_dir;
							offsetY = lengthdir_y(20, tempAngle);
							break;
						case 4:
							opacity = 1-window_timer/get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH);
							angle = 90;
							var tempAngle = (i+3)*72*spr_dir;
							offsetX = lengthdir_x(20, tempAngle)+40*spr_dir;
							offsetY = lengthdir_y(20, tempAngle);
							break;
					}

					shader_start();
					draw_sprite_ext(sprite_get("nspecialCharge"), 0, x+offsetX+16*spr_dir, y-36+offsetY, -2, 2*spr_dir, angle, IcicleTint(i), opacity);
					shader_end();
				}
				break;
			case AT_DSTRONG:
				for (var i = 0; i < 5; ++i)
				{
					var opacity = 1;
					var angle = i*35-70;
					var offsetX = 0;
					var offsetY = 0;
					var lerpAmt = 0;

					switch (window)
					{
						case 1:
							opacity = window_timer/get_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH);
							lerpAmt = ease_cubeOut(80, 40, window_timer, get_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH));
							break;
						case 2:
							lerpAmt = ease_cubeOut(40, -60, window_timer, get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH));
							break;
						case 3:
							lerpAmt = ease_cubeOut(-60, -40, window_timer, get_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH));
							break;
						case 4:
							opacity = 1-window_timer/get_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH);
							lerpAmt = -40;
							break;
					}

					offsetX = lengthdir_x(lerpAmt, angle+90);
					offsetY = lengthdir_y(lerpAmt, angle+90);

					shader_start();
					draw_sprite_ext(sprite_get("nspecialCharge"), 0, x+offsetX, y-56+offsetY, -2, 2, angle, IcicleTint(i), opacity);
					shader_end();
				}
				break;
		}
	}
}

#define GetNeedleCharge(i)
{
	return max(nspecCharge - nspecChargeMax/5*i, 0);
}


#define IcicleTint(i)
{
	if (get_player_color(player) == 6)
		switch (i)
		{
		    case 0:
		    case 4:
		        return make_colour_rgb(85, 205, 252);
		    case 1:
		    case 3:
			    return make_colour_rgb(247, 168, 223);
		    default:
		        return c_white;
		}
	return c_white;
}