healthbar_custom_draw();

#define healthbar_custom_draw
var i = 0;
var hbar_y = -80;

repeat ds_list_size(active_bosses) {
    var boss = active_bosses[| i];
    var hbar_x = (view_get_wview() / 2) - (sprite_get_width(obj_stage_main.hud_healthbar_spr) / 2) - 96;
    var hbar_y_top = sprite_get_height(obj_stage_main.hud_healthbar_spr) * -2;
    var hbar_y = hbar_y_top;
    var hbar_yoff = (sprite_get_height(obj_stage_main.hud_healthbar_spr) + obj_stage_main.hud_healthbar_yspacing) * i;
    var hbar_fill = 0;
    var hbar_color = c_white;
    var hbar_color2 = c_white;
    var hbar_title =  "";
    var hbar_portrait = asset_get("empty_sprite");
    var show_percent = true;
    var hbar_percent = 0;
    var hbar_shake_x = 0;
    var hbar_shake_y = 0;
    
    with (boss) {
        hbar_color = char_hud_color;
        hbar_color2 = ("char_hud_color2" in self) ? char_hud_color2 : c_white;
        hbar_title =  ("char_title" in self) ? char_title : "";
        hbar_portrait =  ("char_title" in self) ? char_title : asset_get("empty_sprite");
        show_percent = hitpoints_max <= 0;
        hbar_percent = percent;
        
        if (show_percent) {
            hbar_x = (view_get_wview() / 2) - (sprite_get_width(obj_stage_main.hud_percentbar_spr) / 2);
            hbar_yoff = 68 * i;
        }
        if (hitstun > 15 && hitpause > 0) {
            hbar_shake_x = round(-2 + random_func(1, 4, true) / 2) * 2;
            hbar_shake_y = round(-2 + random_func(1, 4, true) / 2) * 2;
        }
        switch(battle_state) {
            case 0:
                hbar_y = hbar_y_top;
                hbar_fill = 0;
            break;
            
            case 1:
                if (show_healthbar) {
                    if (battle_state_timer <= 30)
                        hbar_y = lerp(hbar_y_top, obj_stage_main.hud_bossbar_yoffset + hbar_yoff, battle_state_timer / 30)
                    else
                        hbar_y = obj_stage_main.hud_bossbar_yoffset + hbar_yoff
                    if (boss_healthbar_timer > 0) {
                        if (boss_healthbar_timer < 56) 
                            hbar_fill = ease_linear(0, 1, round(boss_healthbar_timer), 56);
                        else {
                            hbar_fill = 1
                        }
                    }
                    else
                        hbar_fill = 0;
                }
                else {
                    hbar_y = hbar_y_top;
                    hbar_fill = 0;
                }
            break;
            
            case 2:
                var hp_total = 0;
                var hp_sum = 0;
                hbar_y = obj_stage_main.hud_bossbar_yoffset + hbar_yoff;
                hp_total += hitpoints_max;
                hp_sum += hitpoints_max - percent;
                if (array_length(health_children) > 0) {
                    for (var i = 0; i < array_length(health_children); i++) {
                        with (health_children[i]) {
                            hp_total += hitpoints_max;
                            hp_sum += hitpoints_max - percent;
                        }
                    }
                }
                if (health_parent != -1 && health_parent != id) {
                    with (health_parent) {
                        hp_total += hitpoints_max;
                        hp_sum += hitpoints_max - percent;
                    }
                }
                if (hp_total != 0)
                    hbar_fill = hp_sum / hp_total;
            break;
            case 3:
                if (battle_state_timer <= 60)
                    hbar_y = lerp(obj_stage_main.hud_bossbar_yoffset + hbar_yoff, hbar_y_top, battle_state_timer / 60)
                else
                    hbar_y = hbar_y_top;
            break;
        }
        var xx = hbar_x + obj_stage_main.hud_bossname_xoffset;
        var yy = hbar_y + obj_stage_main.hud_bossname_yoffset;
        var xx2 = hbar_x + obj_stage_main.hud_bosstitle_xoffset;
        var yy2 = hbar_y + obj_stage_main.hud_bosstitle_yoffset;
        var icon_width = sprite_get_width(char_icon) / 2
        var icon_height = sprite_get_height(char_icon) / 2
        var xx3 = hbar_x + obj_stage_main.hut_portrait_x - icon_width;
        var yy3 = hbar_y + obj_stage_main.hut_portrait_y - icon_height;
        var str = char_name;
        if (!obj_stage_main.hud_draw_default_healthbar) { 
            if (!show_percent) {
                
                draw_sprite_ext(obj_stage_main.hud_healthbar_back_spr, 0, hbar_x + hbar_shake_x, hbar_y + hbar_shake_y, 1, 1, 0, hbar_color2, 1);
                draw_sprite_part_ext(obj_stage_main.hud_healthbar_spr, 0, 0, 0, sprite_get_width(obj_stage_main.hud_healthbar_spr) * hbar_fill, 
                    sprite_get_height(obj_stage_main.hud_healthbar_spr), hbar_x + 128 + hbar_shake_x, hbar_y + hbar_shake_y, 1, 1, hitpause <= 0 ? hbar_color : c_white, 1);
                draw_sprite_ext(obj_stage_main.hud_healthbar_back_spr, 1, hbar_x + hbar_shake_x, hbar_y + hbar_shake_y, 1, 1, 0, c_white, 1);
                draw_sprite_ext(obj_stage_main.hud_healthbar_back_spr, 2, hbar_x + hbar_shake_x, hbar_y + hbar_shake_y, 1, 1, 0, c_white, 1);
                //Portrait handling
                gpu_set_blendenable(false);
                gpu_set_colorwriteenable(false, false, false, true);
                draw_set_alpha(0);
                draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
                draw_set_alpha(1);
                draw_sprite_ext(obj_stage_main.hud_healthbar_back_spr, 2, hbar_x + hbar_shake_x, hbar_y + hbar_shake_y, 1, 1, 0, c_white, 1);
                gpu_set_blendenable(true);
                gpu_set_colorwriteenable(true,true,true,true);
                gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
                gpu_set_alphatestenable(true);
                draw_sprite(char_icon, 2, round(xx3), round(yy3))
                gpu_set_alphatestenable(false);
                gpu_set_blendmode(bm_normal);
                draw_set_alpha(1);
                
                draw_set_font(asset_get("medFont"));
                draw_set_halign(fa_left)
                draw_text_trans_outline(xx, yy, str, 1, -1, 1, 1, 0, c_white, c_black, 1);
                draw_set_font(asset_get("fName"));
                draw_text_trans_outline(xx2, yy2, hbar_title, 1, -1, 1, 1, 0, c_white, c_black, 1);
            }
            else {
                
                draw_sprite(obj_stage_main.hud_percentbar_spr, 0, hbar_x + hbar_shake_x, hbar_y + hbar_shake_y);
                draw_set_font(asset_get("roaLBLFont"));
                draw_set_halign(fa_right)
                draw_text_trans_outline(hbar_x + obj_stage_main.hud_percent_xoffset, hbar_y + obj_stage_main.hud_percent_yoffset, hbar_percent, 1, -1, 1, 1, 0, c_white, c_black, 1);
                
                draw_set_font(asset_get("medFont"));
                draw_set_halign(fa_left)
                draw_text_trans_outline(hbar_x + obj_stage_main.hud_percent_xoffset + 6, hbar_y + obj_stage_main.hud_percent_yoffset + 8, "%", 1, -1, 1, 1, 0, c_white, c_black, 1);
                draw_set_halign(fa_right)
                draw_text_trans_outline(xx - 32, yy, str, 1, -1, 1, 1, 0, c_white, c_black, 1);
            }
        }
    }
    i++;
}

#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (i = - 1; i < 2; i++) for (j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);