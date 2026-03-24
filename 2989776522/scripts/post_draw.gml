// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

shader_start();

if (attacking && attack == AT_DATTACK){
	if (window == 2){
		draw_sprite_ext(sprite_get("dattack_forcefield"),dattack_anim,x+75*spr_dir,y-85,2*spr_dir,2,25*spr_dir,c_white,dattack_alpha/10);
	}else if (window == 3){
		draw_sprite_ext(sprite_get("dattack_forcefield"),dattack_anim,x+80*spr_dir,y-55,2*spr_dir,2,0,c_white,dattack_alpha/10);
	}else if (window == 4 || window >= 5){
		draw_sprite_ext(sprite_get("dattack_forcefield"),dattack_anim,x+75*spr_dir,y-25,2*spr_dir,2,-25*spr_dir,c_white,dattack_alpha/10);
	}
	if (window == 5 && !free){
		draw_sprite_ext(villager_bury_sprite,0,x+55*spr_dir,y,2,2,0,c_white,1);
		draw_sprite_ext(villager_bury_sprite,0,x-10*spr_dir,y,2,2,0,c_white,1);
	}
}

shader_end();

if(bonus_damage_flash > 0){
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y+draw_y+(bonus_damage_flash/4), spr_dir*((small_sprites+1)-(-bonus_damage_flash/100)), (1*small_sprites+1)-(-bonus_damage_flash/100), spr_angle, c_white, bonus_damage_flash/200);
	draw_sprite_ext(sprite_index, image_index, x, y+draw_y, spr_dir*(small_sprites+1), 1*small_sprites+1, spr_angle, c_white, bonus_damage_flash/100);
	gpu_set_fog(false, c_white, 1, 1);
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