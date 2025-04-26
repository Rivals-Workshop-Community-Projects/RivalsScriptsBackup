// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

var col1 = GetColourPlayer(0);
var col2 = GetColourPlayer(1);

var t_x = temp_x - 16;
var t_y = temp_y - 16;

// text_draw(t_x, t_y - 32, "fName", c_white, 0, 1000, 1, true, 1, "Nspecial: " + string(shadowBallCharge));

// text_draw(t_x, t_y - 64, "fName", c_white, 0, 1000, 1, true, 1, string(state));

// text_draw(t_x, t_y - 48, "fName", c_white, 0, 1000, 1, true, 1, string(state_timer));


// if(taunt_down && attack != AT_TAUNT && attack != AT_TAUNT_2 && !free)
// {
//     with (oPlayer){
//         if(other.count < 120 && reactionTime > 0){
//             text_draw(x - 120, y - 64, "fName", c_white, 0, 1000, 1, true, 1, string(reactionTime));
//         }
//     }
// }


//draw shadowball charge percent UI bar

var barWidth = 128;
var barHeight = 16;
var barX = temp_x+barWidth/2;
var barY = temp_y-barHeight/2;

//border
//tops
draw_box(barX, barY-barHeight/2+1, barWidth+4, 2, c_black);
draw_box(barX, barY+barHeight/2-1, barWidth+4, 2, c_black);
//sides
draw_box(barX-barWidth/2-1, barY, 2, barHeight, c_black);
draw_box(barX+barWidth/2+1, barY, 2, barHeight, c_black);

var shadowChargeAmount = shadowBallCharge / shadowBallChargeMax;
var shadowChargeWidth = barWidth * shadowChargeAmount;

recentShadowBallChangeTimer -= 1;

// recentShadowBallChangeTimer = 10;
// recentShadowBallChange = 5;

var shadowChargeChangeAmount = recentShadowBallChange / shadowBallChargeMax;
var shadowChargeChangeWidth = barWidth*shadowChargeChangeAmount;

//fill
if(shadowChargeWidth > 0){
	draw_box(barX-barWidth/2+shadowChargeWidth/2, barY, shadowChargeWidth, barHeight-4, col1);
	//delta fill
	if(recentShadowBallChangeTimer > 0 && shadowChargeChangeWidth > 0){
		draw_box(barX-barWidth/2+shadowChargeWidth-shadowChargeChangeWidth/2, barY, shadowChargeChangeWidth, barHeight-4, c_white);
	}
}
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);

//anthem debug text code
#define text_draw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
draw_set_halign(fa_left);
draw_set_font(asset_get(argument[2]));
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);


return string_width_ext(argument[9], argument[4], argument[5]);

#define draw_box(_x,_y,_w,_h, _colour)
{
	draw_triangle_colour(_x+_w/2, _y+_h/2, _x+_w/2, _y-_h/2, _x-_w/2, _y-_h/2, _colour, _colour, _colour, false);
    draw_triangle_colour(_x+_w/2, _y+_h/2, _x-_w/2, _y+_h/2, _x-_w/2, _y-_h/2, _colour, _colour, _colour, false);
}

//lukastar line drawing script
#define DrawLine(_x, _y, _x2, _y2, _offsetWidth, _colour)
{
	var dir = point_direction(_x, _y, _x2, _y2);
	var offsetX = lengthdir_x(_offsetWidth, dir+90);
	var offsetY = lengthdir_y(_offsetWidth, dir+90);
	draw_rectangle(_x+offsetX, _y+offsetY, _x-offsetX, _y-offsetY, _x2+offsetX, _y2+offsetY, _x2-offsetX, _y2-offsetY, _colour, _colour);
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