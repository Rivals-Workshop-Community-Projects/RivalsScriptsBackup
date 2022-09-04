//Draw Tail in front of Carol
if (tsprite_index!=-1 && tfront==true){
	init_shader();
	if (get_player_color(player) == 17)
	{
		var base = 4*8;
		static_colorO[base] = 0.137;
		static_colorO[base+1] = 0.262;
		static_colorO[base+2] = 0.192;
	}
	shader_start();
	draw_sprite_ext(tsprite_index, timage_index, x+tx, y+ty, tsx*image_xscale, tsy, trotation, c_white, 1);
	shader_end();
}

//Draw Bike and shield in front of Carol
if (bsprite_index!=-1 && bfront==true){
	init_shader();
	if (get_player_color(player) == 17)
	{
		var base = 4*8;
		static_colorO[base] = 0.137;
		static_colorO[base+1] = 0.262;
		static_colorO[base+2] = 0.192;
	}
	shader_start();
	draw_sprite_ext(bsprite_index, bimage_index, x+bx, y+by, bsx*image_xscale, bsy, brotation, c_white, 1);
	shader_end();
}

switch (state)
{
	case PS_PARRY:
		if (state_timer == 1)
		{
			var guard = spawn_hit_fx(x, y, parry_shield);
			guard.depth = -100;
		}
	break;
	case PS_WALL_JUMP:
		if (motorbike == false)
		{
			draw_sprite_ext(sprite_get("walljump_counter2"), walljump_number, x-26, y-80, 2, 2, 0, c_white, 1);
		}
	break;
	default:
	break;
}

if (motorbike == false && fuel >=40)
{
	draw_sprite_ext(sprite_get("fuel_prompt2"), 0, x-26, y-84, 2, 2, 0, c_white, 1);
}
if (hitConfirm)
{
	draw_sprite_ext(sprite_get("fuel_canister"), 0, x-16, y-84, 2, 2, 0, c_white, 1);
	draw_debug_text(x+4, y-80, string(fuel));
}

if (nBoostReadyTimer < 100 && move_cooldown [AT_FSPECIAL_2] == 0)
{
	draw_sprite_ext(sprite_get("nitro_ready"), 0, x-36, y-94, 2, 2, 0, c_white, 1);
}