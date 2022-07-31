//post_draw.gml

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
    && attack == AT_DSPECIAL && window == 2){
	draw_sprite_ext(sprite_get("super_vac_arrow"), 0, x+30*spr_dir, y-35, 
	spr_dir, 1, throw_angle*spr_dir, c_white, 1);
}

