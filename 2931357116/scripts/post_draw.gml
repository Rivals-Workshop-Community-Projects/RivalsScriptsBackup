//hand vfx middle pos
shader_end();
if form == 3 && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][2] == 1: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][2] == 1){
    draw_sprite_ext(sprite_get("master_handfx"), get_gameplay_time()/4, x + draw_x + (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][0]: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][0]) * spr_dir, y + draw_y + (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][1]: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][1]), 2, 2, 0, c_white, 1);
}

//keyblades
shader_start();
if form && form != 2{
    if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        var temp_state = 0;
        switch(state){
        case PS_IDLE_AIR:
        temp_state = "PS_FIRST_JUMP";
        break;
        case PS_LAND:
        temp_state = "PS_CROUCH";
        break;
        case PS_LANDING_LAG:
        temp_state = "PS_CROUCH";
        break;
        case PS_WAVELAND:
        temp_state = "PS_CROUCH";
        break;
        case PS_PARRY_START:
        temp_state = "PS_IDLE";
        break;
        case PS_HITSTUN:
        temp_state = "HURT" + string(hurt_img);
        break;
        case PS_HITSTUN_LAND:
        temp_state = "HURT" + string(hurt_img);
        break;
        case PS_TUMBLE:
        temp_state = "HURT" + string(hurt_img);
        break;
        case PS_WRAPPED:
        case PS_FROZEN:
        case PS_FLASHED:
        case PS_CRYSTALIZED:
        case PS_BURIED:
        temp_state = "HURT1";
        break;
        case PS_RESPAWN:
        temp_state = "PS_IDLE";
        break;
        case PS_WALL_TECH:
        temp_state = "PS_WALL_JUMP";
        break;
        case PS_TECH_BACKWARD:
        case PS_TECH_FORWARD:
        case PS_ROLL_BACKWARD:
        case PS_ROLL_FORWARD:
        temp_state = "PS_ROLL";
        break;
        case PS_PRATLAND:
        temp_state = "PS_LAND";
        break;
        case PS_SPAWN:
        temp_state = "PS_IDLE";
        break;
    }
        if form == 4 && is_floating && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_AIR_DODGE{
            draw_sprite_ext(sprite_get("glide_blade"), image_index, x + draw_x, y + draw_y, spr_dir * (1+small_sprites), 1+small_sprites, spr_angle, (state == PS_PRATFALL || state == PS_PRATLAND? c_gray: c_white), image_alpha);
        }else if form == 3 && (state == PS_IDLE || state == PS_WALK || state == PS_DASH || state == PS_SPAWN || state == PS_RESPAWN){
            for(var i = 1; i <= 9; i++){
                draw_sprite_ext(sprite_get("3idle_fx_smear"), 0, x + draw_x + 36*spr_dir, y + draw_y - 44 + (state == PS_DASH? 14: 0), spr_dir, 1, (blade_angle + 8*i*clamp(dsin(state_timer*2)*2, 0, 1))*spr_dir, c_white, 0.9 * (1 - i/10));
            }
            draw_sprite_ext(sprite_get("3idle_fx"), 0, x + draw_x + 36*spr_dir, y + draw_y - 44 + (state == PS_DASH? 14: 0), spr_dir, 1, blade_angle*spr_dir, c_white, 1);
        }else draw_sprite_ext(sprite_get(string(form) + (temp_state != 0? temp_state: get_state_name(state)) + "_blade"), image_index, x + draw_x, y + draw_y, spr_dir * (1+small_sprites), 1+small_sprites, spr_angle, (state == PS_PRATFALL || state == PS_PRATLAND? c_gray: c_white), image_alpha);
    }else if (attack == AT_DSPECIAL? window > 5: true){
        switch form{
            case 0:
            case 2:
            draw_sprite_ext(sprite_get(string(form) + attack_names[attack] + (free && (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL)? "_air": "") + "_blade"), image_index, x + draw_x, y + draw_y, spr_dir * (1+small_sprites), 1+small_sprites, spr_angle, (state == PS_PRATFALL || state == PS_PRATLAND? c_gray: c_white), image_alpha);
            break;
            
            case 1:
            draw_sprite_ext(sprite_get(string(form) + attack_names[attack] + (free && attack == AT_NSPECIAL? "_air": "") + "_blade"), image_index, x + draw_x, y + draw_y, spr_dir * (1+small_sprites), 1+small_sprites, spr_angle, (state == PS_PRATFALL || state == PS_PRATLAND? c_gray: c_white), image_alpha);
            break;
            
            case 3:
            if attack == AT_EXTRA_1 draw_sprite_ext(sprite_get(attack_names[attack] + string(dash_dir) + "_blade"), image_index, x + draw_x, y + draw_y, spr_dir * (1+small_sprites), 1+small_sprites, spr_angle, (state == PS_PRATFALL || state == PS_PRATLAND? c_gray: c_white), image_alpha);
            else draw_sprite_ext(sprite_get(string(form) + attack_names[attack] + "_blade"), image_index, x + draw_x, y + draw_y, spr_dir * (1+small_sprites), 1+small_sprites, spr_angle, (state == PS_PRATFALL || state == PS_PRATLAND? c_gray: c_white), image_alpha);
            break;
            
            case 4:
            draw_sprite_ext(sprite_get(string(form) + attack_names[attack] + "_blade"), image_index, x + draw_x, y + draw_y, spr_dir * (1+small_sprites), 1+small_sprites, spr_angle, (state == PS_PRATFALL || state == PS_PRATLAND? c_gray: c_white), image_alpha);
            break;
        }
    }
    
}
shader_end();

