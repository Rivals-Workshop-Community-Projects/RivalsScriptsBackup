if penny_charged_id != noone{
    if (penny_is_charged && other_player_id == penny_charged_id){
        var charge_sprite = -1;
        with (penny_charged_id){
            //sprite_get can only be called directly by the workshop character
            if (other.land_time < 6)
                charge_sprite = sprite_get("mark_small_bot");
            else
                charge_sprite = sprite_get("mark_bot");
            shader_start();
        }
        if (charge_sprite != -1)
            draw_sprite(charge_sprite, get_gameplay_time()*.15, x, y-char_height*.5);
            //draw_debug_text(x, y + 16, "CHARGED");
        with (penny_charged_id){
            shader_end();
        }
    }
}