//pre_draw

shader_start();

if airdodge_effect_timer{
    var frame = round(ease_linear(4, 0, airdodge_effect_timer, airdodge_effect_max));
    draw_sprite_ext(sprite_get("dash_blast"), frame, airdodge_x + lengthdir_x(16, airdodge_effect_angle), airdodge_y + lengthdir_y(16, airdodge_effect_angle), 1, 1, airdodge_effect_angle, c_white, 1);
}

shader_end();