//Ice Clone Frozen FX

//Ice
if (state == PS_HITSTUN && last_attack == AT_FSPECIAL_2){
	with (hit_player_obj){
		if (spr_dir == 1){
			var fx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, freeze);
			fx.depth = -10;
		}
	}
}

if (state == PS_HITSTUN && last_attack == AT_FSPECIAL_2){
	with (hit_player_obj){
		if (spr_dir == -1){
			var fx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, freeze);
			fx.depth = -10;
			fx.spr_dir = 1;
		}
	}
}




//Base Cast Sprite Pulling

//Default
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 0) {
	gpu_set_fog(1, c_blue, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.4)
	gpu_set_fog(0, c_blue, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 0) {
	gpu_set_fog(1, c_green, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.2)
	gpu_set_fog(0, c_green, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 0) {
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.2)
	gpu_set_fog(0, c_white, 0, 1);
}


//Blue
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 1) {
	gpu_set_fog(1, c_blue, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.4)
	gpu_set_fog(0, c_blue, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 1) {
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.3)
	gpu_set_fog(0, c_white, 0, 1);
}

//Yellow
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 2) {
	gpu_set_fog(1, c_red, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.4)
	gpu_set_fog(0, c_red, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 2) {
	gpu_set_fog(1, c_yellow, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.25)
	gpu_set_fog(0, c_yellow, 0, 1);
}

//Red
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 3) {
	gpu_set_fog(1, c_green, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.5)
	gpu_set_fog(0, c_green, 0, 1);
}

//Green
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 4) {
	gpu_set_fog(1, c_green, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.5)
	gpu_set_fog(0, c_green, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 4) {
	gpu_set_fog(1, c_yellow, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.2)
	gpu_set_fog(0, c_yellow, 0, 1);
}

//Black
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 5) {
	gpu_set_fog(1, c_blue, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.45)
	gpu_set_fog(0, c_blue, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 5) {
	gpu_set_fog(1, c_red, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.2)
	gpu_set_fog(0, c_red, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 5) {
	gpu_set_fog(1, c_black, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.15)
	gpu_set_fog(0, c_black, 0, 1);
}

//Purple
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 6) {
	gpu_set_fog(1, c_blue, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.4)
	gpu_set_fog(0, c_blue, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 6) {
	gpu_set_fog(1, c_green, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.3)
	gpu_set_fog(0, c_green, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 6) {
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.15)
	gpu_set_fog(0, c_white, 0, 1);
}

//Abyss
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 7) {
	gpu_set_fog(1, c_purple, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.4)
	gpu_set_fog(0, c_purple, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 7) {
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.1)
	gpu_set_fog(0, c_white, 0, 1);
}

//Gameboy
if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 8) {
	gpu_set_fog(1, c_green, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.3)
	gpu_set_fog(0, c_green, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 8) {
	gpu_set_fog(1, c_yellow, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.2)
	gpu_set_fog(0, c_yellow, 0, 1);
}

if (!custom && state == PS_HITSTUN && last_attack == AT_FSPECIAL_2 && get_player_color( last_player ) == 8) {
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale*2, image_yscale*2, spr_angle, c_white, 0.2)
	gpu_set_fog(0, c_white, 0, 1);
}


