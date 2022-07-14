//hud timer
if !shields_up {
    //visual for stuff
    var timer_full = sprite_get("timer_full_cha");
    var timer_height = sprite_get_height(timer_full);
    var timer_width = sprite_get_width(timer_full);
    
    var timer_percentage = armorless_timer / armorless_damage_time;
    if timer_percentage > 1 {
        timer_percentage = 1;
    }
    
    draw_sprite(sprite_get("timer_empt_cha"),0, x - 18, y - 66);
    draw_sprite_part(timer_full,0, 0, 0, timer_width * timer_percentage, timer_height, x - 15, y - 64);
}

