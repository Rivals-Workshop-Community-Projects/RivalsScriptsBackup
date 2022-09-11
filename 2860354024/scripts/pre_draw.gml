//ee

var pulse_color_r, pulse_color_g, pulse_color_b;
var pulse_player = get_player_color(player);


	pulse_color_r = (pulse_player == 0) ? 255 : get_color_profile_slot_r(pulse_player, 1);
	pulse_color_g = (pulse_player == 0) ? 0 : get_color_profile_slot_g(pulse_player, 1);
	pulse_color_b = (pulse_player == 0) ? 0 : get_color_profile_slot_b(pulse_player, 1);


var pulse_color = make_color_rgb(pulse_color_r,pulse_color_g,pulse_color_b);


shader_start();

if (excited){

pulse_timer+= 0.05;
pulse_timer = (pulse_timer > 1.5) ? 0 : pulse_timer;

if (mako_alt)
pulse_color = c_red;

draw_sprite_ext( sprite_index, image_index,
x,
y + pulse_timer * 5,
(1 + small_sprites + pulse_timer) * spr_dir, (1 + small_sprites + pulse_timer), 
spr_angle,
pulse_color, 0.6 - pulse_timer * 1.4);


gpu_set_blendmode(bm_add);
draw_sprite_ext( sprite_index, image_index,
x,
y + pulse_timer * 5,
(1 + small_sprites + pulse_timer) * spr_dir, (1 + small_sprites + pulse_timer), 
spr_angle,
pulse_color, 1 - pulse_timer * 1.4);
gpu_set_blendmode(bm_normal);

}




shader_end();