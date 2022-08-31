if (attack == AT_TAUNT && state == PS_ATTACK_GROUND && (clamp(window,2,3) == window || (window == 4 && window_timer <= 4 )))
{
	draw_sprite_ext(sprite_get("plushies"),plush,x+(8*spr_dir),y,spr_dir,image_yscale,0,c_white,1);
	var char = "hosha";
	switch (plush)
	{
		case 14: char = "lyca";
		case 16:
			if (taunt_timer >= 120 && taunt_down)
			{
				draw_set_alpha(min(((taunt_timer-60)/40)-0.8, 1));
				draw_debug_text(x-50,floor(y-80+20*(min(((taunt_timer-80)/30)-0.6,1))),char+" balls lmao");
				draw_set_alpha(1);
			}
			break;
	}
}

if (instance_exists(hat_object) && get_match_setting(SET_HITBOX_VIS))
{
	draw_sprite_ext(hat_object.mask_index,0,hat_object.x,hat_object.y,1,1,0,c_white,0.5);
}

if (state == PS_RESPAWN)
{
	draw_sprite(sprite_get("book"), 0, x + 16, y - 26);
	draw_sprite(sprite_get("respawn_chair"), image_index, x - 62, y - 66);
}