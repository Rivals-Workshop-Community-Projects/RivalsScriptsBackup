//a

if (state == PS_RESPAWN or ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack = AT_TAUNT && initial_invince == 1)) {
    draw_sprite(sprite_get("plat_extra"),0,x,y);    
}

/* am not drawing any pre particles rn so comment it out to lighten the code
shader_start();
draw_particle();
shader_end();
*/
#define draw_particle()
if particle_array != null {
    for(var ae=0; ae < array_length(particle_array);ae++) {
        with(particle_array[ae]) {
            if !dead && !post_drawn {
                draw_sprite_ext(sprite_index, image_index, x, y, scale_x, scale_y, angle, color, alpha);
            }
        }
    }
}