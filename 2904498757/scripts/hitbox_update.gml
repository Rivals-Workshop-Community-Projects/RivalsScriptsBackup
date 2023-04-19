if should_die {
    instance_destroy();
    exit;
}

if !free {
    spawn_hit_fx(x, y, vfx_land);
    sound_play(sfx_land, false, noone, 0.65);
    should_die = true;
    hsp = 0;
}
else if destroyed {
    sound_play(sfx_land, false, noone, 0.65);
}