draw_sprite(sprite_get("charselect_overlay"), get_player_color(player), x + 8, y + 8)


// Recreation of the core functionality of Hyu's css template -- by Nart

// ================================ SOME CUSTOM STUFF ===============================
// ignore this part, this is just my own stuff lmao

init_shader();
//alt_info[alt_rainbow,0] = get_color_slot_hex(alt_rainbow, 0);

draw_badges();

// ==================================================================================

// keep track of alts
alt_cur = get_player_color(player);
if alt_cur != alt_old {
	// get direction of alt switching
	if alt_cur == alt_max && alt_old == 0 { alt_dir = -1; }
	else if alt_cur == 0 && alt_old == alt_max { alt_dir = 1; }
	else { alt_dir = sign(alt_cur - alt_old); }
	// update values
    alt_old = alt_cur;
    timer = timer_max;
}

// draw
if timer > 0 {
	draw_set_halign(fa_left);
	
    var dist = 14;
    var slide = round(ease_expoIn(0, dist-2, timer, timer_max-4)) * alt_dir;
	var ease = ease_linear(0, 2, timer, timer_max);
    
    var draw_min = -3;
    var draw_max = 4;
    
    for (var i = draw_min; i <= draw_max; i += 1) {
		var draw_alt = alt_cur + i;
		
		// skip certain squares under certain scenarios
		if draw_alt != clamp(draw_alt, 0, alt_max)
		|| (i == draw_min && alt_dir == -1)
		|| (i == draw_max && alt_dir == 1) {
			continue;
		}
		// draw squares
		var x1 = x + 10;
		var y1 = y + 86 + slide + (dist + 3)*i;
		var x2 = x1 + dist;
		var y2 = y1 + dist;
		var c_out = (i == 0 ? c_white : c_gray);
		var alpha = (ease - abs((i)/4.5)) * (5-abs(i))/5; // dumb arbitrary math
		
		rectDraw(x1, y1, x2, y2, alt_info[draw_alt,0], c_out, alpha);
    }
	// draw dumb black rectangle to hide squares sliding into/out of view lol
	draw_rectangle_colour(x+8, y+152, x+40, y+171, c_black, c_black, c_black, c_black, false);
    // draw name
    textDraw(x+12, y+43, "fName", c_white, 0, 1000, 1, true, ease, alt_info[alt_cur,1]);
	// update timer
	timer -= 1;
}
 
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));
 
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)
 
draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);


#define get_color_slot_hex(alt, slot)
var _r = get_color_profile_slot_r(alt, slot);
var _g = get_color_profile_slot_g(alt, slot);
var _b = get_color_profile_slot_b(alt, slot);
return make_color_rgb(_r, _g, _b);


#define draw_badges
var badge_num = -1;
switch get_player_color(player) {
	// abyss
    case 13:
        badge_num = 1;
        break;
    
    // early access
    case 14:
        badge_num = 2;
        break;
	
    // workshop
    case 6: // bubbles
    case 7: // lava flow
    case 8: // prune
    case 9: // revolver
    case 10: // rollerblade
    case 11: // sweet tooth
    case 12: // air mail
    case 15: // whirlpool
    case 16: // lumens
    case 17: // peachy
        badge_num = 3;
        break;
        
    // ranked
	case 18:
        badge_num = 5;
        break;
    
    // seasonal
    case 19:
        badge_num = 0;
        break;
	
	// custom
	case 20: // blm
	case 21: // tag
	case 22: // mothra
	case 23: // dude-like
		badge_num = 7;
		break;
}

if (badge_num != -1) {
	shader_end();
	//draw_sprite_ext(sprite_get("css_badges"), badge_num, x + 176, y + 112, 2, 2, 0, c_white, 1);
}
