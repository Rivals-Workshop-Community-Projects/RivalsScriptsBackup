// pre-draw
var is_attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
if is_attacking && attack == AT_FSPECIAL{
	var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 2), get_color_profile_slot_g(alt_cur, 2), get_color_profile_slot_b(alt_cur, 2));
	if window == clamp(window, 2, 3){
		draw_line_width_color(x + (-6 + lengthdir_x(20, grab_angle))*spr_dir, y - 32 + lengthdir_y(20, grab_angle), x + (-6 + lengthdir_x(20 + grapple_length, grab_angle))*spr_dir, y - 32 + lengthdir_y(20 + grapple_length, grab_angle), 2, c_white, c_white);
		shader_start();
		draw_sprite_ext(sprite_get("knife"), 0, x + (-6 + lengthdir_x(20 + grapple_length, grab_angle))*spr_dir, y - 32 + lengthdir_y(20 + grapple_length, grab_angle), spr_dir, 1, grab_angle*spr_dir, c_white, 1);
		draw_sprite_ext(sprite_get("fspecial_arm"), image_index - 3, x - 6*spr_dir, y - 36, 2*spr_dir, 2, grab_angle*spr_dir, c_white, 1);
		shader_end();
	}else if window == 5{
		draw_line_width_color(x, y - 24, grapple_pos[0], grapple_pos[1], 2, col, col);
		shader_start();
		draw_sprite_ext(sprite_get("knife"), 0, grapple_pos[0], grapple_pos[1], spr_dir, 1, grab_angle*spr_dir, c_white, 1);
		shader_end();
	}
}

shader_end();

if vfx_explosion[2] = clamp(vfx_explosion[2], 1, 24){
    var p = vfx_explosion;
    draw_sprite_ext(sprite_get("uspecial_explosion"), (p[2]-1)/4, p[0], p[1], 2, 2, 0, c_white, 1);
}

for(var e = 0; e < array_length(lwfx_buffer); e++){
    var p = lwfx_buffer[e];
    if p.layer == 1{
        if p.shade shader_start();
        if p.fog gpu_set_fog(1, p.blend, 1, 0);
        draw_sprite_ext(p.sprite, p.frame, p.xpos, p.ypos, 2*p.dir, 2, p.angle, p.blend, p.alpha);
        if p.fog gpu_set_fog(0, p.blend, 1, 0);
        if p.shade shader_end();
    }
}

if anti_cheapie_mode {
    var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 7), get_color_profile_slot_g(alt_cur, 7), get_color_profile_slot_b(alt_cur, 7));
    draw_outline(col);
}

if(revenge_active){
	var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 0), get_color_profile_slot_g(alt_cur, 0), get_color_profile_slot_b(alt_cur, 0));
    draw_outline(col);
	
	var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6));
	
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, col, 0, 1);
	
	var rate = 15;
	var y_change = y + (char_height/2 * revenge_active/rate/2);
    draw_sprite_ext(sprite_index, image_index, x, y_change, (2 + revenge_active/rate) * spr_dir, 2 + revenge_active/rate, spr_angle, col, 1.2 - revenge_active/rate);
    
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
}


#define draw_outline(col)

gpu_set_alphatestenable(true);
gpu_set_fog(1, col, 0, 1);

for (i = 0; i < 2; i++){
	var rand_x = random_func(i + 00, 5, true) - 2;
	var rand_y = random_func(i + 10, 5, true) - 2;
	
	draw_sprite_ext(sprite_index, image_index, x + rand_x - clamp(hsp, -15, 15) * (i + 1), y + rand_y - vsp * (i + 1) + 4 + draw_y, image_xscale * 2.2, image_yscale * 2.2, spr_angle, c_white, 0.5);
}
	
gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);