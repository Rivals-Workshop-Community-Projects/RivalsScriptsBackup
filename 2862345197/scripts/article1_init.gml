// nodes
sprite_index = player_id.spr_node;
mask_index = player_id.spr_node_hurt;
spr_dir = 1;
depth = 1;
anim_speed = 0.2;
image_index = player_id.n_sprid;
ap_off = 8;

switch (player_id.alt)  {
    case 2:
        ap_off = 16;
        break;
    case 3:
        ap_off = 12;
        break;
    case 4: case 27:
        ap_off = 8;
        break;
    case 5:
        ap_off = 20;
        break;
    case 10: case 11: case 12: case 13:
        ap_off = 4;
        break;
    case 24:
        ap_off = 24;
        flag_off = 0;
        break;
    case 25:
        ap_off = 28;
        flag_off = 6;
        break;
    case 26:
        ap_off = 32;
        flag_off = 12;
        break;
}


can_be_grounded = true;
ignores_walls = false;

type = 0; // 0 = normal node, 1 = power node
bday = get_gameplay_time(); // time of birth

state = PS_SPAWN;
state_timer = 0;

radius = 150;
radius_scale = 0;

touching_shelly = false;
was_touching_shelly = false;

linked_nodes = [];

// ghost line after getting disconnected
disconnect_draw_dur = 6;
disconnect_info = {
    timer: 0,
    x: x,
    y: y
};

// vfx
vfx_destroy = player_id.node_kill;
vfx_destroy_p = player_id.node_kill2;