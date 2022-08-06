if("burst" in self)
{
    if (burst = 0)
    {
        var blood_full = sprite_get("meterfull");
        var blood_height = sprite_get_height(blood_full);
        var blood_width = sprite_get_width(blood_full);

        var blood_percentage = bloodmeter / 100;
        meter_draw_percentage = lerp(meter_draw_percentage, blood_percentage, 0.35);

        shader_start();
        if get_player_color( player ) == 16 
        {
            draw_sprite(sprite_get("meterempty_gen"),0, temp_x + 34, temp_y - 40);
            draw_sprite_part(blood_full,blood_anim, 0, 0, blood_width * meter_draw_percentage, blood_height, temp_x + 60, temp_y - 40);
            shader_end();
        } 
        else 
        {
            draw_sprite(sprite_get("meterempty"),0, temp_x + 34, temp_y - 40);
            draw_sprite_part(blood_full,blood_anim, 0, 0, blood_width * meter_draw_percentage, blood_height, temp_x + 60, temp_y - 40);
        }
        shader_end();
        if (get_training_cpu_action() != CPU_FIGHT && state == PS_SPAWN) 
            draw_debug_text(temp_x-18, temp_y-10, "Press down+taunt for BloodRage");
    } 
    else 
    {
        var burst_full = sprite_get("meterburst");
        var burst_height = sprite_get_height(burst_full);
        var burst_width = sprite_get_width(burst_full);

        var burst_percentage = burstmeter / 100;
        meter_draw_percentage = lerp(meter_draw_percentage, burst_percentage, 0.35);
        meter_stall_percentage = burststop /120;

        shader_start();
        draw_sprite(sprite_get("meterempty"),0, temp_x + 34, temp_y - 40);
        if(burststop != 0)
            draw_sprite_part(sprite_get("meterstop"),burst_anim, 0, 0, burst_width * meter_stall_percentage, burst_height, temp_x + 60, temp_y - 40);
        else
            draw_sprite_part(burst_full,burst_anim, 0, 0, burst_width * meter_draw_percentage, burst_height, temp_x + 60, temp_y - 40);
        shader_end();
    }
}