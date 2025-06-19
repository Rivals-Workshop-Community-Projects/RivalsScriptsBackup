//draw hud

// Chair icon
var chair_color = c_white;
//if move_cooldown[AT_NSPECIAL] > 0 {chair_color = c_gray;}
if variable_instance_exists(id, "myChair") && instance_exists(myChair) && !has_rolling_girl {
	draw_sprite_ext(sprite_get("chair_icon_energy_outline"), floor(1), temp_x + 184, temp_y - 16,1,1,0,c_white,1);
}
var cooldown = (ceil((move_cooldown[AT_NSPECIAL] / universal_chair_big_cooldown) * 7));
if !chair_cooldown_by_destruction {cooldown = 0;}
draw_sprite_ext(sprite_get("tiny_chair_icon"), cooldown, temp_x + 186, temp_y - 14,1,1,0,chair_color,1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_get("tiny_chair_icon"), cooldown, temp_x + 186, temp_y - 14,1,1,0,chair_color,chair_hit_add_opacity);
chair_hit_add_opacity = max(0, chair_hit_add_opacity - 0.1)
gpu_set_blendmode(bm_normal);

//LOYAL FANS icon
/* if variable_instance_exists(id, "ring_summon_count") && ring_summon_count > 0 {
	draw_sprite(sprite_get("arena_icon_dark"), floor(1), temp_x + 186, temp_y - 12);
} else {
	draw_sprite(sprite_get("arena_icon"), floor(1), temp_x + 186, temp_y - 12);
} */

// Offscreen Chair
if variable_instance_exists(id, "myChair") && instance_exists(myChair) {
	var chair_radius = 33;
	var cx = myChair.x - chair_radius;
	var cy = myChair.y - chair_radius*2;
	var margin = 34;
	var index = 2;

	// Check each screen border
	var off_l = cx  < view_get_xview();
	var off_r = cx > view_get_xview() + view_get_wview();
	var off_u = cy < view_get_yview() - chair_radius*1.5;
	var off_d = cy > view_get_yview() + view_get_hview();

	// Determine the viewfinder thing's sprite
	if off_l{ index = 0; if off_u index = 1; if off_d index = 7; }
	else if off_r{ index = 4; if off_u index = 3; if off_d index = 5; }
	else if off_u index = 2;
	else if off_d index = 6;

	// If the chair is off-screen, draw the offscreen icon.
	if off_l || off_r || off_u || off_d {
		// Set draw coordinates. The +1 / -2 stuff is magic numbers but I'm not fixing it.
		var draw_x = clamp(cx - view_get_xview(), margin - chair_radius + 1, view_get_wview() - margin - chair_radius - 1);
		var draw_y = clamp(cy - view_get_yview(), margin - chair_radius + 1, view_get_hview() - margin - chair_radius - 2);
		draw_sprite_ext(sprite_get("chair_offscreen"), index, draw_x, draw_y, 1, 1, 0, get_player_hud_color(player), 1);
		shader_start();
		var left_facing_offset = 66; // Image width. Not related to chair_radius*2
		if myChair.spr_dir left_facing_offset = 0;
		draw_sprite_ext(sprite_get("chair_offscreen"), 8, draw_x + left_facing_offset, draw_y, myChair.spr_dir, 1, 0, c_white, 1);
		shader_end();
	end
end
