
//Arrow for aiming U-Special
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window <= 2 ^^ window_timer <= 20) {
	aim_draw_x = x + lengthdir_x(60, phantom.throw_dir);
	aim_draw_y = y - 30 + lengthdir_y(60, phantom.throw_dir);
	draw_sprite_ext(sprite_get("phantom_aim_arrow"), 0, aim_draw_x, aim_draw_y, 1, 1, phantom.throw_dir, image_blend, image_alpha);
}