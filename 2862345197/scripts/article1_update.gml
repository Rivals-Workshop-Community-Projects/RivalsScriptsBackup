// update some values
state_timer += 1;
if disconnect_info.timer > 0 {
	disconnect_info.timer -= 1;
}

// animate
if sprite_index = sprite_get("puzzlenode_flag") {
	image_index += anim_speed;
	if image_index < flag_off { image_index = flag_off; }
	else if image_index >= flag_off + 6 { image_index = flag_off; }
}
else if sprite_index = sprite_get("puzzlenode_power_air") {
	image_index += anim_speed;
	if image_index < ap_off { image_index = ap_off; }
	else if image_index >= ap_off + 4 { image_index = ap_off; }
}

// states
switch state {
    case PS_SPAWN:
        if state_timer > 60 {
            set_article_state(PS_IDLE);
        }
        break;
    case PS_IDLE:
        try_connecting();
        break;
    case PS_ATTACK_AIR: // powered
	    player_id.move_cooldown[AT_NSPECIAL] = 60;
		player_id.move_cooldown[AT_DSPECIAL] = 60;
        if state_timer > player_id.node_hb_lifetime {
            set_article_state(PS_DEAD);
        }
        break;
    case PS_DEAD:
        var fx = vfx_destroy;
        if type == 1 {
            if array_length(linked_nodes) > 0 {
            	sound_play(player_id.sfx_node_takedown);
            }
            fx = vfx_destroy_p;
        }
        spawn_hit_fx(x, y, fx);
        instance_destroy(id);
        exit;
}

// radius scaling -- actually gets drawn by article 2
if player_id.node_connected == id {
    radius_scale = lerp(radius_scale, (radius)/192, 0.5);
}
else {
    radius_scale = lerp(radius_scale, 0, 0.6);
}


#define set_article_state(_state)
state = _state;
state_timer = 0;

#define try_connecting

if player_id.state_cat == SC_HITSTUN {
	return;
}

touching_shelly = collision_circle(x, y - 1, 15, player_id, true, false);

var pn = player_id.node_connected
if pn != id { // not connected to shelly yet
    if touching_shelly && !was_touching_shelly {
        var should_connect = false;
        var should_power = false;
        
        if instance_exists(pn) { // if shelly connected to another node, try linking
            should_connect = true;
            should_power = (type == 1 || pn.type == 1);
            
            var empty_index = -1;
            
            // check that you aren't already linked
            for (var i = 0; i < array_length(linked_nodes); i += 1) {
                if linked_nodes[i] == pn {
                    should_connect = false;
                    break;
                }
                else if !instance_exists(linked_nodes[i]) {
                    empty_index = i;
                }
            }
            
            if should_connect {
                // link
                if empty_index != -1 { linked_nodes[empty_index] = pn;}
                else { array_push(linked_nodes, pn); }
                // notify other node
                with pn {
                    var made_link = false;
                    for (var i = 0; i < array_length(linked_nodes); i += 1) {
                        if !instance_exists(linked_nodes[i]) {
                            linked_nodes[i] = other.id;
                            made_link = true;
                            break;
                        }
                    }
                   if !made_link { array_push(linked_nodes, other.id); }
                }
            }
        }
        
        // connect shelly to this node
        player_id.node_connected = id;
        if !should_connect {
            sound_play(player_id.sfx_node_get);
        }
        else { // link nodes if applicable
            if should_power { // link to power node
                player_id.node_connected = noone; // disconnect shelly from node
                sound_play(player_id.sfx_node_power);
            }
            else { // link to normal node
                sound_play(player_id.sfx_node_link);
            }
        }
    }
}
else { // already connected
    if point_distance(x, y, player_id.x, player_id.y - 20) > radius {
        user_event(3);
    }
}

// store old value
was_touching_shelly = touching_shelly;