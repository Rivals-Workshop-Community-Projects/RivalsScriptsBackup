//time slow debuff vfx



var clone_r, clone_g, clone_b;

clone_r = get_color_profile_slot_r( get_player_color(player), 0 );
clone_g = get_color_profile_slot_g( get_player_color(player), 0 );
clone_b = get_color_profile_slot_b( get_player_color(player), 0 );

var clone_color = make_color_rgb(clone_r,clone_g,clone_b);

var time_vfx_intensity = 10;
var vfx_rand;

//rewind vfx
if (rewind_travel_time != 0){

if  get_gameplay_time()%3 == 0 
vfx_rand = random_func( 0, time_vfx_intensity, true );


gpu_set_fog(1,clone_color,0,0);
	draw_sprite_ext( rewind_clone.cur_spr, 4, (x + vfx_rand), y, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.2 );
	draw_sprite_ext( rewind_clone.cur_spr, 4, (x - vfx_rand), y, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.2 );
gpu_set_fog(0,0,0,0);

}

shader_start();
if (rewind_travel_time != 0)
draw_sprite_ext( rewind_clone.cur_spr, 4, x, y, (1 + small_sprites) * spr_dir, (1 + small_sprites), spr_angle, c_white, 0.8 );


shader_end();