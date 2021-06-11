
//Drawing Grab Cursor
if (wario_grab == true){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL_2 && window == 2){
        if (grab_dir >= 0 && grab_dir < 1){
            draw_sprite_ext(sprite_get("nspecial_cursor"), image_index, x+30*spr_dir, y-60, 
            1, 1, 270*spr_dir, c_white, 1 );   
        }
        if (grab_dir >= 1 && grab_dir < 2){
            draw_sprite_ext(sprite_get("nspecial_cursor"), image_index, x+30*spr_dir, y-60, 
            1, 1, 288*spr_dir, c_white, 1 );   
        }
        if (grab_dir >= 2 && grab_dir < 3){
            draw_sprite_ext(sprite_get("nspecial_cursor"), image_index, x+30*spr_dir, y-60, 
            1, 1, 306*spr_dir, c_white, 1 );   
        }
        if (grab_dir >= 3 && grab_dir < 4){
            draw_sprite_ext(sprite_get("nspecial_cursor"), image_index, x+30*spr_dir, y-60, 
            1, 1, 324*spr_dir, c_white, 1 );   
        }
        if (grab_dir >= 4 && grab_dir < 5){
            draw_sprite_ext(sprite_get("nspecial_cursor"), image_index, x+30*spr_dir, y-60, 
            1, 1, 342*spr_dir, c_white, 1 );   
        }
        if (grab_dir == 5){
            draw_sprite_ext(sprite_get("nspecial_cursor"), image_index, x+30*spr_dir, y-60, 
            1, 1, 0, c_white, 1 );   
        }
    }
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_FSPECIAL){
		draw_sprite_ext( sprite_get("fspecial_fx"), image_index, x, y, spr_dir, 1, 0, c_white, .5);
	}
	if (attack == AT_FSPECIAL_AIR){
		draw_sprite_ext( sprite_get("fspecial_jet_fx"), image_index, x, y, spr_dir, 1, 0, c_white, .5);
	}
}

if (attack == 49 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
	if(window == 2){
    draw_sprite_ext(sprite_get("meter"), 0, x - 35, y, 2, 2, 0, -1, 1);
    draw_sprite_part_ext(sprite_get("meter"), 1, 1, 0, fs_timer, 6, x - 35 + 2, y, 2, 2, -1, 1);
    //draw_sprite_ext(sprite_get("garlic"), 0, waluigi_x, waluigi_y, 1, 1, 0, -1, 1);
	}
	
}

/*	
for(var m = 0; m < array_length_1d(blur); m++) {

		if (m == 4 || m == 8 || m == 12 || m == 16){
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		if (attack == AT_FSPECIAL_AIR)
			draw_sprite_ext( sprite_get("fspecial_jet_overlay"), image_index, x, y, 1, 1, 0, c_white, 0.25);
		}
		
	}