if (state == PS_SPAWN){
    waft_meter_sprite = sprite_get("waftmeter_spawn");
    wario_game_timer = true;
    if voice_lines == true{
        draw_debug_text(temp_x, temp_y-64, string("Press Taunt to mute voices"));
    }
}


draw_sprite_ext(waft_meter_sprite, (wario_game_timer/6), temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);

if (get_training_cpu_action() != CPU_FIGHT) && state != PS_SPAWN{
    draw_debug_text(temp_x+76, temp_y-64, string(" Taunt to advance
Wario Waft stages"));
}