//

if dialogue_test == 1 {
	var camx = get_instance_x(asset_get("camera_obj"));
	var camy = get_instance_y(asset_get("camera_obj"));
	
	switch dialogue_state {
		case 0: //APPEAR
			if dialogue_timer < 60 {
				gpu_set_blendenable(false)
				gpu_set_colorwriteenable(false,false,false,true);
				draw_set_alpha(0);
				draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);

				draw_set_alpha(1);
					draw_sprite_ext(sprite_get("_dialogue_box"),1,camx,camy-250,2,2,0,c_white,1);
				gpu_set_blendenable(true);
				gpu_set_colorwriteenable(true,true,true,true);

				gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
				gpu_set_alphatestenable(true);
					draw_sprite_ext(sprite_get("_dialogue_box_bleed"),0,camx+lerp(468,-468,min(dialogue_timer,60)/60),camy-250,lerp(0,25,min(dialogue_timer,60)/60),2,0,c_white,1);
					draw_sprite_part_ext(sprite_get("_dialogue_box_bleed"),0,59,0,1,84,camx+lerp(468,-468,min(dialogue_timer,60)/60),camy-250,lerp(0,936,min(dialogue_timer,60)/60),2,c_white,1);
				gpu_set_alphatestenable(false);
				gpu_set_blendmode(bm_normal);
			} else {
				draw_sprite_ext(sprite_get("_dialogue_box"),0,camx,camy-250,2,2,0,c_white,1);
				draw_sprite_ext(sprite_get("_dialogue_box"),1,camx,camy-250,2,2,0,make_colour_rgb(128,0,0),lerp(1,0,min(dialogue_timer-60,20)/20));
			}
		break;
		
		case 1: //text box
			draw_sprite_ext(sprite_get("_dialogue_box"),0,camx,camy-250,2,2,0,c_white,1);
			
			//character
			draw_sprite_ext(sprite_get("_dialogue_box_portrait"),dialogue_portrait[dialogue_page],camx-414,camy-172,lerp(0,2,min(dialogue_timer,10)/10),lerp(0,2,min(dialogue_timer,10)/10),0,c_white,1);
			textDraw(camx-362, camy-238, "fnt_SOTNdialogue", c_white, 0, 1000, 2, false, lerp(0,1,min(dialogue_timer,10)/10), dialogue_portrait_name[dialogue_portrait[dialogue_page]]);
			//dialogue
			if dialogue_timer > 10 dialogueDraw(camx-328, camy-206, "fnt_SOTNdialogue", c_white, 13, 384, 2, false, 1, dialogue_text[dialogue_page]);
		break;
		
		case 2: //DISAPPEAR
			if dialogue_timer < 10 {
				draw_sprite_ext(sprite_get("_dialogue_box"),0,camx,camy-250,2,2,0,c_white,1);
				draw_sprite_ext(sprite_get("_dialogue_box_portrait"),dialogue_portrait[dialogue_page],camx-398,camy-168,lerp(2,0,min(dialogue_timer,10)/10),lerp(2,0,min(dialogue_timer,10)/10),0,c_white,1);
			} else {
				draw_sprite_ext(sprite_get("_dialogue_box"),0,camx,camy-250,2,lerp(2,0,min(dialogue_timer-10,16)/16),0,c_white,1);
			}
		break;
	}
}

//Put this above all the #defines in your script.
draw_colored_hitboxes();



#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
draw_set_halign(fa_left);
draw_set_font(font_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

#define dialogueDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
draw_set_halign(fa_left);
draw_set_font(font_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
draw_text_ext_transformed_color(argument[0], argument[1], string_delete(argument[9], floor(dialogue_timer/2), 1000), argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

//Put this at the very bottom of your script, with the rest of the #defines.
#define draw_colored_hitboxes
{
    if get_match_setting(SET_HITBOX_VIS) {
        var arrowspr = __kb_arrow_spr, hitboxes = [], arr_len, __kb_angle, angle;
        with (pHitBox) { if (player_id == other && draw_colored) array_push(hitboxes,self); var _draw = type == 2 ? dont : 1; }
			if _draw {
			arr_len = array_length(hitboxes);
			if arr_len > 0 {
				selection_sort_priority(hitboxes);
				for (var i = 0; i < arr_len; i++) with hitboxes[i] {
					draw_sprite_ext(draw_spr, shape, x, y, image_xscale,image_yscale,image_angle,col,0.5);
					__kb_angle = kb_angle == 361 ? 45 : kb_angle;
					angle = ((__kb_angle+90)*(hit_flipper==5?-1:1)*spr_dir)-90
					draw_sprite_ext(arrowspr, 0, x, y, 1,1,angle,-1,0.5);
				}
			}
		}
        //hide base hurtbox display
        hurtboxID.image_alpha = 0;
        //redraw hurtbox OVER hitbox display for visibility
        if state_cat == SC_HITSTUN { //turn hurtbox yellow
            gpu_set_fog(true, c_yellow, 0, 999)
        }
        draw_sprite_ext(hurtboxID.sprite_index, hurtboxID.image_index, x, y, hurtboxID.image_xscale, hurtboxID.image_yscale, 0, -1, 0.5)
        gpu_set_fog(false, c_white, 0, 999)
    }
}
#define selection_sort_priority(arr)
//basic selection sort alg
var arr_len = array_length(arr), jmin, store;
for (var i = 0; i < arr_len-1; i++) {
    jmin = i;
    for (var j = i+1; j < arr_len; j++) {
        if (arr[@j].hit_priority < arr[@jmin].hit_priority) jmin = j;
    }
    if (jmin != i) {
        store = arr[@i];
        arr[@i] = arr[@jmin];
        arr[@jmin] = store;
    }
}
