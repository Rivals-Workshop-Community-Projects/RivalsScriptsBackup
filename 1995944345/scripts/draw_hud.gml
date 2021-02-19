
shader_start();



var xx = temp_x+160
var yy = temp_y+8
	if instance_exists(mushins) {
	var mushd = 0;
	if mushins.state == 0 {mushd = floor(mushins.damagelim - mushins.damage); mushd = "-"+string(mushd)+"%"}
	else if mushins.state == 1 or mushins.state == 3 {mushd = floor(mushins.damage);
		mushd = "+"+string(mushd)+"%"; 
		
		var oy = yy;
		yy = ease_sineOut(oy, temp_y+30, mushins.state_timer, 30)
	
	}
	if blockalpha > 0 {
	draw_sprite_ext(sprite_get("lockout"), 0, temp_x, temp_y, 1, 1, 0, c_white, blockalpha)
	draw_sprite_ext(sprite_get("lockout"), 1, temp_x, temp_y, 1, 1, 0, c_white, X_alpha)
	}
	if mushalpha > 0 && !mushins.transferred {
	draw_sprite(sprite_get("nodeidle"), (1-X_alpha)*4, xx-10, temp_y+2)
	
	
	draw_set_halign(fa_middle)
	draw_set_valign(fa_middle)
	draw_set_font(asset_get("roaMBLFont"));
	draw_text_colour(xx-2, yy-2, mushd, c_black, c_black, c_black, c_black, 1)
	draw_text_colour(xx+2, yy-2, mushd, c_black, c_black, c_black, c_black, 1)
	draw_text_colour(xx-2, yy+2, mushd, c_black, c_black, c_black, c_black, 1)
	draw_text_colour(xx+2, yy+2, mushd, c_black, c_black, c_black, c_black, 1)
	draw_text_colour(xx+2, yy, mushd, c_black, c_black, c_black, c_black, 1)
	var c = c_white //$D0FFA8
	draw_text_colour(xx, yy, mushd, c, c, c, c, 1)
	c = c_gray
	draw_text_colour(xx, yy, mushd, c, c, c, c, 1-blockalpha)
	}
	}
		if selfstab {
		draw_sprite(sprite_get("sporemote"), 2, temp_x+80, temp_y+30)
		if move_cooldown[AT_NSPECIAL_2] > 0 {
		draw_sprite_ext(sprite_get("sporemote"), 2, temp_x+80, temp_y+30, 1, 1, 0, c_gray, 1)
		}
	}
shader_end();


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


/*
var xx = temp_x + 110;
var yy = temp_y
if mushalpha > 0 {
shader_start();
draw_sprite_ext(sprite_get("hud"),0,xx,temp_y,1,1,0,c_white,mushalpha)
shader_end();
	if instance_exists(mushins) {
	var mushd = 0;
		if mushins.state == 0 mushd = mushins.damagelim - mushins.damage;
		if mushins.state == 1 mushd = mushins.damage
		var md = floor(mushd/10);

		var mushx = xx + 10;
		if mushins.state == 1 mushx += -1+random_func(0, 2, 1)*4
		if md > 0 {
		mushx -= 8;

		draw_sprite_ext(sprite_get("numbers"),md,mushx,temp_y,1,1,0,merge_color(c_white,$9999FF,mushins.damage/mushins.damagelim),mushalpha)

		mushx += 14;
		}

		md = floor(mushd mod 10);
		draw_sprite_ext(sprite_get("numbers"),md,mushx,temp_y,1,1,0,merge_color(c_white,$9999FF,mushins.damage/mushins.damagelim),mushalpha)

		mushx += 14;
		draw_sprite_ext(sprite_get("numbers"),10,mushx,temp_y,1,1,0,merge_color(c_white,$9999FF,mushins.damage/mushins.damagelim),mushalpha)

	}
}
//draw_debug_text(temp_x,temp_y,string(state));

//draw_debug_text(temp_x,temp_y,string(mushins.damage)+"% / "+string(mushins.damagelim)+"%");