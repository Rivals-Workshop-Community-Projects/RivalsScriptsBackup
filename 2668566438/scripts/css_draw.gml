muno_event_type = 6;
user_event(14);

if !("hue" in self) hue = 0
if get_player_color(player) = 29 {
//remember rivals starts with 0
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
 
	color_rgb=make_color_rgb(71, 164, 86);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(29, 2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
 
 
	color_rgb=make_color_rgb(97, 224, 93);
	
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(29, 3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
	color_rgb=make_color_rgb(97, 224, 93);
	
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(29, 4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(97, 224, 93);
	
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(29, 7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
		    
}
//Keep repeating for every slot
init_shader();
alt_names = [
	"Bee",
	"Shiny",
	"Butterfree",
	"Scizor",
	"Yanmega",
	"Scolipede",
	"Volcarona",
	"Vivilion",
	"Vikavolt",
	"Golisopod",
	"Buzzwole",
	"Toxicroak",
	"Pinsir",
	"Shadow Lugia",
	"Heracross",
	"Accelgor",
	"Naganadel",
	"Beta Arceus",
	"Gold",
	"GB",
	"GBC",
	"Cacbot",
	"Plagued Sting",
	"Gurren Lagann",
	"Minecraft Bee",
	"Fruit Frog",
	"Buck Bumble",
	"Esbeeo",
	"Jungle Tyrant Dragon",
	"Gamer Bee",
	"Eternatus",
	"Pastel",
	];
image_alpha = max(image_alpha-0.02, 0);

var temp_x = x + 8;
var temp_y = y + 9;

var alt_cur = get_player_color(player);


var col = make_color_rgb(get_color_profile_slot_r(alt_cur, alt_ui_recolor), get_color_profile_slot_g(alt_cur, alt_ui_recolor), get_color_profile_slot_b(alt_cur, alt_ui_recolor));

if (!"currAlt" in self){
	image_alpha = 3;
	currAlt = alt_cur;
}else if (alt_cur != currAlt){
	image_alpha = 1.5;
	currAlt = alt_cur;
}
draw_sprite_ext(sprite_get("tcg_logo"), 0, x + 10, y + 80, 1, 1, 0, c_white, image_alpha);
draw_sprite_ext(sprite_get("css_bar"), 0, x - 10, y - 10, 2, 2, 0, c_white, image_alpha);

textDraw(temp_x + 8, temp_y + 126, "fName", col, 0, 1000, 1, true, image_alpha,  alt_names[alt_cur]);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, image_alpha);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 