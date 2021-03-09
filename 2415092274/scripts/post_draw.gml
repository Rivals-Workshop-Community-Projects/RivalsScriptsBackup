//post-draw

if (attack==AT_NSPECIAL&&(state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)){
	var tmp_a = ease_linear( 0, 50, nsp_a_time, nsp_a_t_max )/50
	draw_sprite_ext( sprite_get("nspecial_blue"), image_index, x, y, spr_dir, 1, 0, -1, tmp_a )
}