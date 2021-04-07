//

if !_init { //Re-initialize... spawn variables not set until AFTER init runs
    sprite_index = sprite_get("platform");
    mask_index = sprite_get("platform");
    //plat_type = spawn_variables[0];
    //plat_type = 0;
    cur_marker = 0;
    plat_markers_l = array_length_1d(plat_markers[plat_type]);
    x = get_marker_x(plat_markers[plat_type][cur_marker]);
    y = get_marker_y(plat_markers[plat_type][cur_marker]);
    _init = 1;
    exit;
}
if !swapping {
    x_dist = x - get_marker_x(plat_markers[plat_type][cur_marker]);
    y_dist = y - get_marker_y(plat_markers[plat_type][cur_marker]);
    
    if abs(x_dist) > move_speed {
        hsp = -move_speed*sign(x_dist);
    } else {
        hsp = -x_dist;
        //x = get_marker_x(plat_markers[plat_type][cur_marker]);
    }
    if abs(y_dist) > move_speed {
        vsp = -move_speed*sign(y_dist);
        //hsp = 0;
    } else {
        vsp = -y_dist;
        //y = get_marker_y(plat_markers[plat_type][cur_marker]);
    }
    
    if abs(x_dist) < move_speed && abs(y_dist) < move_speed { //If on the current marker
        if cur_hold_frame > hold_frames[plat_type] {
            cur_marker = (cur_marker+1) % (plat_markers_l);
            cur_hold_frame = 0;
        }
        else cur_hold_frame++;
       
        //print_debug("[PLAT "+string(plat_type)+"] SWITCHING MARKER TO: "+string(plat_markers[plat_type][cur_marker]));
    }
}