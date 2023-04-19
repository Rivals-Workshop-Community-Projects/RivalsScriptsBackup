// find nearest player
var ai_target_dist = point_distance(x, y, ai_target.x, ai_target.y);

// some attack stuff
if phone_attacking {
	switch attack {
		case AT_USPECIAL:
			special_pressed = 0;
			special_down = 0;
			jump_pressed = 0;
			jump_down = 0;
			
		    //recovering on the left
			if x < stage_mid {
			    if y < stage_y - 120 {
					left_down = 0;
					right_down = 1;
				}
				else if x + hsp < sd_r {
					left_down = 1;
					right_down = 0;
				}
			}
			//recovering on the right
			else {
			    if y < stage_y - 120 {
					left_down = 1;
					right_down = 0;
				}
				else if x + hsp > sd_l {
					left_down = 0;
					right_down = 1;
				}
			}
			break;
		
		// charge dstrong
		case AT_DSTRONG:
			if window == 1 {
				strong_down = (random_func(x % 25, 60, true) > 0);
			}
			break;
		
		// become megaman
		case AT_FTILT:
			if instance_exists(ai_target) && !ai_target_dist > 20 {
				if sign(ai_target.x - x) == 1 {
					right_down = 1;
				}
				else if sign(ai_target.x - x) == -1 {
					left_down = 1;
				}
			}
			// intentional no break
		case AT_JAB: case AT_NAIR:
			pshoot_carry = (random_func(x % 25, 3, true) == 0);
			break;
	}
}

if state == PS_PRATFALL {
	left_down = x > stage_mid;
	right_down = x < stage_mid;
}

// continue being megaman
if pshoot_carry && !ai_recovering {
    if !( (state == PS_IDLE || state == PS_IDLE_AIR || state == PS_WALK || state == PS_WALK_TURN || state == PS_LANDING_LAG || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP)
    || (phone_attacking && (attack == AT_JAB || attack == AT_FTILT || attack == AT_NAIR))) {
    
    	pshoot_carry = false;
    }
	attack_down = pshoot_carry;
}

// ========== FIGHTING AI ==========
// exit if not set to fight
if get_training_cpu_action() != CPU_FIGHT {
	exit;
}

node_ai();


#define do_special
///#args dir?
// 0=neutral, 1=forward, 2=up, 3=down
var dir = (argument_count > 0) ? argument[0] : 0;

special_pressed = 1;
left_down = 0;
right_down = 0;
up_down = 0;
down_down = 0;

switch dir {
	case 1:
		right_down = spr_dir > 0;
		left_down = !right_down;
		break;
	case 2:
		up_down = 1;
		break;
	case 3:
		down_down = 1;
		break;
}

#define node_ai

if ai_recovering || state_cat == SC_HITSTUN { return; }

var ai_target_dist = point_distance(x, y, ai_target.x, ai_target.y);

var num_nodes = 0;
var nearest_node = noone;
var nearest_node_dist = -1;
var nearest_node_dir = 0;

var nearest_unlinked_node = noone;
var nearest_unlinked_node_dist = -1;
var nearest_unlinked_node_dir = 0;

var node_has_linked = false;
var node_on_ground = false;

// find nodes
with obj_article1 if player_id = other.id && type == 0 {
	// count
	num_nodes++;
	
	if !node_on_ground && sprite_index == other.spr_node {
		node_on_ground = true;
	}
	
	// detect any linked nodes
	var this_node_has_linked = false;
	for (var i = 0; i < array_length(linked_nodes); i += 1) {
		if instance_exists(linked_nodes[i]) {
			node_has_linked = true;
			this_node_has_linked = true;
			break;
		}
	}
	
	// find nearest node
	var cur_dist = point_distance(x, y, other.x, other.y);
	if nearest_node == noone || nearest_node_dist > cur_dist {
		nearest_node = id;
		nearest_node_dist = cur_dist;
		nearest_node_dir = point_direction(other.x, other.y, x, y);
	}
	
	// nearest unlinked node
	if state != PS_SPAWN && id != other.node_connected && !this_node_has_linked {
		if nearest_unlinked_node == noone || nearest_unlinked_node_dist > cur_dist {
			nearest_unlinked_node = id;
			nearest_unlinked_node_dist = cur_dist;
			nearest_unlinked_node_dir = point_direction(other.x, other.y, x, y);
		}
	}
}
if instance_exists(node_power) {
	if node_connected == node_power {
		nearest_unlinked_node = nearest_node;
		nearest_unlinked_node_dist = nearest_node_dist;
		nearest_unlinked_node_dir = nearest_node_dir;
	}
	else {
		nearest_unlinked_node = node_power;
		nearest_unlinked_node_dist = point_distance(x, y, node_power.x, node_power.y);
		nearest_unlinked_node_dir = point_direction(x, y, node_power.x, node_power.y);
	}
}

// connect nodes
if instance_exists(nearest_unlinked_node) {
	var targ_dist = -1;
	var targ_dir = -1;
	if instance_exists(node_connected) && array_find_index(node_connected.linked_nodes, nearest_unlinked_node) == -1 {
		targ_dist = nearest_unlinked_node_dist;
		targ_dir = nearest_unlinked_node_dir;
	}
	else if ai_target_dist > 240 {
		targ_dist = nearest_node_dist;
		targ_dir = nearest_node_dir;
	}
	
	if targ_dist != -1 {
		ai_target = noone;
		jump_pressed = false;
		var v_vect = lengthdir_y(targ_dist, targ_dir);
		if v_vect < -56 {
			jump_pressed = !free || (state == PS_FIRST_JUMP && vsp >= -1);
			if state == PS_JUMPSQUAT && v_vect > -72 {
				jump_down = true;
			}
		}
		else if ground_type == 2 && v_vect > 0 {
			down_hard_pressed = true;
		}
		
		var h_dir = sign(lengthdir_x(targ_dist, targ_dir));
		right_down = h_dir == 1;
		right_hard_pressed = right_down;
		left_down = h_dir == -1;
		left_hard_pressed = left_down;
	}
}

// place nodes
if node_has_linked && !free && !instance_exists(node_power) && ai_target_dist < 240 {
	var node_radius = nearest_node.radius;
	if nearest_node_dist = clamp(nearest_node_dist, 70, node_radius-10) {
		do_special(3);
	}
}
else if num_nodes == 0 {
	if !free && ai_target_dist > 180 && random_func(x % 25, 3, true) == 0 {
		do_special();
	}
}
else if num_nodes < nodes_max {
	var node_radius = nearest_node.radius;
	if nearest_node_dist = clamp(nearest_node_dist, 80, node_radius-10) {
		if vsp == clamp(vsp, -2, 2) {
			do_special();
		}
	}
}
