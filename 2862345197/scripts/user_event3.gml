// node disconnect code
/* meant to be run from the perspective of obj_article1
currently called from the following scripts:
 - article1_update.gml
 - got_hit.gml
 - got_parried.gml
 - attack_update.gml
*/

if object_index == obj_article1 {
    do_disconnect();
}
else if instance_exists(node_connected) {
    with node_connected {
        do_disconnect();
    }
}

#define do_disconnect
// meant to be called from the perspective of obj_article1

player_id.node_connected = noone;
sound_play(player_id.sfx_node_dc);

// ghost line storage
disconnect_info.timer = disconnect_draw_dur;
disconnect_info.x = player_id.x;
disconnect_info.y = player_id.y;