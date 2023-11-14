spr_idle = player_id.spr_fidget_idle;
spr_turn = player_id.spr_fidget_turn;
spr_scream = player_id.spr_fidget_scream;
spr_shot = player_id.spr_fidget_shot;
spr_light = player_id.spr_fidget_light;
spr_fire = player_id.spr_fidget_fire;

spr_lightning1 = player_id.spr_proj_lightning1;
spr_lightning1s = player_id.spr_proj_lightning1s;
spr_lightning1e = player_id.spr_proj_lightning1e;
spr_lightning2 = player_id.spr_proj_lightning2;
spr_lightning2s = player_id.spr_proj_lightning2s;
spr_lightning_pop = player_id.spr_proj_lightning_pop;

vc_shot1 = player_id.vc_fid_shot1;
vc_shot2 = player_id.vc_fid_shot2;
vc_shot3 = player_id.vc_fid_shot3;
vc_light1 = player_id.vc_fid_light1;
vc_light2 = player_id.vc_fid_light2;

sprite_index = spr_idle;
mask_index = spr_idle;
image_index = 1;

can_be_grounded = false;
free = true;
ignores_walls = false;

// Find some way to buffer Dust's position up to a second back
buffer_frames = 20
buffer_history = array_create(buffer_frames, -1);
buffer_index = 0;
travel_point_x = 0;
travel_point_y = 0;
travel_speed = 0.06;

// Fidget's states
// 0 = idle/following
// 1 = fire
// 2 = lightning
// 3 = lightshot
// 4 = scream
fidget_state = 0;
fidget_timer = 0;
fid_panic = false;
//fid_panictime = 0;

// Prevent multiple inputs
input_buffer = 0;

// More bad code to throw to the bad code fire
opponents = []

with (oPlayer) {
    if (other.player_id != self) {
        array_push(other.opponents, self);
        print(self);
    }
}

// Lightning code
light_range = 160

spawn_buffer = 0;
voiced = player_id.voiced;

lightning_nodes = [];
//opp1 = noone;
//opp2 = noone;
//opp3 = noone;