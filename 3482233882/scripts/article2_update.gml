
// article2_update - runs every frame the article exists
// Message boxes.
// NOTE: Due to unstable text function behavior within articles, drawing is handled in pre_draw.gml

/*STATE LIST

Item-get message box
- 0: Init checks
- 1: Active

*/

switch state {
    
    // Item-get message box
    case 0:
        if (item_id == noone) {
            print_debug("Error: article 2 was not properly initialized");
            instance_destroy();
            exit;
        }
        half_width = floor(view_get_wview()/2);
        draw_flash = 1;
        state = 1;
    case 1:
        if (draw_flash > 0) draw_flash -= 0.1;
        
        if (hsp > 0) hsp -= 0.5;
        else if (hsp < 0) hsp += 0.5;
        
        if (x < get_instance_x(asset_get("camera_obj"))-half_width) {
            hsp = 12;
            state_timer--;
        }
        else if (get_instance_x(asset_get("camera_obj"))+half_width < x+372) {
            hsp = -12;
            state_timer--;
        }
        else if (state_timer > 120) draw_alpha -= 1/30; // nested in if/else to prevent premature fading
        
        if (state_timer > 150) {
            instance_destroy();
            exit;
        }
        break;
    
}

state_timer++;