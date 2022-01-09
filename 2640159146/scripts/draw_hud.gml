user_event(11);
if("burst" in self){

if (burst = 0){

var blood_full = sprite_get("meterfull");
var blood_height = sprite_get_height(blood_full);
var blood_width = sprite_get_width(blood_full);

var blood_percentage = bloodmeter / 100;
meter_draw_percentage = lerp(meter_draw_percentage, blood_percentage, 0.35);

shader_start();
if get_player_color( player ) == 16 {
    shader_end();
    draw_sprite(sprite_get("meterempty_gen"),0, temp_x + 34, temp_y - 40);
} else {
draw_sprite(sprite_get("meterempty"),0, temp_x + 34, temp_y - 40);
draw_sprite_part(blood_full,blood_anim, 0, 0, blood_width * meter_draw_percentage, blood_height, temp_x + 60, temp_y - 40);
}
shader_end();

} else {
    var burst_full = sprite_get("meterburst");
var burst_height = sprite_get_height(burst_full);
var burst_width = sprite_get_width(burst_full);

var burst_percentage = burstmeter / 100;
meter_draw_percentage = lerp(meter_draw_percentage, burst_percentage, 0.35);

shader_start();
draw_sprite(sprite_get("meterempty"),0, temp_x + 34, temp_y - 40);
draw_sprite_part(burst_full,burst_anim, 0, 0, burst_width * meter_draw_percentage, burst_height, temp_x + 60, temp_y - 40);

shader_end();
}
}