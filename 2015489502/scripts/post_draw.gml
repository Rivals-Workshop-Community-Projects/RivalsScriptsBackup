shader_start();

//Intro

if (introtimer >= introdur){
    var cueheight = floor((introdur - introtimer) * 60);
    draw_sprite_ext(spr_introfall, 0, x, y + cueheight - char_height, spr_dir, 1, 0, c_white, 1);
}



if (god_mode && !practice && get_gameplay_time() % 120 < 60){
    draw_debug_text(round(x-55), round(y+10), "Using God Mode");
    draw_debug_text(round(x-85), round(y+28), "(Banned in Tournament)");
}



if ball_charge{
    draw_sprite(spr_ball_charge, ball_charge-1, x+df_ball_pos_x, y+df_ball_pos_y);
    if draw_nspecial_flash{
        draw_sprite_ext(spr_ball_cooldown, 2, x+df_ball_pos_x, y+df_ball_pos_y, 1, 1, 0, c_white, 0.7);
    }
    
    draw_debug_text(round(x+df_ball_pos_x-12), round(y+df_ball_pos_y-14), string(ball_charge));
    if (god_mode == 3){
        for(i = ball_charge-1; i > 0; i--){
            draw_sprite(spr_ball_charge, i-1, x+df_ball_pos_x, y+df_ball_pos_y-32*(ball_charge-i));
            draw_debug_text(round(x+df_ball_pos_x-12), round(y+df_ball_pos_y-14-32*(ball_charge-i)), string(i));
        }
    }
}



//Ball cooldown

if (ball_cooldown == clamp(ball_cooldown, 1, ball_cooldown_max - 1)){
    var cooldown_x_pos = x + cooldown_x_offset;
    var cooldown_y_pos = y - char_height;
    var cooldown_frame = (ball_cooldown < ball_cooldown_max - 4) ? 1 : 0;
    var rectangle_color = c_black;
    if (ball_cooldown < 4){
        cooldown_frame = 2;
        rectangle_color = c_white;
    }
    draw_sprite(spr_ball_cooldown, cooldown_frame, cooldown_x_pos, cooldown_y_pos-(hide_hud ? 32 : 79));
    
    var cooldown_width = 13; //doubled
    cooldown_width *= (ball_cooldown < ball_cooldown_max - 4) ? 1 : 0.6;
    var cooldown_height = 3; //doubled
    var cooldown_y_offset = (hide_hud ? 23 : 70);
    var cooldown_bar_empty = clamp(floor(cooldown_width * (ball_cooldown / ball_cooldown_max)) * 2, 0, cooldown_width * 2 - 4);
    
    draw_set_colour(c_black);
    draw_rectangle_color(cooldown_x_pos-cooldown_width, cooldown_y_pos-cooldown_y_offset-cooldown_height, cooldown_x_pos+cooldown_width-1,
    cooldown_y_pos-cooldown_y_offset+cooldown_height, rectangle_color, rectangle_color, rectangle_color, rectangle_color, false);
    
    rectangle_color = c_white;
    
    draw_set_colour(c_white);
    draw_rectangle_color(cooldown_x_pos-cooldown_width+2, cooldown_y_pos-cooldown_y_offset-cooldown_height+2, cooldown_x_pos+cooldown_width-3-cooldown_bar_empty,
    cooldown_y_pos-cooldown_y_offset+cooldown_height-2, rectangle_color, rectangle_color, rectangle_color, rectangle_color, false);
}



//Dash attack render opponent

if dattack_pre_draw_timer{
    if has_hit_player{
        with(hit_player_obj){
            shader_start();
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            shader_end();
        }
    }
    if has_hit_bike{
        shader_start();
        draw_sprite_ext(hit_bike_obj.sprite_index, hit_bike_obj.image_index, hit_bike_obj.x, hit_bike_obj.y, hit_bike_obj.spr_dir,
        hit_bike_obj.image_yscale, hit_bike_obj.image_angle, hit_bike_obj.image_blend, hit_bike_obj.image_alpha);
        shader_end();
    }
}



//Taunt menu

