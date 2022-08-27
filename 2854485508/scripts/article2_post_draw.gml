
if (player_id.hurtboxID.visible) {
    if (super_armor || soft_armor > 0)
    {
        gpu_set_fog(true, merge_color(c_lime, c_blue, 0.5), 0, 0)
        draw_sprite_ext(hurtbox_mask, image_index, round(x), round(y), spr_dir, 1, 0, c_white, 0.5);
        gpu_set_fog(false, c_black, 0, 0)
    }
    else if (state == PS_HITSTUN)
    {
        gpu_set_fog(true, c_yellow, 0, 0)
        draw_sprite_ext(hurtbox_mask, image_index, round(x), round(y), spr_dir, 1, 0, c_white, 0.5);
        gpu_set_fog(false, c_black, 0, 0)
    }
    else
        draw_sprite_ext(hurtbox_mask, image_index, round(x), round(y), spr_dir, 1, 0, c_white, 0.5);
}

if (("mamizou_mark_id" in self) && instance_exists(mamizou_mark_id)) {
    with (mamizou_mark_id) shader_end();
    for (var i = 0; i < 2; i++) {
        var time = get_gameplay_time() * 4 - 90 - (i * (360/2));
        var x_offset = round(lengthdir_x(56, time));
        var y_offset = floor(char_height/2);
        
        if (time % 360 >= 180) {
            with (mamizou_mark_id) shader_start();
                draw_sprite_ext(mamizou_mark_id.mark_spr, ease_linear(0, 10, round(time + 90), 360), x + x_offset, y - y_offset, 2, 2, 0, c_white, 1);
            with (mamizou_mark_id) shader_end();
        }
    }
}

