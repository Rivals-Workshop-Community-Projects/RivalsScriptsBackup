//

if (image_index == 0) {
    can_be_grounded = true;
    ignores_walls = false;
    if (!free) {
        for (var i = 1; i <= 3; i++) {
            var g = instance_create(x, y, "obj_stage_article", 2)
            g.image_index = i;
            g.hsp = -2 + random_func(i, 4, false);
            g.vsp = -6 - random_func(i + 1, 6, false);
        }
        sound_play(sound_get("sfx_glass"));
        instance_destroy();
        exit;
    }
}

if (free) {
    vsp += 0.45;
}

if (y >= room_height) {
    instance_destroy();
    exit;
}