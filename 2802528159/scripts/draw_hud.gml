//*debug utility
//draw_debug_text( 200, 10, "state : " + get_state_name(state));
//draw_debug_text( 200, 25, "state timer : " + string(state_timer));
//draw_debug_text( 200, 40, "attack : " + string(attack));
//draw_debug_text( 200, 55, "window : " + string(window));
//draw_debug_text( 200, 70, "window timer : " + string(window_timer));
//draw_debug_text(  15, 10, "hsp: " + string(hsp));
//draw_debug_text(  15, 25, "vsp: " + string(vsp));
//draw_debug_text(  375, 40, "img ind: " + string(image_index));
//draw_debug_text(  15, 55, "spr_dir: " + string(spr_dir));
//draw_debug_text(  15, 70, "x: " + string(x));
//draw_debug_text(  15, 85, "y: " + string(y));
//draw_debug_text(  15, 100, "free: " + string(free));
//draw_debug_text(  15, 115, "attack pressed : " + string(attack_pressed));
//draw_debug_text(  15, 130, "attack down : " + string(attack_down));
//draw_debug_text(  15, 145, "joy_dir : " + string(joy_dir));
//draw_debug_text( 600, 10, "FPS : " + string(fps_real));
//*/

if !menu_timer menu_pos = [[temp_x + 4, temp_y - 38], [temp_x + 204, temp_y - 38], [temp_x + 4, temp_y - 2], [temp_x + 204, temp_y - 2]];

draw_sprite_ext(sprite_get("hud"), 0, temp_x + 4, temp_y - 38, 2, 2, 0, c_white, menu_timer < 20);

if !shut_light && !menu_open && menu_timer < 20{
shader_start();
light += (light < 360? 2 + aware: -light);
draw_sprite_stretched_ext(sprite_get("hud_bar"), 0, temp_x + 26, temp_y - 16, awareness/1000 * 156, 6, c_white, abs(sin(degtorad(light))) * 0.5 + 0.5);
draw_sprite_ext(sprite_get("hud_light"), 0, temp_x + 12, temp_y - 18, 2, 2, 0, c_white, abs(sin(degtorad(light))) * 0.5 + 0.5);
draw_sprite_ext(sprite_get("hud_light"), 0, temp_x + 186, temp_y - 18, 2, 2, 0, c_white, abs(sin(degtorad(light))) * 0.5 + 0.5);
shader_end();

draw_sprite_ext(sprite_get("hud_armor"), 0, temp_x + 12, temp_y - 32, 2, 2, 0, c_white, 0.3 + (plate_hp/(has_rune("H")? 50: 30)*0.7));
draw_sprite_part_ext(sprite_get("hud_armor_bar"), 0, 0, 0, plate_hp/(has_rune("H")? 50: 30) * 33, 2, temp_x + 26, temp_y - 28, 2, 2, c_white, 0.6 + (plate_hp/(has_rune("H")? 50: 30)*0.4));

hud_timer -= (hud_timer > 0? 1: -24);
draw_sprite_ext(sprite_get("hud_climb"), 0, temp_x + 186, temp_y - 32, 2, 2, 0, c_white, (wall_cool > 20? 0.1: 0.3 + (wall_en/300*0.7)));
draw_sprite_part_ext(sprite_get("hud_climb_bar"), hud_timer/6, 0, 0, wall_en/300 * 33, 4, temp_x + 182, temp_y - 22, -2, -2, c_white, 0.6 + (wall_en/300*0.4));

draw_set_alpha(move_cooldown[AT_DSPECIAL] = 0? 1: 0.6 - move_cooldown[AT_DSPECIAL]/200 * 0.6);
draw_rectangle_color(temp_x + 98, temp_y - 28, temp_x + 101, temp_y - 25, make_color_rgb(153, 0, 255), make_color_rgb(153, 0, 255), make_color_rgb(153, 0, 255), make_color_rgb(153, 0, 255), 0);
draw_set_alpha(move_cooldown[AT_FSPECIAL] = 0? 1: 0.6 - move_cooldown[AT_FSPECIAL]/200 * 0.6);
draw_rectangle_color(temp_x + 102, temp_y - 28, temp_x + 105, temp_y - 25, make_color_rgb(42, 240, 255), make_color_rgb(42, 240, 255), make_color_rgb(42, 240, 255), make_color_rgb(42, 240, 255), 0);
draw_set_alpha(move_cooldown[AT_USPECIAL] = 0? 1: 0.6 - move_cooldown[AT_USPECIAL]/200 * 0.6);
draw_rectangle_color(temp_x + 106, temp_y - 28, temp_x + 109, temp_y - 25, make_color_rgb(226, 182, 255), make_color_rgb(226, 182, 255), make_color_rgb(226, 182, 255), make_color_rgb(226, 182, 255), 0);
draw_set_alpha(1);
}

