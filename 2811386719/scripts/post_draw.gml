
if(attack == AT_NTHROW and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR)){
    // draw_sprite(orb_loop_spr, 0, indicador_x, indicador_y);
}



shader_start()

// draw_static_bar()
draw_jet()



if(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
  if(attack == AT_DSTRONG){
    draw_sprite_ext(dstrong_static_overlay, image_index, x, y, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 1);
  }
  if(attack == AT_NSPECIAL){
    if(window == 2){
      draw_sprite_ext(grab_static_pull_spr, game_time/3, x + 40*spr_dir, y - 35, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 1);
    }
  }
  if(attack == AT_USPECIAL_GROUND){
    if(window == 2 or window == 3){
      draw_sprite_ext(grab_static_pull_spr, game_time/3, x + 55*spr_dir, y - 115, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 1);
    }
  }
}

if(state == PS_AIR_DODGE){
    
    draw_sprite_ext(airdodge_bubble, image_index, x, y, 2, 2, 0, c_white, 1);
    
}

shader_end()

if(instance_exists(lightning_hbox)){
    lightning_hbox.image_xscale = lightning_hbox.set_image_xscale;
    draw_sprite_ext(lightning_spr, lightning_hbox.image_index, lightning_hbox.x, lightning_hbox.y, lightning_hbox.image_xscale, lightning_hbox.image_yscale, lightning_hbox.image_angle, c_white, 1)
}

// if(ds_list_valid(ai_draw)){
//     var len = ds_list_size(ai_draw);
//     for(var i = 0; i < len; i++){
//         var type_draw = ai_draw[| i].type;
        
//         switch(type_draw){
//             case "rectOutlineCenter":
                
//                 draw_rectangle_color(ai_draw[| i].x - ai_draw[| i].width/2,
//                     ai_draw[| i].y - ai_draw[| i].height/2,
//                     ai_draw[| i].x + ai_draw[| i].width/2,
//                     ai_draw[| i].y + ai_draw[| i].height/2,
//                     ai_draw[| i].color, ai_draw[| i].color,
//                     ai_draw[| i].color, ai_draw[| i].color, true );
//                 break;
//             case "rectOutline":
                
//                 draw_rectangle_color(ai_draw[| i].left,
//                     ai_draw[| i].top,
//                     ai_draw[| i].right,
//                     ai_draw[| i].bottom,
//                     ai_draw[| i].color, ai_draw[| i].color,
//                     ai_draw[| i].color, ai_draw[| i].color, true );
//                 break;
                
//             case "line":
//                 draw_line_color(ai_draw[| i].x1,
//                     ai_draw[| i].y1,
//                     ai_draw[| i].x2,
//                     ai_draw[| i].y2,
//                     ai_draw[| i].color, ai_draw[| i].color);
//                 break; 
//         }
        
//     }
// }

#define draw_jet()

if(jet_show_charge){
	draw_sprite_ext(jet_discharge_spr, jet_img_idx_charge, jet_x, jet_y, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 1);
}else{
	draw_sprite_ext(jet_spr, (floor(static/25)*8 + (game_time/5 %8)), jet_x, jet_y, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 1);
}

if(static >= 100){
    draw_sprite_ext(jet_static_overlay_spr, floor(game_time/5)%8, jet_x, jet_y, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 1);
}

#define draw_static_bar()

var segments = 1
var fore_wid = (static*0.659999 % 66/segments)*segments;
var fore_img_indx = min(static/33, 2) 
var back_wid = 66;
var back_img_indx = fore_img_indx - 1;

var h = y-char_height + -hud_offset - 18

// print(fore_img_indx)


draw_sprite_ext(static_bar_spr, fore_img_indx, x-35, h, back_wid + 4, 4, 0, c_dkgray, bar_alpha)

//foreground
draw_sprite_ext(static_bar_spr, fore_img_indx, x-33, h,		fore_wid*0.5, 2,	 0, c_white, bar_alpha)
draw_sprite_ext(static_bar_spr, fore_img_indx, x+33, h+2, fore_wid*0.5, 2, 180, c_white, bar_alpha)


#define ai_stuff()

if(!is_ai) exit;

if(keyboard_lastkey == ord("P")) {
	keyboard_lastkey = 0;
	showing_thoughts = !showing_thoughts;
}
if(!showing_thoughts) exit;

var thinky_x = x + 20, thinky_y = y - 140, thinky_col = ai_thoughts_colour, thinky_alpha = 0.7, text_col = make_colour_hsv(255 - colour_get_hue(thinky_col), colour_get_saturation(thinky_col), 255 - colour_get_value(thinky_col));

draw_sprite_ext(thoughts_bubble, 0, thinky_x + 18, thinky_y + 60, 2, 2, 0, thinky_col, thinky_alpha);
draw_sprite_ext(thoughts_bubble, 1, thinky_x, thinky_y, 2, 2, 0, thinky_col, thinky_alpha);

draw_set_font(asset_get("roaMBLFont")); draw_set_halign(fa_left); draw_set_valign(fa_center); draw_set_colour(text_col);
var thinky_xscale = 1.1, thinky_width = thinky_xscale * string_width(ai_thoughts), represented_thinky_width = 0;
while(represented_thinky_width + 48 < thinky_width) {
	draw_sprite_ext(thoughts_bubble, 2, thinky_x + 58 + represented_thinky_width, thinky_y, 2, 2, 0, thinky_col, thinky_alpha);
	represented_thinky_width += 58;
}

draw_sprite_ext(thoughts_bubble, 3, thinky_x + 58 + represented_thinky_width, thinky_y, 2, 2, 0, thinky_col, thinky_alpha);

draw_text_transformed(thinky_x + 33, thinky_y + 30, ai_thoughts, thinky_xscale, 1.5, 0);

// draw_rectangle_color(my_hit_left, my_hit_top, my_hit_right, my_hit_bottom, c_red, c_red, c_red, c_red, c_red)
// draw_rectangle_color(target_left, target_top, target_right, target_bottom, c_blue, c_blue, c_blue, c_blue, c_blue)
for (var rect_i=0; rect_i<array_length(rects_to_draw); rect_i++) {
	var this_rect = rects_to_draw[rect_i]
	draw_rectangle_color(this_rect.left, this_rect.top, this_rect.right, this_rect.bottom, this_rect.color, this_rect.color, this_rect.color, this_rect.color, this_rect.color)
}
rects_to_draw = []

#define prints // Version 0
    // Prints each parameter to console, separated by spaces.
    var _out_string = string(argument[0])
    for (var i=1; i<argument_count; i++) {
        _out_string += " "
        _out_string += string(argument[i])
    }
    print(_out_string)