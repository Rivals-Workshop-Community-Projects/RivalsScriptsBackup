if (!init){
	init = true;
}

if (init){
	
var loop_time = 60
image_index = 0 + (anim_timer%loop_time) * 10 / loop_time;

vsp = 1.8;


if (y >= get_marker_y(12)){
	create_hitbox( AT_NSPECIAL, 4, x, y )
	spawn_hit_fx( x-50, y-50, 157 );
	spawn_hit_fx( x+50, y-50, 157 );
	spawn_hit_fx( x-50, y+50, 157 );
	spawn_hit_fx( x+50, y+50, 157 );
		sound_play(sound_get("starbreak"));
	instance_destroy();
	exit;
} else if (hb_timer == 8){
	create_hitbox( AT_NSPECIAL, 5, x, y )
	hb_timer = 0;
	//print_debug("HBTIMER")
}






anim_timer++;
hb_timer++;

}