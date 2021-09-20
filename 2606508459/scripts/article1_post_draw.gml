//Mostly just to draw the particle effects of the Spheres

if (_postHitCool > 0 &&
    ds_showParticles)
{
    //====> Draw dust
    for (var i = 0; i < array_length_1d(arr_particles_pos); i++)
    {
        draw_sprite_ext(
            spr_dustOL, 
            arr_particles_init[i, 4], 
            arr_particles_pos[i, 0], 
            arr_particles_pos[i, 1], 
            1, 
            1, 
            0, 
            -1, 
            1
        );
    }
    
    for (var i = 0; i < array_length_1d(arr_particles_pos); i++)
    {
        draw_sprite_ext(
            spr_dust, 
            arr_particles_init[i, 4], 
            arr_particles_pos[i, 0], 
            arr_particles_pos[i, 1], 
            1, 
            1, 
            0, 
            -1, 
            1
        );
    }
}