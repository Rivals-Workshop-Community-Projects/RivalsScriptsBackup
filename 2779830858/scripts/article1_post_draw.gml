
//COMPATIBILIT-HEE HEE
var clone_r, clone_g, clone_b;

clone_r = get_color_profile_slot_r( get_player_color(player), 0 );
clone_g = get_color_profile_slot_g( get_player_color(player), 0 );
clone_b = get_color_profile_slot_b( get_player_color(player), 0 );

var clone_color = make_color_rgb(clone_r,clone_g,clone_b);

var time_vfx_intensity = 10;

if  distort_time != 0
vfx_rand = random_func( 0, time_vfx_intensity, true );


if (!primed)
gpu_set_fog(1,clone_color,0,0);
else if (primed)
gpu_set_fog(1,clone_color,0,0);

	draw_sprite_ext( cur_spr, cur_img, (x + vfx_rand), y, (1 + player_id.small_sprites) * spr_dir, (1 + player_id.small_sprites), 0, c_white, 0.2 );
	draw_sprite_ext( cur_spr, cur_img, (x - vfx_rand), y, (1 + player_id.small_sprites) * spr_dir, (1 + player_id.small_sprites), 0, c_white, 0.2 );

gpu_set_fog(0,0,0,0);




if (cur_spr != 0){
if (!primed)
draw_sprite_ext(cur_spr, cur_img, x , y, (1 + player_id.small_sprites) * spr_dir, (1 + player_id.small_sprites), 0, c_white, 0.1);
else 
draw_sprite_ext(cur_spr, cur_img, x , y, (1 + player_id.small_sprites) * spr_dir, (1 + player_id.small_sprites), 0, c_white, 0.5);
}

