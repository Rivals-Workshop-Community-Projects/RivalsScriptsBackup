if (state == 0){
    if (!instance_exists(hbox)){
        hbox = create_hitbox(AT_USPECIAL, 1, x, y);
    }
    hbox.x = x;
    hbox.y = y;
    image_angle += 2*spr_dir;
    if (state_timer >= 30){
        hbox.destroyed = true;
        state = 1;
        state_timer = 0;
        overlay_alpha += 0.2;
    }
}

if (state == 1){
    image_xscale += 0.05;
    image_yscale += 0.05;
    image_angle += 1*spr_dir;
    overlay_alpha += 0.2;
    if (image_xscale >= 1.25){
        should_die = true;
        create_hitbox(AT_USPECIAL, 2, x, y);
        sound_play(asset_get("sfx_abyss_explosion"));
        spawn_hit_fx(x, y, 143);
    }
}

if (should_die){
    instance_destroy();
    exit;
}


if (vsp < max_fall_speed){
    vsp += grav;
}
if (vsp > max_fall_speed){
    vsp = max_fall_speed;
}
if (!free){
    vsp = -6;
}

state_timer ++;