//dspecial effects
if attack == AT_DSPECIAL && !form && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window == 1{
    draw_sel = (joy_pad_idle? -1: floor(floor((joy_dir/45)%8)/2 + .5)%4);
    if orb_alpha < 1 orb_alpha += 1/15
}else{
    if orb_alpha > 0 orb_alpha -= 1/15
}
if orb_alpha > 0{
    draw_sprite_ext(sprite_get("hud_icons"), 0, x + 55 - 16, y - 40, 2, 2, 0, gauge_val < 2000? c_gray: c_white, orb_alpha);
    draw_sprite_ext(sprite_get("hud_icons"), 1, x - 16, y - 100, 2, 2, 0, gauge_val < 2000? c_gray: c_white, orb_alpha);
    draw_sprite_ext(sprite_get("hud_icons"), 2, x - 55 - 16, y - 40, 2, 2, 0, gauge_val < 3000? c_gray: c_white, orb_alpha);
    draw_sprite_ext(sprite_get("hud_icons"), 3, x - 16, y + 10, 2, 2, 0, gauge_val < 4000? c_gray: c_white, orb_alpha);
    if draw_sel + 1 draw_sprite_ext(sprite_get("hud_icons_layout"), 0, x + layout_pos[draw_sel][0] - 2, y + layout_pos[draw_sel][1] - 2, 2, 2, 0, c_white, orb_alpha);
}

//mp gauge
if form == 2{
    if mp_recharge{
        var magic = get_gameplay_time()%90;
        mp_gauge_alpha = (abs(dsin(magic*4))*.7) + .3;
    }else{
        mp_gauge_alpha = lerp(mp_gauge_alpha, 1, 0.15);
    }
    if mp_alpha < 1 mp_alpha += 0.05;
    if mp_alpha > 1 mp_alpha = 1;
}else{
    if mp_alpha > 0 mp_alpha -= 0.05;
    if mp_alpha < 0 mp_alpha = 0;
    if mp_alpha == 0 && (mp < 1000 || mp_recharge){
        mp_recharge = 0;
        mp = 1000;
    }
}
if mp_alpha > 0{
    draw_sprite_ext(sprite_get("hud_MP_gauge"), 0, x - 45, y - 84 - hud_offset, 2, 2, 0, get_player_hud_color(player), mp_alpha);
    draw_sprite_ext(sprite_get("hud_MP"), 0, x + 29, y - 82 - hud_offset, 2, 2, 0, mp_recharge? make_color_rgb(255, 0, 182): make_color_rgb(0, 97, 255), mp_alpha);
    draw_primitive_begin(pr_trianglestrip);
    draw_vertex_color(x + 27 - 70, y - 82 - hud_offset, mp_recharge? make_color_rgb(255, 0, 182): make_color_rgb(0, 97, 255), (mp_alpha == 1? mp_gauge_alpha: mp_alpha)- .5);
    draw_vertex_color(x + 27 - 70 * (mp >= 0?(1 - mp_bg/1000): 1), y - 82 - hud_offset, mp_recharge? make_color_rgb(255, 0, 182): make_color_rgb(0, 97, 255), (mp_alpha == 1? mp_gauge_alpha: mp_alpha)- .5);
    draw_vertex_color(x + 27 - 70, y - 76 - hud_offset, mp_recharge? make_color_rgb(255, 0, 182): make_color_rgb(0, 97, 255), (mp_alpha == 1? mp_gauge_alpha: mp_alpha)- .5);
    draw_vertex_color(x + 27 - 70 * (mp >= 0?(1 - mp_bg/1000): 1), y - 76 - hud_offset, mp_recharge? make_color_rgb(255, 0, 182): make_color_rgb(0, 97, 255), (mp_alpha == 1? mp_gauge_alpha: mp_alpha)- .5);
    draw_primitive_end();
    draw_primitive_begin(pr_trianglestrip);
    draw_vertex_color(x + 27 - 70, y - 82 - hud_offset, mp_recharge? make_color_rgb(255, 102, 211): make_color_rgb(102, 160, 255), mp_alpha == 1? mp_gauge_alpha: mp_alpha);
    draw_vertex_color(x + 27 - 70 * (mp >= 0?(1 - mp/1000): 1), y - 82 - hud_offset, mp_recharge? make_color_rgb(255, 102, 211): make_color_rgb(102, 160, 255), mp_alpha == 1? mp_gauge_alpha: mp_alpha);
    draw_vertex_color(x + 27 - 70, y - 76 - hud_offset, mp_recharge? make_color_rgb(255, 0, 182): make_color_rgb(0, 97, 255), mp_alpha == 1? mp_gauge_alpha: mp_alpha);
    draw_vertex_color(x + 27 - 70 * (mp >= 0?(1 - mp/1000): 1), y - 76 - hud_offset, mp_recharge? make_color_rgb(255, 0, 182): make_color_rgb(0, 97, 255), mp_alpha == 1? mp_gauge_alpha: mp_alpha);
    draw_primitive_end();
}

