image_index = f_image_index;

draw_sprite_ext(spr,floor(image_index),x+x_offset,y+y_offset,spr_dir,1,ang,-1,1);

if ((state == 0 or state == 2) && cooldown == -1) {
	gpu_push_state();
    gpu_set_blendmode(bm_normal);
    draw_sprite(sprite_get("nspecial_field"), field_index, x+x_offset, y+y_offset);
    gpu_pop_state();
}
shader_end();
if get_match_setting(SET_HITBOX_VIS) {
	var clr = player_id.in_field ? c_green : c_red;
	draw_circle_color(x,y,field_size,clr,clr,true);
}