//post_draw.gml

//respawn platform
if (state == PS_ATTACK_GROUND && attack == AT_TAUNT){ 
    if (window == 1 && window_timer == 1){
		spawn_hit_fx( x+40*spr_dir, y-128, nspecial_proj_hit );
	}
    if (window == 2 || window == 3)
    {
        draw_sprite_ext(sprite_get("taunt_head"), taunt_num, x+40*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
    }
}
