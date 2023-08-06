for(var e = 0; e < array_length(player_id.lwfx_buffer); e++){
    var p = player_id.lwfx_buffer[e];
    if p.layer == 2 with player_id{
        depth = 29;
        if p.shade shader_start();
        if p.fog gpu_set_fog(1, p.blend, 1, 0);
        draw_sprite_ext(p.sprite, p.frame, p.xpos, p.ypos, 2*p.dir, 2, p.angle, p.blend, p.alpha);
        if p.fog gpu_set_fog(0, p.blend, 1, 0);
        if p.shade shader_end();
    }
}