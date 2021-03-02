var Yy = image_yscale*(1+small_sprites);
var Xx = spr_dir*(1+small_sprites);
if bake_time > 0 { 
	
	
	
	if bake_time < bake_max{

		var amt = ease_expoIn(2, 10, bake_time, bake_max)
		ds = 2
		ds -= min(bake_time-20, 0)
		var col = c_orange;
		switch(self_effect) {
			default: break;
			case 4: 
			var c = get_player_color(player);
			col = make_color_rgb(get_color_profile_slot_r(c, 0), get_color_profile_slot_g(c, 0), get_color_profile_slot_b(c, 0));
			break;
			case 1: 
			col = make_color_rgb(get_color_profile_slot_r(0, 7), get_color_profile_slot_g(c, 7), get_color_profile_slot_b(c, 7));
			break;
			case 2: 
			col = make_color_rgb(get_color_profile_slot_r(0, 8), get_color_profile_slot_g(c, 8), get_color_profile_slot_b(c, 8));
			break;
			case 3: 
			col = make_color_rgb(get_color_profile_slot_r(0, 9), get_color_profile_slot_g(c, 9), get_color_profile_slot_b(c, 9));
			break;
		}
		
		gpu_set_fog(1, col, -1000, 0)

		draw_sprite_ext(sprite_index, image_index, x-ds, y, Xx, Yy, 0, c_black, abs(dcos(bake_time*amt)))
		draw_sprite_ext(sprite_index, image_index, x+ds, y, Xx, Yy, 0, c_black,  abs(dcos(bake_time*amt)))
		draw_sprite_ext(sprite_index, image_index, x, y-ds, Xx, Yy, 0, c_black,  abs(dcos(bake_time*amt)))
		draw_sprite_ext(sprite_index, image_index, x, y+ds, Xx, Yy, 0, c_black,  abs(dcos(bake_time*amt)))
		
		switch(self_effect) {
			default: break;
			case 4: 
			draw_sprite_ext(sprite_index, image_index, x+(ds*spr_dir)+spr_dir*4, y, Xx, Yy, 0, c_black, abs(dcos(bake_time*amt)))
			break;
			case 1: 
			draw_sprite_ext(sprite_index, image_index, x, y-ds-4, Xx, Yy, 0, c_black, abs(dcos(bake_time*amt)))
			break;
			case 2: 
			draw_sprite_ext(sprite_index, image_index, x, y+ds+4, Xx, Yy, 0, c_black, abs(dcos(bake_time*amt)))
			break;
			case 3: 
			draw_sprite_ext(sprite_index, image_index, x-(ds*spr_dir)-spr_dir*4, y, Xx, Yy, 0, c_black, abs(dcos(bake_time*amt)))
			break;
		}
		gpu_set_fog(0, c_orange, 0, 0)
	} else {
		var amt = ease_linear(1, 0, bake_time-bake_max, bake_reset)
		ds = 2
		gpu_set_fog(1, c_orange, -1000, 0)
		draw_sprite_ext(sprite_index, image_index, x-ds, y, Xx, Yy, 0, c_black, amt)
		draw_sprite_ext(sprite_index, image_index, x+ds, y, Xx, Yy, 0, c_black,  amt)
		draw_sprite_ext(sprite_index, image_index, x, y-ds, Xx, Yy, 0, c_black,  amt)
		draw_sprite_ext(sprite_index, image_index, x, y+ds, Xx, Yy, 0, c_black,  amt)
		gpu_set_fog(0, c_orange, 0, 0)	
	}
}

