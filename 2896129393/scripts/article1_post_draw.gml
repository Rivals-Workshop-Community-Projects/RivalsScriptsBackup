//a


if is_draw_article {
    if !player_id.visible {
        with(player_id) {
            shader_start();
            draw_particle();
            shader_end();
        }
    }
}
#define draw_particle()
if particle_array != null {
    for(var ae=0; ae < array_length(particle_array);ae++) {
        with(particle_array[ae]) {
            if !dead && post_drawn {
                draw_sprite(sprite_index, image_index, x, y);
            }
        }
        
    }
}