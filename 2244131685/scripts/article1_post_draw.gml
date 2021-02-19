//
if (attack == PA_TAUNT && state == PD_ATTACK) {
    depth = player_id.depth - 1;
    if (window == 2) {
        if (player_id.cur_image < 5) {
            _image = 5;
        } else {
            _image = 6;
        }
    }
}

//draw pod
with player_id shader_start();
draw_sprite_ext(sprite,floor(_image),floor(x+x_offset),floor(y+y_offset),spr_dir,1,0,-1,alpha);
if parry_lag > 0 draw_sprite_ext(sprite,floor(_image),floor(x+x_offset),floor(y+y_offset),spr_dir,1,0,c_black,0.4);
with player_id shader_end();
if player_id.initial_invince {
    gpu_set_fog(true,c_white,0,1);
    draw_sprite_ext(sprite,floor(_image),floor(x+x_offset),floor(y+y_offset),spr_dir,1,0,c_black,alpha*0.5);
    gpu_set_fog(false,c_white,0,1);
}

if (player_id.attack == AT_TAUNT && player_id.attacking && attack == PA_TAUNT && state == PD_ATTACK) {
    with (player_id) {
        shader_start();
        draw_sprite_ext(sprite_get("taunt"), cur_image, x, y, spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
}

if (attack == PA_NSPECIAL_AT && state == PD_ATTACK) {
    draw_sprite(spr_volt, volt_image_index, x - 134, y - 144);
}

if (attack == PA_DSPECIAL_CR && state == PD_ATTACK && window == 3) {
    draw_sprite(spr_crash, crash_image_index, x - 158, y - 68);
}

if (charging && charge_timer <= 5) {
    gpu_set_fog(true, c_yellow, 0, 1);
    draw_sprite_ext(sprite, floor(_image), x + x_offset, y + y_offset, spr_dir, 1, 0, c_black, alpha * 0.5);
    gpu_set_fog(false, c_white, 0, 1);
}

//draw_debug_text(x,y,`_image: ${_image}`);
if !attached draw_sprite_ext(sprite_get("player_indicator"),0,floor(x+x_offset),floor(y+y_offset-char_height),1,1,0,get_player_hud_color(player_id.player),1);

//draw_debug_text(floor(x),floor(y),`STATE: ${get_pod_state_name(state)}`);

if (attack == PA_DSPECIAL_CR && state == PD_ATTACK && state_timer > 6 && dspeccr_warn[0] != noone) {
    draw_sprite(sprite_get("pod_dspec_indicator"), 0, dspeccr_warn[1], dspeccr_warn[2]);
}
#define get_pod_state_name(state)
switch (state) {
    case 0: return "PD_INIT";
    case 1: return "PD_IDLE";
    case 2: return "PD_GLIDE";
    case 3: return "PD_ATTACK";
    case 4: return "PD_RETURN";
    case 5: return "PD_RESPAWN";
    case 6: return "PD_DIE";
}
