// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

if !phone_cheats[CHEAT_TRAILER]{

	var dx = temp_x + 26;
	var dy = temp_y - 14 + ir_change_timer;
	
	var spr = sprite_get("hud_wavelength_icons");
	
	draw_sprite(spr, 2, dx, dy);
	
	maskHeader();
	
	draw_sprite(spr, 3, dx, dy);
	
	maskMidder();
	
	draw_sprite_ext(spr, ir, dx - (get_gameplay_time() / 2) % (ir ? 64 : 28) + 4, dy + 4, 1, 1, 0, ir_change_timer ? c_white : wing_colors[ir][1], 1);
	draw_sprite_ext(spr, ir, dx - (get_gameplay_time() / 2) % (ir ? 64 : 28) - 2, dy + 2, 1, 1, 0, c_black, 1);
	draw_sprite_ext(spr, ir, dx - (get_gameplay_time() / 2) % (ir ? 64 : 28), dy, 1, 1, 0, ir_change_timer ? c_white : wing_colors[ir][0], 1);
	
	maskFooter();
	
	draw_debug_text(dx - 32, dy - 14, ir ? "IR" : "UV");

}



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);



#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);