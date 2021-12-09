//

shader_start();

if (state == PS_ATTACK_AIR && attack == AT_BAIR && enhanced == false && window == 3 && window_timer < 4){
	draw_sprite_ext(sprite_get("bair_sweetspot"), 0, x-61*spr_dir, y-35, 1, 1, 0, c_white, 1);
}

shader_end();
