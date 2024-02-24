// pre-draw
if main_pl = self with oPlayer if self != other && player = other.player && projection && draw_proj{
	shader_start();
	draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, spr_angle, c_white, .5 - .25*((strong_charge%10 >= 5 && window = get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)) || hurtboxID.dodging));
	shader_end();
	if strong_charge%10 >= 5 && window = get_attack_value(attack, AG_STRONG_CHARGE_WINDOW){
		gpu_set_fog(1, c_yellow, 1, 0);
		draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, spr_angle, c_white, .25);
		gpu_set_fog(0, c_yellow, 1, 0);
	}
	if hurtboxID.dodging{
		gpu_set_fog(1, c_white, 1, 0);
		draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, spr_angle, c_white, .25);
		gpu_set_fog(0, c_white, 1, 0);
	}
}