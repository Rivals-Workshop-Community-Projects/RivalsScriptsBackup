//draw-hud
if !("meter_cur" in self) exit;

shader_start()

var draw_meter = true;
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == 49 && has_hit_player {
    if window == 5 {
        draw_sprite_ext(sprite_index, 9 + floor(window_timer/6), temp_x + 16, temp_y - 8, 1, 1, 0, c_white, 1)
        if window_timer > 5 draw_meter = false;
    }
    if window > 5 draw_meter = false;
}

if draw_meter draw_sprite(sprite_get("hud_meter"), 0, temp_x + 2, temp_y - 18)

var meter_draw_x = temp_x + 6;
var meter_draw_xscale = meter_cur/meter_max;

var flash_draw_x = meter_draw_x + meter_prev*2
var flash_draw_xscale = (meter_cur - meter_prev)/meter_max;

if meter_flipped {
    meter_draw_x += 200;
    flash_draw_x = meter_draw_x - meter_prev*2
    meter_draw_xscale *= -1;
    flash_draw_xscale *= -1;
}
if draw_meter draw_sprite_ext(sprite_get("hud_meter_red"), 0, meter_draw_x, temp_y - 14, meter_draw_xscale, 1, 0, c_white, 1)
shader_end()


if meter_cur < meter_prev var flash_col = c_red;
else var flash_col = c_white;
if meter_flash_timer > 0 {
    if draw_meter draw_sprite_ext(sprite_get("hud_meter_flash"), 0, flash_draw_x, temp_y - 14, flash_draw_xscale, 1, 0, flash_col, meter_flash_timer/meter_flash_val)
}

if practice_mode {
    //draw text
    draw_debug_text(temp_x, temp_y - 46, "Practice mode:")
    draw_debug_text(temp_x, temp_y - 32, "Taunt + up/down to edit meter")
}