//article2_update
var cam_x = get_instance_x(player_id.camera_obj) - view_get_wview()/2;
var cam_y = get_instance_y(player_id.camera_obj) - view_get_hview()/2;

if !_init {
    sound_play(sound_get("static1"));
    _init = 1;
}
if (state == 1 && state_timer == 0) {
    with (player_id) {
        var x_offset = get_hitbox_value(AT_FSPECIAL, other.rotation + 1, HG_HITBOX_X);
        var y_offset = get_hitbox_value(AT_FSPECIAL, other.rotation + 1, HG_HITBOX_Y);
    }
    create_hitbox(AT_FSPECIAL, rotation + 1, x + x_offset, y + y_offset);
}

if ("_x" in self) {
    x = _x + cam_x;
    y = _y + cam_y;
}

image_index = ((anim_frames[state] / anim_timer[state]) * state_timer) + anim_start[state];
state_timer++;

if (state_timer >= anim_timer[state]) {
    if (state == 2) {
        instance_destroy();
        exit;
    }
    state++;
    state_timer = 0;
}
image_angle = rotation * 90;