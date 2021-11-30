// pre-draw
shader_start()

// var text;
// text = fspecial_used ? "used" : "not used";
// draw_debug_text(x,y - 100, "FSPECIAL USED = "+text)

//draw behind char
if state == PS_ATTACK_GROUND
{
	switch attack
	{
		case AT_USTRONG:
			draw_sprite_ext(sprite_get(strong_powered_up ? "ustrong_thunder" : "ustrong_bolt"),image_index,x,y,spr_dir,image_yscale,0,-1,1)
			break;
	}
}

if (state == PS_RESPAWN)
{
	draw_sprite_ext(sprite_get("plat_bg"), get_gameplay_time(), x, y, 1, 1, 0, -1, 1 ) 
}

shader_end()