if menu_open{
    menu_timer += (menu_timer < 21? 1: 0);
    
    if menu_timer == 21{
        menu_pos[@0][@0] = lerp(menu_pos[0][0], 149, 0.2);
        menu_pos[@0][@1] = lerp(menu_pos[0][1], 80, 0.2);
        
        menu_pos[@1][@0] = lerp(menu_pos[1][0], 810, 0.2);
        menu_pos[@1][@1] = lerp(menu_pos[1][1], 80, 0.2);
        
        menu_pos[@2][@0] = lerp(menu_pos[2][0], 149, 0.2);
        menu_pos[@2][@1] = lerp(menu_pos[2][1], 460, 0.2);
        
        menu_pos[@3][@0] = lerp(menu_pos[3][0], 810, 0.2);
        menu_pos[@3][@1] = lerp(menu_pos[3][1], 460, 0.2);
    }
}else{
    page_alpha = 0;
    if menu_pos[0][0] == temp_x + 4 menu_timer -= (menu_timer > 0? 1: 0);
    menu_pos[@0][@0] = lerp(menu_pos[0][0], temp_x + 4, 0.3);
    menu_pos[@0][@1] = lerp(menu_pos[0][1], temp_y - 38, 0.3);
    menu_pos[@1][@0] = lerp(menu_pos[1][0], temp_x + 204, 0.3);
    menu_pos[@1][@1] = lerp(menu_pos[1][1], temp_y - 38, 0.3);
    menu_pos[@2][@0] = lerp(menu_pos[2][0], temp_x + 4, 0.3);
    menu_pos[@2][@1] = lerp(menu_pos[2][1], temp_y - 2, 0.3);
    menu_pos[@3][@0] = lerp(menu_pos[3][0], temp_x + 204, 0.3);
    menu_pos[@3][@1] = lerp(menu_pos[3][1], temp_y - 2, 0.3);
}

