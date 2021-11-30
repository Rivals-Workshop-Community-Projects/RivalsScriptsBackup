// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

//electrified vfx
shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	switch (attack){
	
	case AT_FSTRONG_2:
			if ewgf || elec_vfx
			draw_sprite_ext(sprite_get("ewgf_vfx"), image_index, x+(64*spr_dir), y+90, 2*spr_dir, 2, 0, c_white, 1);
			else
			draw_sprite_ext(sprite_get("wgf_vfx"), image_index, x+(64*spr_dir), y+90, 2*spr_dir, 2, 0, c_white, 1);
		break;
	
	case AT_USTRONG_2: 
			if omen || elec_vfx
			draw_sprite_ext(sprite_get("otgf_vfx"), image_index, x+(64*spr_dir), y+90, 2*spr_dir, 2, 0, c_white, 1);
			else
			draw_sprite_ext(sprite_get("dgf_vfx"), image_index, x+(64*spr_dir), y+90, 2*spr_dir, 2, 0, c_white, 1);
		break;
	
	case AT_FTILT:
		if elec_vfx
		draw_sprite_ext(sprite_get("ftilt_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
	
	
		break;
		
	case AT_DTILT:
		if elec_vfx
		draw_sprite_ext(sprite_get("dtilt_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
	

	break;
	
	case AT_JAB:
		if elec_vfx
		draw_sprite_ext(sprite_get("jab_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);


	break;
	
	case AT_FAIR:
		if elec_vfx
		draw_sprite_ext(sprite_get("fair_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);


	break;
	
	case AT_DAIR:
		if elec_vfx
		draw_sprite_ext(sprite_get("dair_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);


	break;

	case AT_NAIR:
		if elec_vfx
		draw_sprite_ext(sprite_get("nair_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);


	break;
	
	case AT_FSTRONG:
		if elec_vfx
		draw_sprite_ext(sprite_get("fstrong_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);


	break;
	
	case AT_DSTRONG:
		if elec_vfx
		draw_sprite_ext(sprite_get("dstrong_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);


	break;
	
	case AT_USTRONG:
		if elec_vfx
		draw_sprite_ext(sprite_get("ustrong_elec"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);


	break;
	}
}
shader_end();

if (object_index != oTestPlayer){
draw_sprite_ext(sprite_get("elec_meter"), 0, x, y - (char_height + 28), 1, 1, 0, c_white, 1);

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_sprite_ext(sprite_get("elec_mask"), 0, x, y - (char_height + 28), 1, 1, 0, c_white, 1);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);


gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite_ext(sprite_get("elec_bar"), 0, x-18, y - (char_height + 29), elec_charge/50, 1, 0, c_white, 1);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

if (elec_charge == 100 || instance_exists( field_obj )){
	
	animtimer += 0.2;
	
draw_sprite_ext(sprite_get("elec_meterfull"), animtimer, x, y - (char_height + 28), 1, 1, 0, c_white, 1);
}

}





if phone_attacking && attack == AT_TAUNT_2{
	shader_start();
	draw_sprite_ext(sprite_get("handbert"), 0, x + (32 + ease_quintOut(256, 0, window_timer, phone_window_end)) * spr_dir, y - 22, 2 * -spr_dir, 2, 0, c_white, 1);
	shader_end();
}

#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;