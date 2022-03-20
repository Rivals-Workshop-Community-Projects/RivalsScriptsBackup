//a

var clone_r, clone_g, clone_b;
var time_spr;

	clone_r = get_color_profile_slot_r( get_player_color(player), 0 );
	clone_g = get_color_profile_slot_g( get_player_color(player), 0 );
	clone_b = get_color_profile_slot_b( get_player_color(player), 0 );
	time_spr = sprite_get("timeslow");

var clone_color = make_color_rgb(clone_r,clone_g,clone_b);

if (time_slowed && time_draw_timer > 0 && slow_owner == player){

	var draw_speed = 0.03;

	shader_start();

	draw_sprite_ext( time_spr, 0, x, (hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2, (2), (2), 0, c_white, 1.4 - time_draw_timer * draw_speed);
    draw_sprite_ext( time_spr, 0, x, (hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2, (2) + time_draw_timer * draw_speed, (2) + time_draw_timer * draw_speed, 0, c_white, 1 - time_draw_timer * draw_speed);

	shader_end();


}