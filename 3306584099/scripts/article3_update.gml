if (!instance_exists(self)) exit;
if (script_get_index("update_" + string(obj_type)) >= 0) script_execute(script_get_index("update_" + string(obj_type)));
if (player_id.state_cat == PS_HITSTUN) { instance_destroy(); exit }
image_index = clamp(anim_frames_start+floor(ease_linear(0,anim_frames,window_timer,floor(window_length + 1))), 0, image_number - 1);

if (hitstop == 0) {
    window_timer++;
    state_timer++;
    if (window_timer >= window_length) {
        if (!window_loop) window++;
        window_timer = 0;
    }
}

#define update_0() 
sprite_index = sprite_get("somnio_spawn")
mask_index = asset_get("ex_guy_collision_mask")

switch (state) {
    case PS_SPAWN:
        if (window == 1) {
            anim_frames = 3;
            anim_frames_start = 0;
            window_length = 12;
        }
        if (window == 2) {
            anim_frames = 3;
            anim_frames_start = 3;
            window_length = 15;
        }
        
        if (window == 3) {
            anim_frames = 1;
            anim_frames_start = 6;
            window_length = 5;
        }
        
        if (window == 4) {
            anim_frames = 2;
            anim_frames_start = 7;
            window_length = 34;
        }
        if (window == 5) {
            spawn_hit_fx(floor(x), floor(y- 32), 144);
            instance_destroy(id);
            exit;
        }
    break;
}

#define article_set_state(_state_new)
state = _state_new;
state_timer = 0;
window = 1;
window_timer = 0;
window_loop = false;