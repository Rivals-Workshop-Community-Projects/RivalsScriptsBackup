// pre-draw

if ((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack == 49 && (window = 1 || window = 2)){
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, c_black, 0.6)
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND) && window = 3 && window_timer = 1 && !hitpause){
    spawn_hit_fx(x, y, uspecial_effect)
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && (attack == AT_FSPECIAL_2) && window = 1){
    shader_start();    
    draw_sprite_ext(sprite_get("fspecial_arrow"), frogthrow_dir, x, y, 1, 1, 0, c_white, 1)
    shader_end();
}

if ((state = PS_ATTACK_AIR || state = PS_ATTACK_AIR) && (attack == AT_FSPECIAL) && (window = 2)){
var col_R = get_color_profile_slot_r( get_player_color(player), 0);
var col_G = get_color_profile_slot_g( get_player_color(player), 0);
var col_B = get_color_profile_slot_b( get_player_color(player), 0);

var col_final = make_color_rgb(col_R, col_G, col_B);


        gpu_set_fog(1, col_final, 0, 0);    
      draw_sprite_ext(tvtrail_sprite, tvtrail_index, tvtrail_x, tvtrail_y, 1 * spr_dir, 1, 0, 7309078, tvtrail_opacity);  
      draw_sprite_ext(tvtrail2_sprite, tvtrail2_index, tvtrail2_x, tvtrail2_y, 1 * spr_dir, 1, 0, 7309078, tvtrail2_opacity);  
        gpu_set_fog(0, 0, 0, 0);
}

if ((state = PS_ATTACK_AIR || state = PS_ATTACK_AIR) && (attack == AT_FSPECIAL) && (window = 4 || window = 5) && grabbed_player_damage >= 120){
var col_R = get_color_profile_slot_r( get_player_color(player), 0);
var col_G = get_color_profile_slot_g( get_player_color(player), 0);
var col_B = get_color_profile_slot_b( get_player_color(player), 0);

var col_final = make_color_rgb(col_R, col_G, col_B);



        gpu_set_fog(1, col_final, 0, 0);    
      draw_sprite_ext(tvtrail_sprite, tvtrail_index, tvtrail_x, tvtrail_y, 1 * spr_dir, 1, 0, 7309078, tvtrail_opacity);  
      draw_sprite_ext(tvtrail2_sprite, tvtrail2_index, tvtrail2_x, tvtrail2_y, 1 * spr_dir, 1, 0, 7309078, tvtrail2_opacity);  
        gpu_set_fog(0, 0, 0, 0);
}