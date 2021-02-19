if(instance_exists(gem_ins))
    if(gem_ins.orig_player != player)
        instance_destroy(gem_ins);
        
//sound_play(asset_get("sfx_birdflap"));
shader_start();
if instance_exists(gem_ins) && ((gem_ins.state == 0 or gem_ins.state == 3) && gem_ins.cooldown == -1) {
	draw_sprite(sprite_get("nspecial_field"), gem_ins.field_index, gem_ins.x, gem_ins.y)
}

shader_end();

//Holiday Skin
// if wearing_hat {
//     draw_sprite(sprite_get("surfboard_idle"), image_index, 40, 78);
// }

//Dashlines

shader_start();
if (fadc_timer > 0){
    var fadc_frame = floor(ease_linear(fadc_frames, 0, fadc_timer, fadc_dur));
    draw_sprite_ext(spr_fadc, fadc_frame, x, y, spr_dir, 1, 0, c_white, 1);
}
shader_end();

//Armor Sparkles

shader_start();
if (armor_timer > 0){
    var armor_frame = floor(ease_linear(armor_frames, 0, armor_timer, armor_dur));
    draw_sprite_ext(spr_armor, armor_frame, x, y, spr_dir, 1, 0, c_white, 1);
}

shader_end();
//Dash Burst effect

shader_start();
if (fsvfx_timer > 0){
	var fsvfx_frame= floor(ease_linear(fsvfx_frames, 0, fsvfx_timer, fsvfx_dur));
   draw_sprite_ext(spr_fsvfx, state_timer/4, x, y, spr_dir, 1, 0, c_white, 1);
}

shader_end();
//Gembreak VFX

shader_start();
if (gembreak_timer > 0 && instance_exists(gem_ins) ){
	var gembreak_frame= floor(ease_linear(gembreak_frames, 0, gembreak_timer, gembreak_dur));
   draw_sprite_ext(spr_gembreak, gembreak_frame, gem_ins.x, gem_ins.y, 1, 1, gem_ins.image_angle, c_white, 1);
}

shader_end();

//G7 Glitch effect by Giik
shader_start();
if get_player_color(player) == 15 && random_func(4, 2, 1) == 0 {
var fs = random_func(0, sprite_height -1, 1)
draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)

}
shader_end();



//==============================================================================
//                          Abyss Rune Buddy draw code
//==============================================================================

if abyssEnabled {
if "abysspostdrawenabled" not in self abysspostdrawenabled = true; // tell buddy you have post draw code
if "abyssPostDrawing" in self && abyssPostDrawing abyssPostDraw(); // actually do post draw code
}


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