// draw hud
if ("canShoot" in self)
{
	shader_start();
	draw_sprite( sprite_get("ballarea"), 0, temp_x+140+dspecshiver, temp_y-12);
	for (var i = 0; i < min(canShoot,2); ++i)
		draw_sprite(sprite_get("steelballhud"), 0, temp_x+154+(i*12)+dspecshiver, temp_y-14);
	shader_end();
	
	if (canShoot < 2)
		draw_debug_text(temp_x+148+dspecshiver, temp_y - 6, string((recharge1 != 0 && recharge2 != 0)?(1 + floor(min(recharge1,recharge2) / 60)):(1 + floor(max(recharge1,recharge2) / 60))));
}

if ("practicemode" in self
	&& practicemode
	&& tutalpha != 0) // Tutorial
{
	menu[0] = "Unlimited Ammo: ";
	menu[1] = "Unlimited Magnet: ";
	menu[2] = "YAY";
	draw_set_alpha(tutalpha);
	switch (tutstate)
	{
	case 0:
		draw_debug_text(temp_x,temp_y - 8 + floor(tutalpha*4)*2-8, "Dev menu (Taunt)");
		break;
	case 1:
		draw_set_alpha(tutalpha*0.4);
		draw_rectangle_color(temp_x - 8,temp_y - 12 - 16*noofitems + floor(tutalpha*4)*2-8,temp_x + 215,temp_y + floor(tutalpha*4)*2-8,c_white,c_white,c_white,c_white,false);
		draw_rectangle_color(temp_x - 6,temp_y - 10 - 16*noofitems + floor(tutalpha*4)*2-8,temp_x + 213,temp_y-2 + floor(tutalpha*4)*2-8,c_black,c_black,c_black,c_black,false);
		draw_set_alpha(tutalpha);
		for (var i = 0; i < noofitems; ++i)
			draw_debug_text((tutmenu==i?round(sin(get_gameplay_time()/8))*2+2:0) + temp_x,temp_y - 20 - (noofitems-i-1)*16 + floor(tutalpha*4)*2-8, (tutmenu==i?"> ":"  ")+menu[i]+string(i==0?runeM?"True":"False":i==1?puulnocooldown?"True":"False":""));
		break;
	default:
		break;
	}
	draw_set_alpha(1);
}

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
	if (ds_list_size(abyss_drawArray) > 0) {
		for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
			var _text = abyss_drawArray[| _i];
			if draw_get_halign() != _text[6] {
				draw_set_halign(_text[6]);
			}
			switch (_text[0]) {
				case 0:
					draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
					break;
				case 1:
					draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
					break;
				case 2:
					draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
					break;
				case 3:
					if draw_get_font() != 1 draw_set_font(1);
			  draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
					break;
				default:
				break;
			}
		}
	}
	//finished drawing, so clear the table for the next frame.
	ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
	draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);