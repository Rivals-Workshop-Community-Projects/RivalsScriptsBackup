// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

if weegee_face {
	shader_start()
	draw_sprite_ext(sprite_get("weegee_face"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
	shader_end()
}
if phone_attacking && attack == AT_TAUNT{
	draw_sprite_ext(sprite_get("taunt_overlay"), 0, x + 0 * spr_dir, y - (ease_quintOut(269, 0, floor(window_timer*2), phone_window_end)), 2*spr_dir, 2, 0, c_white, 1);
}

if phone_attacking && attack == AT_USPECIAL && window == 1 && window_timer < 13{
	draw_sprite_ext(sprite_get("uspecial_joint"), sanic_uspec_count, x, y, 2*spr_dir, 2, 0, c_white, 1);
}

if((state == PS_RESPAWN || attack == AT_TAUNT) && respawnplat == 1){
	shader_start();
	if weegee_face{
		draw_sprite_ext(sprite_get("weegee_face_overlay"), 0, x, y, 2*spr_dir, 2, 0, -1, .5);	
	}
	draw_sprite_ext(sprite_get("plat"), 0, x, y, 2*spr_dir, 2, 0, -1, 1)
	if(attack != AT_TAUNT || attack != AT_TAUNT_2 || attack != 43 || attack != AT_EXTRA_2){
		draw_sprite_ext(sprite_get("plat_feet"), 0, x, y, 2*spr_dir, 2, 0, -1, 1)
		draw_sprite_ext(sprite_get("plat_feet"), 1, x, y, 2*spr_dir, 2, 0, -1, .5)
	}
	shader_end();
}

with(pHitBox){
    if(player_id == other && type == 2 && attack == AT_DSPECIAL && hbox_num == 1){
        draw_sprite_ext(sprite_get("dspecial_bullet"), 0, x+(99*image_xscale)*spr_dir, y, image_xscale*2.6*spr_dir, 1, 0, c_white, 1);
    }
	if(player_id == other && attack == AT_DSTRONG && hbox_num == 1){
		draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x-6*spr_dir,y-70, spr_dir, 1, 0, get_player_hud_color(player), 1);
	} 
	if(player_id == other && attack == AT_USTRONG && hbox_num == 1){
		draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x,y-40, spr_dir, 1, 0, get_player_hud_color(player), 1);
	}	
	if(player_id == other && attack == AT_FSTRONG && hbox_num == 3){
		draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x,y-90, spr_dir, 1, 0, get_player_hud_color(player), 1);
	} 	
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