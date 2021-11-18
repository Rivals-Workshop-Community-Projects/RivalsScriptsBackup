//Other post draw
if(object_index == oTestPlayer || "other_player_id" not in self || !instance_exists(other_player_id) || !other_player_id.small_sprites) exit;

var starman_from_other = neo_data.starman_from_id == other_player_id || (clone && clones_player_id.neo_data.starman_from_id == other_player_id);
var starman_timer_active = neo_data.starman_time > 0 || (clone && clones_player_id.neo_data.starman_time > 0);
if(starman_from_other) {
	if(neo_data.starman_time > 0 || starman_timer_active) {
		
		var rainbow_colour = make_colour_hsv((get_gameplay_time() * 4) % 255, 255, 255);
		
		gpu_set_fog(1, rainbow_colour, 0, 0);
		draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (small_sprites + 1), small_sprites?2:1, spr_angle, image_blend, 0.6);
		gpu_set_fog(0, 0, 0, 0);
	}
}

var is_qua_mario = (url == other_player_id.url), can_escape = (is_qua_mario || get_gameplay_time() == neo_data.last_escapable_time);
if(neo_data.carried_by_id == other_player_id) {
	draw_sprite_ext(other_player_id.spr_hud_escape_tip[is_qua_mario], 0, x, y - char_height - hud_offset - 70, 1, 1, 0, can_escape?c_white:c_gray, can_escape?1.0:0.6);
	if(get_gameplay_time() % 40 < 20 && can_escape)
		draw_sprite_ext(other_player_id.spr_hud_escape_tip[is_qua_mario], 1, x, y - char_height - hud_offset - 70, 1, 1, 0, get_player_hud_color(player), 1.0);
}

// var enemy = id;
// var ice_w = 0.5 * max(32, abs(sprite_get_bbox_right(enemy.hurtboxID.sprite_index) - sprite_get_bbox_left(enemy.hurtboxID.sprite_index)));
// var ice_h = 0.5 * max(32, abs(sprite_get_bbox_top(enemy.hurtboxID.sprite_index) - sprite_get_bbox_bottom(enemy.hurtboxID.sprite_index)));
// if(enemy.state != PS_ATTACK_AIR && enemy.state != PS_ATTACK_GROUND) {
// 	ice_w += 16; ice_h += 8;
// }
// var ice_x = enemy.x, ice_y = enemy.y - ice_h;
// draw_sprite_ext(other_player_id.spr_pmask_ice, 0, floor(ice_x), ceil(ice_y), ice_w, ice_h, 0, c_white, 0.8);