if bake_draw > 0 && bake_time >= 0 {
var ring = sprite_get("fire_ring");
var wid = sprite_get_width(ring);
var hei = sprite_get_height(ring);
var yyy = ease_sineInOut(0, hei, bake_time, bake_max);
	draw_sprite_part(ring, 0, 0, hei-yyy, wid, yyy, x-wid/2, (y+hei/2)-floor(char_height/2)-yyy)
}
/*
if bake_draw > 0 && bake_time >= 0 {
	var drawdiv = 40;
	var len = 60;
	//print_debug("sup")
	for (var i = 0; i <= (1-(bake_draw))*(drawdiv); i++) {
		var angang = i*(180/drawdiv)-90
		draw_sprite_ext(sprite_get("tinyfire"),(i/drawdiv)*32,x+lengthdir_x(len,angang),(y-char_height/2)+lengthdir_y(len,angang),1,1,angang-90,c_white,1)
		angang = i*-(180/drawdiv)-90
		draw_sprite_ext(sprite_get("tinyfire"),(i/drawdiv)*32,x+lengthdir_x(len,angang),(y-char_height/2)+lengthdir_y(len,angang),1,1,angang-90,c_white,1)
	}
}
*/
if bake_time >= -1 && (bake_color == 1 or self_effect) {

bake_color = 0;
var c = get_player_color(player)
var s = 1;
if self_effect switch(self_effect) {
	case 4: s = 0; break;
	case 1: s = 7; break;
	case 2: s = 8; break;
	case 3: s = 9; break;
}
if s == 0 set_character_color_slot(2, get_color_profile_slot_r(c, s),  get_color_profile_slot_g(c, s), get_color_profile_slot_b(c, s), 1);
else set_character_color_slot(2, get_color_profile_slot_r(0, s),  get_color_profile_slot_g(0, s), get_color_profile_slot_b(0, s), 1);
set_character_color_slot(1, floor(lerp(get_color_profile_slot_r(c, 1), get_color_profile_slot_r(0, s), 0.3)),  floor(lerp(get_color_profile_slot_g(c, 1), get_color_profile_slot_g(0, s), 0.3)), floor(lerp(get_color_profile_slot_b(c, 1), get_color_profile_slot_b(0, s), 0.3)), 1);
}

if bake_time >= bake_max or bake_time < -1 {
bake_color = 1;
var c = get_player_color(player)
set_character_color_slot(1, floor(get_color_profile_slot_r(c, 1)*(get_color_profile_slot_r(c, 5)/255)),  floor(get_color_profile_slot_g(c, 1)*(get_color_profile_slot_g(c, 5)/255)), floor(get_color_profile_slot_b(c, 1)*(get_color_profile_slot_b(c, 5)/255)), 1);
set_character_color_slot(2, floor(get_color_profile_slot_r(c, 2)*(get_color_profile_slot_r(c, 5)/255)),  floor(get_color_profile_slot_g(c, 2)*(get_color_profile_slot_g(c, 5)/255)), floor(get_color_profile_slot_b(c, 2)*(get_color_profile_slot_b(c, 5)/255)), 1);
}

if bake_time < -1 {
bake_color = 1;

}

if get_player_color(player) == 10 {
set_character_color_shading(0, 0)
set_character_color_shading(1, 0)
set_character_color_shading(2, 0)
set_character_color_shading(3, 0)
set_character_color_shading(4, 0)
set_character_color_shading(5, 0)
}

	var d = sprite_get("launchdir");

if amarelle_player == enemykirby && enemykirby != noone {

with (other_player_id) {shader_start()}
var p = 0; repeat(2) {
if amarelle_timer > 0 && !p {p++; continue}
switch(amarelle_effect[p]) {
	default: case 1:
		draw_sprite(d, 0, x, y-char_height-20)
	break;
	case 2:
		draw_sprite(d, 1, x, y+10)
	break;
	case 3:
		var xx;
		if spr_dir > 0 xx = bbox_right+20+p*30; else xx = bbox_left-20-p*30;
		draw_sprite_ext(d, 2, xx, y-char_height/2, -spr_dir, 1, 0, c_white, 1)
	break;
	case 4:
		var xx;
		if spr_dir < 0 xx = bbox_right+20+p*30; else xx = bbox_left-20-p*30;
		draw_sprite_ext(d, 3, xx, y-char_height/2, -spr_dir, 1, 0, c_white, 1)
	break;
}
p++;
}

}
