shader_end();
var eyepos = [x + 24*dcos(body_angles[2]), y + -85*dsin(rot_angle + 90) + 24*dcos(body_angles[2])*dcos(rot_angle + 90) -col_displace*2];
var time = get_gameplay_time();
var pl_col = get_player_color(player);
var is_attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
if is_attacking && attack == AT_DSPECIAL && window == 2{
    draw_sprite_ext(sprite_get("laser_aim"), time/3, eyepos[0], eyepos[1], 2, 2, 0, c_white, 0.7);
}
if skystrike && skystrike_timer >= 200{
    var col = make_color_rgb(get_color_profile_slot_r(pl_col, 6), get_color_profile_slot_g(pl_col, 6), get_color_profile_slot_b(pl_col, 6));
    for(var e = 0; e < 2; e++){
        draw_ellipse_color(skystrike_pos[0] + (time%20)*2 + e, skystrike_pos[1] - (time%20)/2 - e, skystrike_pos[0] - (time%20)*2 - e, skystrike_pos[1] + (time%20)/2 + e, col, col, 1);
    }
    draw_circle_color(skystrike_pos[0], skystrike_pos[1], 2, col, col, 0);
}

var pl_col = get_player_color(player);
var col = make_color_rgb(get_color_profile_slot_r(pl_col, 5), get_color_profile_slot_g(pl_col, 5), get_color_profile_slot_b(pl_col, 5))
var col2 = make_color_rgb(get_color_profile_slot_r(pl_col, (alt_cur = 0? 6: 7)), get_color_profile_slot_g(pl_col, (alt_cur = 0? 6: 7)), get_color_profile_slot_b(pl_col, (alt_cur = 0? 6: 7)))
if laser_timer{
    if laser_timer >= 60 && laser_timer < 370{
        if laser_timer < 270 && time%4 == 1 randoff = [random_func_2(abs(floor(time%200)), 10, 0) - 5, random_func_2(abs(floor((time + 1)%200)), 10, 0) - 5]
        shader_start();
        draw_sprite_ext(sprite_get("laser_aim"), time/3, eyepos[0], eyepos[1], 2, 2, 0, c_white, 0.7);
        shader_end();
        draw_set_alpha(0.7);
        draw_line_width_color(eyepos[0], eyepos[1], target_pl.x + randoff[0], target_pl.y - target_pl.char_height/2 + randoff[1], 2, col, col)
        draw_set_alpha(0.7);
        if laser_timer < 270 draw_circle_color(target_pl.x + randoff[0], target_pl.y - target_pl.char_height/2 + randoff[1], 6, time%10 > 5? col: c_white, time%10 > 5? col: c_white, 1);
        draw_circle_color(target_pl.x + randoff[0], target_pl.y - target_pl.char_height/2 + randoff[1], 3, time%10 > 5? col: c_white, time%10 > 5? col: c_white, 0);
        draw_set_alpha(1);
    }else if laser_timer > 370{
        if laser_timer = 389 fire_pos = eyepos;
        if laser_timer < 390{
            draw_set_alpha(0.5);
            draw_circle_color(eyepos[0], eyepos[1], (laser_timer - 370)/10 * 6, col2, col2, 0);
            draw_set_alpha(1);
            draw_circle_color(eyepos[0], eyepos[1], (laser_timer - 370)/10 * 5, c_white, c_white, 0);
        }else{
            draw_set_alpha(0.5*clamp((410 - laser_timer)*3, 0, 1));
            draw_ellipse_color(eyepos[0] - (laser_timer - 390)*52/40, eyepos[1] - 6*(450 - laser_timer)/50, eyepos[0] + (laser_timer - 390)*52/40, eyepos[1] + 6*(450 - laser_timer)/50, col2, col2, 0);
            draw_set_alpha((450 - laser_timer)*3);
            draw_ellipse_color(eyepos[0] - (laser_timer - 390)*50/40, eyepos[1] - 4*(450 - laser_timer)/50, eyepos[0] + (laser_timer - 390)*50/40, eyepos[1] + 4*(450 - laser_timer)/50, c_white, c_white, 0);
            
            draw_set_alpha(0.5*clamp((410 - laser_timer)*3, 0, 1));
            draw_circle_color(eyepos[0], eyepos[1], (410 - laser_timer)/20 * 51, col2, col2, 1);
            draw_set_alpha((410 - laser_timer)*3);
            draw_circle_color(eyepos[0], eyepos[1], (410 - laser_timer)/20 * 50, c_white, c_white, 1);
            draw_circle_color(eyepos[0], eyepos[1], (410 - laser_timer)/20 * 49, c_white, c_white, 1);
            draw_circle_color(eyepos[0], eyepos[1], (410 - laser_timer)/20 * 48, c_white, c_white, 1);
            draw_circle_color(eyepos[0], eyepos[1], (410 - laser_timer)/20 * 47, c_white, c_white, 1);
            draw_circle_color(eyepos[0], eyepos[1], (410 - laser_timer)/20 * 46, c_white, c_white, 1);
            draw_circle_color(eyepos[0], eyepos[1], (410 - laser_timer)/20 * 45, c_white, c_white, 1);
            draw_set_alpha(0.5*clamp((410 - laser_timer)*3, 0, 1));
            draw_circle_color(eyepos[0], eyepos[1], (410 - laser_timer)/20 * 44, col2, col2, 1);
            
            draw_line_width_color(eyepos[0] + dcos(time*2 + 0)*12, eyepos[1] - dsin(time*2 + 0)*12, eyepos[0] + dcos(time*2 + 0)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 0)*100*(410 - laser_timer)/20, 4, col2, col2);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 60)*12, eyepos[1] - dsin(time*2 + 60)*12, eyepos[0] + dcos(time*2 + 60)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 60)*100*(410 - laser_timer)/20, 4, col2, col2);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 100)*12, eyepos[1] - dsin(time*2 + 100)*12, eyepos[0] + dcos(time*2 + 100)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 100)*100*(410 - laser_timer)/20, 4, col2, col2);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 200)*12, eyepos[1] - dsin(time*2 + 200)*12, eyepos[0] + dcos(time*2 + 200)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 200)*100*(410 - laser_timer)/20, 4, col2, col2);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 260)*12, eyepos[1] - dsin(time*2 + 260)*12, eyepos[0] + dcos(time*2 + 260)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 260)*100*(410 - laser_timer)/20, 4, col2, col2);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 320)*12, eyepos[1] - dsin(time*2 + 320)*12, eyepos[0] + dcos(time*2 + 320)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 320)*100*(410 - laser_timer)/20, 4, col2, col2);
            
            draw_set_alpha((410 - laser_timer)*3);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 0)*12, eyepos[1] - dsin(time*2 + 0)*12, eyepos[0] + dcos(time*2 + 0)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 0)*100*(410 - laser_timer)/20,2, c_white, c_white);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 60)*12, eyepos[1] - dsin(time*2 + 60)*12, eyepos[0] + dcos(time*2 + 60)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 60)*100*(410 - laser_timer)/20,2, c_white, c_white);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 100)*12, eyepos[1] - dsin(time*2 + 100)*12, eyepos[0] + dcos(time*2 + 100)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 100)*100*(410 - laser_timer)/20,2, c_white, c_white);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 200)*12, eyepos[1] - dsin(time*2 + 200)*12, eyepos[0] + dcos(time*2 + 200)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 200)*100*(410 - laser_timer)/20,2, c_white, c_white);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 260)*12, eyepos[1] - dsin(time*2 + 260)*12, eyepos[0] + dcos(time*2 + 260)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 260)*100*(410 - laser_timer)/20,2, c_white, c_white);
            draw_line_width_color(eyepos[0] + dcos(time*2 + 320)*12, eyepos[1] - dsin(time*2 + 320)*12, eyepos[0] + dcos(time*2 + 320)*80*(410 - laser_timer)/20, eyepos[1] - dsin(time*2 + 320)*100*(410 - laser_timer)/20,2, c_white, c_white);
            draw_set_alpha(1);
        }
    }
}
if line_fx_timer && array_length(beam_pos) >= 2{
    draw_primitive_begin(pr_trianglestrip);
    for(var e = 0; e < array_length(beam_pos); e++){
        var c = beam_pos[e]
        var wdt = clamp((line_fx_timer)*4/20, 0, 2);
        draw_vertex_color(c[0] - dcos(c[2] + 90)*wdt, c[1] - dsin(c[2] + 90)*wdt, c_white, 1);
        draw_vertex_color(c[0] + dcos(c[2] + 90)*wdt, c[1] + dsin(c[2] + 90)*wdt, c_white, 1);
    }
    draw_primitive_end();
}

for(var e = 0; e < array_length(lwfx_buffer); e++){
    var p = lwfx_buffer[e];
    if p.layer == -1{
        if p.shade shader_start();
        if p.fog gpu_set_fog(1, p.blend, 1, 0);
        draw_sprite_ext(p.sprite, p.frame, p.xpos, p.ypos, (p.scale)*p.dir, p.scale, p.angle, p.blend, p.alpha);
        if p.fog gpu_set_fog(0, p.blend, 1, 0);
        if p.shade shader_end();
    }
}