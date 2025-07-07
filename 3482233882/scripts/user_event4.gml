// Training mode utility draw (called from draw_hud.gml)

var tmu_x = temp_x;
var tmu_y = tmu_y_offset;
var rows = 3;
var columns = 3;

switch tmu_state {
    
    case 0: // TMU_OPENING
        break;
    
    case 1: // TMU_ITEM
    case 2: // TMU_ITEM_CLOSING
        var loc = tmu_display_row*columns;
        var draw_row = 0;
        var draw_column = 0;
        var endpoint = array_length(tmu_item_panel_contents);
        var show_add = false;
        
        while (loc < endpoint && loc < (rows+tmu_display_row) * columns) {
            draw_sprite_ext(sprite_get("_tmu_panel_square"), 0, 14+tmu_x+58*draw_column, 32+tmu_y+58*draw_row, 2, 2, 0, c_white, 1);
            if (draw_row > 0 && draw_column > 0) draw_sprite_ext(sprite_get("_tmu_screwjoint"), 0, 6+tmu_x+58*draw_column, 24+tmu_y+58*draw_row, 2, 2, 0, c_white, 1)
            
            var iid = tmu_item_panel_contents[loc];
            draw_sprite_ext(sprite_get("item"), iid, 44+tmu_x+58*draw_column, 64+tmu_y+58*draw_row, 2, 2, 0, c_white, 1);
            var draw_shadowed = false;
            if (item_grid[iid][2] == -1 && item_grid[iid][1] != 0) {
                if (rarity == 2) draw_shadowed = (rares_remaining == 0 || item_grid[iid][4] >= 1);
                else draw_shadowed = item_grid[iid][4] >= uncommon_limit;
            } else {
                var rarity = item_grid[iid][1]
                var index = item_grid[iid][7];
                if (rarity == 0) draw_shadowed = (item_grid[iid][4] >= 10);
                else if (rarity == 2 && rares_remaining == 0) draw_shadowed = true;
                else if (rarity == -2) draw_shadowed = true;
                else draw_shadowed = (p_item_weights[rarity][index] <= 0);
            }
            if (limitless_mode) draw_shadowed = false;
            if (draw_shadowed) {
                gpu_set_fog(true, c_black, depth, depth);
                draw_sprite_ext(sprite_get("item"), iid, 44+tmu_x+58*draw_column, 64+tmu_y+58*draw_row, 2, 2, 0, c_white, 0.4);
                gpu_set_fog(false, c_white, 0, 0);
            }
            if (tmu_item_id == iid) show_add = !draw_shadowed;
            
            loc++;
            draw_column++;
            if (draw_column >= rows) {
                draw_column = 0;
                draw_row++;
            }
        }
        
        var pcol = get_player_hud_color(player);
        var cursor_x = 14+tmu_x+58*tmu_column;
        var cursor_y = 32+tmu_y+58*tmu_row;
        draw_sprite_ext(sprite_get("_tmu_hover_square"), 0, cursor_x, cursor_y, 2, 2, 0, pcol, 1);
        
        draw_sprite_ext(sprite_get("_tmu_panel_top"), 0, 14+tmu_x, tmu_y, 2, 2, 0, c_white, 1);
        var category_text = (tmu_item_panel < 3) ? rarity_names[tmu_item_panel] : legendary_type_name;
        var text_width = string_length(category_text) * 7; // temp
        draw_debug_text(tmu_x+96-floor(text_width/2), tmu_y+14, category_text);
        
        draw_sprite_ext(sprite_get("_tmu_panel_bottom"), 0, 14+tmu_x, 210+tmu_y, 2, 2, 0, c_white, 1);
        var item_text = item_grid[tmu_item_id][0];
        var text_width = string_length(item_text) * 7; // temp
        draw_debug_text(tmu_x+96-floor(text_width/2), tmu_y+222, item_text);
        
        
        if (show_add) {
            draw_sprite_ext(sprite_get("_tmu_prompt_add"), 0, 28+tmu_x, 238+tmu_y, 2, 2, 0, c_white, 1);
        }
        
        if (item_grid[tmu_item_id][4] > 0) {
            draw_sprite_ext(sprite_get("_tmu_prompt_remove"), 0, 100+tmu_x, 238+tmu_y, 2, 2, 0, c_white, 1);
        }
        
        break;
    
}

if (instance_exists(tmu_infowindow)) with tmu_infowindow {
    
    switch state {
        
        case 1:
        
        	var _x = other.temp_x - 84;
        	var _y = other.temp_y - 200;
        	var cac_off = (item_id == 36) ? -20 : 0;
            
            draw_set_alpha(draw_alpha);
            
            if (string_length(player_id.item_grid[item_id][6]) < 50) {
                draw_sprite(sprite_get("item_bgpanel"), 0, _x, _y - 20)
            } else {
                draw_sprite(sprite_get("item_bgpanel_big"), 0, _x - 52, _y - 20)
            }
            
            draw_sprite_ext(sprite_get("item"), item_id, _x + 34 + cac_off, _y + 4, 2, 2, 0, c_black, 0.5 * draw_alpha)
            draw_sprite_ext(sprite_get("item"), item_id, _x + 32 + cac_off, _y + 0, 2, 2, 0, c_white, draw_alpha)
            
            draw_set_font( font_get("_rfont") );
            draw_set_halign( fa_center );
            draw_text_color( _x + 180, _y, player_id.item_grid[item_id][0], c_white, c_white, c_white, c_white, draw_alpha );
            
            draw_set_font( asset_get("fName") );
            draw_set_halign( fa_center );
            draw_text_color( _x + 180, _y + 36, player_id.item_grid[item_id][6], c_black, c_black, c_black, c_black, draw_alpha );
            draw_text_color( _x + 182, _y + 36, player_id.item_grid[item_id][6], c_white, c_white, c_white, c_white, draw_alpha );
            
            draw_set_alpha(draw_flash);
            gpu_set_fog(1, c_white, 0, 1);
            draw_sprite(sprite_get("item_bgpanel"), 0, _x, _y - 20);
            gpu_set_fog(0, c_white, 0, 1);
            
            draw_set_alpha(1);
            
            break;
        
    }
    
}

if (init_prompt_active) {
	draw_sprite_ext(sprite_get("_tmu_prompt_init"), 0, temp_x-10, temp_y-68, 2, 2, 0, c_white, 1);
} else if (init_prompt_timer > 0) {
	var h = ease_backIn(68, 0, 20-init_prompt_timer, 20, 1);
	draw_sprite_part_ext(sprite_get("_tmu_prompt_init"), 0, 0, 0, 228, ceil(clamp(h/2, 0, 35)), temp_x-10, temp_y-h, 2, 2, c_white, 1);
}