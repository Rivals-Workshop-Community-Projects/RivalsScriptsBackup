//article3_draw.gml

//draw_circle_color(x, y, 10, c_white,c_white,false)

if player_id.hitbox_view draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.5)

//flash white
if state == PS_HITSTUN && state_timer < 50 {
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*spr_dir, image_yscale, 0, c_white, (dsin(state_timer*20)+1)/4)
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}

//hitpause flash
if flash_timer > 0 {
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*spr_dir, image_yscale, 0, c_white, (flash_timer/20))
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}