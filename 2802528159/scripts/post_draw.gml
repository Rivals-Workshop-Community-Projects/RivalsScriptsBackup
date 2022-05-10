shader_start();
if(attack == AT_USPECIAL && window == 2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if(plate_state == 0){
        draw_sprite_ext(sprite_get("0_uspecial_head"), head_rot, (free? x + (spr_dir = 1? 6: - 8): x), (free? y + (spr_dir = 1? 8: 10): y), 2 * spr_dir, 2, 0, c_white, 1);
    }else{
        draw_sprite_ext(sprite_get("1_uspecial_head"), head_rot, (free? x + (spr_dir = 1? - 2: 0): x), (free? y + (spr_dir = 1? - 2: -2): y), 2 * spr_dir, 2, 0, c_white, 1);
    }
}
if(attack == AT_NSPECIAL || AT_NSPECIAL_AIR) && (window == (attack = AT_NSPECIAL? 6: 7) && window_timer <= 3){
    draw_sprite_ext(sprite_get("nspecial_flash"), window_timer, x + (spr_dir = 1? 16: - 38), y - 72, 2, 2, 0, c_white, 1);
}

draw_sprite_ext(sprite_get("radar"), radar_img, x + radar_x * spr_dir, y + radar_y, 2 * spr_dir, 2, radar_angle * spr_dir, c_white, 0.3);

if(attack == AT_DATTACK && window_timer % 10 < 5 && state == PS_ATTACK_GROUND && window <= 2){
    gpu_set_fog(true, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, spr_angle, c_white, 1);
    gpu_set_fog(false, c_white, 0, 1);
}else{
    gpu_set_fog(false, c_white, 0, 1);
}

draw_sprite_ext(sprite_get("hud_bar_0"), 0, 0, 0, 1000, 1000, 0, c_black, (fog_alpha/40) - 0.05);
if(fog_alpha > 0){
    fog_alpha--;
}

if(state == PS_ROLL_FORWARD){
    draw_sprite_ext(sprite_get(string(plate_state) + "_froll"), (state_timer/29)*9, x, y, -2 * spr_dir, 2, 0, c_white, 1);
}
draw_sprite_ext(sprite_get("nspecial_flash"), 0, x + (spr_dir = 1? 26: - 70), y - 52, 4, 4, 0, c_white, (fog_alpha - 20) / 20);
shader_end();

if(get_stage_data(SD_ID) == "383980\2802531022"){
    if(grain_timer < 20){
        grain_timer++;
    }else{
        grain_timer = 0;
    }
    draw_sprite_ext(sprite_get("static"), grain_timer % 4, 0, 0, 2, 2, 0, c_white, 1);
}