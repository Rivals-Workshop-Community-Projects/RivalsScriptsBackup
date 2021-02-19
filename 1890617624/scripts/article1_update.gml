//article1_update

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

if vsp > 0{
    can_be_grounded = true;
}
else {
    can_be_grounded = false;
}

if !bounced{
    create_hitbox(AT_DSPECIAL, 1, x + (16 * spr_dir), y + 16)
}

if timer == 0{
    vsp = 5
    hsp = 4 * spr_dir
}

if free and !bounced{
    vsp += 0.75
}
else{
    hsp = 0
    fuse -= 1
    bounced = true
}

// Warning sound
if fuse = fusewarning{
    sound_stop(sound_get("fuse"))
    sound_play(sound_get("fusewarning"))
}

if fuse <= fusewarning and fuse > 0{
    if (timer mod 4) <= 1{
        sprite_index = sprite_get("apple_ignited");
    }
    else{
        sprite_index = sprite_get("apple");
    }
}

// Explode
if (fuse = 0) and bounced{
    if fuse > 0{
        fuse = 0
    }
    sound_play(sound_get("explosion"));
    sprite_index = asset_get("empty_sprite");
    spawn_hit_fx( x + (16 * spr_dir), y + 16, explosion)
    create_hitbox(AT_DSPECIAL, 2, x + (16 * spr_dir), y + 16)
}

if fuse <= 0{
    explodeticks += 1
}

if explodeticks >= 30{
    instance_destroy();
    return;
}

if (bounced and fuse > fusewarning){
    if ticksnd == 0{
        sound_play(sound_get("fuse"), true)
        ticksnd = 1
    }
}

timer += 1