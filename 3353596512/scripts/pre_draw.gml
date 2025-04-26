//predraw

/*
//Image Mask
if  (get_player_color(player) == 1) {
    if(start_predraw){
//crash prevention line
shader_end();
maskHeader();
    draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, c_white, 1); //change the 2*spr_dir and 2 to 1 if the character doesnt use small_sprites
    with pHitBox if player_id == other && type == 2 {
        draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 1, c_white, 1);
    }

maskMidder();
var fx_image_index = get_gameplay_time() / 6;
    draw_sprite_tiled_ext(sprite_get("galaxy"), fx_image_index, x, y, 1, 1, c_white, 1)
maskFooter();
    }
}
*/

if (terminal_ui_index > 0){
    draw_sprite_ext(sprite_get("terminal_ui"), terminal_ui_index/2, x - 98, y - 184, 2, 2, 0, c_white, 1);
}

if (using_terminal){
    if (terminal_ui_index >= 6){
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        draw_set_font(quota_font);
        draw_text_color(x - 70, y - 184, string(quota_level), c_white, c_white, c_white, c_white, 1);
        
        //level reqs
        draw_text_color(x + 87, y - 130, string(melee_weapons[terminal_melee_index].rank_req), c_white, c_white, c_white, c_white, 1);
        draw_text_color(x + 87, y - 114, string(fspecial_tools[terminal_fspec_index].rank_req), c_white, c_white, c_white, c_white, 1);
        draw_text_color(x + 87, y - 98, string(uspecial_tools[terminal_uspec_index].rank_req), c_white, c_white, c_white, c_white, 1);
        
        //select
        textDraw(x - 94, y - 163, "fName", $34ee16, 14, 156, fa_left, 1, 0, 1, "ATTACK to confirm.", 0);
        textDraw(x - 94, y - 149, "fName", $34ee16, 14, 196, fa_left, 1, 0, 1, "PARRY / SPECIAL to cancel.", 0);
        textDraw(x - 70, y - 127, "fName", $34ee16, 14, 156, fa_left, 1, 0, 1, string(melee_weapons[terminal_melee_index].name), 0);
        textDraw(x - 70, y - 111, "fName", $34ee16, 14, 156, fa_left, 1, 0, 1, string(fspecial_tools[terminal_fspec_index].name), 0);
        textDraw(x - 70, y - 95, "fName", $34ee16, 14, 156, fa_left, 1, 0, 1, string(uspecial_tools[terminal_uspec_index].name), 0);
        
        switch (terminal_slot){
            case 0:
                draw_sprite_ext(sprite_get("terminal_cursor"), get_gameplay_time()/12, x - 68 + string_width(string(melee_weapons[terminal_melee_index].name)), y - 128, 2, 2, 0, c_white, 1);
            break;
            case 1:
                draw_sprite_ext(sprite_get("terminal_cursor"), get_gameplay_time()/12, x - 68 + string_width(string(fspecial_tools[terminal_fspec_index].name)), y - 112, 2, 2, 0, c_white, 1);
            break;
            case 2:
                draw_sprite_ext(sprite_get("terminal_cursor"), get_gameplay_time()/12, x - 68 + string_width(string(uspecial_tools[terminal_uspec_index].name)), y - 96, 2, 2, 0, c_white, 1);
            break;
        }
        
        terminal_grey_out();
        terminal_already_have();

            draw_sprite_ext(sprite_get("terminal_arrow"), get_gameplay_time()/12, x + 100, y - (128 - 16*terminal_slot), 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("terminal_arrow"), get_gameplay_time()/12, x - 100, y - (128 - 16*terminal_slot), -2, 2, 0, c_white, 1);
    }
}


#define terminal_grey_out()

        if (quota_level < melee_weapons[terminal_melee_index].rank_req && curr_melee != melee_weapons[terminal_melee_index].index){
                draw_sprite_ext(sprite_get("terminal_cantbuy"), 0, x - 96, y - 128, 2, 2, 0, c_white, 0.75);
        }
        if (quota_level < fspecial_tools[terminal_fspec_index].rank_req && curr_fspec != fspecial_tools[terminal_fspec_index].index){
                draw_sprite_ext(sprite_get("terminal_cantbuy"), 0, x - 96, y - 112, 2, 2, 0, c_white, 0.75);
        }
        if (quota_level < uspecial_tools[terminal_uspec_index].rank_req && curr_uspec != uspecial_tools[terminal_uspec_index].index){
                draw_sprite_ext(sprite_get("terminal_cantbuy"), 0, x - 96, y - 96, 2, 2, 0, c_white, 0.75);
        }
        
#define terminal_already_have()

        if (curr_melee == melee_weapons[terminal_melee_index].index){
                draw_sprite_ext(sprite_get("terminal_alreadyhave"), 0, x + 66, y - 128, 2, 2, 0, c_white, 1);
        }
        if (curr_fspec == fspecial_tools[terminal_fspec_index].index){
               draw_sprite_ext(sprite_get("terminal_alreadyhave"), 0, x + 66, y - 112, 2, 2, 0, c_white, 1);
        }
        if (curr_uspec == uspecial_tools[terminal_uspec_index].index){
                draw_sprite_ext(sprite_get("terminal_alreadyhave"), 0, x + 66, y - 96, 2, 2, 0, c_white, 1);
        }

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(floor(x1) + i * 2, floor(y1) + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha > 0 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;

//================================================================================

#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
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
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}