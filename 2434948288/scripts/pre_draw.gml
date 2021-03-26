var colour1 = make_colour_rgb(	get_color_profile_slot_r(get_player_color( player ), 1),
								get_color_profile_slot_g(get_player_color( player ), 1),
								get_color_profile_slot_b(get_player_color( player ), 1));

// fspec stuff
if (attack == AT_FSPECIAL && window == 1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
	draw_set_alpha(clamp((state_timer / 10), 0, 0.5));
	gpu_set_blendmode(bm_add);
	draw_circle_colour(floor(x + 8 * spr_dir * state_timer), y - 30, floor((12-state_timer)*10), c_black, c_white, false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}

// Respawn
if (state == PS_RESPAWN)
{
	shader_start();
	draw_sprite_ext(sprite_get("pla"), -1, x, y, 2*spr_dir, 2, 0, c_white, 1);
	shader_end();
}

// Bury
with (oPlayer)
{
	if ("burieddd" in self && burieddd > 0 && player != other.player)
	{
		shader_start();
		draw_sprite_ext(sprite_index,image_index,x,y+min(burieddd/2, 20),spr_dir*(1+small_sprites),1+small_sprites,0,colour1,1);
		shader_end();
	}
}

// Trans
if (get_player_color(player) == 6)
{
	FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
	FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
	FlagPart(c_white, 1/5, 2/5);
	gpu_set_fog(0, c_white, 0, 0);
}

// trans flag
if ("transcounter" in self && transcounter != 0 && draw_indicator)
{
	var mayablue = make_colour_rgb(85, 205, 252);
	var pinkkk = make_colour_rgb(247, 168, 223);
	var drawyyy = y - 30;
	draw_set_alpha(0.5);
    draw_rectangle_color(x-transcounter,drawyyy-30,x+transcounter,drawyyy-19,mayablue,mayablue,mayablue,mayablue,false);
    draw_rectangle_color(x-transcounter,drawyyy-18,x+transcounter,drawyyy-7,pinkkk,pinkkk,pinkkk,pinkkk,false);
    draw_rectangle_color(x-transcounter,drawyyy-6,x+transcounter,drawyyy+5,c_white,c_white,c_white,c_white,false);
    draw_rectangle_color(x-transcounter,drawyyy+6,x+transcounter,drawyyy+17,pinkkk,pinkkk,pinkkk,pinkkk,false);
    draw_rectangle_color(x-transcounter,drawyyy+18,x+transcounter,drawyyy+29,mayablue,mayablue,mayablue,mayablue,false);
	draw_set_alpha(1);
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}