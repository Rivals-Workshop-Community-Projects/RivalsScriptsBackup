var temp_x = x + 8;
var temp_y = y + 9;

image_speed = 0;
image_alpha = max(image_alpha-0.01, 0)

//x -= 1
var xx, yy;
xx = x+13
yy = y+46
yyy = y+62
var t = get_player_color(player);
if t != image_index image_alpha = 1.5;

image_index = t;

patch_ver = "1.95";
patch_day = "8";
patch_month = "SEP";

var num_alts = 16;
var alt_cur = get_player_color(player);

if image_alpha > 0{
  draw_sprite_ext(sprite_get("cssdark"), 0, temp_x, temp_y-1, 2, 2, 0, c_white, image_alpha);
}

draw_sprite_ext(sprite_get("defaultalt"), 0, temp_x, temp_y-1, 2, 2, 0, c_white, 1);

// CSS Goodies
// Seasonal
if (alt_cur == 6){
  draw_sprite_ext(sprite_get("cssextras"), 2, temp_x + 167, temp_y + 69, 1, 1, 0, c_white, 1);
}
// Abyss
if (alt_cur == 9){
  draw_sprite_ext(sprite_get("cssextras"), 1, temp_x + 167, temp_y + 69, 1, 1, 0, c_white, 1);
}
// Early Access
if (alt_cur == 10){
  draw_sprite_ext(sprite_get("cssextras"), 3, temp_x + 167, temp_y + 69, 1, 1, 0, c_white, 1);
}
// Little Star
if (alt_cur == 8){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 167, temp_y + 69, 1, 1, 0, c_white, 1);
}
// Show Nothing
if (alt_cur != 6 and alt_cur != 7 and alt_cur != 8 and alt_cur != 9 and alt_cur != 10){
  draw_sprite_ext(sprite_get("cssextras"), 2, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 0);
}

if image_alpha > 0 {
  draw_sprite_ext(sprite_get("cssstocks"), alt_cur, temp_x + 3, temp_y + 107, 1, 1, 0, c_white, image_alpha);
}

draw_set_font(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(xx-2, yy, ("[V. " + patch_ver + "]"), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx+2, yy, ("[V. " + patch_ver + "]"), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx, yy-2, ("[V. " + patch_ver + "]"), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx, yy+2, ("[V. " + patch_ver + "]"), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx+2, yy-2, ("[V. " + patch_ver + "]"), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx+2, yy+2, ("[V. " + patch_ver + "]"), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx-2, yy-2, ("[V. " + patch_ver + "]"), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx-2, yy+2, ("[V. " + patch_ver + "]"), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx, yy, ("[V. " + patch_ver + "]"), c_white, c_white, c_white, c_white, 1);

// DAY AND MONTH
draw_text_color(xx-2, yyy, (patch_day + " " + patch_month), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx+2, yyy, (patch_day + " " + patch_month), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx, yyy-2, (patch_day + " " + patch_month), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx, yyy+2, (patch_day + " " + patch_month), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx+2, yyy-2, (patch_day + " " + patch_month), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx+2, yyy+2, (patch_day + " " + patch_month), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx-2, yyy-2, (patch_day + " " + patch_month), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx-2, yyy+2, (patch_day + " " + patch_month), c_black, c_black, c_black, c_black, 1);
draw_text_color(xx, yyy, (patch_day + " " + patch_month), c_white, c_white, c_white, c_white, 1);
