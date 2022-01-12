shader_start();

if ( attack == AT_DSPECIAL_AIR
 &&  (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& vsp > 0 && epinel_grabbed_player_object_id != noone )
	{
	var scale = clamp(  ( sqrt( max(0, (epinel_grabbed_player_break_threshold - epinel_grabbed_player_break_points) / 25 ) ) ) / 10 , 0, 1 );
	draw_sprite_ext( sprite_get( "field" ), 0, x, y-30, scale, scale, 0, c_white, 0.6 - scale * 0.6 );
}


with (oPlayer) {

	var prev_outline_color = outline_color;
	
	if (epinel_other_weightless_timer > 0 && epinel_other_player_that_inflicted_weightless_id == other)
	{
		//draw_circle(x, y-char_height/2, 80, 0);
		
		draw_sprite_ext( other.epinel_sprite_inertia, ((epinel_other_weightless_timer / 2) ) mod 8, 
		x, y-char_height/2 + vsp, 
		1, 1, 
		point_direction(0, 0, hsp + spr_dir * 0.01, vsp), c_white, 
		epinel_other_weightless_timer / 80 + 0.75 );
		//draw_line_color(x, y, x + epinel_other_weightless_hsp * 600, y + epinel_other_weightless_vsp * 600, c_purple, c_purple );
		
		if (other.id != id) outline_color = [ 230, 0, 230 ];
	}
	init_shader();
	outline_color = prev_outline_color;
}


if (epinel_heavy_state) {
	//draw_sprite(epinel_sprite_heavy, 5000 - move_cooldown[AT_USPECIAL] / 2, x, y);
	draw_sprite(epinel_sprite_heavy, state_timer / 3, x, y);
	draw_sprite_ext(epinel_sprite_heavy_arrow, 0, x, y, 2, 2, 0, c_white, 0.5);
}

shader_end();



//draw_debug_text(x, y-240, "double_jump_time: " + string(double_jump_time));
//draw_debug_text(x, y-200, "old_jump: " + string(old_jump));
//draw_debug_text(x, y-240, "old_jump_timer: " + string(old_jump_timer));

/*	
draw_debug_text(x, y-140, "inflicted: " + string(epinel_other_weightless_inflicted));
draw_debug_text(x, y-160, "timer: " + string(epinel_other_weightless_timer));
draw_debug_text(x, y-180, "epinel_other_weightless_hsp: " + string(epinel_other_weightless_hsp));
draw_debug_text(x, y-200, "epinel_other_weightless_vsp: " + string(epinel_other_weightless_vsp));
draw_debug_text(x, y-220, "hsp: " + string(hsp));
draw_debug_text(x, y-240, "vsp: " + string(vsp));
*/
//draw_debug_text(x, y-220, "hitstop: " + string(hitstop));
//draw_debug_text(x, y-240, "hitstop_full: " + string(hitstop_full));
//draw_debug_text(x, y-260, "image_index: " + string(image_index));
//draw_debug_text(x, y-260, "HG_KNOCKBACK_SCALING: " + string(get_hitbox_value(AT_DSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING)));