//valor points
if form == 1{
    if vl_alpha < 1 vl_alpha += 0.05;
    if vl_alpha > 1 vl_alpha = 1;
}else{
    if vl_alpha > 0 vl_alpha -= 0.05;
    if vl_alpha < 0 vl_alpha = 0;
    if vl_alpha == 0 && vl_point{
        vl_point = 0;
    }
}
if vl_alpha > 0 && vl_point for(var k = 1; k <= vl_point; k++){
    var edd = k%2 * 2 - 1;
    draw_sprite_ext(sprite_get("hud_valor_gem"), 0, x + (k<3? 5: 23) * edd, y - (k<3? 80: 74) - hud_offset, edd * 2, 2, 0, c_white, vl_alpha);
}

//master vfx top pos
if form == 3 && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][2] == 0: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][2] == 0){
    draw_sprite_ext(sprite_get("master_handfx"), get_gameplay_time()/4, x + draw_x + (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][0]: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][0]) * spr_dir, y + draw_y + (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][1]: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][1]), 2, 2, 0, c_white, 1);
}

//particles
for(var i = 0; i < array_length(particles); i++){
    var p = particles[i];
    if !p[9] draw_sprite_ext(p[0], p[8], p[6], p[7], 2, 2, 0, p[5], p[1]);
}

with obj_article2 if player_id = other && particle_type == 4 && sprite != 0 for(var k = player_id.final_partc_amount; k > 0; k--){
    var color = make_color_rgb(player_id.sora_alt[4][get_player_color(player)][1][0], player_id.sora_alt[4][get_player_color(player)][1][1], player_id.sora_alt[4][get_player_color(player)][1][2]);
    if dsin((timer - k/(player_id.final_partc_amount/10))*5)*4 > 0 draw_sprite_ext(sprite, 0, player_id.x - part_spd[0]*k/2 - 2 + 50*dcos((timer - k/(player_id.final_partc_amount/10))*5), player_id.y - part_spd[1]*k/2 + 18 - player_id.char_height - y_displ*dsin((y_timer - k/(player_id.final_partc_amount/10))*5), 2, 2, 0, color, image_alpha - k/player_id.final_partc_amount);
}

//flowmotion blade
if (state == PS_ATTACK_AIR || state == PS_ATTACK_AIR) && attack == AT_EXTRA_2 && window == 1{
    with flow_blade draw_sprite_ext(sprite_get("hud_arrow"), 0, x, y - 60, 1, 1, 0, get_player_hud_color(player), 1);
    var arr_pos = (joy_pad_idle? 2: floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45 - 20*sign(dcos((joy_pad_idle? 2: floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45))*sign(dsin((joy_pad_idle? 2: floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45));
    draw_sprite_ext(sprite_get("hud_arrow"), 0, x + 60 * dcos(arr_pos), y - 60 * dsin(arr_pos) - 40 + 12*sign(dcos(floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45)*sign(dcos(floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45)*sign(dsin(floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45), 1, 1, (joy_pad_idle? 2: floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45 + 90 - 20*sign(dcos((joy_pad_idle? 2: floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45))*sign(dsin((joy_pad_idle? 2: floor(floor((joy_dir/22.5)%16)/2 + .5)%8)*45)), get_player_hud_color(player), 1);
}