var hud_x = 0;
var hud_y = 480;
var hud_size = 224;
var hud_padding = 16;
var hud_max_width = (hud_size + hud_padding) * 4;
var hud_width = (hud_size + hud_padding) * player_count;
var hud_offset = (hud_max_width - hud_width) / 2;

var hbar_x = view_get_wview() / 2;
var hbar_y = 24;
var hbar_fill = 0;

//Textbox
if (textbox_show) {
    var tb_x1 = 144;
    var tb_y1 = 32;
    draw_set_font(asset_get("fName"));
    draw_set_halign(fa_left);
    draw_sprite(textbox_spr, 0, 0, 0); //Background
    if (textbox_speaker == 1 || textbox_speaker == 2 || textbox_speaker == 3) {
        if (instance_exists(textbox_player_id)) {
            with (textbox_player_id) {
                shader_start();
                with other draw_sprite(textbox_portraits[textbox_speaker], textbox_portrait_img[textbox_speaker], 16, 8); //Portrait
                shader_end();
            }
        }
    }
    else {
        draw_sprite(textbox_portraits[textbox_speaker], textbox_portrait_img[textbox_speaker], 16, 8); //Portrait
    }
    draw_debug_text(tb_x1, tb_y1, textbox_typetext);
    
    if (textbox_glasstimer <= -1 && (textbox_linenum >= max_lines + 1 || textbox_pos == string_length(textbox_text))) {
        draw_sprite(textbox_continue_spr, textbox_continue_img, 928, 96); //continue
    }
}

//Healthbar
switch(boss_fight_state) {
    case 0:
        hbar_y = -64;
        hbar_fill = 0;
    break;
    
    case 1:
        if (show_healthbar) {
            if (boss_state_timer <= 30)
                hbar_y = lerp(-64, 24, boss_state_timer / 30)
            else
                hbar_y = 24
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
            hbar_y = -64;
            hbar_fill = 0;
        }
    break;
    
    case 2:
        var hp_total = 0;
        var hp_sum = 0;
        for (var i = 0; i < num_bosses; i++)  {
            if (!instance_exists(boss_article_id[i]))
                continue;
            hp_total += boss_article_id[i].hitpoints_max;
            hp_sum += boss_article_id[i].hitpoints;
        }
        if (hp_total != 0)
            hbar_fill = hp_sum / hp_total;
    break;
    case 3:
        if (boss_state_timer <= 60)
            hbar_y = lerp(24, -64, boss_state_timer / 60)
        else
            hbar_y = -64
}
var xx = hbar_x - 320;
var yy = hbar_y + 32
var str = boss_name;

draw_set_font(asset_get("medFont"));
draw_set_halign(fa_left)

draw_sprite(sprite_get("boss_hp_back"), 0, hbar_x, hbar_y);
draw_sprite_part(sprite_get("boss_hp_bar"), 0, 0, 0, 640 * hbar_fill, 26, hbar_x - 320, hbar_y);

draw_text_color(xx + 2, yy - 2, str, c_black,c_black,c_black,c_black,1)
draw_text_color(xx - 2, yy - 2, str, c_black,c_black,c_black,c_black,1)
draw_text_color(xx + 2 , yy + 2, str, c_black,c_black,c_black,c_black,1)
draw_text_color(xx - 2, yy + 2, str, c_black,c_black,c_black,c_black,1)
draw_text_color(xx, yy, str, c_white,c_white,c_white,c_white,1)

//Player HUD
var dx = hud_x + 8 + (dummy_player - 1) * (hud_size + hud_padding) + hud_offset;
var dy = hud_y;
var ds = sprite_get("hud_difficulty");
if (dummy_player <= 0) {
    dx = 576;
    dy = hbar_y + 36;
    ds = sprite_get("hud_difficulty_s")
}

draw_sprite(ds, hard_mode, dx, dy)

draw_set_font(asset_get("roaLBLFont"));
if (dummy_player <= 0) 
    draw_set_font(asset_get("medFont"));
draw_set_halign(fa_center)
xx = dx + 120;
yy = dy + 20;
if (dummy_player <= 0)
    yy = dy + 4;
str = hard_mode ? "EXPERT" : "NORMAL";
var col = hard_mode ? c_maroon : c_white;

draw_text_color(xx + 2, yy - 2, str, c_black,c_black,c_black,c_black,1)
draw_text_color(xx - 2, yy - 2, str, c_black,c_black,c_black,c_black,1)
draw_text_color(xx + 2 , yy + 2, str, c_black,c_black,c_black,c_black,1)
draw_text_color(xx - 2, yy + 2, str, c_black,c_black,c_black,c_black,1)
draw_text_color(xx, yy, str, col,col,col,col,1)

for (var i = 1; i <= player_count; i++) {
    with (asset_get("oPlayer")) {
        if (clone)
            continue;
        if (other.dummy_player != i && player == i) {
            with (obj_stage_main) {
                draw_set_font(asset_get("roaLBLFont"));
                draw_set_halign(fa_left)
                
                var dx = hud_x + 8 + (i - 1) * (hud_size + hud_padding) + hud_offset;
                draw_sprite_ext(sprite_get("hud_life_counter"), 0, dx, hud_y - 36, 1, 1, 0, get_player_hud_color(i), 1);
        		
        		var xx = dx + 72;
        		var yy = hud_y - 36
        		var str = other.fake_stock;
        		draw_text_color(xx + 2, yy - 2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx - 2, yy - 2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx + 2 , yy + 2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx - 2, yy + 2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx, yy, str, c_white,c_white,c_white,c_white,1)
        		
                draw_set_font(asset_get("fName"));
                draw_set_halign(fa_left)
                
        		xx = dx;
        		yy = hud_y - 56
        		str = "Damage: " + string(round(player_display_hits[i]));
        		draw_text_color(xx + 2, yy - 2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx - 2, yy - 2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx + 2 , yy + 2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx - 2, yy + 2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx, yy, str, c_white,c_white,c_white,c_white,1)
            }
        }
    }
}