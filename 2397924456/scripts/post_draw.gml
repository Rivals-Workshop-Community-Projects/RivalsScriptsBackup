muno_event_type = 4;
user_event(14);



if jab_timer draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - char_height - hud_offset - 28, 1, 1, 0, c_white, 1);



if legion.state == PS_ATTACK_AIR && legion.image_alpha > 0.1{
	shader_start();
	var l = legion;
	draw_sprite_ext(l.sprite_index, l.image_index, l.x, l.y, l.spr_dir, 1, 0, c_white, 1);
	shader_end();
}



// if phone_attacking && attack == AT_FTHROW && (image_index < 3 || image_index == 4){
// 	shader_start();
// 	draw_sprite_ext(legion.sprite_index, legion.image_index, legion.x, legion.y, legion.spr_dir, 1, 0, c_white, 1);
// 	shader_end();
// }


exit;

var end_x = legion.x;
var end_y = legion.y;
var off_y = -32;
var max_r = 400;
var height = lerp(100, 10, distance_to_point(end_x, end_y) / max_r);

for (var i = -2; i < 3; i++){
	draw_sprite_pos(sprite_get("test_chain"), 0,
		i + x, y + off_y,
		i + end_x, end_y + off_y,
		i + end_x, end_y + off_y + height,
		i + x, y + off_y + height,
		1);
}