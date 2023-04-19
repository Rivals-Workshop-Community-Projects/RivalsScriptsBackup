// find all nodes
num_of_nodes = 0;
var oldest_bday = -1;
with obj_article1 if player_id == other.player_id {
    // find oldest node
    if type == 0 { // excludes power node
        // count nodes
        other.num_of_nodes += 1;
        if bday < oldest_bday || oldest_bday == -1 {
        	oldest_bday = bday;
        	other.oldest_node = id;
        }
    }
}


// power the nodes if applicable
var node_power = player_id.node_power
if !instance_exists(node_power) exit;

if node_power.state == PS_IDLE && array_length(node_power.linked_nodes) > 0 {
    provide_power(node_power);
}


#define set_article_state(_state)
state = _state;
state_timer = 0;

#define provide_power(source)

var powered_nodes = [source];
var cur_index = 0;
var len = 1;

// find all nodes connected to power source
while cur_index < len {
    with powered_nodes[cur_index] {
        for (var i = 0; i < array_length(linked_nodes); i += 1) {
            var l_n = linked_nodes[i];
            if instance_exists(l_n) && array_find_index(powered_nodes, l_n) == -1 {
                array_push(powered_nodes, l_n);
                
                // create hitbox
                var hb = create_hitbox(AT_NSPECIAL, 1, x, y);
                hb.spr_dir = 1;
                hb.draw_x = 1;
                hb.proj_angle = point_direction(x, y, l_n.x, l_n.y);
                hb.image_angle = hb.proj_angle;
                hb.image_xscale = point_distance(x, y, l_n.x, l_n.y);
            }
        }
        // move nodes into powered state
        set_article_state(PS_ATTACK_AIR);
        
        // spawn powered fx
        var dir = (random_func_2(id % 100, 2, true) == 1) ? 1 : -1;
        var fx = spawn_hit_fx(x, y, other.vfx_node_power_o);
        fx.spr_dir = dir;
        fx.vsp = -0.5;
        var fx = spawn_hit_fx(x, y, other.vfx_node_power);
        fx.spr_dir = dir;
        fx.vsp = -0.5;
        
        // update some values to determine if you need to keep looping or not
        cur_index += 1;
        len = array_length(powered_nodes);
    }
}