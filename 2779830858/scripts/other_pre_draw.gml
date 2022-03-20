//a

var clone_r, clone_g, clone_b;
var time_spr, rc_spr, rc_hand;

if ("other_player_id" in self){
	with (other_player_id){
		if (player == other.slow_owner){
			clone_r = get_color_profile_slot_r( get_player_color(player), 0 );
			clone_g = get_color_profile_slot_g( get_player_color(player), 0 );
			clone_b = get_color_profile_slot_b( get_player_color(player), 0 );

			time_spr = sprite_get("timeslow");
			rc_spr = sprite_get("rc_vfx");
			rc_hand = sprite_get("rc_hand_vfx");
		}
	}
}

var clone_color = make_color_rgb(clone_r,clone_g,clone_b);

var time_vfx_intensity = 10;
var vfx_rand;

if (time_slowed && slow_timer > 0 && other_player_id.player == slow_owner){

var draw_speed = 0.02;
var hand_rotation = 360 * (slow_timer/slow_timer_full);



		with (other_player_id)
		shader_start();

		if (get_player_color(other_player_id.player) == 9 && other_player_id.rewind_cancel) || ( rc_draw ){

			if other_player_id.rewind_cancel && !rc_draw
				rc_draw = true;

		draw_sprite_ext( rc_spr, 0, x - 25 * spr_dir, ((hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2)- 30, (2) + time_draw_timer * draw_speed, (2) + time_draw_timer * draw_speed, 0, c_white, 1.2 - time_draw_timer * draw_speed);
		draw_sprite_ext( rc_spr, 0, x - 25 * spr_dir, ((hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2)- 30, (2), (2), 0, c_white, 2.2 - time_draw_timer * draw_speed);
		draw_sprite_ext( rc_hand, 0, x - 25 * spr_dir, ((hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2)- 30, (2), (2), hand_rotation, c_white, 2.2 - time_draw_timer * draw_speed);

		other_player_id.depth = depth - 1;
		}

		// if (hand_rotation <= 0)
		// rc_draw = false;

		with (other_player_id)
		shader_end();


if  get_gameplay_time()%3 == 0 
vfx_rand = random_func( 0, time_vfx_intensity, true );


gpu_set_fog(1,clone_color,0,0);
	draw_sprite_ext( sprite_index, image_index, (x + vfx_rand), y + vfx_rand, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.6 );
	draw_sprite_ext( sprite_index, image_index, (x - vfx_rand), y - vfx_rand, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.6 );
gpu_set_fog(0,0,0,0);


}





