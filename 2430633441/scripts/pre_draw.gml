


if attack == AT_USPECIAL_2 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && instance_exists(sun_ins) {
shader_start();
	var amt = state_timer*0.1;
	var signe = sign(x - sun_ins.x)
	var yy = y - char_height/2
	for (var i = 0; i < 3; i++) {
	var size = ease_sineOut(0,2,clamp(state_timer-i*20, 0, 30),30)
	draw_sprite_ext(sprite_get("ring_fx"),i,sun_ins.x,sun_ins.y-34, size, size, 0, c_white, size*0.15)
	}	
	size = ease_sineOut(0,1,clamp(state_timer, 0, 30),30)*0.3	
	for (var i = 0; i < room_width; i += 216) {
	draw_sprite_ext(sprite_get("line_fx_2"),0,sun_ins.x+i*signe,sun_ins.y-34, signe, 1, 0, c_white, size)
	}

	draw_sprite_ext(sprite_get("line_fx"),0,sun_ins.x,sun_ins.y-34, -point_distance(x, yy, sun_ins.x, sun_ins.y - 34)/266, 1, point_direction(x, yy, sun_ins.x, sun_ins.y - 34), c_white, size)
shader_end();
//	draw_sprite_ext(sprite_get("uspecial_plat"),0,x,sun_ins.y, 1, 1, 0, c_white, amt)
}

switch(sun_color) {
case 0:
	var c = get_player_color(player)
	set_character_color_slot(5, floor(get_color_profile_slot_r(c, 8)),  floor(get_color_profile_slot_g(c, 8)), floor(get_color_profile_slot_b(c, 8)), 0.5);
break;
default: case 1:
	var c = get_player_color(player)
	set_character_color_slot(5, floor(get_color_profile_slot_r(c, 0)),  floor(get_color_profile_slot_g(c, 0)), floor(get_color_profile_slot_b(c, 0)), 1);
break;
}
shader_start();
if visible {


for (var i = 0; i < maxplanets; i++) {

	if !planet[i].orbiting && !planet[i].parrytime {
		draw_sprite_ext(sprite_get("line_fx"), 0, planet[i].owner.x, planet[i].owner.y - planet[i].orbit_height, -point_distance(planet[i].x, planet[i].y, planet[i].owner.x, planet[i].owner.y - planet[i].orbit_height)/266, 1, point_direction(planet[i].x, planet[i].y, planet[i].owner.x, planet[i].owner.y - planet[i].orbit_height), c_white, 0.3)
		draw_sprite(sprite_get("fspecial_fx"), planet[i].numb, planet[i].x, planet[i].y)
	}
	//draw_debug_text(floor(planet[i].x),floor(planet[i].y+4), string(planet[i].visible))

	draw_sprite_ext(hologram[i, 0], hologram[i, 1], hologram[i, 2], hologram[i, 3], hologram[i, 5], 1, 0, c_white, hologram[i, 4])
}
for (var i = max(minstar,0); i <= maxstar; i++) {
	if i == minstar {
	//draw_sprite_ext(sprite_get("uspecial_star"), 1, star_x[i], star_y[i], 1, 1, 0, c_white, (window_timer/get_window_value(attack,window,AG_WINDOW_LENGTH)))
	} else {
	draw_sprite(sprite_get("uspecial_star"), 0, star_x[i], star_y[i])
	}
}
}
shader_end();

/*
if free && sprite_index == sprite_get("jump") && !down_down{
draw_sprite_ext(sprite_get("jump_fire"), fire_sprite, x, y, spr_dir, 1, 0, c_white, 1)
}