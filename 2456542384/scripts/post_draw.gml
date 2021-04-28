if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "woag");
}

//nspecial heal thing
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_NSPECIAL {
	if window == 4 && window_timer mod 4 == 0 && !hitpause {
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_green,0.6);
		gpu_set_blendmode(bm_normal);
	}
}

//grab grand debug
/*
if state == PS_ATTACK_AIR && attack == AT_DAIR {
draw_rectangle_color(x-15,y-20,x+15,y+75,c_blue,c_blue,c_blue,c_blue,true);
}
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL {
draw_rectangle_color(x + 10 * spr_dir,y-5,x + 150 * spr_dir,y-55,c_blue,c_blue,c_blue,c_blue,true);
}
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL {
draw_rectangle_color(x + 10 * spr_dir,y-15,x + 65 * spr_dir,y-165,c_blue,c_blue,c_blue,c_blue,true);
draw_rectangle_color(x + 45 * spr_dir,y-45,x + 125 * spr_dir,y-195,c_blue,c_blue,c_blue,c_blue,true);
}
*/

user_event(12);