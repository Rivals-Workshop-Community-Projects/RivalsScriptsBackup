if (attack == AT_NSPECIAL_ORI) and (window == 4) {
draw_sprite_ext(asset_get("bash_dir_spr"),window_timer / 5.1,x+spr_dir*12,y-17,1,1,bash_angle-45,c_white,1)
}

/* if (attack == AT_NSPECIAL_ZET) and (window == 2) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND))   {
draw_sprite_ext(sprite_get("AT_NSPECIAL_ZETT_UNCHRG_FG"),window_timer / 3.3,x,y,1,1,0,c_white,1)
}
if (attack == AT_NSPECIAL_ZET) and (window == 3) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
draw_sprite_ext(sprite_get("AT_NSPECIAL_ZETT_CHRG_FG"),window_timer / 3.3,x,y,1,1,0,c_white,1)
} */

if (attack == AT_NSPECIAL_ZET) and (window == 2) and (window_timer == 0) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
	spawn_hit_fx( x, y, unchrg_bg);
}

if (attack == AT_NSPECIAL_ZET) and (window == 3) and (window_timer == 0) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
	spawn_hit_fx( x, y, chrg_bg);
}


if (absa_timer > 0) {
draw_sprite_ext(sprite_get("AT_NSPECIAL_ABSA_RING"),(105-absa_timer)/5.83,x,y-32,1,1,0,c_white,1)
}

//Summer Hat
if wearing_hat {
    draw_sprite_ext(sprite_get("idle_xmas_hat"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}