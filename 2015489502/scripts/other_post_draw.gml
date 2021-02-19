//other_post_draw.gml
if url == CH_ORI {
    if attack == AT_DSPECIAL &&
        (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !has_hit {
        switch (window) {
            case 2:
                bash_index = 0;
                bash_dir = -30;
                bash_end = false;
            case 1:
                draw_bash = 0;
                break;
            case 4:
                if bashed_proj != noone
                if bashed_proj.type != 2 {
                    draw_bash = 1;
                    if window_timer >= 40 bash_index += 0.5;
                    else if window_timer >= 59 draw_bash = 0;
                }
                bash_x = x;
                bash_y = y;
                if !joy_pad_idle bash_dir = joy_dir;
                break;
            case 5:
                if window_timer == 1 {
                    bash_index = 10;
                    sound_play(asset_get("sfx_ori_bash_projectile"));
                }
                bash_end = true;
                if bashed_proj != noone
                if bashed_proj.type != 2 {
                    bashed_proj.hsp = lengthdir_x(10, bash_dir - 180);
                    bashed_proj.vsp = lengthdir_y(10, bash_dir - 180);
                }
                draw_bash = 1;
                break;
        }
    }
    if bash_index >= 10 bash_index += 0.5;
    if bashed_proj != noone
    if bash_end && bashed_proj.type != 2 bashed_proj = noone;
    if (bashed_proj != noone && bashed_proj.type == 2) || bash_index >= 22 || (bash_index < 10 &&
        (window != 4 && window != 5)) {
        draw_bash = 0;
        bash_index = 0;
    }
    shader_start();
    draw_sprite_ext(asset_get("bash_dir_spr"), floor(bash_index), bash_x + 17 * spr_dir, bash_y - 12, 1, 1,
        bash_dir - 45, c_white, draw_bash);
    shader_end();
}