if attack == AT_NSPECIAL && hbox_num == 1{
    //hsp = dcos(point_direction(x, y, target_pl.x, target_pl.y - target_pl.char_height/2))*20;
    //vsp = -dsin(point_direction(x, y, target_pl.x, target_pl.y - target_pl.char_height/2))*20;
    array_push(player_id.beam_pos, [x, y, point_direction(0, 0, hsp, -vsp)]);
    player_id.hit_pos = [x, y];
    if collision_point(x, y, asset_get("par_block"), 1, 1){
        var e = spawn_hit_fx(x, y, player_id.explosion_vfx);
        e.depth = depth - 200;
        e.spr_dir *= 2;
        e.image_yscale = 2;
        sound_play(sound_get("guardian_hit"));
        create_hitbox(AT_NSPECIAL, 2, x, y);
        shake_camera(5, 30);
        instance_destroy(self);
    }
}