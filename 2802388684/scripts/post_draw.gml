// MunoPhone Touch code - don't touch
// should be at TOP of file


//draw_debug_text(x, y - 200, string(id));



//draw_debug_text(x, y - 250, string(unit_player_id_array));

shader_start();


var prev_outline_color = outline_color;
if (get_gameplay_time() % 30 < 10) {
    var draw_charge = (master_player_id.naruto_nspecial_charge >= master_player_id.c_naruto_nspecial_max_charge);;
    
    //with (master_player_id) {
    //    draw_charge = (naruto_nspecial_charge >= c_naruto_nspecial_max_charge);
    //}
    
    //if (draw_charge) {
    //    gpu_set_blendmode(bm_add);
    //    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir * 2, 2, 0, c_cyan, 0.25);
    //    gpu_set_blendmode(bm_normal);
    //}

    
    
    if (draw_charge) { 
        var prev_outline_color = outline_color;
        outline_color = [ 72, 72, 72 ]; 
        init_shader();
        
    }
    
    

}


if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
    if (attack == AT_NSPECIAL) {
        switch (window) {
            case 5:
                if (naruto_nspecial_charge > 0) draw_sprite_ext(master_player_id.spr_nspecial_charge, (state_timer / 4) % 3, x, y, spr_dir * 2, 2, 0, c_white, 1);
            break;
            case 6:
                draw_sprite_ext(master_player_id.spr_nspecial_fire, 0, x, y, spr_dir * 2, 2, 0, c_white, 1);
            break;
            case 7:
                draw_sprite_ext(master_player_id.spr_nspecial_fire, 2, x, y, spr_dir * 2, 2, 0, c_white, 1);
            break;
        }
        
    }
    else if (attack == AT_NSPECIAL_2 && window == 3 && master_player_id.naruto_nspecial_charge > 0) {
        draw_sprite_ext(master_player_id.spr_nspecial_charge, (state_timer / 4) % 3, x + spr_dir * 32, y, spr_dir * 2, 2, 0, c_white, 1);
    }
}





init_shader();
outline_color = prev_outline_color;

shader_end();


if (!is_master_player) exit; 

muno_event_type = 4;
user_event(14);



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;