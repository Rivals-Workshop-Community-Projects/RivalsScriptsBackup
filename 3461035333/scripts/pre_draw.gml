// Tp leaves
if (mark_meter > 0)
{
	if instance_exists(after_image1) and (after_image1.state == 1)
	{
		/*
		if ((get_gameplay_time()) mod 14 == 0)
		{
			var rd_x = random_func(0,80,true);
			var rd_y = random_func(0,80,true);
			spawn_hit_fx(x-(41*spr_dir) + rd_x*spr_dir,y+30-rd_y,leaf_effect);
		}
		*/
		
		var rd_mod = random_func(0,7,true);
		if ((get_gameplay_time()) mod 16 == 0) or ((get_gameplay_time()) mod 18+rd_mod == 0)
		{
			var rd_x = random_func(1,75,true);
			var rd_y = random_func(2,70,true);
			spawn_hit_fx(x-(45*spr_dir) + rd_x*spr_dir,y+20-rd_y,leaf_effect);
		}
		
	}
}

// Sage mode aura
if (sage_mode == 1)
{
	if (get_player_color( player ) == 0)
	{
		var color = make_colour_rgb(221,234,176);
	}
	else
	{
		var color = make_colour_rgb(get_color_profile_slot_r(get_player_color(player),5),
		get_color_profile_slot_g(get_player_color(player),5),
		get_color_profile_slot_b(get_player_color(player),5));	
	}
	var sosis = 1.05;
	gpu_set_fog(1,color,0,1);
	draw_sprite_ext(sprite_index, image_index,x,y,(sosis*spr_dir),sosis,0,color,0.6);
	gpu_set_fog(0,c_white,0,0);
	if ((get_gameplay_time()) mod 2 == 0) or ((get_gameplay_time()) mod 4 == 0) or ((get_gameplay_time()) mod 6 == 0) or ((get_gameplay_time()) mod 8 == 0)
	{
	    var rd_x = random_func(4,80,true);
	    var rd_y = random_func(5,80,true);
	    spawn_hit_fx(x-40+rd_x,y-20+rd_y,aura_effect);
	}
}

// nspec arrow
if (sprite_index == sprite_get("nspecial_throw"))
or (sprite_index == sprite_get("nspecial_throw_air"))
or (sprite_index == sprite_get("sage_nspecial_throw"))
or (sprite_index == sprite_get("sage_nspecial_throw_air"))
{
	if (attack == AT_NSPECIAL) and (!instance_exists(after_image1)){ 
		// directional arrow
		var arrowXOffset = -35;
		var arrowYOffset = -35;
		if (window == 1){//>
			draw_sprite_ext( sprite_get("_arrow"), 0, x + ((40 + arrowXOffset) * spr_dir), y - (62 + arrowYOffset), spr_dir, 1, last_joy_dir + 90, c_white, 1 );
		}
	}
	
	// dspec arrow
	if (attack == AT_DSPECIAL) or (attack == AT_NSPECIAL and instance_exists(after_image1)) and after_image1.sprite_index != sprite_get("fair") { 
		// directional arrow
		var arrowXOffset = -40;
		var arrowYOffset = -25;
		if (window == 1){//>
			draw_sprite_ext( sprite_get("_arrow"), 0, after_image1.x + ((40 + arrowXOffset) * spr_dir), after_image1.y - (62 + arrowYOffset), spr_dir, 1, last_joy_dir + 90, c_white, 1 );
		}
	}	
}

//Fstrong distance indicator 
if (
(sprite_index == sprite_get("fstrong")) 
or (sprite_index == sprite_get("sage_fstrong"))
or (sprite_index == sprite_get("sage_fstrong_air"))
or (sprite_index == sprite_get("fstrong_air"))
) 
and window < 3 and strong_charge > 0
{
	if spr_dir var dir = 90 else var dir = -90;
	draw_sprite_ext( sprite_get("_arrow"), 0, x + ((30 + (strong_charge * 1.5)) * spr_dir), y - 40, spr_dir, 1, dir, c_white, 1);
}