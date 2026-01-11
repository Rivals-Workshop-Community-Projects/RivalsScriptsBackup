//pre_draw.gml
//we use this script to draw under the player character, both text and sprites can be used here

//shader_start(); //everything between this and shader_end(); will be affected by alts

//respawn platform - check if the player is either in the respawn state or taunting while in the respawn state
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_pre"), game_time * plat_speed, x, y, 2, 2, 0, c_white, 1);
}

//shader_end();

if is_attacking && attack == AT_NSPECIAL && window == 2 && state_timer > get_window_value(attack, 1, AG_WINDOW_LENGTH){
    draw_sprite_ext(sprite_get("vfx_reticle"), (state_timer / 8) % 2, nspecial_x, nspecial_y, spr_dir, 1, 0, c_white, 1);
    if get_match_setting(SET_HITBOX_VIS){
        var i = 0;
        repeat array_length(mask_array){
            draw_sprite_ext(mask_array[i][0], 0, mask_array[i][1], mask_array[i][2], spr_dir, 1, 0, i % 2 == 0? c_white:c_gray, 0.5);
            i++;
        }
    }
}

shader_end();