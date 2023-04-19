var range_x_offset = -6;
var range_y_offset = -20;

//draw current time
if ((state == 0 || state == 1) && visible){
	draw_set_font(asset_get("roaLBLFont"));
	draw_set_halign(fa_center);
	
	var min_str = string(current_minute);
	
	//very efficient code
	if (min_str == "0"){
		min_str = "00";
	}
	else if (min_str == "1"){
		min_str = "01";
	}
	else if (min_str == "2"){
		min_str = "02";
	}
	else if (min_str == "3"){
		min_str = "03";
	}
	else if (min_str == "4"){
		min_str = "04";
	}
	else if (min_str == "5"){
		min_str = "05";
	}
	else if (min_str == "6"){
		min_str = "06";
	}
	else if (min_str == "7"){
		min_str = "07";
	}
	else if (min_str == "8"){
		min_str = "08";
	}
	else if (min_str == "9"){
		min_str = "09";
	}
	
	var hr_str = string(current_hour);
	
	//very efficient code but twice
	if (hr_str == "0"){
		hr_str = "00";
	}
	else if (hr_str == "1"){
		hr_str = "01";
	}
	else if (hr_str == "2"){
		hr_str = "02";
	}
	else if (hr_str == "3"){
		hr_str = "03";
	}
	else if (hr_str == "4"){
		hr_str = "04";
	}
	else if (hr_str == "5"){
		hr_str = "05";
	}
	else if (hr_str == "6"){
		hr_str = "06";
	}
	else if (hr_str == "7"){
		hr_str = "07";
	}
	else if (hr_str == "8"){
		hr_str = "08";
	}
	else if (hr_str == "9"){
		hr_str = "09";
	}

	var str = hr_str + " " + min_str;

	draw_text_ext_transformed_color(x + x_offset + 2, y + y_offset - 2, str, 1, 200, 1, 1, 0, c_black,c_black,c_black,c_black,1);
	draw_text_ext_transformed_color(x + x_offset - 2, y + y_offset - 2, str, 1, 200, 1, 1, 0, c_black,c_black,c_black,c_black,1);
	draw_text_ext_transformed_color(x + x_offset + 2, y + y_offset + 2, str, 1, 200, 1, 1, 0, c_black,c_black,c_black,c_black,1);
	draw_text_ext_transformed_color(x + x_offset + 2, y + y_offset + 2, str, 1, 200, 1, 1, 0, c_black,c_black,c_black,c_black,1);
	draw_text_ext_transformed_color(x + x_offset, y + y_offset, str, 1, 200, 1, 1, 0, text_color,text_color,text_color,text_color,1);

}

//draw field
shader_end();
if (state == 0){
	draw_circle_colour(x + range_x_offset, y + range_y_offset, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 0.5, y + range_y_offset - 0.5, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 0.5, y + range_y_offset - 0.5, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 0.5, y + range_y_offset + 0.5, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 0.5, y + range_y_offset + 0.5, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 1, y + range_y_offset - 1, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 1, y + range_y_offset - 1, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset + 1, y + range_y_offset + 1, range, c_white, c_white, true);
	draw_circle_colour(x + range_x_offset - 1, y + range_y_offset + 1, range, c_white, c_white, true);
}