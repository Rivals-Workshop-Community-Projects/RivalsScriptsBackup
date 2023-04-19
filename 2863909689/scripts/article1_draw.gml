var offset = -40;

if (state == 0){
	draw_set_font(asset_get("roaLBLFont"));
	draw_set_halign(fa_center);
	var str = string(current_hour)+" "+string(current_minute);
	draw_text_color(x, y + offset, str, c_black,c_black,c_black,c_black,1);
}