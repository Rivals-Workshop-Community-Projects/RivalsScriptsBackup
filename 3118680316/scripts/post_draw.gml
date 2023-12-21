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

shader_end();

