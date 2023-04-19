//b

if should_debug {
    draw_debug_text(x - 15, y + 25, "is bloody: "+string(is_bloody));
    //draw_circle_color(x,y,60,c_fuchsia,c_fuchsia,true);
}
if visible {
    shader_start();
    draw_particle();
    shader_end();
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
