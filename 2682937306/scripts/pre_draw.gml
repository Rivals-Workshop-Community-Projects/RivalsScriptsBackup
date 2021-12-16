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