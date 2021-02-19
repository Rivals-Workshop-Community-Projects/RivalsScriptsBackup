
shader_start();
//draw_debug_text(x,y+8,string(pause_joke)+" "+string(pause_joke_needed))
//pause_joke = 0;
if get_player_color(player) == 13 && random_func(4, 2, 1) == 0 {

var fs = random_func(0, sprite_height-1, 1)
draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*2)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)

}

if wearing_hat && sprite_index == sprite_get("idle") {
draw_sprite_ext(sprite_get("santahat_idle"), image_index, x, y, spr_dir, 1, 0, c_white,1)
}

if molloflashbang > 0 {
draw_sprite_ext(sprite_index,image_index,x+sin(molloflashbang*0.1)*molloflashbang,y+sin(molloflashbang*0.2)*(molloflashbang*0.2),spr_dir,1,0,c_white,molloflashbang*0.008)
		draw_sprite_ext(sprite_index,image_index,x-sin(molloflashbang*0.1)*molloflashbang,y-sin(molloflashbang*0.2)*(molloflashbang*0.2),spr_dir,1,0,c_white,molloflashbang*0.008)
}

if menualpha > -2 {
var menux, menuy;
switch(bombtype) {
	default: menux = 0; menuy = 0; break;
	case 1: menux = -6; menuy = 0; break; //Flashbang, right
	case 2: menux = 6; menuy = 0; break; //Baseball, left
	case 3: menux = 0; menuy = -6; break; //Finisher, down
	case 4: menux = 0; menuy = 6; break; //Firecracker, up
}
var s = brickmode ? sprite_get("bombmenuB") : sprite_get("bombmenu")
draw_sprite_ext(s, menuimage, x+(5*spr_dir)+((1-menualpha)*menux), y+((1-menualpha)*menuy)-19,2,2,0,c_white,menualpha)
if bombtype > 0 draw_sprite_ext(sprite_get("bombmenuS"), bombtype, x+(5*spr_dir)+((1-menualpha)*menux), y+((1-menualpha)*menuy)-19,2,2,0,c_white,menualpha+1)
}
var crosssize = min((state_timer/flaremin),1)
// flarex > 0 draw_sprite_ext(sprite_get("crosshairs"), 0, x+flarex*spr_dir, y+flarey,1-crosssize,1-crosssize,(1-crosssize)*90,c_white,1)
if flarex > 0 draw_sprite_ext(sprite_get("crosshairs"), crosssize, x+flarex*spr_dir, y+flarey,1,1,0,c_white,1)

var w = get_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH)/2
var h = get_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT)/2
/*
if flarex > 0 with (obj_article1) {
	if abs(x - (other.x+other.flarex*other.spr_dir)) < w && abs(y - (other.y+other.flarey)) < h {
		draw_sprite_ext(sprite_get("crosshairs"), 1, x, y,1,1,fuse*2,c_white,1)
	} else {
	draw_sprite_ext(sprite_get("crosshairs"), 0, x, y,1,1,fuse,c_white,1)
	}
}
*/


shader_end();
//draw_debug_text(x,y,string(djumps)+" "+string(can_jump))