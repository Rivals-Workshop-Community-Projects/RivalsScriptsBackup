if (state == 2){
	draw_sprite_ext(sprite_get("platform_cracks"), crack_img, x, y, plat_dir, 1, 0, c_white, 1);
}
else if (state == 3){
	draw_sprite_ext(sprite_get("platform_break"), crack_img, x, y, plat_dir, 1, 0, c_white, 1);
}

if (plat_num == 1 && get_gameplay_time() < 300 && get_training_cpu_action() != CPU_FIGHT){
	draw_debug_text(room_width / 2 - 100 + 22, y + 32, "Hold TAUNT while dying");
	draw_debug_text(room_width / 2 - 100 + 32, y + 50, "to reset the stage");
}