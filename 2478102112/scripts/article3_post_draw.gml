if nuke_out == 1{
    draw_sprite_ext( sprite_get( "nuke_explosion" ), anim_time/3, floor(cam_x)+780, floor(cam_y)+432, 3.5, 3.5, 0, c_white, 1 );
    print("woof");
    print(cam_x);
    print(cam_y);
}

if anim_time > 78{
    nuke_out = 0;
    anim_time = 0;
    print("meow");
}

if fired_gun == 1 and itemnum == 12{
    spawn_hit_fx(x + (548 * spr_dir), y-20, hit_fx_create( sprite_get( "gun_shot" ), 30 ));
    print("flea");
}

if fired_gun == 1 and itemnum == 15{
    spawn_hit_fx(x - (548 * spr_dir), y-20, hit_fx_create( sprite_get( "gun_shot" ), 30 ));
    print("flea");
}