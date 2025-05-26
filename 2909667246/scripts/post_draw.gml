muno_event_type = 4;
user_event(14);

if(bonus_damage_flash > 0){
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y+draw_y+(bonus_damage_flash/4), spr_dir*((small_sprites+1)-(-bonus_damage_flash/100)), (1*small_sprites+1)-(-bonus_damage_flash/100), spr_angle, c_white, bonus_damage_flash/200);
	draw_sprite_ext(sprite_index, image_index, x, y+draw_y, spr_dir*(small_sprites+1), 1*small_sprites+1, spr_angle, c_white, bonus_damage_flash/100);
	gpu_set_fog(false, c_white, 1, 1);
}