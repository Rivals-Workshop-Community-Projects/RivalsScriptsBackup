// Post draw
shader_start();

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
{
	if(attack == AT_FSPECIAL && window == 1)
	{
		draw_sprite_ext( explosive_special ? sprite_get("fspecial_bubble_explosive") : sprite_get("fspecial_bubble"),(window_timer/get_window_value(AT_FSPECIAL,1,AG_WINDOW_LENGTH)) * get_window_value(AT_FSPECIAL,1,AG_WINDOW_ANIM_FRAMES),x,y,spr_dir,1,0,c_white,bubble_opacity);
	}
	
	if(attack == AT_DSPECIAL && window == 1)
	{
		draw_sprite_ext( free ? explosive_special ? sprite_get("dspecial_bubble_explosive_air") : sprite_get("dspecial_bubble_air") : explosive_special ? sprite_get("dspecial_bubble_explosive") : sprite_get("dspecial_bubble"),(window_timer/get_window_value(AT_DSPECIAL,1,AG_WINDOW_LENGTH)) * get_window_value(AT_DSPECIAL,1,AG_WINDOW_ANIM_FRAMES),x,y+(free ? 24 : 0),spr_dir,1,0,c_white,bubble_opacity);
	}
}

if(state == PS_PARRY && image_index > 0)
{
	draw_sprite_ext( sprite_get("parry_bubble"),image_index-1,x,y,spr_dir,1,0,c_white,bubble_opacity);
}

// Genesis glitch code
if get_player_color(player) == 25 && random_func(4, 40, 1) == 0  && !(state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND){
    var fs = random_func(0, sprite_height -1, 1);
    draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir*2, y+fs*2 - sprite_get_yoffset(sprite_index)*2, spr_dir*2, 2, image_blend, 0.8);
}

shader_end();

