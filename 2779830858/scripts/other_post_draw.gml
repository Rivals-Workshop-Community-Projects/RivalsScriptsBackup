//a

var clone_r, clone_g, clone_b;
var time_spr;

if (instance_exists(other_player_id)){
	with (other_player_id){
		if (player == other.slow_owner){
			clone_r = get_color_profile_slot_r( get_player_color(player), 0 );
			clone_g = get_color_profile_slot_g( get_player_color(player), 0 );
			clone_b = get_color_profile_slot_b( get_player_color(player), 0 );

			time_spr = sprite_get("timeslow");
		}

	}


var clone_color = make_color_rgb(clone_r,clone_g,clone_b);


	if ((time_slowed || time_draw_timer > 0) && other_player_id.player == slow_owner){

		var draw_speed = 0.03;

		with (other_player_id)
		shader_start();

		if (get_player_color(other_player_id.player) != 9){
		draw_sprite_ext( time_spr, 0, x, (hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2, (2), (2), 0, c_white, 1.4 - time_draw_timer * draw_speed);
	    draw_sprite_ext( time_spr, 0, x, (hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2, (2) + time_draw_timer * draw_speed, (2) + time_draw_timer * draw_speed, 0, c_white, 1 - time_draw_timer * draw_speed);
		}
		else if (get_player_color(other_player_id.player) == 9 && !other_player_id.rewind_cancel && !rc_draw){

		draw_sprite_ext( time_spr, 0, x, (hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2, (2), (2), 0, c_white, 1.4 - time_draw_timer * draw_speed);
	    draw_sprite_ext( time_spr, 0, x, (hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2, (2) + time_draw_timer * draw_speed, (2) + time_draw_timer * draw_speed, 0, c_white, 1 - time_draw_timer * draw_speed);

		}

		with (other_player_id)
		shader_end();


	}

}