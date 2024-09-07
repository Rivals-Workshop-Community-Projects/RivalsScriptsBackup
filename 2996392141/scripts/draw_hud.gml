if ("char_height" not in self) exit;

var t_x = temp_x - 16;
var t_y = temp_y - 16;

tension_amount_hud = lerp(tension_amount_hud, tension_amount, 0.5);

var tension_img = clamp(tension_level - 1, 0, TENSION_LEVEL_AMOUNT-1);
var tension_fill = clamp(tension_amount_hud / TENSION_MAX, 0, 1);

draw_sprite_ext(sprite_get("hud_tension_bg"), 0, t_x + 44, t_y - 12, 2, 2, 0, c_white, 1);
draw_sprite_part_ext(sprite_get("hud_tension_bg"), 1, 0, 0, sprite_get_width(sprite_get("hud_tension_bg")) * tension_fill, sprite_get_height(sprite_get("hud_tension_bg")),
    t_x + 44, t_y - 12, 2, 2, c_white, 1);

        
draw_sprite_ext(sprite_get("hud_tension"), tension_img, t_x + 48, t_y - 32, 2, 2, 0, c_white, 1);

if (!in_battle) {
    draw_debug_text(t_x, t_y - 48, "Taunt + Parry to toggle Tension")
}

//Final Smash
if (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    var view_x = 0
    var view_y = 0;
    if (window == 4) {
        switch (fs_window) {
            case 1:
                draw_sprite_tiled_ext(sprite_get("final_smash_bg1"), 0, view_x, view_y, 2, 2, c_white, 1);
                
                shader_start()
                draw_sprite_ext(sprite_get("final_smash_c1"), 0, view_x + fs_cine_x, view_y + fs_cine_y, 2, 2, 0, c_white, 1);
                shader_end(); 
            break;
            case 2:
                draw_sprite_tiled_ext(sprite_get("final_smash_bg1"), 0, view_x, view_y, 2, 2, c_white, 1);
                shader_start()
                draw_sprite_ext(fs_cine_spr, fs_cine_img, view_x + fs_cine_x, view_y + fs_cine_y, 2, 2, 0, c_white, 1);
                shader_end(); 
            break;
            case 3:
                var x_off = fs_window_timer * 32
                draw_sprite_tiled_ext(sprite_get("final_smash_bg2"), 0, view_x + x_off, view_y - 240, 2, 2, c_white, 1);
                draw_sprite_tiled_ext(sprite_get("final_smash_bg2a"), 0, view_x + x_off * 2, view_y - 240, 2, 2, c_white, 1);
            
                shader_start()
                draw_sprite_ext(fs_cine_spr, fs_cine_img, view_x + fs_cine_x, view_y + fs_cine_y, 2 * fs_cine_scale1, 2 * fs_cine_scale1, 0, c_white, 1);
				if (fs_window_timer >= 100) {
				    
                    draw_sprite_ext(sprite_get("final_smash_c4b"), fs_cine_img, view_x + fs_cine_x, view_y + fs_cine_y - 320, 2 * fs_cine_scale2, 2 * fs_cine_scale2, fs_cine_rot2, c_white, 1);
				}
                shader_end(); 
            break;
        }
        
        if (fs_cine_subs != "") {
            draw_set_halign(fa_center);
            draw_set_font(asset_get("roaLBLFont"));
            draw_text_trans_outline( 480, 480, fs_cine_subs, 0, 800, 1, 1, 0, c_white, c_black, 1);
        }
    }
}

#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (i = - 1; i < 2; i++) for (j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);
