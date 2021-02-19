// post_draw

var red1 = get_color_profile_slot_r(get_player_color( player ), 1);
var green1 = get_color_profile_slot_g(get_player_color( player ), 1);
var blue1 = get_color_profile_slot_b(get_player_color( player ), 1);
var colour1 = make_colour_rgb(red1, green1, blue1);

with (oPlayer)
{
	if ("buriedd" in self && buriedd > 0 && player != other.player)
	{
		shader_start();
		draw_sprite_ext(sprite_index,image_index,x,y+min(buriedd/2, 20),spr_dir,1,0,colour1,1);
		shader_end();
	}
}

if ("practicemode" in self && practicemode && careeningui)
{
	with (pHitBox)
	{
		if (attack == AT_DSPECIAL && hbox_num == 2)
		{
			draw_sprite_ext(sprite_get("line"),0,x,y,2,2,flipangle(kb_angle+90,hsp,spr_dir)-90,c_white,1);
			draw_debug_text(x-10, y-30, string(kb_angle));
		}
	}
}

#define flipangle(angle, hsp, spr_dir)
{
	if (sign(spr_dir) == -1)
		return 360 - angle;
	return angle;
}