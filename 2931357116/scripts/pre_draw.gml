var afterm_col = make_color_rgb(sora_alt[form][get_player_color(player)][2][0], sora_alt[form][get_player_color(player)][2][1], sora_alt[form][get_player_color(player)][2][2]);
with obj_article2 if player_id = other && particle_type == 3{
    with other{
        gpu_set_fog(1, afterm_col, 1, 0);
        draw_sprite_ext(sprite_index, other.image_index, other.x, other.y, 2 * other.spr_dir, 2, 0, c_white, other.image_alpha);
        gpu_set_fog(0, afterm_col, 0, 1);
    }
}else{
    gpu_set_fog(0, afterm_col, 0, 1);
}

shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL && window == 6{
    draw_sprite_ext(sprite_get("0fspecial"), 59, proj_pos[0] - 38 * spr_dir, proj_pos[1] + 52, 2 * spr_dir, 2, 0, c_white, 1);
}
shader_end();

//hand vfx behind pos
if form == 3 && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][2] == 2: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][2] == 2){
    draw_sprite_ext(sprite_get("master_handfx"), get_gameplay_time()/4, x + (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][0]: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][0]) * spr_dir, y + (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR? hand_attack_pos[attack + (attack = AT_EXTRA_1? dash_dir: (attack == AT_TAUNT? 4: 0))][image_index%image_number][1]: hand_state_pos[state][image_index%image_number + (state = PS_HITSTUN || state = PS_HITSTUN_LAND || state = PS_TUMBLE? hurt_img + (hurt_img > 4? 4: 0): 0)][1]), 2, 2, 0, c_white, 1);
}

//particles
for(var i = 0; i < array_length(particles); i++){
    var p = particles[i];
    if p[9] draw_sprite_ext(p[0], p[8], p[6], p[7], 2, 2, 0, p[5], p[1]);
}

with obj_article2 if player_id = other && particle_type == 4 && sprite != 0 for(var k = player_id.final_partc_amount; k > 0; k--){
    var color = make_color_rgb(player_id.sora_alt[4][get_player_color(player)][1][0], player_id.sora_alt[4][get_player_color(player)][1][1], player_id.sora_alt[4][get_player_color(player)][1][2]);
    if dsin((timer - k/(player_id.final_partc_amount/10))*5)*4 <= 0 draw_sprite_ext(sprite, 0, player_id.x - part_spd[0]*k/2 - 2 + 50*dcos((timer - k/(player_id.final_partc_amount/10))*5), player_id.y - part_spd[1]*k/2 + 18 - player_id.char_height - y_displ*dsin((y_timer - k/(player_id.final_partc_amount/10))*5), 2, 2, 0, color, image_alpha - k/player_id.final_partc_amount);
}