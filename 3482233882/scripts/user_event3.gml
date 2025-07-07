// Training mode utility update

tmu_timer++;

var rows = 3;
var columns = 3;

switch tmu_state {
    
    case 0: // TMU_OPENING
        fill_panel_contents(tmu_item_panel);
        set_tmu_state(1);
        tmu_y_offset = tmu_y_offscreen;
        tmu_infowindow = noone;
        tmu_infowindow_active = false;
        break;
    
    case 1: // TMU_ITEM
        
        if (tmu_timer < 12) tmu_y_offset = floor(ease_backOut(tmu_y_offscreen, 0, tmu_timer, 12, 1))
        else tmu_y_offset = 0;
        
        var panel_size = array_length(tmu_item_panel_contents);
        
        tmu_row += (down_pressed - up_pressed);
        tmu_column += (right_pressed - left_pressed);
        
        if (abs(down_pressed - up_pressed) || abs(right_pressed - left_pressed)) sound_play(asset_get("mfx_hover"));
        
        // Rows: stop at either end
        if (tmu_row < 0) {
            if (tmu_display_row > 0) tmu_display_row--;
            tmu_row = 0;
        }
        if (tmu_row >= rows) {
            if ((tmu_display_row+rows)*columns < panel_size) tmu_display_row++;
            tmu_row--;
        }
        
        // Columns: upon leaving bounds, move to other panel
        if (tmu_column < 0) {
            tmu_column = columns-1;
            tmu_item_panel--;
            if (tmu_item_panel < 0) tmu_item_panel = tmu_item_panel_max;
            fill_panel_contents(tmu_item_panel);
            panel_size = array_length(tmu_item_panel_contents);
        }
        if (tmu_column >= columns) {
            tmu_column = 0;
            tmu_item_panel++;
            if (tmu_item_panel > tmu_item_panel_max) tmu_item_panel = 0;
            fill_panel_contents(tmu_item_panel);
            panel_size = array_length(tmu_item_panel_contents);
        }
        
        // Finishing: force cursor to a valid space if necessary
        tmu_selected = tmu_column + (tmu_row+tmu_display_row)*columns;
        if (tmu_selected >= panel_size) {
            var disjoint = tmu_selected - (panel_size-1); // distance from a valid position
            var offset = ceil(disjoint / columns); // number of rows to jump up to reach a valid position
            tmu_row -= offset;
            if (tmu_row < 0) { // if this jump places the cursor offscreen, move the display position up to match
                tmu_display_row += tmu_row;
                tmu_row = 0;
            }
            tmu_selected = tmu_column + (tmu_row+tmu_display_row)*columns;
        }
        
        // Process commands
        tmu_item_id = tmu_item_panel_contents[tmu_selected];
        
        if (attack_pressed && (item_grid[tmu_item_id][4] < 10 || limitless_mode)) {
            clear_button_buffer(PC_ATTACK_PRESSED);
            new_item_id = tmu_item_id;
            ue1_command = 1;
            item_silenced = true;
            user_event(1);
        }
        
        else if (special_pressed && item_grid[tmu_item_id][4] > 0) {
            clear_button_buffer(PC_SPECIAL_PRESSED);
            new_item_id = tmu_item_id;
            ue1_command = 2;
            user_event(1);
            sound_play(asset_get("mfx_input_back"));
            
        }
        
        else if (taunt_pressed || state != PS_ATTACK_GROUND) {
            set_tmu_state(2);
        }
        
        else if (shield_pressed) {
            clear_button_buffer(PC_SHIELD_PRESSED);
            
            if (!tmu_infowindow_active) {
                sound_play(asset_get("mfx_star"));
                tmu_infowindow_active = true;
                tmu_infowindow = instance_create(x, y, "obj_article2");
                tmu_infowindow.vsp = 0;
                tmu_infowindow.is_hud_element = true;
            } else {
                sound_play(asset_get("mfx_input_back"));
                tmu_infowindow.state_timer = 118;
                tmu_infowindow_active = false;
            }
        }
        
        if (tmu_infowindow_active && instance_exists(tmu_infowindow)) {
            tmu_infowindow.item_id = tmu_item_id;
            if (tmu_infowindow.state_timer > 118) tmu_infowindow.state_timer = 118;
        }
        
        break;
    
    case 2: // TMU_ITEM_CLOSING
        if (tmu_infowindow_active) {
            tmu_infowindow.state_timer = 118;
            tmu_infowindow_active = false;
        }
        tmu_y_offset = floor(ease_backIn(0, tmu_y_offscreen, tmu_timer, 10, 1))
        if (tmu_y_offset <= tmu_y_offscreen) set_tmu_state(-1);
        break;
    
}



#define fill_panel_contents(panel_num)

    tmu_item_panel_contents = [];
    var i = ordering_start_indices[panel_num];
    var endpoint = array_length(item_id_ordering);
    
    while (i < endpoint && item_id_ordering[i] != noone) {
        array_push(tmu_item_panel_contents, item_id_ordering[i]);
        i++;
    }

#define set_tmu_state(in_state)
    tmu_state = in_state;
    tmu_timer = 0;