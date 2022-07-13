//post-draw

var intro_time = get_gameplay_time();
var intro_spd = 9
if intro_time < 3*intro_spd {
    draw_sprite_ext(sprite_get("fspecial_proj"), floor(intro_time/4), x - spr_dir*(3*intro_spd - intro_time + 2)*40, y - 44, spr_dir, 1, 0, c_white, 1)
}

if pickup_alpha > 0 {

    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_white, 0, 1);
    
    for (var i = 0; i < array_length(default_sprites); i++) {
        if sprite_index == default_sprites[i] && draw_sprites[i] != undefined {
            draw_sprite_ext(draw_sprites[i], image_index, x, y, spr_dir, 1, image_angle, c_white, pickup_alpha)
        }
    }
    
    for (var i = 0; i < array_length(attack_sprites); i++) {
        if sprite_index == attack_sprites[i] && attack_draw_sprites[i] != undefined {
            draw_sprite_ext(attack_draw_sprites[i], image_index, x, y, spr_dir, 1, image_angle, c_white, pickup_alpha)
        }
    }
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);

}

/*
with pHitBox if attack == AT_NSPECIAL && hbox_num == 1 {
    draw_circle_color(x, y, 5, c_white, c_white, false)
}
*/