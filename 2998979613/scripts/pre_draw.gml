//draws_the main body
var is_attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
if is_attacking && attack == AT_USPECIAL switch window{
    case 1:
    shader_start();
    draw_sprite_ext(sprite_get("drop"), 0, x, y + 4*window_timer, 2, 2, 0, c_white, 1);
    break;
    case 2:
    shader_start();
    if window_timer == 0 draw_sprite_ext(sprite_get("drop"), 0, x, y + 16, 2, 2, 0, c_white, 1);
    shader_end();
    var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6));
    draw_ellipse_color(puddle_pos[0] - 12*window_timer, puddle_pos[1] - window_timer, puddle_pos[0] + 12*window_timer, puddle_pos[1] + window_timer, col, col, 0);
    break;
    case 3:
    var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6));
    draw_ellipse_color(puddle_pos[0] - 12*6, puddle_pos[1] - 6, puddle_pos[0] + 12*6, puddle_pos[1] + 6, col, col, 0);
    shader_start();
    draw_sprite_part_ext(sprite_get("cryonis_pillar"), 0, 0, 0, 48, ease_linear(0, 50, window_timer-1, 11), puddle_pos[0] - 48, puddle_pos[1] - ease_linear(0, 50, window_timer-1, 11)*2, 2, 2, c_white, 1);
    break;
    case 4:
    if window_timer < 6{
        var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6));
        draw_ellipse_color(puddle_pos[0] - 12*6, puddle_pos[1] - 6, puddle_pos[0] + 12*6, puddle_pos[1] + 6, col, col, 0);
        shader_start();
        draw_sprite_part_ext(sprite_get("cryonis_pillar"), 0, 0, 0, 48, 50, puddle_pos[0] - 48, puddle_pos[1] - 50*2, 2, 2, c_white, 1);
    }
    break;
}

shader_start();
for(var e = 0; e < 3; e++){
    draw_sprite_ext(sprite_get("body_" + string(e) + (e == 2 && !get_player_color(player)? "b": "")), body_angles[e]/10, x + draw_x, y + draw_y, 2, 2, spr_angle, c_white, 1);
}
shader_end();

var white_vfx = (hitstop && stun_vfx) || invincible || state == PS_RESPAWN  || ((state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_PARRY) && window == 1) || ((state == PS_TECH_GROUND || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_WALL_TECH) && window < 2);
var black_vfx = state == PS_PRATFALL || state == PS_PRATLAND;
var yel_vfx = strong_charge && strong_charge%10 >= 5 && state == PS_ATTACK_GROUND && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && window == 1;
if white_vfx || black_vfx || yel_vfx{
    gpu_set_fog(1, (white_vfx? c_white: (yel_vfx? c_yellow: c_black)), 1, 0);
    for(var e = 0; e < 3; e++){
        draw_sprite_ext(sprite_get("body_" + string(e)), body_angles[e]/10, x + draw_x, y + draw_y, 2, 2, spr_angle, c_white, 0.5);
    }
    gpu_set_fog(0, (white_vfx? c_white: (yel_vfx? c_yellow: c_black)), 1, 0);
}

for(var e = 0; e < array_length(lwfx_buffer); e++){
    var p = lwfx_buffer[e];
    if p.layer == 1{
        if p.shade shader_start();
        if p.fog gpu_set_fog(1, p.blend, 1, 0);
        draw_sprite_ext(p.sprite, p.frame, p.xpos, p.ypos, (p.scale)*p.dir, p.scale, p.angle, p.blend, p.alpha);
        if p.fog gpu_set_fog(0, p.blend, 1, 0);
        if p.shade shader_end();
    }
}