if menu_timer{
    menu_anim_timer += (menu_anim_timer < 15? 1: -15);
    draw_set_alpha(menu_timer/20);
    var sq_cl = make_color_rgb(9, 23, 32);
    var cor_cl = make_color_rgb(180, 248, 251);
    draw_rectangle_color(menu_pos[0][0] + 2, menu_pos[0][1] + 2, menu_pos[3][0] - 2, menu_pos[3][1] - 2, sq_cl, sq_cl, sq_cl, sq_cl, 0);
    draw_set_alpha(1);
    maskHeader();
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, 960, 540, c_white, c_white, c_white, c_white, 0);
    draw_set_alpha(menu_timer/20 * 0.15);
    draw_rectangle_color(menu_pos[0][0] + 2, menu_pos[0][1] + 2, menu_pos[3][0] - 2, menu_pos[3][1] - 2, c_white, c_white, c_white, c_white, 0);
    draw_set_alpha(1);
    maskMidder();
    draw_sprite_tiled(sprite_get("menu_vfx"), menu_anim_timer/5, 0, 0);
    maskFooter();
    draw_set_alpha(menu_timer/20);
    draw_sprite_ext(sprite_get("menu_part"), 0, menu_pos[0][0], menu_pos[0][1], 2, 2, 0, c_white, menu_timer/20);
    draw_sprite_ext(sprite_get("menu_part"), 0, menu_pos[1][0], menu_pos[1][1], -2, 2, 0, c_white, menu_timer/20);
    draw_sprite_ext(sprite_get("menu_part"), 0, menu_pos[2][0], menu_pos[2][1], 2, -2, 0, c_white, menu_timer/20);
    draw_sprite_ext(sprite_get("menu_part"), 0, menu_pos[3][0], menu_pos[3][1], -2, -2, 0, c_white, menu_timer/20);
    draw_rectangle_color(menu_pos[0][0] + 26, menu_pos[0][1], menu_pos[1][0] - 27, menu_pos[1][1] + 1, cor_cl, cor_cl, cor_cl, cor_cl, 0);
    draw_rectangle_color(menu_pos[2][0] + 26, menu_pos[2][1] - 2, menu_pos[3][0] - 27, menu_pos[3][1] - 1, cor_cl, cor_cl, cor_cl, cor_cl, 0);
    draw_set_alpha(1);
    if!intro_played{
        intro_timer++;
        if intro_timer = 70 jingle = sound_play(sound_get("Exelion_jingle"));
        if intro_timer = 180 jingle = sound_play(sound_get("VAE_jingle"));
        if intro_timer >= 60{
            draw_sprite_ext(sprite_get("Exelion_logo"), 0, 169, 90, 2, 2, 0, c_white, intro_timer < 130? (intro_timer - 60)/50: 1 - (intro_timer - 130)/50);
            draw_sprite_ext(sprite_get("VAE_logo"), 0, 371, 160, 2, 2, 0, c_white, intro_timer < 250? (intro_timer - 190)/50: 1 - (intro_timer - 250)/50);
            draw_set_halign(fa_center);
        }
        if intro_timer = 300 intro_played = 1;
    }else{
        if page draw_sprite_ext(sprite_get("manual_bg"), 0, 212, 116, 2, 2, 0, c_white, page_alpha * (page = 16? 0.4: 0.15));
        page_alpha += (page_alpha < 1? 1/40: 0);
        guide_alpha = (guide_alpha? 1: page_alpha);
        draw_set_halign(fa_center);
        textDraw(481, 108, "fName", !page? make_color_rgb(41, 25, 37): c_white, 20, 300, 2, 1, page_alpha, page_titles[page], !page? c_white: c_black);
        draw_sprite_ext(sprite_get("manual_arrow"), 0, 781, 240, 2, 2, 0, c_white, page < page_num? page_alpha: 0);
        draw_sprite_ext(sprite_get("manual_arrow"), 0, 179, 240, -2, 2, 0, c_white, page > 0? page_alpha: 0);
        textDraw(191, 438, "fName", c_white, 20, 300, 1, 1, guide_alpha, string(page) + " / " + string(page_num), c_black);
        textDraw(743, 466, "fName", c_white, 20, 300, 1, 1, guide_alpha*0.8, "taunt: close guide", c_black);
        page_anim_timer += (page_anim_timer >= 1000? -page_anim_timer: 1);
        switch page{
            case 2:
            draw_sprite_ext(sprite_get("manual_" + string(page)), 0, 149, 80, 2, 2, 0, c_white, page_alpha);
            break;
            case 3:
            draw_sprite_ext(sprite_get("0PS_IDLE"), page_anim_timer * idle_anim_speed, 381, 400, 2, 2, 0, c_white, page_alpha);
            draw_sprite_ext(sprite_get("plate_break"), page_anim_timer/3, 581, 400, 2, 2, 0, c_white, page_alpha);
            break;
            case 4:
            draw_sprite_ext(sprite_get("028"), 4, 461, 390, 2, 2, 0, c_white, page_alpha);
            break;
            case 5://01:20, 04:14, 06:10, 05:8
            var timer = page_anim_timer/3 % 52;
            if(timer < 20){
                draw_sprite_ext(sprite_get("01"), timer, 481, 430, 2, 2, 0, c_white, page_alpha);
                textDraw(381, 330, "fName", c_white, 20, 580, 1, 1, page_alpha, "JAB", c_black);
            }else if timer < 34{
                draw_sprite_ext(sprite_get("04"), timer - 20, 481, 430, 2, 2, 0, c_white, page_alpha);
                textDraw(381, 330, "fName", c_white, 20, 580, 1, 1, page_alpha, "FTILT", c_black);
            }else if timer < 44{
                draw_sprite_ext(sprite_get("06"), timer - 34, 481, 430, 2, 2, 0, c_white, page_alpha);
                textDraw(381, 330, "fName", c_white, 20, 580, 1, 1, page_alpha, "UTILT", c_black);
            }else if timer < 52{
                draw_sprite_ext(sprite_get("05"), timer - 44, 481, 430, 2, 2, 0, c_white, page_alpha);
                textDraw(381, 330, "fName", c_white, 20, 580, 1, 1, page_alpha, "DTILT", c_black);
            }
            break;
            case 6:
            draw_sprite_ext(sprite_get("010"), page_anim_timer/3 % 6 + 8, 481, 400, 2, 2, 0, c_white, page_alpha);
            break;
            case 7://07:9, 09:12, 08:21
            var timer = page_anim_timer/3 % 42;
            if(timer < 9){
                draw_sprite_ext(sprite_get("07"), timer, 481, 430, 2, 2, 0, c_white, page_alpha);
                textDraw(301, 330, "fName", c_white, 20, 580, 1, 1, page_alpha, "FSTRONG", c_black);
            }else if timer < 21{
                draw_sprite_ext(sprite_get("09"), timer - 9, 481, 430, 2, 2, 0, c_white, page_alpha);
                textDraw(301, 330, "fName", c_white, 20, 580, 1, 1, page_alpha, "USTRONG", c_black);
            }else if timer < 42{
                draw_sprite_ext(sprite_get("08"), timer - 21, 481, 430, 2, 2, 0, c_white, page_alpha);
                textDraw(301, 330, "fName", c_white, 20, 580, 1, 1, page_alpha, "DSTRONG", c_black);
            }
            break;
            case 8://015:15, 011:13, 014:10, 012:11, 013:14
            var timer = page_anim_timer/3 % 63;
            if(timer < 15){
                draw_sprite_ext(sprite_get("015"), timer, 481, 390, 2, 2, 0, c_white, page_alpha);
                textDraw(281, 290, "fName", c_white, 20, 580, 1, 1, page_alpha, "NAIR", c_black);
            }else if timer < 28{
                draw_sprite_ext(sprite_get("011"), timer - 15, 481, 390, 2, 2, 0, c_white, page_alpha);
                textDraw(281, 290, "fName", c_white, 20, 580, 1, 1, page_alpha, "FAIR", c_black);
            }else if timer < 38{
                draw_sprite_ext(sprite_get("014"), timer - 28, 481, 390, 2, 2, 0, c_white, page_alpha);
                textDraw(281, 290, "fName", c_white, 20, 580, 1, 1, page_alpha, "UAIR", c_black);
            }else if timer < 49{
                draw_sprite_ext(sprite_get("012"), timer - 38, 481, 390, 2, 2, 0, c_white, page_alpha);
                textDraw(281, 290, "fName", c_white, 20, 580, 1, 1, page_alpha, "BAIR", c_black);
            }else if timer < 63{
                draw_sprite_ext(sprite_get("013"), timer - 49, 481, 390, 2, 2, 0, c_white, page_alpha);
                textDraw(281, 290, "fName", c_white, 20, 580, 1, 1, page_alpha, "DAIR", c_black);
            }
            break;
            case 9:
            draw_sprite_ext(sprite_get("019"), page_anim_timer/3 % 23, 481, 430, 2, 2, 0, c_white, page_alpha);
            break;
            case 10:
            draw_sprite_ext(sprite_get("019"), 16, 481, 430, 2, 2, 0, c_white, page_alpha);
            draw_sprite_ext(sprite_get("nspecial_flash"), 0, 499, 362, 2, 2, 0, c_white, page_alpha);
            break;
            case 11:
            var timer = page_anim_timer/4 % 21;
            if(timer < 11){
                draw_sprite_ext(sprite_get("016"), timer, 461, 430, 2, 2, 0, c_white, page_alpha);
                textDraw(281, 290, "fName", c_white, 20, 580, 1, 1, page_alpha, "FSPECIAL", c_black);
            }else if timer < 21{
                draw_sprite_ext(sprite_get("034"), timer - 11, 461, 390, 2, 2, 0, c_white, page_alpha);
                textDraw(281, 290, "fName", c_white, 20, 580, 1, 1, page_alpha, "FSPECIAL AIR", c_black);
            }
            break;
            case 12:
            draw_sprite_ext(sprite_get("017"), page_anim_timer/3, 311, 446, 2, 2, 0, c_white, page_alpha);
            draw_sprite_ext(sprite_get("orb1"), page_anim_timer/3, 461, 406, 1, 1, 0, c_white, page_alpha);
            draw_sprite_ext(sprite_get("orb2"), page_anim_timer/3, 561, 406, 1, 1, 0, c_white, page_alpha);
            draw_sprite_ext(sprite_get("orb3"), page_anim_timer/3, 661, 406, 1, 1, 0, c_white, page_alpha);
            break;
            case 13:
            draw_sprite_ext(sprite_get("018"), 17 + page_anim_timer/4 % 7, 531, 390, 2, 2, 0, c_white, page_alpha);
            break;
            case 14:
            draw_sprite_ext(sprite_get("035"), 19 + page_anim_timer/5 % 24, 501, 390, 2, 2, 0, c_white, page_alpha);
            break;
            case 15:
            break;
            case 16:
            draw_sprite_ext(sprite_get("Exelion_logo_sm"), 0, 619, 374, 2, 2, 0, c_white, page_alpha);
            draw_sprite_ext(sprite_get("VAE_logo_sm"), 0, 561, 396, 2, 2, 0, c_white, page_alpha);
            textDraw(338, 444, "fName", c_white, 20, 1000, 0.5, 0, page_alpha, "E.M.M.I. is owned by Exelion. All rights reserved. Copyright 20XX", c_black);
            break;
        }
        if !page{
            draw_sprite_ext(sprite_get("Exelion_cop"), 0, 731, 428, 2, 2, 0, c_white, page_alpha);
            draw_sprite_ext(sprite_get("manual_0"), 0, 171, 206, 2, 2, 0, c_white, page_alpha);
        }else{
            draw_set_halign(fa_left);
            textDraw(191, 144, "fName", c_white, 20, 580, 1, 1, page_alpha, page_text[page], c_black);
            draw_set_halign(fa_center);
        }
    }
}else if get_match_setting(SET_PRACTICE) && get_player_hud_color(player) != c_gray && !guide_open{
    draw_set_halign(fa_left);
    guide_alpha += (guide_alpha < 0.8? 1/10: 0);
    textDraw(temp_x + 2, temp_y - 56, "fName", c_white, 20, 580, 1, 1, guide_alpha, "character guide: up + taunt", c_black);
}

#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    
}
//================================================================================
#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] +  argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
}
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
