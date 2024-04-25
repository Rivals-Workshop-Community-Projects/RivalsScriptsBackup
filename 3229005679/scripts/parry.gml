
sound_play(sound_get("sfx_killingblow"));
for (var i = 0; i < 5; i++){
    var flyingPlank = spawn_hit_fx(x, y - 25, plankFlying);
    flyingPlank.hsp = 3 - random_func(i, 7, true);
    flyingPlank.vsp = -10 - random_func(i+1, 6, true);
    flyingPlank.depth = depth - 1;
}

