//draw-hud
if !("timer" in self) exit;

shader_start()
var hud_alpha = item_hud_timer/8
var hud_y_offset = clamp(item_hud_timer, 0, 8)
if fuse_item != 0 {
    draw_sprite_ext(sprite_get("devices_hud"), fuse_item-1, temp_x + 16, temp_y - 6 - hud_y_offset, 1, 1, 0, c_white, hud_alpha)
    if practice_mode && draw_practice_text {
        draw_debug_text(temp_x + 50, temp_y - 60,
        "Practice mode:
press taunt + left/right
to change item")
    }
}

shader_end()