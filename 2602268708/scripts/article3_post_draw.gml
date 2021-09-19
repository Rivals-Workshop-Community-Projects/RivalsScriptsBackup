var wtf_ang = cannon_dir-90;
var wtf_fuck = 16;
var wtf_x = -wtf_fuck * cos(degtorad(wtf_ang));
var wtf_y = wtf_fuck * sin(degtorad(wtf_ang));

var alpha = 1;

if (disappear_time > disappear_time_max - 30)
	alpha = (disappear_time / 2) % 2 == 0 ? .5 : 1

if (disappear_time > disappear_time_max - 30)
	alpha = (disappear_time / 2) % 2 == 0 ? .5 : 1

draw_sprite_ext(sprite_get("uspecial_barrel"), 0, x + wtf_x + 1, y + wtf_y - 17, 1, 1, cannon_dir, c_white, alpha);
draw_sprite_ext(sprite_get("uspecial_base"), 0, x, y, 1, 1, 0, c_white, alpha);

shader_end();
if get_match_setting(SET_HITBOX_VIS){
	draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, .5);
	
	if ("hitbox2" in self && instance_exists(hitbox2))
		draw_sprite_ext(hitbox2.mask_index, 0, hitbox2.x, hitbox2.y, 1, 1, hitbox2.image_angle, c_white, .5);
}