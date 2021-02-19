//article2_update

if hitstop > 0{
    return;
}

if !bounced{
    lifetime -= 1
    if lifetime <= 0{
        instance_destroy();
        return;
    }
}

if explodeticks > 0{
    explodeticks +=1
}

if explodeticks == 6{
    create_hitbox(AT_DSPECIAL, 3, x + (18 * spr_dir), y - 210)
}

if explodeticks >= 30{
    instance_destroy();
    return;
}

if vsp > 0{
    can_be_grounded = true;
}
else {
    can_be_grounded = false;
}

if timer == 0 and !soul_active{
    vsp = -12
    hsp = 1 * spr_dir
}

if free{
    vsp += 0.6
}
else{
    if explodeticks == 0{
        sound_play(sound_get("explosionshake"));
        sprite_index = asset_get("empty_sprite");
        spawn_hit_fx( x + (16 * spr_dir), y + 44, explosion)
        explodeticks += 1
    }
    bounced = true
}

timer += 1