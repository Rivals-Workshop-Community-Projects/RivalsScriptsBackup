#region // Yo-Yo Colors
// Changes the Yo-Yo
switch(get_player_color(player)){
    case 6: // Bridget Alt Yo-Yo
        set_article_color_slot(0, 250, 96, 96);
        set_article_color_slot(1, 197, 44, 84);
        set_article_color_slot(2, 110, 13, 56);
        break;
    default: // By default, all Yo-Yos will be recolored to match the ones that Wren uses normally.
        set_article_color_slot(0, get_color_profile_slot_r(get_player_color(player), 5), get_color_profile_slot_g(get_player_color(player), 5), get_color_profile_slot_b(get_player_color(player), 5));
        set_article_color_slot(1, get_color_profile_slot_r(get_player_color(player), 6), get_color_profile_slot_g(get_player_color(player), 6), get_color_profile_slot_b(get_player_color(player), 6));
        set_article_color_slot(2, get_color_profile_slot_r(get_player_color(player), 7), get_color_profile_slot_g(get_player_color(player), 7), get_color_profile_slot_b(get_player_color(player), 7));
        break;
}
#endregion

#region // Water/Wave colors
set_article_color_slot(5, get_color_profile_slot_r(get_player_color(player), 8), get_color_profile_slot_g(get_player_color(player), 8), get_color_profile_slot_b(get_player_color(player), 8));
set_article_color_slot(6, get_color_profile_slot_r(get_player_color(player), 9), get_color_profile_slot_g(get_player_color(player), 9), get_color_profile_slot_b(get_player_color(player), 9));
set_article_color_slot(7, get_color_profile_slot_r(get_player_color(player), 10), get_color_profile_slot_g(get_player_color(player), 10), get_color_profile_slot_b(get_player_color(player), 10));
#endregion

#region // Wave Sprites
switch(state){
    case PS_DOUBLE_JUMP:
        if state_timer <= double_jump_time and !instance_exists(wren_yoyo){
            shader_start();
            draw_sprite_ext(sprite_get("doublejump_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
            shader_end();
        }
        break;
    case PS_AIR_DODGE:
        if !instance_exists(wren_yoyo){
            shader_start();
            switch(air_dodge_spr){
                default:
                    draw_sprite_ext(sprite_get("airdodge_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
            }
            shader_end();
        }
        break;
    case PS_DASH_START:
        if sign(hsp) != spr_dir and state_timer >= initial_dash_time{
            wave_sprites(wrave_spr_dash);
        } else {
            wave_sprites(wrave_spr_dashstart);
        }
        break;
    case PS_DASH:
        wave_sprites(wrave_spr_dash);
        break;
    case PS_DASH_STOP:
        wave_sprites(wrave_spr_dashstop);
        break;
    case PS_DASH_TURN:
        wave_sprites(wrave_spr_dashturn);
        break;
    case PS_TECH_GROUND:
        if !instance_exists(wren_yoyo){
            draw_sprite_ext(sprite_get("tech_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
        }
        wave_sprites(wrave_spr_tech);
        break;
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_TECH_BACKWARD:
    case PS_TECH_FORWARD:
        wave_sprites(wrave_spr_roll);
        break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        if !instance_exists(wren_yoyo){
            shader_start();
            switch(attack){
                case AT_JAB:
                    draw_sprite_ext(sprite_get("jab_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
                case AT_FTILT:
                    draw_sprite_ext(sprite_get("ftilt_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
                case AT_DTILT:
                    draw_sprite_ext(sprite_get("dtilt_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
                case AT_BAIR:
                    draw_sprite_ext(sprite_get("bair_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
                case AT_DSTRONG:
                    draw_sprite_ext(sprite_get("dstrong_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
                case AT_USPECIAL:
                    draw_sprite_ext(sprite_get("uspecial_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
                case AT_USPECIAL_GROUND:
                    draw_sprite_ext(sprite_get("uspecialex_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
                case AT_TAUNT:
                    draw_sprite_ext(sprite_get("taunt_yoyo"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
                    break;
            }
            shader_end();
        }
        switch(attack){
            case AT_DATTACK:
                wave_sprites(wrave_spr_dattack);
                break;
            case AT_FTILT:
                wave_sprites(wrave_spr_ftilt);
                break;
            case AT_DTILT:
                wave_sprites(wrave_spr_dtilt);
                break;
            case AT_UAIR:
                wave_sprites(wrave_spr_uair);
                break;
            case AT_FSPECIAL:
                wave_sprites(wrave_spr_fspecial);
                break;
            case AT_USPECIAL:
                wave_sprites(wrave_spr_uspecial);
                break;
            case AT_USPECIAL_GROUND:
                wave_sprites(wrave_spr_uspecialex);
                break;
            case AT_TAUNT:
                wave_sprites(wrave_spr_taunt);
                break;
        }
        break;
}
#endregion
#region // arrow for nspecial
switch(state){
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
            case AT_NSPECIAL:
                switch(window){
                    case 2:
                        if joy_pad_idle{
                            draw_sprite_ext(sprite_get("arrow"), 0, x, y - 32, spr_dir*2, 2, 0, get_player_hud_color(player), 1);
                        } else {
                            draw_sprite_ext(sprite_get("arrow"), 0, x, y - 32, 2, 2, joy_dir, get_player_hud_color(player), 1);
                        }
                        break;
                }
                break;
        }
        break;
}
#endregion
#region // Rivals 2 Mode
switch(state){
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
            case AT_EXTRA_2:
                switch(window){
                    case 2:
                        shader_start();
                        draw_sprite_ext(sprite_get("shield_front"), 0, x, y, spr_dir*2, 2, 0, c_white, 1);
                        draw_sprite_ext(sprite_get("shield_front"), 1, x, y, spr_dir*2, 2, 0, c_white, .8);
                        draw_sprite_ext(sprite_get("shield_health"), wren_shield_anim, x, y, spr_dir*2, 2, 0, c_white, 1);
                        shader_end();
                        break;
                }
                break;
        }
        break;
}
#endregion

#define wave_sprites(_anim)
// Variables
if get_player_color(player) == 26{
    gpu_push_state();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(wren_wave_spr[_anim,4], image_index, x, y, spr_dir * 2, 2, 0, c_red, 1);
    gpu_pop_state();
}
draw_sprite_ext(wren_wave_spr[_anim,0], image_index, x, y, spr_dir * 2, 2, 0, wren_wave_col[0], 1);
draw_sprite_ext(wren_wave_spr[_anim,1], image_index, x, y, spr_dir * 2, 2, 0, wren_wave_col[1], 1);
draw_sprite_ext(wren_wave_spr[_anim,2], image_index, x, y, spr_dir * 2, 2, 0, wren_wave_col[2], 1);
draw_sprite_ext(wren_wave_spr[_anim,3], image_index, x, y, spr_dir * 2, 2, 0, wren_wave_col[3], 1);