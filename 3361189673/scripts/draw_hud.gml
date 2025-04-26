











//------------------------------------------------------------------------

if (devview == true){
	var scrleft = 0;
	var scrmiddle = view_get_wview()/2;
	var scrtop = 0;
	var scrroomleft = floor(view_get_xview());
	var scrroomtop = floor(view_get_yview());
	
	draw_debug_text(scrleft+16,scrtop+16,string(floor(fps))+" fps - (real: "+string(floor(fps_real))+")");
	
	draw_sprite_ext( sprite_get("cursor"), 0, mouse_x-scrroomleft, mouse_y-scrroomtop, 1, 1, 0, -1, 1 );
	draw_debug_text(mouse_x+16-scrroomleft,mouse_y+16-scrroomtop,string(string(mouse_x)+", "+string(mouse_y)));
	if(mouse_button==1){print(string(string(mouse_x)+", "+string(mouse_y)))}
}













