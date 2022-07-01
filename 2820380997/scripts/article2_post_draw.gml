
//Setting for visual hurtbox in training mode
if get_match_setting(SET_HITBOX_VIS) {
	draw_sprite_ext(mask_index,image_index,x,y,1,1,image_angle,c_green,0.5);
}
/*
if (was_parried_flag == true) {
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_dkgray,0.75);
}

if(draw_debug_hud == true){

draw_debug_text( x -20, y - 80, "Total Timer: " + string(article_total_timer));
draw_debug_text( x -20, y - 100,"Not_throwable_flag" + string(not_throwable_flag));
draw_debug_text( x -20, y - 120,"Article State: " + string(state));
draw_debug_text( x -20, y - 140,"Article State Timer: "+ string(state_timer));
draw_debug_text( x -20, y - 160,"clone_state_cat" + string(clone_state_cat));
draw_debug_text( x -20, y - 180,"Nspecial_explosion_flag" + string(Nspecial_explosion_flag));
draw_debug_text( x -20, y - 200,"clone_nspecial_cooldown: " + string(clone_nspecial_cooldown));
draw_debug_text( x -20, y - 220,"Free: " + string(free));
draw_debug_text( x -20, y - 240,"image_index " + string(image_index));
draw_debug_text( x -20, y - 260,"vsp: " + string(vsp));
draw_debug_text( x -20, y - 280,"hsp: " + string(hsp));
draw_debug_text( x -20, y - 300,"" + string(""));

}
*/
