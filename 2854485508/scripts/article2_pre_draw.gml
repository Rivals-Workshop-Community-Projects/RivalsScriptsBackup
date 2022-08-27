if (("mamizou_mark_id" in self) && instance_exists(mamizou_mark_id)) {
    for (var i = 0; i < 2; i++) {
        var time = get_gameplay_time() * 4 - 90 - (i * (360/2));
        var x_offset = round(lengthdir_x(56, time));
        var y_offset = floor(char_height/2);
        
        if (time % 360 <= 180) {
            with (mamizou_mark_id) shader_start();
                draw_sprite_ext(mamizou_mark_id.mark_spr, ease_linear(0, 10, round(time + 90), 360), x + x_offset, y - y_offset, 2, 2, 0, c_white, 1);
            with (mamizou_mark_id) shader_end();
        }
    }
}
with (player_id) shader_start();