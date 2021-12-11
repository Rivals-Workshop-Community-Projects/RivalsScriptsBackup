//pre_draw.gml

//Bubble bg
if ( state == PS_AIR_DODGE ){
	draw_sprite_ext(sprite_get("airdodge_bubble_neutral_back"), -1, x, y, spr_dir, 1, 0, c_white, 1);
}

shader_start();
if (state == PS_RESPAWN){
    draw_sprite_ext( sprite_get("bg_plat"), state_timer * 1/6.5, x, y, 1, 1, 0, -1, 1 ); 
	var timer = state_timer;
} else {
	if (state == PS_ATTACK_GROUND && attack == AT_TAUNT && free == true){
		draw_sprite_ext( sprite_get("bg_plat"), timer + state_timer * 1/6.5, x, y, 1, 1, 0, -1, 1 );
	}
}	
shader_end();
