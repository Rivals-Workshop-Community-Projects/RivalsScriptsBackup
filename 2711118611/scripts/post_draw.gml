//draw_debug_text(x, y + 12, string(room_height));
//draw_debug_text(x, y + 24, string(y));
//draw_debug_text(x - 24, y + 24, string(vsp));
//draw_debug_text(x, y + 24, string(joy_dir));

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && (window == 1 || window == 6)) {
	var draw_frame = 0;
	if (spr_dir == -1){
        if (joy_dir >= 90 && joy_dir < 155) {
			draw_frame = 1;
        }
        else if (joy_dir <= 270 && joy_dir > 205) {
            draw_frame = 2;
        }
        else {
            draw_frame = 0;
        }
    }
	else if (spr_dir == 1){
        if (joy_dir <= 90 && joy_dir > 25) {
            draw_frame = 1;
        }
        else if (joy_dir >= 270 && joy_dir < 335) {
            draw_frame = 2;
        }
        else {
            draw_frame = 0;
        }
    }
	draw_sprite_ext(spr_fspecial_arrow, draw_frame, x, y, spr_dir, 1, 0, c_white, 0.5);
}

//draw_debug_text(x, y, string(hsp_storage) + " " + string(hsp));
//draw_debug_text(x, y + 12, string(window) + " " + string(window_timer));
//draw_debug_text(x, y + 24, string(sword_one.y));

//if (sword_one != noone){
//	draw_debug_text(sword_one.x, sword_one.y + 24, string(sword_one.hbox));
//	draw_debug_text(sword_one.x, sword_one.y + 36, string(sword_one.hbox_was_active));
//	draw_debug_text(sword_one.x, sword_one.y + 48, string(sword_one.hbox_frames));
//	draw_debug_text(x, y + 12, string(room_width));
//	draw_debug_text(x, y + 24, string(abs(sword_one.x - x)));
//	draw_debug_text(x, y + 36, string(abs(sword_one.y - (y - 20))));
//}
//else if (sword_one == noone) {
//	draw_debug_text(x, y + 12, string("NO SWORD"));
//}