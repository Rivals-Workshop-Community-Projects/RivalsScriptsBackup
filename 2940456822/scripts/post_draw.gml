//
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_DSPECIAL && window > 3) {
	draw_sprite_ext( sprite_index, image_index, x, y, spr_dir, 1, 0, c_black, .5);
}