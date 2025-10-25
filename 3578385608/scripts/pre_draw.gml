// pre-draw

if state == PS_ATTACK_AIR && attack == AT_TAUNT_2 && (window == 5 || window == 6) draw_outline($FFD51E, clamp((state_timer-200)/80, 0, .6), clamp((state_timer-200)/20, 0, 8));

with pHitBox if player_id == other && attack == AT_NSPECIAL switch hbox_num{
	case 4: //water
	if image_index == clamp(image_index, 4, 8) draw_line_width_color(x - 33, y-2, x + 31, y-2, 2, get_player_hud_color(player), get_player_hud_color(player));
	break;
	case 5: //acid
	if image_index == clamp(image_index, 4, 8) draw_line_width_color(x - 33, y-2, x + 31, y-2, 2, get_player_hud_color(player), get_player_hud_color(player));
	break;
	case 6: //phosphine
	if image_index == clamp(image_index, 2, 10){
		gpu_set_fog(1, get_player_hud_color(player), 1, 0);
		draw_sprite_ext(sprite_index, image_index, x+2, y, spr_dir, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_index, image_index, x-2, y, spr_dir, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_index, image_index, x, y+2, spr_dir, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_index, image_index, x, y-2, spr_dir, 1, 0, c_white, 1);
		gpu_set_fog(0, get_player_hud_color(player), 1, 0);
	}
	break;
}


#define draw_outline(col, al, max)

gpu_set_alphatestenable(true);
gpu_set_fog(1, col, 0, 1);

for (i = 0; i < 2; i++){
	var rand_x = random_func(i + 00, ceil(max), true) - 2;
	var rand_y = random_func(i + 10, ceil(max), true) - 2;
	
	draw_sprite_ext(sprite_index, image_index, x + rand_x - clamp(hsp, -15, 15) * (i + 1), y + rand_y - vsp * (i + 1) + 4 + draw_y, image_xscale * 2.2, image_yscale * 2.2, spr_angle, c_white, al);
}
	
gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);


