
//visual for stuff
var timer_full = sprite_get("timer_full_hud");
var timer_height = sprite_get_height(timer_full);
var timer_width = sprite_get_width(timer_full);

var timer_percentage = armorless_timer / armorless_damage_time;
if timer_percentage > 1 {
    timer_percentage = 1;
}

draw_sprite(sprite_get("timer_empt_hud"),0, temp_x + 24, temp_y + 6);
draw_sprite_part(timer_full,0, 0, timer_height * (1 - timer_percentage), timer_width, timer_height * timer_percentage, temp_x + 26, temp_y + 9);