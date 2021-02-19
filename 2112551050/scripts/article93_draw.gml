var yy = undefined;
var xx1 = undefined;
var xx2 = undefined;
var width = undefined;
var centerx = undefined;

with (obj_stage_article_solid) {
    if (get_article_script(id) == 2) {
        yy = y - 200;
    }
    if (get_article_script(id) == 1) {
    	if (spawn_variables[0] == 0) {
    		xx1 = x;
    	} else if (spawn_variables[0] == 1) {
    		xx2 = x;
    	}
    }
}

width = abs(xx1 - xx2);
centerx = (xx1 + xx2)/2;

//print_debug(string(width));

var leftx = centerx+(width/2) - 184;
var rightx = centerx-(width/2) + 184;

if (player_id.state >= 2) {
	draw_rectangle_color(leftx, y + yy - 100, leftx + 500, y + yy + 100, c_black, c_black, c_black, c_black, false);
	draw_rectangle_color(rightx, y + yy - 100, rightx - 500, y + yy + 100, c_black, c_black, c_black, c_black, false);
	draw_rectangle_color(0, 864, 2000, 1000, c_black, c_black, c_black, c_black, false);
}