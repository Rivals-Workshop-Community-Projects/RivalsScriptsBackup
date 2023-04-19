if("pandoria" in self && pandoria != noone){
	
draw_sprite_ext(sprite_get("affinity_bar"), 0, temp_x + 2, temp_y - 6, 2, 2, 0, c_white, 1 );
//draw_sprite_ext(sprite_get("affinity_arrow"), 0, temp_x + 2 + pandoria.affinity, temp_y - 6, 2, 2, 0, c_white, 1 );

//current affinity level is highlighted
var k = sin(degtorad(3 * (get_gameplay_time() % 60))) * ((pandoria.affinity_level + 1) * 0.3);

draw_sprite_ext(sprite_get("affinity_highlight"), pandoria.affinity_level, temp_x + 2, temp_y - 6, 2, 2, 0, c_white, k );

draw_sprite_ext(sprite_get("affinity_arrow"), 0, temp_x + 2 + pandoria.affinity, temp_y - 6, 2, 2, 0, c_white, 1 );

}

if(get_match_setting( SET_PRACTICE )){
	draw_debug_text(temp_x - 8, temp_y - 24, "Taunt+Up/Down: Change Affinity");	
}