//draw_debug_text( x-65, y-150, get_state_name( state ));
//draw_debug_text( x-65, y-135, "Too Soon: " + string( TooSoon ));
//draw_debug_text( x-65, y-120, "Throttle: " + string( throttle ));
//draw_debug_text( x-65, y-105, "window: " + string( window ));
//draw_debug_text( x-65, y-90, "window timer: " + string( window_timer ));
//draw_debug_text( x-65, y-75, "hitable: " + string( hitable_throttle ));


//draw_debug_text( x-65, y-105, "buff up: " + string( buffup ));
//draw_debug_text( x-65, y-105, "window: " + string( window ));
//draw_debug_text( x-65, y-90, "window timer: " + string( window_timer ));

/*
if (instance_exists(tornado_id) == true && tornado_id != noone){
var tornado_time = tornado_id.hitbox_timer;
var tornadod_downtime = tornado_id.tornadod_downtime;
if (tornado_time == 0){
draw_sprite_ext(sprite_get("nspecial_sandstorm_storm"), image_index, tornado_id.x-190 * tornado_id.spr_dir, tornado_id.y, -4 * tornado_id.spr_dir, 1, 0, c_white, 0.1 + tornado_time / 50);
}
if (tornado_time >= 1 && tornado_time < 10){
draw_sprite_ext(sprite_get("nspecial_sandstorm_storm"), image_index, tornado_id.x-190 * tornado_id.spr_dir, tornado_id.y, -4 * tornado_id.spr_dir, 1 * tornado_time / 10, 0, c_white, 0.5);
}
if (tornado_time >= 10 && tornado_time < 150){
draw_sprite_ext(sprite_get("nspecial_sandstorm_storm"), image_index, tornado_id.x-190 * tornado_id.spr_dir, tornado_id.y, -4 * tornado_id.spr_dir, 1, 0, c_white, 0.5);
}
if (tornado_time >= 150){
draw_sprite_ext(sprite_get("nspecial_sandstorm_storm"), image_index, tornado_id.x-190 * tornado_id.spr_dir, tornado_id.y, -4 * tornado_id.spr_dir, 1 - tornadod_downtime / 100, 0, c_white, 0.5 - tornadod_downtime / 200);
    }
}
*/


if (buffup == true){
var tornado_time = tornado_id.hitbox_timer;
var tornadod_downtime = tornado_id.tornadod_downtime;
draw_sprite_ext(sprite_get("nspecial_sand_boost"), get_gameplay_time() / 3, x-30, y-60, 1, 1, 0, c_white, 1 - tornadod_downtime / 200);
draw_sprite_ext(sprite_get("sand_boost_new"), get_gameplay_time() / 5, x-18, y+10, 1, 1, 0, c_white, 1 - tornadod_downtime / 100);
}