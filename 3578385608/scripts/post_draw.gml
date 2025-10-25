//post-draw
if lab_ui_alpha > 0{
	var h = 0;
	var am = 0;
	repeat 3{
		draw_sprite_ext(sprite_get("dspecial_lab_ui_chem"), h, lab_ui_pos[0] - 16, lab_ui_pos[1] - 76 - am, 2, 2*materials[h], 0, c_white, lab_ui_alpha);
		am += materials[h]*6;
		h++;
	}
	draw_sprite_ext(sprite_get(steve_cooking? "dspecial_steve_ui": "dspecial_lab_ui"), lab_ui_act, lab_ui_pos[0], lab_ui_pos[1] - 112, 2, 2, 0, c_white, lab_ui_alpha);
	draw_set_halign(fa_center);
	textDraw(lab_ui_pos[0] - 12, lab_ui_pos[1] - 119, "fName", c_white, 0, 1000, 1, 1, lab_ui_alpha, string_copy("CCC", 1, materials[0]) + string_copy("MMM", 1, materials[1]) + string_copy("OOO", 1, materials[2]) + string_copy("___", 1, 3 - materials[0] - materials[1] - materials[2]), 0);
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && window == 4 draw_sprite_ext(sprite_get("nspecial_drinks"), image_index-10 + array_find_index(drinkable_index, stored_recipe)*4, x + draw_x, y + draw_y, 2*spr_dir, 2, 0, c_white, 1);
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT && !draw_jesse draw_sprite_ext(sprite_get("taunt_jesse"), image_index, x - 30*spr_dir, y, 2*spr_dir, 2, 0, c_white, 1);

if concoction_name[3]{
	draw_set_alpha(concoction_name[3]/40);
	draw_debug_text(concoction_name[0], concoction_name[1], (stevepotion? steve_potnames[concoction_name[2]]: recipes_name[concoction_name[2]]));
	draw_set_alpha(1);
}
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] +  argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
}
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