if taunt_menu_state{
    var offset = 18;
    var top = -10;
    var side = -180;
    var wiggle = 0;
    menu_option[0] = "Quick How To Play"
    menu_option[1] = "Move Guide"
    menu_option[2] = "Patch Notes (v" + patch_ver + ")"
    
    draw_sprite_ext(spr_hud_tauntmenu, 0, x+side-20+81, y-char_height+top-20+61, taunt_menu_scale, taunt_menu_scale, 0, c_white, hud_alpha);
    
    if (taunt_menu_state == 2 || taunt_menu_state == 4){
        var god_mode_text = "";
        switch(god_mode){
            case 0:
                display_mode_text = "Off";
                break;
            case 1:
                display_mode_text = "Cooldown";
                break;
            case 2:
                display_mode_text = "Runes";
                break;
            case 3:
                display_mode_text = "Oh no";
                break;
        }
        menu_option[3] = "God Mode: " + display_mode_text;
        
        var display_mode_text = "";
        switch(display_mode){
            case 0:
                display_mode_text = "Default";
                break;
            case 1:
                display_mode_text = "Trailer";
                break;
            case 2:
                display_mode_text = "Debug";
                break;
            case 3:
                display_mode_text = "Opaque";
                break;
        }
        menu_option[4] = "HUD Mode: " + display_mode_text;
        menu_option[5] = "Codec Convo";
        
        switch(taunt_menu_state){
            case 2:
                tauntText(side - 16, top, -1.4, offset, 0, "Taunt Menu");
        
                top -= 6;
                var i = 0;
                repeat(6){ //6
                    if (taunt_menu_selected == i){
                        wiggle = 2 * sin((taunt_menu_timer + 30) * 0.1) - 3;
                        tauntText(side - 12 - wiggle, top, i, offset, 0, ">");
                    }
                    else{
                        wiggle = 0;
                    }
                    tauntText(side - wiggle, top, i, offset, 0, menu_option[i]);
                    if (i == 5 && !codec_valid){
                        draw_set_font(asset_get("fName"));
                        draw_text_color(x + side - wiggle, round(y - char_height + top + i * offset), menu_option[i], c_gray, c_gray, c_gray, c_gray, 1);
                    }
                    i++;
                }
                break;
            case 4:
                top -= 6;
                if (taunt_menu_timer % 6 > 1){
                    tauntText(side + ease_cubeOut(0, 20, taunt_menu_timer, 24) - (x - taunt_menu_linger_offset), top, taunt_menu_selected, offset, 0, menu_option[taunt_menu_selected]);
                }
                break;
        }
    }
}



//NSpecial lose charge

if (lose_charge_timer && (lose_charge_timer > 8 || lose_charge_timer % 4 > 1)){
    var draw_x = lose_charge_x + ((lose_charge_max - lose_charge_timer) * 2 * lose_charge_spr_dir);
    var draw_y = lose_charge_y;
    draw_sprite_ext(spr_ball_charge, lose_charge_charge-1, draw_x, draw_y, 1, 1, lose_charge_timer * 45, c_white, 1);
}

shader_end();



//Abyss random display

if "abysspostdrawenabled" not in self abysspostdrawenabled = true; // tell buddy you have post draw code
if "abyssPostDrawing" in self && abyssPostDrawing abyssPostDraw(); // actually do post draw code





/*

draw_debug_text(x - 10, y - 80 + (34 * bike), "Otto");

if (bike) draw_debug_text(x - 20, y, "Curated");
else with asset_get("obj_article1") draw_debug_text(x - 20, round(y), "Curated");

with oPlayer if id != other draw_debug_text(x - 10, y - 80, "Forsburn");

draw_debug_text(room_width / 2, get_stage_data(SD_Y_POS), "Floor")
draw_debug_text(room_width / 2, get_stage_data(SD_Y_POS) - 32 * 6, "Platform")
draw_debug_text(room_width / 2 + 32 * 6, get_stage_data(SD_Y_POS) - 32 * 3, "Platform")
draw_debug_text(room_width / 2 - 32 * 6, get_stage_data(SD_Y_POS) - 32 * 3, "Platform")

*/



#define abyssPostDraw 
/// abyssPostDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_postDrawArray" in self && ds_list_valid(abyss_postDrawArray))  {
    if (ds_list_size(abyss_postDrawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_postDrawArray);_i++) {
            var _text = abyss_postDrawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
                    draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_postDrawArray);
}



#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.

if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);



#define tauntText //(x offset , big y offset ,  y offset multiplier , y offset , y motion offset , text)

draw_debug_text(round(x + argument[0]), round(y - char_height + argument[1] + argument[2] * argument[3] + argument[4]), argument[5]);