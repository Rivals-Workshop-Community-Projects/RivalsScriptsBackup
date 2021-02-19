//post-draw

//draw_debug_text(x, y+20, string(check));
//draw_debug_text(x, y+40, string(right_stick_ypos));

//end of game statistics (from valkyrie)
if(gameEnded&&!playtest&&!practice){
    draw_debug_text(x-60, y+16, ("Average Speed: " + string(total_speed/speed_frames)));
}

if wearing_hat {
    shader_start();
    draw_sprite_ext(sprite_get("summer_idle"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    shader_end();
}

if(strong_boost_indication_type){
    if(state==PS_ATTACK_GROUND&&strong_boost){
        shader_start();
        if(attack==AT_USTRONG){
            draw_sprite_ext(sprite_get("ustrong_boost"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
        }
        if(attack==AT_DSTRONG){
            draw_sprite_ext(sprite_get("dstrong_new_new_test_boost"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
        }
        if(attack==AT_FSTRONG){
            draw_sprite_ext(sprite_get("fstrong_boost"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
        }//*/
        shader_end();
    }//*/
}

if(strong_boost_indication_timer>0){
    shader_start();
    draw_sprite(sprite_get( "strong_boost_indicator" ), floor((18-strong_boost_indication_timer)/3),strong_boost_indication_x,strong_boost_indication_y);
    shader_end();
}

if (fspecial_charge>=fspecial_max_charge){
    shader_start();
    draw_sprite(sprite_get("ice_status_front"), get_gameplay_time()*.3, x, y);
    shader_end();
}

if(state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
    if(attack==AT_FSPECIAL&&window==8&&!has_hit){
        shader_start();
        draw_sprite_ext(sprite_get("fspecial_explosion"), 0, x,y,spr_dir,1,0,c_white,1);
        shader_end();
    }
}

/*with asset_get("obj_article2") {
    draw_debug_text(x,y-((x%120)*2),string(ground_id));
}//*/

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