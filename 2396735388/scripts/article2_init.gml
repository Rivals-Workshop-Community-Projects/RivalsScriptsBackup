//article2_init

sprite_index = sprite_get("ring_base");
/*with player_id {
    other.front = instance_create(other.x, other.y, "obj_article1");
    other.front.player_id = id;
    other.front.depth = depth - 2;
    other.front.player = player;
    other.front.spr_dir = other.spr_dir;
}//*/

state = 0;
state_timer = 0;

dead = false;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

grab_offset_x = -6;
grab_offset_y = 28;

launch_offset_x = -6;
launch_offset_y = 10;

num_anim_frames[0] = 7;
num_anim_frames[1] = 4;
num_anim_frames[3] = 5;
num_anim_frames[4] = 4;
num_anim_frames[2] = 4;
num_anim_frames[5] = 4;
num_anim_frames[6] = 4;
num_anim_frames[7] = 4;

anim_frame_start[0] = 0
anim_frame_start[1] = 7;
anim_frame_start[3] = 11;
anim_frame_start[4] = 16;
anim_frame_start[2] = 20;
anim_frame_start[5] = 12;
anim_frame_start[6] = 16;
anim_frame_start[7] = 7;

num_frames[0] = 24;
num_frames[1] = 24;
num_frames[3] = 16;
num_frames[4] = 16;
num_frames[2] = 24;
num_frames[5] = 4;
num_frames[6] = 16;
num_frames[7] = 24;

max_lifetime = 600;

//max_lifetime = 9999999;

is_horizontal = true;
is_up = false;

rotation_direction = 0;
// 1 - CW
//-1 - CCW

total_rotation = 0;

spr_angle = 0;

original_direction = 0;