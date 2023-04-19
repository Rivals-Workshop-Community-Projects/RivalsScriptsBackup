// draw radius
with obj_article1 if player_id == other.player_id && radius_scale > 0.05 {
    draw_sprite_ext(other.spr_node_radius, 0, x, y, radius_scale, radius_scale, 0, c_white, 0.3);
}

// draw lines
var drawn_already = []; // prevents drawing the same line multiple times
with obj_article1 if player_id == other.player_id {
    // draw any lines that just got dc'd
    if disconnect_info.timer > 0 {
        var ls = other.spr_node_line;
        var lxs = point_distance(x, y, disconnect_info.x, disconnect_info.y + other.shelly_draw_y_off);
        var lr = point_direction(x, y, disconnect_info.x, disconnect_info.y + other.shelly_draw_y_off);
        var a = 0.75 * disconnect_info.timer / disconnect_draw_dur;
        draw_sprite_ext(ls, other.l_sprid, x, y, lxs, 1, lr, c_white, a);
        
        if type == 1 {
            ls = other.spr_node_line;
            draw_sprite_ext(ls, 2, x, y, lxs, 1, lr, c_white, a);
        }
    }
    
    // draw links between nodes
    for (var i = 0; i < array_length(linked_nodes); i += 1) {
        var l_n = linked_nodes[i];
        if instance_exists(l_n) && array_find_index(drawn_already, l_n) == -1 {
            // draw normal line
            var ls = other.spr_node_line;
            var lxs = point_distance(x, y, l_n.x, l_n.y);
            var lr = point_direction(x, y, l_n.x, l_n.y);
            draw_sprite_ext(ls, other.l_sprid, x, y, lxs, 1, lr, c_white, 1);
            
            // draw powered line on top if applicable
            if state == PS_ATTACK_AIR {
                ls = other.spr_node_line;
                draw_sprite_ext(ls, 2, x, y, lxs, 1, lr, c_white, 1);
            }
        }
    }
    
    // draw connection to shelly
    if id == player_id.node_connected {
        var ls = other.spr_node_line;
        var lxs = point_distance(x, y, player_id.x, player_id.y + other.shelly_draw_y_off);
        var lr = point_direction(x, y, player_id.x, player_id.y + other.shelly_draw_y_off);
        draw_sprite_ext(ls, other.l_sprid, x, y, lxs, 1, lr, c_white, 1);
        
        // draw powered line on top if applicable
        if type == 1 {
            ls = other.spr_node_line;
            draw_sprite_ext(ls, 2, x, y, lxs, 1, lr, c_white, 1);
        }
    }
    
    // draw glow on all nodes (with exceptions for PS_SPAWN and the oldest node)
    if type == 1 || state == PS_ATTACK_AIR
    || (state != PS_SPAWN && (other.num_of_nodes < player_id.nodes_max || id != other.oldest_node)) {
        draw_sprite_ext(other.spr_node_glow, 0, x, y, 1, 1, 0, c_white, 0.6);
    }
    
    // prevent drawing the same line multiple times
    array_push(drawn_already, id);
}