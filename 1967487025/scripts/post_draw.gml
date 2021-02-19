za_wurdo = false
with (oPlayer) if player != other.player && stopped_time
    other.za_wurdo = true;

if za_wurdo {
    strong_charge = 0;
    gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color, bm_inv_src_color, bm_src_alpha, bm_src_alpha);
    
    draw_set_alpha(1);
    draw_circle_colour(x, y, 99999, c_white, c_white, false);
    draw_set_alpha(1);
    
    gpu_set_blendmode(bm_normal);
    

    shader_start();
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir * 1, 1, spr_angle, c_white, 1);
    shader_end();
}




shader_start();
draw_sprite_ext(sprite_index, image_index, x, y, spr_dir * 1, 1, spr_angle, boost_color, color_opacity);
draw_sprite_ext(boost_fx, floor((get_gameplay_time() - boost_timer) / 2), x, y - 38, spr_dir, 1, 0, boost_color, draw_boost);
var dash = sprite_get("dash");
switch (state) {
    case PS_DASH: draw_sprite_ext(sprite_get("dash_effect"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    break;
    case PS_DASH_STOP: case PS_IDLE: if sprite_index == sprite_get("dashstop") 
        draw_sprite_ext(sprite_get("dashstop_effect"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    break;
    case PS_DASH_TURN: draw_sprite_ext(sprite_get("dashturn_effect"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    break;
    case PS_DOUBLE_JUMP: draw_sprite_ext(sprite_get("doublejump_effect"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    break;
    case PS_ATTACK_AIR: case PS_ATTACK_GROUND:
    switch (attack) {
        case AT_UAIR: draw_sprite_ext(sprite_get("uair_effect"), image_index, x, y, spr_dir, 1, 0, c_white, 1); break;
        case AT_DATTACK: draw_sprite_ext(sprite_get("dattack_effect"), image_index, x, y, spr_dir, 1, 0, c_white, 1); break;
        case AT_NSPECIAL: draw_sprite_ext(sprite_get("nspecial_effect"), image_index, x, y, spr_dir, 1, 0, c_white, 1); break;
        case AT_FSPECIAL: draw_sprite_ext(sprite_get("fspecial_effect"), image_index, x, y, spr_dir, 1, spr_angle, c_white, 1); break;
    }
    break;
}
shader_end();

draw_sprite_ext(orb, ftilt_index, x + (36 + ftilt_x * 25) * spr_dir, y - 40, spr_dir * 1, 1, spr_angle, c_white, draw_ftilt);

if (state == PS_RESPAWN)
    draw_sprite(sprite_get("plat"), 0, x, y);


//Random Rune slection display

if "abysspostdrawenabled" not in self abysspostdrawenabled = true; // tell buddy you have post draw code
if "abyssPostDrawing" in self && abyssPostDrawing abyssPostDraw(); // actually do post draw code
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