//
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) 
	&& attack == AT_DSPECIAL_2 && window == 1){
	draw_sprite_ext(sprite_get("portal_dspecial"), state_timer/3, dspecial_2_x, dspecial_2_y, dspecial_2_damage/2, dspecial_2_damage/2, 0, c_white, 1);
}