if ("char_height" not in self) exit;

var t_x = temp_x - 16;
var t_y = temp_y - 16;

tension_amount_hud = lerp(tension_amount_hud, tension_amount, 0.5);

var tension_img = clamp(tension_level - 1, 0, TENSION_LEVEL_AMOUNT-1);
var tension_fill = clamp(tension_amount_hud / TENSION_MAX, 0, 1);

draw_sprite_ext(sprite_get("hud_tension_bg"), 0, t_x + 44, t_y - 12, 2, 2, 0, c_white, 1);
draw_sprite_part_ext(sprite_get("hud_tension_bg"), 1, 0, 0, sprite_get_width(sprite_get("hud_tension_bg")) * tension_fill, sprite_get_height(sprite_get("hud_tension_bg")),
    t_x + 44, t_y - 12, 2, 2, c_white, 1);

        
draw_sprite_ext(sprite_get("hud_tension"), tension_img, t_x + 48, t_y - 32, 2, 2, 0, c_white, 1);

if (!in_battle) {
    draw_debug_text(t_x, t_y - 48, "Taunt + Parry to toggle Tension")
}