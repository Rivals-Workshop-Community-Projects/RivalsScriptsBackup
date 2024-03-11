for (var e = 0; e < array_length(particles); e++){
    var p = particles[e];
    gpu_set_fog(1, p[5], 0, 0);
    draw_sprite_ext(p[0], p[8], p[6], p[7], p[10] * p[9], p[10], 0, p[5], p[1]);
    gpu_set_fog(0, p[5], 0, 1);
}

