// pre-draw

shader_start();
if (attack == AT_FSPECIAL && window == 2 && special_down) {
		draw_sprite_ext(sprite_get("arrow"), get_gameplay_time()/3, x+20*(spr_dir), y-70, spr_dir, 1, eggcharge2*4.5*spr_dir, c_white, .8);
}
shader_end();