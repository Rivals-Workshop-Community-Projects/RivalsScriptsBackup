var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
var alt = (alt_cur? alt_cur: 32);
var col = make_color_rgb(get_color_profile_slot_r(alt, 1), get_color_profile_slot_g(alt, 1), get_color_profile_slot_b(alt, 1));
if is_attacking switch attack{
    case AT_DATTACK:
    shader_start();
    if window == 2 draw_sprite_ext(sprite_get("vfx_dash_boom1"), window_timer/2, x, y, spr_dir*2, 2, 0, c_white, 1);
    shader_end();
    break;
    
    case AT_DAIR:
    shader_start();
    if window == 2 draw_sprite_ext(sprite_get("dair_fx"), window_timer/3, x + 32*spr_dir, y + 20, spr_dir*2, 2, 0, c_white, 1);
    shader_end();
    break;
    
    case AT_FSPECIAL:
    if window == clamp(window, 2, 7){
        var frm = ground_body_pos[image_index - 5];
        var cond = (window == 3 || window == 6);
        var img = (body_anim_timer/3)%(cond? 7: 18) + 18*cond;
        shader_start();
        draw_sprite_ext(sprite_get("fspecial_body"), img, x + frm[0]*spr_dir, y + frm[1], 2*spr_dir, 2*(spr_dir == sign(dcos(shot_angle))? 1: -1)*spr_dir, shot_angle, c_white, 1);
        shader_end();
        if invincible{
            gpu_set_fog(1, c_white, 1, 0);
            draw_sprite_ext(sprite_get("fspecial_body"), img, x + frm[0]*spr_dir, y + frm[1], 2*spr_dir, 2*(spr_dir == sign(dcos(shot_angle))? 1: -1)*spr_dir, shot_angle, c_white, .5);
            gpu_set_fog(0, c_white, 1, 0);
        }
    }
    
    if window == 1{
        var aim_alpha = (window_timer - 8)/8;
        var pos1 =  x + (46 - 2*floor((window_timer-8)/4))*spr_dir;
        var pos2 =  y - 28 - 2*(window_timer>=12);
    }else if window == clamp(window, 2, 7){
        var aim_alpha = 1 - window_timer*(!(window%3))/4;
        var calc_angle = shot_angle + point_direction(0, 0, 40, 4)*sign(dcos(shot_angle))*spr_dir;
        var gun_len = point_distance(0, 0, 40, 4);
        var pos1 =  x + ground_body_pos[image_index-5][0]*spr_dir + lengthdir_x(gun_len, calc_angle)*spr_dir;
        var pos2 =  y + ground_body_pos[image_index-5][1] + lengthdir_y(gun_len, calc_angle)*spr_dir;
    }
    
    if aim_alpha > 0{
        draw_primitive_begin(pr_linelist);
        var j = 0;
        var llen = 220;
        repeat 2{
            var xx = lengthdir_x(j, shot_angle + 90)*spr_dir;
            var yy = lengthdir_y(j, shot_angle + 90);
            draw_vertex_color(pos1 + xx, yy + pos2, col, aim_alpha*.8);
            draw_vertex_color(pos1 + xx + lengthdir_x(llen, shot_angle)*spr_dir, yy + pos2 + lengthdir_y(llen, shot_angle)*spr_dir, col, 0);
            j++;
        }
        draw_primitive_end();
    }
    break;
    
    case AT_FSPECIAL_AIR:
    if window == clamp(window, 2, 3){
        var img = (body_anim_timer/3)%((window == 2)? 7: 14) + 7*(window == 3);
        shader_start();
        draw_sprite_ext(sprite_get("fspecial_air_body"), img, x, y - 60 + draw_y, 2*spr_dir, 2*(spr_dir == sign(dcos(shot_angle))? 1: -1)*spr_dir, shot_angle, c_white, 1);
        shader_end();
        if invincible{
            gpu_set_fog(1, c_white, 1, 0);
            draw_sprite_ext(sprite_get("fspecial_air_body"), img, x, y - 60 + draw_y, 2*spr_dir, 2*(spr_dir == sign(dcos(shot_angle))? 1: -1)*spr_dir, shot_angle, c_white, .5);
            gpu_set_fog(0, c_white, 1, 0);
        }
    }
    
    if window == 1{
        var aim_alpha = (window_timer - 4)/8;
        var dif = 2*floor((window_timer - 4)/4 + 1*(window_timer >= 12))*(window_timer >= 8);
        var pos1 =  x + (48 - dif)*spr_dir;
        var pos2 =  y - 48 - dif;
    }else if window == clamp(window, 2, 3){
        var aim_alpha = 1 - window_timer*(!(window%3))/4;
        var calc_angle = shot_angle + point_direction(0, 0, 40, 4)*sign(dcos(shot_angle))*spr_dir;
        var gun_len = point_distance(0, 0, 40, 4);
        var pos1 =  x + lengthdir_x(gun_len, calc_angle)*spr_dir;
        var pos2 =  y - 60 + draw_y + lengthdir_y(gun_len, calc_angle)*spr_dir;
    }
    
    if aim_alpha > 0{
        draw_primitive_begin(pr_linelist);
        var j = 0;
        var llen = 220;
        repeat 2{
            var xx = lengthdir_x(j, shot_angle + 90)*spr_dir;
            var yy = lengthdir_y(j, shot_angle + 90);
            draw_vertex_color(pos1 + xx, yy + pos2, col, aim_alpha*.8);
            draw_vertex_color(pos1 + xx + lengthdir_x(llen, shot_angle)*spr_dir, yy + pos2 + lengthdir_y(llen, shot_angle)*spr_dir, col, 0);
            j++;
        }
        draw_primitive_end();
    }
    break;
    
    case AT_USPECIAL:
    shader_start();
    if window = 3 && window_timer < 10 draw_sprite_ext(sprite_get("vfx_uspecial_boom"), (window_timer-1)/2, x, y - 30, 2, 2, usp_angle, c_white, 1);
    shader_end();
    break;
}

if shot_fx_timer && shot_fx_timer < 13{
    col = make_color_hsv(color_get_hue(col), color_get_saturation(col)*0.49, color_get_value(col));
    var coeff = clamp(shot_fx_timer/10, 0, 1);
    draw_set_alpha(coeff);
    draw_line_width_color(fire_pos[0], fire_pos[1], fire_end[0], fire_end[1], 6*(coeff), col, col);
    if drone != noone && drone.shot_fx_timer && drone.shot_fx_timer < 12{
        draw_circle_color(drone.fire_pos[0], drone.fire_pos[1], 3*(coeff), col, col, 0);
        var g = 0;
        repeat array_length(drone.target_pos){
            draw_line_width_color(drone.fire_pos[0], drone.fire_pos[1], drone.target_pos[g][0], drone.target_pos[g][1], 6*(coeff), col, col);
            g++;
        }
    }
    draw_line_width_color(fire_pos[0], fire_pos[1], fire_end[0], fire_end[1], 2*(coeff), c_white, c_white);
    if drone != noone && drone.shot_fx_timer && drone.shot_fx_timer < 12{
        draw_circle_color(drone.fire_pos[0], drone.fire_pos[1], coeff, c_white, c_white, 0);
        var g = 0;
        repeat array_length(drone.target_pos){
            draw_line_width_color(drone.fire_pos[0], drone.fire_pos[1], drone.target_pos[g][0], drone.target_pos[g][1], 2*(coeff), c_white, c_white);
            g++;
        }
    }
    draw_set_alpha(1);
}